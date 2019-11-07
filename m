Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA31F298E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbmnbLjSubXDO2LDZyLdtF5wxaqS8+J99xpd2SZVM+0=; b=sR4ckAXJwWhGKJ
	n0VjvogaP4JrSoaY2xjD6+fAj/Lis1Dzee5ovmA+xhoq18gd9xPsi7A4ZXnYoNVXbWuyBaJQQUlBY
	U6GfAhvzTZQbySZBVpZHSc+UjiN3XqgJNJngHVPH+olHFl5figDYBqkAEtrl2sItisjncXLw+sZj4
	SlCtv0lLi/nsA/9aK11RMHe2B0nmpFVzOUdVijbG73VccR/WgFFpW8pqNJxuYppL+PU6wobOxjphl
	VOK5lw1bjkVySxxJYFjAOGSv9GrLQqIebzRuzQOZRIwDOf5WAZcuvf0c5VJOHLYoAimk58sKyFXgb
	GsvX0mYyDeiNSdIWsEog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdPO-0000Ws-LU; Thu, 07 Nov 2019 08:44:50 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdPH-0000WP-F7
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:44:44 +0000
Received: by mail-ot1-f67.google.com with SMTP id m15so1323082otq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 00:44:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=41NEiPopACB8w8/wi96XPwORusZtZyFOe+6fXdB5oWI=;
 b=WrxuKPjTi9Ah4xkIi37bZhK6+jIu4oxw8EcLICyLYa92Dr+WSL0UhAFzYJhfRpVh2k
 unztRj9nCX/e9XlueVwvsLYrPK2jJU5b1qlee9hSfdyocBqKNjK3X8guKovZhGv4RC7r
 z7ALU0jSMwsUjq9kWv5iTzZTeI7kaJsWqKkG9okWXOPD+DVrwjb2g4ul3iSXUUMw8nwn
 l10TgEASMOQEmGC1LBgYQZQ5r3kRsgkn+rQorawxJrgQR2AxKd37IxQ5IFDKq/WOBdXf
 xVjiRZUzYNAnFFNr3140W8P9GfW9X9lHtX76lHkeJb/hzU/Z0AjWI0TtrrCFU96fePMN
 2G0Q==
X-Gm-Message-State: APjAAAUynrGdgD/cexoaxPz3uenTk7CHeU7RYcUyWtc3sfhsRO5f5ETJ
 HUxj/tXRcMcZA+py4ZEj3ZJyUcF53BZQ+S2Od+8=
X-Google-Smtp-Source: APXvYqyLd+e060V3vapvpupJ//7p928pbjWfrqP8a74RfAwxyKf0nla2NjyjPYziuD+6o8scdy87CzLXM7S3IlcXjQw=
X-Received: by 2002:a05:6830:2363:: with SMTP id
 r3mr2078530oth.39.1573116282410; 
 Thu, 07 Nov 2019 00:44:42 -0800 (PST)
MIME-Version: 1.0
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 7 Nov 2019 09:44:31 +0100
Message-ID: <CAMuHMdVZwgVnq2kwjNJQHfvUH0sk6M7Hz-AJR82jMOsCNfW9wQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree
 bindings
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_004443_504412_9EB487CB 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Wed, Nov 6, 2019 at 8:36 PM Lad Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> This patch adds the bindings for the R-Car PCIe endpoint driver.
>
> Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> @@ -0,0 +1,43 @@
> +* Renesas R-Car PCIe Endpoint Controller DT description
> +
> +Required properties:
> +           "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
> +           "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> +                                    RZ/G2 compatible device.

Unless I'm missing something, this is for the exact same hardware block as
Documentation/devicetree/bindings/pci/rcar-pci.txt?
So shouldn't you amend those bindings, instead of adding new compatible
values?
Please remember that DT describes hardware, not software policy.
So IMHO choosing between host and endpoint is purely a configuration
issue, and could be indicated by the presence or lack of some DT properties.
E.g. host mode requires both "bus-range" and "device_type" properties,
so their absence could indicate endpoint mode.

> +- reg: Five register ranges as listed in the reg-names property
> +- reg-names: Must include the following names
> +       - "apb-base"
> +       - "memory0"
> +       - "memory1"
> +       - "memory2"
> +       - "memory3"

What is the purpose of the last 4 regions?
Can they be chosen by the driver, at runtime?

> +- resets: Must contain phandles to PCIe-related reset lines exposed by IP block
> +- clocks: from common clock binding: clock specifiers for the PCIe controller
> +        clock.
> +- clock-names: from common clock binding: should be "pcie".
> +
> +Optional Property:
> +- max-functions: Maximum number of functions that can be configured (default 1).
> +
> +Example:
> +
> +SoC-specific DT Entry:
> +
> +       pcie_ep: pcie_ep@fe000000 {
> +               compatible = "renesas,pcie-r8a7791", "renesas,pcie-rcar-gen2";

These compatible values do not match with the ones above
(but they match with what I'd like to see ;-)

> +               reg = <0 0xfe000000 0 0x80000>,
> +                       <0x0 0xfe100000 0 0x100000>,
> +                       <0x0 0xfe200000 0 0x200000>,
> +                       <0x0 0x30000000 0 0x8000000>,
> +                       <0x0 0x38000000 0 0x8000000>;
> +               reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
> +               clocks = <&cpg CPG_MOD 319>;
> +               clock-names = "pcie";
> +               power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> +               resets = <&cpg 319>;
> +       };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
