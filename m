Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04E7BB8CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZHZH3v9udp+XyEOt7mbr6uwqlwWEaA0jYfWl8oYRrA=; b=GxtLgb9B/tdBP8
	hWNRGUVe/NTZbx1lrBjhSO+mmJr1ZD+8I7HsBqdx76QKQS0A+E0yxAz4OYOkevnSMIoLEgFu7Ita+
	qSHxFeKYlo1MrUN7yDJCZ1kxSDg7l7tD8J2PunuPpkGsnPezeX6bJP236diGW/4hnC2LNYzZUSmEp
	65cagRWNcGVWxbzOIJEs2uHwpRfQaxN7V46BWeyzPms9SUH7KLBERCD7YvR1dAepO79rU2ekB0tlw
	a0GCKRme+epZyGndZoBCyo7058mxA/7cLqg2IAwITyALvstBhWsI2Sbl75EMEFH2vt/AzvNxP0ivP
	I6HmOL12ISIrmD3WxDKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQlM-0004sr-S9; Mon, 23 Sep 2019 16:00:33 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQl8-0004sI-RN
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:00:20 +0000
Received: by mail-ot1-f68.google.com with SMTP id o44so4113407ota.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 09:00:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fMf30JzA7hKObE9R0byNtMQ8HAHmHVRxMKBzO0OruG4=;
 b=Tz/KrY+zRsj6jRuTGvN0uAC+2rLBpfq/40Ui1fe4H2/8i2AOIoPEFjcbL8Mtdrokzc
 dV3ZZMJ1TCsECiCNiP2ybI0MZG7uNBSPaQ0+7MtTL3/juIEeFrYyhvAqcN9zvNHPpbP8
 7aO+8K4Ql5hAcbTZQOh/sNf6QIqjUE9YqEO9k715sSguZ8gDgokVbqzRxJ5CmRe89cWE
 CI/NbVgdTMDGaUOdeKYiwWDasUAmsfldAriOGNSuq8XQmfO2htRg7Zt+BK8EGjjftGsU
 2t3Kxq7ir5EtAaIajBgWoQsz80DKE8/puNmWRlgCsU1AWoCdr8e3AvwXmWSBIjpqaEzm
 F5Iw==
X-Gm-Message-State: APjAAAXdOtPSAW96MZ+jW9JsFJB3g68v9RCIOdXMGHcN0Ny/WDh7BwLG
 1PW/CwcyjCnuoxR4vSr+rbBb4d/+iaI=
X-Google-Smtp-Source: APXvYqwgUT6wqoG5V8fmHRScHIUJh0ifwci6NeHpTkZ37Dho1yZBOEtKrw4Gs6Cv8QjrDOlQ7yYc+w==
X-Received: by 2002:a05:6830:20c6:: with SMTP id
 z6mr462382otq.191.1569254417040; 
 Mon, 23 Sep 2019 09:00:17 -0700 (PDT)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com.
 [209.85.210.49])
 by smtp.gmail.com with ESMTPSA id z14sm1240457oic.13.2019.09.23.09.00.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 09:00:16 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id g25so12616345otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 09:00:15 -0700 (PDT)
X-Received: by 2002:a05:6830:454:: with SMTP id
 d20mr471097otc.63.1569254415765; 
 Mon, 23 Sep 2019 09:00:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190922102341.GO25745@shell.armlinux.org.uk>
 <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
From: Li Yang <leoyang.li@nxp.com>
Date: Mon, 23 Sep 2019 11:00:07 -0500
X-Gmail-Original-Message-ID: <CADRPPNT-hKbO_8Y0PKg-FLsJ_GKE2nbZob6BGagpATMyYPdNsw@mail.gmail.com>
Message-ID: <CADRPPNT-hKbO_8Y0PKg-FLsJ_GKE2nbZob6BGagpATMyYPdNsw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
 coherent
To: Russell King <rmk+kernel@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_090018_889246_06364533 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, dann frazier <dann.frazier@canonical.com>,
 Will Deacon <will.deacon@arm.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, "Y.b. Lu" <yangbo.lu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 22, 2019 at 2:26 PM Russell King <rmk+kernel@armlinux.org.uk> wrote:
>
> The LX2160A esdhc controllers are setup by the driver to be DMA
> coherent, but without marking them as such in DT, Linux thinks they
> are not.  This can lead to random sporadic DMA errors, even to the
> extent of preventing boot, such as:
>
> mmc0: ADMA error
> mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
> mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
> mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
> mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000040d8
> mmc0: sdhci: Timeout:   0x00000003 | Int stat: 0x00000001
> mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
> mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
> mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
> mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
> mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
> mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
> mmc0: sdhci: Host ctl2: 0x00000000
> mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
> mmc0: sdhci: ============================================
> mmc0: error -5 whilst initialising SD card
>
> These are caused by the device's descriptor fetch hitting speculatively
> loaded CPU cache lines that the CPU does not see through the normal,
> non-cacheable DMA coherent mapping that it uses for non-coherent
> devices.
>
> DT and the device must agree wrt whether the device is DMA coherent or
> not.
>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Acked-by: Li Yang <leoyang.li@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index 36b153e3da47..508af23edef0 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -593,6 +593,7 @@
>                         reg = <0x0 0x2140000 0x0 0x10000>;
>                         interrupts = <0 28 0x4>; /* Level high type */
>                         clocks = <&clockgen 4 1>;
> +                       dma-coherent;
>                         voltage-ranges = <1800 1800 3300 3300>;
>                         sdhci,auto-cmd12;
>                         little-endian;
> @@ -605,6 +606,7 @@
>                         reg = <0x0 0x2150000 0x0 0x10000>;
>                         interrupts = <0 63 0x4>; /* Level high type */
>                         clocks = <&clockgen 4 1>;
> +                       dma-coherent;
>                         voltage-ranges = <1800 1800 3300 3300>;
>                         sdhci,auto-cmd12;
>                         broken-cd;
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
