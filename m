Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B371B76D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 15:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5HOsNV5hqfJU2ANRZzGUKfVg1VuXt+BfSDE9pjT/aE=; b=X/ISXXDqLqepiV
	9tAoEM+t0tLOSF0vmyTpbe22BQVkfxf87GQ14HZRkNX0/W/7TU6DMMYKwV8Az5Q27j+GPWhIDImG9
	lBwluQQEHdLDke73s1ZN2XYY9eh+9xfV+LAtO6RYeYKX2hb9o86XentavsbHcKGzjSLW0moMo/Mwa
	PPkTrVbAhzWG2YXAVezu/oSPYLjtDKMnatE3yrghlp3EGIqC6A9ytyMY0B+faL/3aWakNW5lRAUIV
	M6dxLZT5nmXmVQ1KcCqKKnGPA5Un6i0NIJNzqgO7hSzIiT0xS1kpvsasE1hDr3IGrFT/+w6IGmSeZ
	DUGEyV3USGfHuyAPgsgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyGZ-0003Na-MH; Fri, 24 Apr 2020 13:21:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyGQ-0003M9-Ve
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 13:21:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1156031B;
 Fri, 24 Apr 2020 06:21:05 -0700 (PDT)
Received: from bogus (unknown [10.37.12.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5B52A3F68F;
 Fri, 24 Apr 2020 06:21:03 -0700 (PDT)
Date: Fri, 24 Apr 2020 14:20:56 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Peter Collingbourne <pcc@google.com>
Subject: Re: [PATCH] arm64: dts: fast models: Switch to dynamically allocated
 VRAM
Message-ID: <20200424132056.GA6544@bogus>
References: <CAMn1gO6Ki=3Znco6xr9h3MhxfTGCH-PYk3V+KxKi_tpNYDzVuA@mail.gmail.com>
 <20200423234903.226369-1-pcc@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423234903.226369-1-pcc@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_062107_061868_23DA586A 
X-CRM114-Status: GOOD (  18.81  )
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 04:49:03PM -0700, Peter Collingbourne wrote:
> According to the Fast Models Reference Manual, FVP has 32MB of video
> RAM, However, even 32MB is not sufficient for some applications,
> such as Android, which requires around 100-200MB when textures are
> allocated in VRAM via DRM.
>
> FVP supports DMA between DRAM and the graphics device. Therefore,
> use a dynamically allocated region of reserved memory to provide
> a sufficient amount of video RAM. The allocation is of size 256MB,
> which ought to be enough for anyone.
>
> Although this means that the designated VRAM ends up being left unused,
> FVP allows the size of DRAM to be configurable, so this should not
> be a problem in practice.
>
> Signed-off-by: Peter Collingbourne <pcc@google.com>
> ---
>  arch/arm64/boot/dts/arm/fvp-base-revc.dts | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> index 66381d89c1ce..57641f16f22e 100644
> --- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> +++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> @@ -103,11 +103,9 @@ reserved-memory {
>  		#size-cells = <2>;
>  		ranges;
>
> -		/* Chipselect 2,00000000 is physically at 0x18000000 */
> -		vram: vram@18000000 {
> -			/* 8 MB of designated video RAM */
> +		vram: vram {
>  			compatible = "shared-dma-pool";
> -			reg = <0x00000000 0x18000000 0 0x00800000>;

I am not sure if it is valid to just specify the size without the reg
field. The reverse is valid IIUC. Moreover I assume the idea is to populate
the reg field based on the model parameters ? If so, who can't the reg
and size field be modified instead of deleting here and adding it elsewhere.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
