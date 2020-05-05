Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2801C4BA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 03:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRCQ7f5U9VdtIrpGxDH/bKp9GVqtgzUlK+DfurkHEbA=; b=Gbqwa0sZlfyA84
	XIeX+xVDi/7nnTLZWboWFqDxv78eEN0kG/77gyhrLu9RkqX6zgsKWM8vZw6GENUlU8yz8zHlkm3BR
	yMGp3IDFpigH9wHwQfjKFJDB/ymXSdFTy4swJgKHCEUOB2ZMogi7ICVVkssUneRa9U2eT6EIKPIlI
	jTsby7QuaMq/5by56F3c2onjhzqrygm1Ok47bTu6k9tMten2V8pKDMeXELSUaaZXZ6Z7Ka38lvm3K
	zqTXwVcOWUCpFRHhSsIOMfLs5yS0ZlXe4VwrFZMcihVmUWEp77y2fYn8V/RPKuxNr/q4omsuM22S2
	JyfN4FAf/ewksLaRxEvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVml0-0000Cp-AE; Tue, 05 May 2020 01:52:26 +0000
Received: from twspam01.aspeedtech.com ([211.20.114.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVmko-0000BH-6g
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 01:52:16 +0000
Received: from mail.aspeedtech.com (twmbx02.aspeed.com [192.168.0.24])
 by twspam01.aspeedtech.com with ESMTP id 0451fnFT030573;
 Tue, 5 May 2020 09:41:49 +0800 (GMT-8)
 (envelope-from ryan_chen@aspeedtech.com)
Received: from TWMBX01.aspeed.com (192.168.0.23) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.620.29; Tue, 5 May
 2020 09:52:04 +0800
Received: from TWMBX02.aspeed.com (192.168.0.24) by TWMBX01.aspeed.com
 (192.168.0.23) with Microsoft SMTP Server (TLS) id 15.0.620.29; Tue, 5 May
 2020 09:52:02 +0800
Received: from TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7]) by
 TWMBX02.aspeed.com ([fe80::997d:c0a7:f01f:e1a7%12]) with mapi id
 15.00.0620.020; Tue, 5 May 2020 09:52:02 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Wolfram Sang
 <wsa@the-dreams.de>
Subject: RE: [PATCH v0 linux master] i2c/busses: Avoid i2c interrupt status
 clear race condition.
Thread-Topic: [PATCH v0 linux master] i2c/busses: Avoid i2c interrupt status
 clear race condition.
Thread-Index: AQHWHdeQ1mqTBOPAdE+n+yVhmYVsFKiPNOCAgACLErD//4h6gIABsZgAgAfJrwA=
Date: Tue, 5 May 2020 01:52:01 +0000
Message-ID: <fc8bc729af844e658fd1ac1f86480f00@TWMBX02.aspeed.com>
References: <20200429033737.2781-1-ryan_chen@aspeedtech.com>
 <20200429075357.GA1957@kunai>
 <56add9c6e6b5410986325a1360466e4b@TWMBX02.aspeed.com>
 <20200429090355.GA2891@kunai>
 <232b9fac588beb4d024ab496b118c51af2b0ecba.camel@kernel.crashing.org>
In-Reply-To: <232b9fac588beb4d024ab496b118c51af2b0ecba.camel@kernel.crashing.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.87]
MIME-Version: 1.0
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 0451fnFT030573
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_185214_493649_C37F9E30 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > And is there maybe a Fixes: tag for it?
> > [Ryan Chen] Yes it is a fix patch.
> 
> I meant this (from submitting-patches.rst):

>It fixes the original implementation of the driver basically. It's just a classic posted-write fix. The write to clear the pending interrupt is asynchronous, so you can get spurrious ones if you return from the handler before it has percolated to the HW.

>I assume it's just more visible on the 2600 because of the cores are significantly faster but the IO bus is still as dumb.

>Ryan: You could always add a Fixed-by: tag that specifies the commit that added the initial driver...
[Ryan Chen] Thanks Ben.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
