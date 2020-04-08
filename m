Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EC51A262C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dg/W4GAQJB0fOyZwHx4TkbPpsMcFMFIb8MY4C4OLT4=; b=SWB80khI3ToTN2
	z48IT9sVBabF1gjCIKbi9IGGSalkqNtb/262Y+4gGZYO0VJFkiOF/kPkyUDjkX5GVWX2ZBf08xNIS
	wDcqk4ePDeQ7Vlb1D0JqrewYB/sjGLWgM+CjJ6xMLlcO3QcuAfTgHpUzU6KTuS8GERc+Lh6hcfDx3
	WhLc4F/LnP8wQvLs/UWLRF+JO3rtRWVvAvj9MgOxD43DSqn2Il0lFlEe5RPt3Y5aQ2YbaLIYTQc8M
	X61fSfvzvoItkpaFlBZbLLHL8L/1NZi7DicWpMLL4SggC7FICNfi92Yh972licy9JmBlL4j3iRs/M
	u/z9Y1EbvFKo8FnyE/XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMCwN-0008Bm-Vw; Wed, 08 Apr 2020 15:48:35 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMCwD-00089J-Tj; Wed, 08 Apr 2020 15:48:27 +0000
Received: by mail-qk1-x743.google.com with SMTP id x66so585163qkd.9;
 Wed, 08 Apr 2020 08:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3+eGFsLGGWL0hFZoo3T4TQK9gJ4JHOSPbWbKxqCC7yc=;
 b=fjG3bXlOYQCEmTAhE3aDsX6GZwLes9ZflbLRHjwVFdgrveZ3HnI+b6RJBkuoDANCdj
 ZHulRjlfPetgLiQ8wTg7fsvhL49fIvhhhMC9x8t7sbB7KbKzf3d3MIbo+oNoBhW0a3PR
 s/IzUrBYCQRKSsl9hWq70bNlyV8qVDa8hQaAZSuEMyZiWeZBKL2gyF30vCK/Upwrif2D
 D0ZoaaiJCJ9xOgC9SUhk2m8AogAYKfvuEqJcwUlHnah9TBoSsgsgrxdH1dqmTa+MMwPG
 Zza8FsyB6tJQe4SL1NmRZ8eM1ybf16RTOck6iluSQIMDTkDdGnFZ7ED4SXZpuVKjbN/t
 5cdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3+eGFsLGGWL0hFZoo3T4TQK9gJ4JHOSPbWbKxqCC7yc=;
 b=CJrwLawF7ku65IsIOT6D3xvbdkLBRop2WFD+Wo3apl8zAVxeVD9Kp/Fxmw8m0YsM99
 5FZrWiyFpMMXY5xsnYTs2+5mitJXRVCrUvQtWSaBpeaMk4NBzLa87QP8iYB+kBaansWN
 WVK8/wCcO73K+kRheboOh4/M3gN1yREGb5hFPWNLVW1kzjl6LMBKRA6MU/2lqGX0C0YI
 lBZ1X/qmYE1lwnzgW3NYcNYvIBzuEizuJTM23p7K3OhD8a4hYIRZo+DsvHDIqn8pZ7ub
 mf5L171FsXvvfUXbB/A6ZlN/Bj8keZJ/UAVmPibzUfhy5tSJuMH3t3ftxFW8pm6ciY/F
 qhKA==
X-Gm-Message-State: AGi0PuZAz4kkKYlMbhxNSho6e2s5yIE0xWb5xHXtqzCYYbi/ybHLJeNk
 9OVYZi0KJWleb80EzEcByOcektXlSpW5ECAKeJc=
X-Google-Smtp-Source: APiQypJfn2wnXFL9j9EyznimHBwrBbDfxxbx3yC43znzRXh7g8S7mBwYqGH4WtP2+jqGLilI9BccVEwBZMw+aO7/ff8=
X-Received: by 2002:a37:6c81:: with SMTP id h123mr8156567qkc.290.1586360904353; 
 Wed, 08 Apr 2020 08:48:24 -0700 (PDT)
MIME-Version: 1.0
References: <20191118104252.228406-1-hsinyi@chromium.org>
In-Reply-To: <20191118104252.228406-1-hsinyi@chromium.org>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Wed, 8 Apr 2020 17:48:12 +0200
Message-ID: <CAFqH_528vidMhTFxNZ=b7SFD2K12UwtdX3uTUzW4YUgeDWkg5A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8173: Add gce setting in mmsys and display
 node
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_084825_981526_163FF8C5 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Missatge de Hsin-Yi Wang <hsinyi@chromium.org> del dia dl., 18 de nov.
2019 a les 11:43:
>
> In order to use GCE function, we need add some informations
> into display node (mboxes, mediatek,gce-client-reg, mediatek,gce-events).
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

With the fix provided by Hsin-Yi [1] and after the mmsys patches
landed I get GCE function working on mt8173, so

Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

[1] https://lore.kernel.org/lkml/20200406051131.225748-1-hsinyi@chromium.org/

Thanks,
 Enric

> ---
> - This is based on series "support gce on mt8183 platform"
>   https://patchwork.kernel.org/cover/11208309/
> - gce setting in 8183:
>   https://patchwork.kernel.org/patch/11127105/
> ---
>  arch/arm64/boot/dts/mediatek/mt8173.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> index 15f1842f6df3..e84ec3f95d81 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> @@ -911,6 +911,11 @@ mmsys: clock-controller@14000000 {
>                         assigned-clocks = <&topckgen CLK_TOP_MM_SEL>;
>                         assigned-clock-rates = <400000000>;
>                         #clock-cells = <1>;
> +                       mboxes = <&gce 0 CMDQ_THR_PRIO_HIGHEST 1>,
> +                                <&gce 1 CMDQ_THR_PRIO_HIGHEST 1>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0 0x1000>;
> +                       mediatek,gce-events = <CMDQ_EVENT_MUTEX0_STREAM_EOF>,
> +                                             <CMDQ_EVENT_MUTEX1_STREAM_EOF>;
>                 };
>
>                 mdp_rdma0: rdma@14001000 {
> @@ -991,6 +996,7 @@ ovl0: ovl@1400c000 {
>                         clocks = <&mmsys CLK_MM_DISP_OVL0>;
>                         iommus = <&iommu M4U_PORT_DISP_OVL0>;
>                         mediatek,larb = <&larb0>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xc000 0x1000>;
>                 };
>
>                 ovl1: ovl@1400d000 {
> @@ -1001,6 +1007,7 @@ ovl1: ovl@1400d000 {
>                         clocks = <&mmsys CLK_MM_DISP_OVL1>;
>                         iommus = <&iommu M4U_PORT_DISP_OVL1>;
>                         mediatek,larb = <&larb4>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xd000 0x1000>;
>                 };
>
>                 rdma0: rdma@1400e000 {
> @@ -1011,6 +1018,7 @@ rdma0: rdma@1400e000 {
>                         clocks = <&mmsys CLK_MM_DISP_RDMA0>;
>                         iommus = <&iommu M4U_PORT_DISP_RDMA0>;
>                         mediatek,larb = <&larb0>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xe000 0x1000>;
>                 };
>
>                 rdma1: rdma@1400f000 {
> @@ -1021,6 +1029,7 @@ rdma1: rdma@1400f000 {
>                         clocks = <&mmsys CLK_MM_DISP_RDMA1>;
>                         iommus = <&iommu M4U_PORT_DISP_RDMA1>;
>                         mediatek,larb = <&larb4>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xf000 0x1000>;
>                 };
>
>                 rdma2: rdma@14010000 {
> @@ -1031,6 +1040,7 @@ rdma2: rdma@14010000 {
>                         clocks = <&mmsys CLK_MM_DISP_RDMA2>;
>                         iommus = <&iommu M4U_PORT_DISP_RDMA2>;
>                         mediatek,larb = <&larb4>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0 0x1000>;
>                 };
>
>                 wdma0: wdma@14011000 {
> @@ -1041,6 +1051,7 @@ wdma0: wdma@14011000 {
>                         clocks = <&mmsys CLK_MM_DISP_WDMA0>;
>                         iommus = <&iommu M4U_PORT_DISP_WDMA0>;
>                         mediatek,larb = <&larb0>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x1000 0x1000>;
>                 };
>
>                 wdma1: wdma@14012000 {
> @@ -1051,6 +1062,7 @@ wdma1: wdma@14012000 {
>                         clocks = <&mmsys CLK_MM_DISP_WDMA1>;
>                         iommus = <&iommu M4U_PORT_DISP_WDMA1>;
>                         mediatek,larb = <&larb4>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x2000 0x1000>;
>                 };
>
>                 color0: color@14013000 {
> @@ -1059,6 +1071,7 @@ color0: color@14013000 {
>                         interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_LOW>;
>                         power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>                         clocks = <&mmsys CLK_MM_DISP_COLOR0>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x3000 0x1000>;
>                 };
>
>                 color1: color@14014000 {
> @@ -1067,6 +1080,7 @@ color1: color@14014000 {
>                         interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_LOW>;
>                         power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>                         clocks = <&mmsys CLK_MM_DISP_COLOR1>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x4000 0x1000>;
>                 };
>
>                 aal@14015000 {
> @@ -1075,6 +1089,7 @@ aal@14015000 {
>                         interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_LOW>;
>                         power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>                         clocks = <&mmsys CLK_MM_DISP_AAL>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x5000 0x1000>;
>                 };
>
>                 gamma@14016000 {
> @@ -1083,6 +1098,7 @@ gamma@14016000 {
>                         interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_LOW>;
>                         power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>                         clocks = <&mmsys CLK_MM_DISP_GAMMA>;
> +                       mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x6000 0x1000>;
>                 };
>
>                 merge@14017000 {
> --
> 2.24.0.432.g9d3f5f5b63-goog
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
