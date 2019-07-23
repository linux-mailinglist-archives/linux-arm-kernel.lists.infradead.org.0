Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62CA71204
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 08:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVriMD78OOossOqMjP0aIM03DAkJDC2jTE1o/U5XQhM=; b=irYnv52YdNZfeZ
	9wkscvM47RYMdFbVqrCWhZ7+RJ7np/7gdMTJFmIsOPitBCY8R34M+TMgZVOpMOkqeiaYj/F5c0jLc
	3/ePr3igAIrXXSugjoIBlHfkhYspQWR0JBnZgf1xbs/R0ziTfwcsvEqGGYIZhQaIDLXmqw28YB6DK
	dDq9EewdaDKoUQvCvfsYqdpNF52nH2MAtCTwSkPNCb3T/76dw0BY1DFluYc2atEys6nsiIr5N/f/G
	jA0Udd1uLzMN+v9qGyoqBSrZkkODNVDpMNUSeB4ITjVqFwnrRF7UdlA3S882b3/jlQ4WybhO8h2dC
	P5XH4Gors5CxSWdSamyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpoTn-0005am-27; Tue, 23 Jul 2019 06:40:55 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpoTZ-0005aQ-VN
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 06:40:43 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 312BB808C;
 Tue, 23 Jul 2019 06:41:07 +0000 (UTC)
Date: Mon, 22 Jul 2019 23:40:38 -0700
From: Tony Lindgren <tony@atomide.com>
To: David Lechner <david@lechnology.com>
Subject: Re: [PATCH 1/4] ARM: OMAP2+: Drop mmc platform data for am330x and
 am43xx
Message-ID: <20190723064038.GP5447@atomide.com>
References: <20190326181324.32140-1-tony@atomide.com>
 <20190326181324.32140-2-tony@atomide.com>
 <0af63198-5a68-2f0d-f14e-2b514580d2d5@lechnology.com>
 <20190722060951.GL5447@atomide.com>
 <20190722075411.GM5447@atomide.com>
 <8427af44-2e28-7e13-3841-15c89d60f6dd@lechnology.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8427af44-2e28-7e13-3841-15c89d60f6dd@lechnology.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_234042_047714_EB1DA77F 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* David Lechner <david@lechnology.com> [190722 14:27]:
> On 7/22/19 2:54 AM, Tony Lindgren wrote:
> > Oh I just noticed this needs to be fixed in v5.2, not in v5.3-rc
> > series. It's best to keep the "ti,hwmods" property still around
> > as there may be dependencies to ti-sysc driver changes in v5.3-rc
> > series for dropping it. Below is a more minimal fix to try.
...

> This fixes wifi on BeagleBone Blue for me in v5.2.
> 
> Tested-by: David Lechner <david@lechnology.com>

OK great, thanks for testing.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
