Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08075120103
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:28:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=go7o5Gn5huD2OEnWkRo2PnxqdKjCs5Ey/Arh+O39SYM=; b=uOY1/h+JfKGDXP
	f886X1gLaGJfXQoFL+1fM4ckjmZDNXkQvLVhUol8ysppjDTWmPZtv+iWmb43xU2FmP6KJosEtgTUw
	g2ajaA/DPsdbScB80uOM23iQk83HtMOL3WN5oHzCMFhVkgD5wBOIsMEgSBKm/z0RiDPgIjKuFkFVv
	folhcPuwNhrsxP++7rO0spLfYdsFIzbj65bRPc+mvSFNf2JqwNcXd4mwwwohavirlNaVt2O6tvGqG
	yh+0DaNjxYGY6n/tHEdwx4FAOfI9AdPo+rsae23hyWPfTVSrNxKR9TmtdFTlkMD4BkH/cfhYNlhJC
	rs7c08VcxGsjugLOoxLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmfw-0002AE-UI; Mon, 16 Dec 2019 09:28:24 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmfo-00029C-Bd; Mon, 16 Dec 2019 09:28:17 +0000
Received: by mail-ot1-x341.google.com with SMTP id k14so8403589otn.4;
 Mon, 16 Dec 2019 01:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pg5InTeU1+5SFJs1OkGX+MSzCriOaN0CGMKcgjVfhPY=;
 b=REYdlWoCppoJSnQwoBaE+mlNj/PWBu2hmjNYDPB3EHKKn9ekNqeKBaqE5S+WEvj5eP
 mIaOoJmFrZRpmT2YwDXMnszw1lDZUYFxnjs/tQVIalouwWG0HEHlE74hFo275GegcKTS
 dIvktzgT7iSkOp5KFfHf3gICWW9UVUplMnhk+UFJ3hZAdOpZE1UoJy2hwc0ZOjTJSZW0
 MHzZ+4sWJyuGy/MhabiLR4qrNTF25t3/9Ms5+WBAF1C/qEaz2ezxDv/XS3S6vEn2tWpU
 vZhy3yPAcT3xNalK5FcjqBI74kSsU+6nNY1b3r9GSfsS9o4ABXvei8js/FgwPczmKU4y
 9CMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pg5InTeU1+5SFJs1OkGX+MSzCriOaN0CGMKcgjVfhPY=;
 b=JzC/dTeXpHDWd9EVAaixc+ZS4SON8X+KshhnCPX7mjOOnIRQXXdJwIFzTH0+g4uoGH
 cfHI3/7Fk3CPSXVRZcf3kiYCg2QFEOHF3pbkgDwrOBzdQ6oSqRmEiZvMtVpGE7v1fvcv
 B92KPrCW1DyBxAlF8ipqgOYluV/jeTavfKCuQtyZvqitNqQDGwbZqLNPsGWvqpw2Fud6
 0L1lX/L1eWVJfbjgOaiMiG7A7lLVeCb3p/HlOHfJy9g/mApPE4QWEXsYIzSU+UNDjTB7
 pzTdC6nDzV7EAQugDUsdBT4gXWu6ztMAtV6Rx5I/T+bPKgeYSJ7N7txHeri3xTs58M3u
 5LWg==
X-Gm-Message-State: APjAAAWU5v5/CBZcmae2KTkq4vdzToffOhWP8cRYRz70bJeSbqBdXzbQ
 pG1WJYSndQvYclTNYQ23E1ZJsuoUwBWBlX21OJQ=
X-Google-Smtp-Source: APXvYqyGefY4ixRGGGVDGR32f4i/isJOglkcBFAsGS3yQVb39Cm/FzUVt3sGpLUqE3PoqwHroNp3cfe6VCKqeo0YAnY=
X-Received: by 2002:a05:6830:147:: with SMTP id
 j7mr15240871otp.44.1576488495702; 
 Mon, 16 Dec 2019 01:28:15 -0800 (PST)
MIME-Version: 1.0
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213184627.GA169673@google.com>
In-Reply-To: <20191213184627.GA169673@google.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 16 Dec 2019 09:27:49 +0000
Message-ID: <CA+V-a8ugehRVuV2kwYgkTVp3Vk4ftKsQVfW0=vL4L7BZbDdeNg@mail.gmail.com>
Subject: Re: [v2 0/6] Add support for PCIe controller to work in endpoint mode
 on R-Car SoCs
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_012816_399584_6E1B5977 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.csengg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On Fri, Dec 13, 2019 at 9:06 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Fri, Dec 13, 2019 at 08:47:42AM +0000, Lad Prabhakar wrote:
>
> > Lad, Prabhakar (6):
> >   pci: pcie-rcar: preparation for adding endpoint support
> >   pci: endpoint: add support to handle features of outbound memory
> >   of: address: add support to parse PCI outbound-ranges
> >   dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
> >     controller
> >   pci: rcar: add support for rcar pcie controller in endpoint mode
> >   misc: pci_endpoint_test: add device-id for RZ/G2E pcie controller
>
> The next time you post this, please update the subject lines to match
> existing conventions (capitalize "PCI", description is a complete
> sentence starting with a capitalized verb, etc").  Run "git log
> --online" on the file you're changing and make yours look the same.
>
>   s/pci: /PCI: /
>   s/pcie-rcar: /rcar: /
>   s/pcie/PCIe/
>   s/device-id/Device ID/

Thank you for the review, I'll fix the above in next iteration.

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
