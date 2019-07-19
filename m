Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86416E237
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 10:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxXPRGP34SHM5LepNYIUMdfPZZABifXf1kd0eHVBIpc=; b=Dk7ogObY0xts1m
	6FLVNvuvguE4DkBbec02I8gG7U+ouPihCQ0qB2/vfO/qm6yFLC4YdSxk+30FXujuqBzytJ5OuUE1s
	YIgRWpfju5ceFjR8p8+99ANHFmwlFY8uOFYMndmRGEscOMj73PWKUB5mrjVWnUfb34a519sVpvsUc
	xKBXmLEaWrEac77cNIZdPvNj+H0/edkxid1l6xPrTWrHYOpcfFwxFa9SrAxxW/cgDxnyliGh7MXEO
	of0ZDCK5YZxxWmgz48u7YUIMkE10MNzOR9Xj3WG7rrhtgmLguZqtZMe5nA0+xRXX2o1sgAW9qkEEA
	UI6r758u7sPBypKJJ2SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoNtD-00012I-OJ; Fri, 19 Jul 2019 08:05:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoNsi-00011f-55
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 08:04:45 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92CAD20665;
 Fri, 19 Jul 2019 08:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563523483;
 bh=R9hD24Tj+KSZAJ28RSPSUwPQVIMBYE4b6HdUPoO5ENo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m8MOrcHmD7GUTE+3OqkFDbOKMNS9fnRrLxrB7nLIQkjljVojmxNAdqsPbJ5fOThya
 mPOeyalN6YXDdpXe7XSJL5yRtQx9zsxHlRo+8r62FsFHDCIkp4aqDtw/7yKEWCTs6c
 YBeOG8iYEDoFccPxedp3h0UP/Fk3hxTZWN2j6Yu8=
Date: Fri, 19 Jul 2019 09:04:36 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] arm64: vdso: Cleanup Makefiles.
Message-ID: <20190719080435.f3nlecyu3ysnsnpv@willie-the-truck>
References: <20190712153746.5dwwptgrle3z25m7@willie-the-truck>
 <20190718114121.33024-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718114121.33024-1-vincenzo.frascino@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_010444_210836_B0036E44 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, naohiro.aota@wdc.com, sthotton@marvell.com,
 luto@kernel.org, arnd@arndb.de, huw@codeweavers.com, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, yamada.masahiro@socionext.com, andre.przywara@arm.com,
 john.stultz@linaro.org, 0x7f454c46@gmail.com, linux@rasmusvillemoes.dk,
 tglx@linutronix.de, salyzyn@android.com, pcc@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 12:41:21PM +0100, Vincenzo Frascino wrote:
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 21009ed5a755..6c4e496309c4 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -155,17 +155,17 @@ $(asm-obj-vdso): %.o: %.S FORCE
>  	$(call if_changed_dep,vdsoas)
>  
>  # Actual build commands
> -quiet_cmd_vdsold_and_vdso_check = LD      $@
> +quiet_cmd_vdsold_and_vdso_check = VDSOLIB $@
>        cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
>  
> -quiet_cmd_vdsold = VDSOL   $@
> +quiet_cmd_vdsold = VDSOLD  $@

I think we should be more consistent about whether or not we prefix things
with VDSO, so either go with "VDSOLD, VDSOCC and VDSOAS" or stick to "LD,
CC and AS" rather than mixing between them.

I think my suggestion would be something along the lines of CC, LD, AS for
the native vdso and CC32, LD32, AS32 for the compat vdso.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
