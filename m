Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4047B114775
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 20:08:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmnhXb/5YhLpfHMengJMUhgVFnbek30lN7sZVNMfWlk=; b=btMNiH11aqQcXt
	wH9rDxXuODQL07+cHAeVhB3RhVN9F0/DJs1YVwL6C5ufk7SXyqhQw4f86a1mrjDtqo/sF3adjUhBj
	DP436pBT12Up4s9mQH5CqBe2fzv2VUMednzUCTgbdWI2kbYwr9H3B/PXc5rNOittcb7Kz0XAGQH4U
	m5IymTaRrEOTbTXnmXNt6GEn5SNbdEEovwxBzteuSJTMA/U0L4fW5ugCBuHC19CelTuIWxapLsUvq
	sm1vjDw5VGxeFzL7fPf5M7uOsAn3LofA5nAqklMxI+4aB95qXQlV0IO71i7y/A05CqIi84EGS/wXg
	BB98UGAmoSV3nkl/T+Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icwUM-0002T3-HA; Thu, 05 Dec 2019 19:08:34 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icwUD-0002SI-Kr; Thu, 05 Dec 2019 19:08:27 +0000
Received: by mail-ot1-f66.google.com with SMTP id d17so3627671otc.0;
 Thu, 05 Dec 2019 11:08:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GhI01COZ1PM4IuNCQYroNt43ak9q+ZJEl+5PK/vzrwc=;
 b=da90rYJW72p+cQlcwzPnMf/8ReZ/RueeUiCGDyIESdQ9SfTyzU6P2+T9sM+4Qtgn72
 IO/u7ln+ieTl8s674LExH+AT97spgKkkZu2z4rzJKR93R5ToY+liQdr/BscdNojFC6l7
 rxSyrIsEW3aq4g+pv01oVziSjmL1C/j7t+K6GAzqt5DjthkvDPrlQzBox7f3rtgEGDLs
 A+ydtXqIXzppwWJXLpM6JAS9ZeyIqplpVrhTojqEumHPDiWA1x372l1UMOcU5V7vlmEN
 4/yCDJo8PfKLDbkUs8pvaNYOcPBz7OgOkc5TWlsD+ksmd6onsizHMe5hc+ntO2vMV1m1
 QkgQ==
X-Gm-Message-State: APjAAAUc5bWJb1lLPLIS+T6CBejbWcW6Dm2ap6kNpoBL3Zakk6O0FCw1
 9vIBhsbHWJLDRl7M0Qg1t/OVrwo=
X-Google-Smtp-Source: APXvYqyrDf3SjBOgDwQzOa4/THONdCOmBohqUk4Y5DGydGiSs0Q8JEOerKtxomNcothMl7/fKTTrlA==
X-Received: by 2002:a9d:7357:: with SMTP id l23mr7568607otk.10.1575572903777; 
 Thu, 05 Dec 2019 11:08:23 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w8sm2157401ote.80.2019.12.05.11.08.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 11:08:22 -0800 (PST)
Date: Thu, 5 Dec 2019 13:08:21 -0600
From: Rob Herring <robh@kernel.org>
To: freddy.hsin@mediatek.com
Subject: Re: [PATCH v1 4/4] dt-binding: power: reset: Add documentation for
 MTK RGU (Reset Gernation Unit) reboot driver
Message-ID: <20191205190821.GA25233@bogus>
References: <1574746490-625-1-git-send-email-freddy.hsin@mediatek.com>
 <1574746490-625-5-git-send-email-freddy.hsin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574746490-625-5-git-send-email-freddy.hsin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_110825_680108_1E9F9117 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, sre@kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com, Chang-An.Chen@mediatek.com, wim@linux-watchdog.org,
 linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 01:34:50PM +0800, freddy.hsin@mediatek.com wrote:
> From: Freddy Hsin <freddy.hsin@mediatek.com>
> 
> Add documentation for MTK RGU (Reset Generation Unit) reboot driver.
> 
> Signed-off-by: Freddy Hsin <freddy.hsin@mediatek.com>
> ---
>  .../devicetree/bindings/power/reset/mtk-reboot.txt |   30 ++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/reset/mtk-reboot.txt
> 
> diff --git a/Documentation/devicetree/bindings/power/reset/mtk-reboot.txt b/Documentation/devicetree/bindings/power/reset/mtk-reboot.txt
> new file mode 100644
> index 0000000..708d351
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/reset/mtk-reboot.txt
> @@ -0,0 +1,30 @@
> +Generic MTK RGU mapped register reset driver
> +
> +This is a reset driver using toprgu to map its non-volatile register.
> +The reset is generally performed with a write to the non-volatile register
> +defined by the register map pointed by toprgu reference plus the offset
> +with the mask defined in the reboot-mode node.
> +
> +Required properties:
> +- compatible: should contain "toprgu-reboot-mode"

What's wrong with syscon-reboot-mode?

> +- regmap: this is phandle to the register map node

Make this node a child node of the phandle and get rid of this.

> +- offset: offset in the register map for the reboot-mode register (in bytes)
> +- mask: the reset value written to the reboot register (32 bit access)
> +
> +Examples:
> +	reboot-mode {
> +	   compatible = "toprgu-reboot-mode";
> +	   regmap = <&toprgu>;
> +	   offset = <0x24>;
> +	   mask = <0xF>;
> +	};
> +
> +Optional properties - reboot mode value that will keep in toprgu nonrst RG:
> +- mode-charger = <BOOT_CHARGER>;
> +- mode-recovery = <BOOT_RECOVERY>;
> +- mode-bootloader = <BOOT_BOOTLOADER>;
> +- mode-dm-verity-dev-corrupt = <BOOT_DM_VERITY>;
> +- mode-kpoc = <BOOT_KPOC>;
> +- mode-ddr-reserve = <BOOT_DDR_RSVD>;
> +- mode-meta = <BOOT_META>;
> +- mode-rpmbpk = <BOOT_RPMBPK>;
> -- 
> 1.7.9.5

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
