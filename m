Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D7719A827
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IynX3zGcLBD71gdgQo7qT7IDH/CeNcMrRQc69+DUeoQ=; b=Czw0iLOeTJu0Qg
	DmGCxI+PBTz2FElkbEZ/CaB68MOzYk9d+0xio0g3vse8rwGfFfncme/VrjPOdKZKTv3S9hRcxSRgz
	6gy7BitT4ZOTWFPVk8B1wnMDXcU5Rnc/pJoj3sCjeix1aSQfnMEBpRSQJuPuvUZGjdDYm19b4PEvl
	Sx3xhLFnve19T61RU/k9mcbaAVzM8F++LCvdA8KMf28O6DnHTO00aU3DFLqZHTwibs4gmPcZeecXQ
	zs3FtnrHa40ErZzbso4pfQcQIrRiLM1gVBxQFA+w3yAnlgZnrTXXRjmeK4o8SrQ0i8bUPpp/DVwkC
	abNdA8GvxV/dmWHWqE/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZFg-0006Og-J6; Wed, 01 Apr 2020 09:01:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZFa-0006Ng-3L
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:01:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11A3131B;
 Wed,  1 Apr 2020 02:01:27 -0700 (PDT)
Received: from [10.37.12.142] (unknown [10.37.12.142])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 18C3A3F52E;
 Wed,  1 Apr 2020 02:01:25 -0700 (PDT)
Subject: Re: [PATCH v2 0/6] arm64: add the time namespace support
To: Andrei Vagin <avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
 <20200401065005.GA413115@gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <205b9e13-cb5f-8b65-1945-0b93e873942f@arm.com>
Date: Wed, 1 Apr 2020 10:02:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200401065005.GA413115@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_020130_183633_BBD5B468 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrei,

On 4/1/20 7:50 AM, Andrei Vagin wrote:
> Hi Vincenzo,
> 
> Have you had a chance to look at this series? Let me know if I need to
> rebase this patch set and resend it again.
> 

Sorry I still did not get the chance to have a look at your v2.
I will try to do it by the end of this week, beginning of next.

> Thanks,
> Andrei
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
