Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9DB196331
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 03:49:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:In-Reply-To:References:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+uXNWOjzlg3ffXJIcoE1eOsW/6hxlFtVBLEwuoaaxY=; b=SliCrckbOAG1Wu
	XoyfLTGv8Uaz5Fde7CEABjqK8ZmyzEHS0amCN5xoV4nTDPJs8wpuy8nTGzrIYeaOA5Bh1RjkwOzDO
	UKuJ8Ul+kv/O52PDj7EW5Inr9qq91wcdhSCgkAkHjzN1OoVYfuy3o75FoWGFVbsu2mLiXNDtLmIzU
	ApsVAXhx0tweki+9J3eBd6kyizHNM2pJDt3p9K5UdTAcMthZKPXYJp17SibiaHCuwCzhvA+tuFhdP
	4Tk+smfza9N+PMka3m8tzWLykj/vRK7f6ds7Kd0O4+Dx6QDjdvq3jy1Z15mhwBDWG1uKHaWD9bcun
	NxWN8ZzWrFigOn5KWA3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI1Wp-0006DL-OA; Sat, 28 Mar 2020 02:48:55 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI1Wg-0006D3-Lp
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 02:48:48 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585363727; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Reply-To: Sender;
 bh=+WpPnB0uFYRHxbJdTSXbZ3CsA3rPO9kHVEIdO35S7As=;
 b=ESwcKj3vwkCnso6wo1WRq/Q5sn1hqVCiEleSCsgR6loBPSShfWgKKSrGNTCPrNih0XvzT7BA
 I7mG5VlpkRKFzsRQO1dJlvwS1bTaswd4OPhtQ7A+0uhSI8KNTjEi/EgoqsvkiUc/1moJaZTR
 FZbRhxOfBVkZ9lMNSJHOdnDVacg=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7ebb0a.7fe187bf9340-smtp-out-n02;
 Sat, 28 Mar 2020 02:48:42 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 09C80C433F2; Sat, 28 Mar 2020 02:48:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 SUSPICIOUS_RECIPS autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net
 [104.54.226.75])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bcain)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A7892C433F2;
 Sat, 28 Mar 2020 02:48:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A7892C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=bcain@codeaurora.org
From: "Brian Cain" <bcain@codeaurora.org>
To: "'afzal mohammed'" <afzal.mohd.ma@gmail.com>,
 "'Thomas Gleixner'" <tglx@linutronix.de>
References: <20200321174303.GA7930@afzalpc>
 <cover.1585320721.git.afzal.mohd.ma@gmail.com>
In-Reply-To: <cover.1585320721.git.afzal.mohd.ma@gmail.com>
Subject: RE: [PATCH 0/6] Kill setup_irq()
Date: Fri, 27 Mar 2020 21:48:38 -0500
Message-ID: <059b01d604ab$637355b0$2a5a0110$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQH+2owB65JuA03jeOLwO39OK5TmSwJQWNztp/kerbA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_194847_627705_6C593336 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: bcain@codeaurora.org
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-alpha@vger.kernel.org, linux-omap@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: linux-hexagon-owner@vger.kernel.org <linux-hexagon-
> owner@vger.kernel.org> On Behalf Of afzal mohammed
> Sent: Friday, March 27, 2020 11:08 AM
> To: Thomas Gleixner <tglx@linutronix.de>
> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-samsung-soc@vger.kernel.org; x86@kernel.org; linux-
> sh@vger.kernel.org; linux-s390@vger.kernel.org; linuxppc-
> dev@lists.ozlabs.org; linux-parisc@vger.kernel.org; linux-
> mips@vger.kernel.org; linux-m68k@lists.linux-m68k.org; linux-
> ia64@vger.kernel.org; linux-hexagon@vger.kernel.org; linux-c6x-dev@linux-
> c6x.org; linux-omap@vger.kernel.org; linux-alpha@vger.kernel.org
> Subject: [PATCH 0/6] Kill setup_irq()
...
> Note 1: sh toolchain is available, but that will not make the  relevant
changes
> compile as it has dependency of 64bit arch toolchain,  did try a Kconfig
hack
> to make it compile w/ 32bit sh toolchain, but it  failed due to other
reasons
> (unknown operands), so gave up on that.
> Note 2: hexagon final image creation fails even w/o my patch, but it  has
> been ensured that w/ my changes relevant object files are getting  built
w/o
> warnings.

Afzal,

	What's the nature of the failure in "Note 2"?

-Brian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
