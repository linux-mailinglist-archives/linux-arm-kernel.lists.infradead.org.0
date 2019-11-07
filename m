Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8765DF28C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:10:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUFjR6He6Jqml116WrHsuA7KZ/VRavoo9abn1xdZxVY=; b=PeKTRmUgMiT94G
	zGWMBFDkSOAKY2Kzx1jGerGbaHGEmNzCWXbrPWDTNA0Jq3ef4tZwkiAuBfx4/uDbmX0jm9SOH/HWu
	7ubaqrmYtCxjh/iNdUpX4JW4CGHzQ1Q9A2TjVGhDIN03AjaLx2QveTuCkA5CwfoWw4pVHR1uk47Xj
	wpky4LonCUXMwcjA2DaVrxGLlDE3WpuFklsx5Z+mc4rvem6MnYDutd7F7yK1lHOspzz0MJPa9hD76
	huDO+yNxXpGfItBJwpLH2/4U0ap3AIPN5V82NKeJfsLfDy6A42bgRkYmQzPnnAZ5xG97KKd4H28cV
	6Xba1DeE7iFWmensJhKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iScsP-0004GH-B1; Thu, 07 Nov 2019 08:10:45 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iScsH-0004F2-Mf
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:10:39 +0000
Received: by mail-oi1-x244.google.com with SMTP id n16so1220495oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 00:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1Ln1GAykiZS8RusuR4H+KQoetDdyYBnG1RhAd3RuDvU=;
 b=XIQjJ1KkwJwDO2WBDAlhOf60GzfwCkkbNwnxofI1gvr56DlMnJZNb4jHhH9l+siPjy
 7XUMhHNlxMeUd0C8IsfA/1LUeakE2mhibVwGsvSfeeV6D1unTFUY+jfFqzTPIcRQl5X+
 gWKfPOXD3nsSRoQRnk8+d5iIA5qxdNdnYM0aAjr5pCDue/7MNTnR9v4pFaetY9pKAOIL
 RcPun1cI3Qh9hzQ1HJD8sMy57glLs6u3q1iXmG7lA0FwoChXUDNfAOgr2ETpotB//xIX
 UnxYVtmQXIYLoaVGsh7uTHXu6+JIFIEnRncdelUnehHP33ZJr4CmSpidqTtDpVy7SPn3
 mHlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1Ln1GAykiZS8RusuR4H+KQoetDdyYBnG1RhAd3RuDvU=;
 b=cpQ780hhawkuPM7n8LMPsBTY1VwBBbtVbwispO3NV8CdxcVJ0WzTtE0UCC+S9pIX8q
 7bw0agnDtbYOg8mrplkc/PZSV65vdhDnM0iEQtaehdsYuslATmlrecPLRNOFNx+1HWkZ
 uUVnfWT+DZVmUZsSoZZz/WTS+rppBij6ZhmULYostSxOvZqR5UezB+OO711OKm1lR2ON
 LMsJKZqu1vrXiGFOxu3wnu4VI8HPdGOCVBB/99ria6u9RWW1p2zQ2gKb+wd06xCIv3hd
 GeMly+T7icmVfbfXY4P/AstNfyirYtp1xksLDy1Mp97LgkxHJLrPEICjGaSiJkAuzESS
 8MJA==
X-Gm-Message-State: APjAAAW8SuIoPFI1zqYuCBx2aCcf9eBALRJLb6I3FhP0oEQkC/QqQRac
 /oHvw/yikHj6lrhw9p+ETPFEOSjQnepmy3R32bE=
X-Google-Smtp-Source: APXvYqyCsRHXrlcNyFDdWgqpUGNUi9JY2dnU8nu8fLaBJBr7i8H4CEPtAXOaCsi6gmrcZ/dmVtw/Dn8k5G1I4v7yMqw=
X-Received: by 2002:a05:6808:3cf:: with SMTP id
 o15mr2227687oie.7.1573114236156; 
 Thu, 07 Nov 2019 00:10:36 -0800 (PST)
MIME-Version: 1.0
References: <20191106193609.19645-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191106193609.19645-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <OSBPR01MB210380ACAF35B2FE94F1589EB8780@OSBPR01MB2103.jpnprd01.prod.outlook.com>
In-Reply-To: <OSBPR01MB210380ACAF35B2FE94F1589EB8780@OSBPR01MB2103.jpnprd01.prod.outlook.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 7 Nov 2019 08:10:09 +0000
Message-ID: <CA+V-a8vJrJ8Rw5OgYZN7o_i1R9ZZUfmuMWnzA0PF+pZus0o1SQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree
 bindings
To: Biju Das <biju.das@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_001037_763179_CF1704FE 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Biju,

Thank you for the review.

On Thu, Nov 7, 2019 at 7:39 AM Biju Das <biju.das@bp.renesas.com> wrote:
>
> Hi Prabhakar,
>
> Thanks for the patch
>
> > Subject: [PATCH 3/5] PCI: rcar: Add R-Car PCIe endpoint device tree bindings
> >
> > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > This patch adds the bindings for the R-Car PCIe endpoint driver.
> >
> > Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  .../devicetree/bindings/pci/rcar-pci-ep.txt   | 43 +++++++++++++++++++
> >  1 file changed, 43 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> >
> > diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> > b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> > new file mode 100644
> > index 000000000000..b8c8616ca007
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.txt
> > @@ -0,0 +1,43 @@
> > +* Renesas R-Car PCIe Endpoint Controller DT description
> > +
> > +Required properties:
> > +         "renesas,pcie-ep-r8a774c0" for the R8A774C0 SoC;
> > +         "renesas,pcie-ep-rcar-gen3" for a generic R-Car Gen3 or
> > +                                  RZ/G2 compatible device.
> > +
> > +         When compatible with the generic version, nodes must list the
> > +         SoC-specific version corresponding to the platform first
> > +         followed by the generic version.
> > +
> > +- reg: Five register ranges as listed in the reg-names property
> > +- reg-names: Must include the following names
> > +     - "apb-base"
> > +     - "memory0"
> > +     - "memory1"
> > +     - "memory2"
> > +     - "memory3"
> > +- resets: Must contain phandles to PCIe-related reset lines exposed by IP
> > block
> > +- clocks: from common clock binding: clock specifiers for the PCIe controller
> > +      clock.
> > +- clock-names: from common clock binding: should be "pcie".
> > +
> > +Optional Property:
> > +- max-functions: Maximum number of functions that can be configured
> > (default 1).
> > +
> > +Example:
> > +
> > +SoC-specific DT Entry:
> > +
> > +     pcie_ep: pcie_ep@fe000000 {
> > +             compatible = "renesas,pcie-r8a7791", "renesas,pcie-rcar-
> > gen2";
>
> I believe it is currently tested on RZ/G2E. so please use the same.
>
Yes you are correct its tested on RZ/G2E board, ill fix it in next iteration.

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
