Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7913E75497
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:48:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/O/HSeyNBSVorhdmYs09hwqQP7uDi4f3WZUAaBLm/NM=; b=tj+v5kfulxlea8
	aB4+NSViXpsOGjONSKJgUmBTtcK9j1pFsnLIc16PQ98GkvQ769LXbvXFhtw+lCb5pXSeeBWHlo8zh
	s3tFWUc0PgEt9WnQ9b9Lv7NRsLmIcINDU46jBKqEFMr0ye5B08y4SbNdkxiqfepcM4K7anXSSzb9H
	qpQ7aPwmXq9yei9iNoY7mvR5oqJudUiIA7lIa2sdZ5VQqhj0+1ppH7x/oZyaZ/92rHxcg49HBPR4z
	O0UuPyszIjggX1zDOlSnSaYA6FDk91Ul4JJgm/BqW1hPXRyDBOf5zgOWPslhFMYvv4GVqQlmLNgKl
	6ywtCnQ0uGTO/TFt9k4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgvG-0000cj-JG; Thu, 25 Jul 2019 16:48:54 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgun-0007cS-Vj
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:48:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gbg4j1N6JgeQ3TSdYxXfJ33VmOD+J3jr9Rov8Cr76Q0=; b=L2AGmKU4/hAow0T7f/9azUCpH
 oqKXTbsippZQjAd2mfOoIErqLbiznbgvcAbJVCa2HgFyLTM1P828uHFOtmWoFNXXDeugchDhAFqXt
 znNfTDDc+NF58ZgJE4bzvOUPSti6516F32y1tNrEEJ+aNfjzHvNHSRqkjqw80X4EcLj0pnAUlvslk
 pJEaGVMULpEpmEiYcOWM1sMSYIyfQKcF9EKgnnJVIkfXOG3hgzv4xrXUJAhuzyka7htSmD/N4ig/f
 Ulg+IwSKUMBL6rQDafWkGLEA3K7uenNjKXJ+K5AJpHlSyIXhOTCyzxqRv2DWm8dgIZWjSidrJ9i+2
 09r3NztxQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:48742)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hqgsi-0001Fr-9K; Thu, 25 Jul 2019 17:46:16 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hqgsg-0005rk-6X; Thu, 25 Jul 2019 17:46:14 +0100
Date: Thu, 25 Jul 2019 17:46:14 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] ARM: visit mach-* and plat-* directories when cleaning
Message-ID: <20190725164614.GJ1330@shell.armlinux.org.uk>
References: <20190718163523.18842-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718163523.18842-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_094826_040303_EDAE171D 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: patches@arm.linux.org.uk, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 01:35:23AM +0900, Masahiro Yamada wrote:
> When you run "make clean" for arm, it never visits mach-* or plat-*
> directories because machine-y and plat-y are just empty.
> 
> When cleaning, all machine, plat directories are accumulated to
> machine-, plat-, respectively. So, let's pass them to core- to
> clean up those directories.

You don't say what actual, real-life issue this patch is solving.
Which files are left behind by a "make clean" ?

From what I can see, this only matters if there are extra files that
are generated (and have set extra-* or clean-*).  Everything else is
cleaned up via the big find command in the top level makefile.

Or is this a "it would be nice if..." patch?

> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
> KernelVersion: v5.3-rc1
> 
>  arch/arm/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 792f7fa16a24..c3eb0d9a2fdd 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -286,6 +286,10 @@ core-y				+= arch/arm/net/
>  core-y				+= arch/arm/crypto/
>  core-y				+= $(machdirs) $(platdirs)
>  
> +# For cleaning
> +core-				+= $(patsubst %,arch/arm/mach-%/, $(machine-))
> +core-				+= $(patsubst %,arch/arm/plat-%/, $(plat-))
> +
>  drivers-$(CONFIG_OPROFILE)      += arch/arm/oprofile/
>  
>  libs-y				:= arch/arm/lib/ $(libs-y)
> -- 
> 2.17.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
