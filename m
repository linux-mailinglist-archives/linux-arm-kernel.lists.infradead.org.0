Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF3511EBF8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 21:41:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyFrndCT84LdmtU/I8fDeKr1szTFw0zcesvxm4YbJMc=; b=bBsupVKCvBw0Os
	1yzv9rczqRemNzuJOre+Oltm69CeGBCOBTyYPPwgRoqHr2FlvbOf7JE52QeHuxH3IHcoa3yF1cuql
	9zTDYR5Q8/8/8UdaC2ik1D8iC3KMh6kBDx3WhRQa9Vl3JN/bDbjOKaE1YsNofxcVptYRpgSvhEPPh
	BF7WqvZRuBgRAorvZ9/ogC3YwI8Gz+ztzQuu7XWU2GTAPZ1fhRHooHs8eJrs+R+XXqGU9gMbmt6Mx
	6oERpjo0Mg4FUvez00J5TF5lMmIAaTiPcgNKreyWrLkH8q6Jizal1tsfkuEuu80hSpSa7DxwLgTj3
	ZvzBBd0TZpDzEHaspdCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifrki-0005YS-KJ; Fri, 13 Dec 2019 20:41:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifrka-0005XN-Hf; Fri, 13 Dec 2019 20:41:27 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B06324712;
 Fri, 13 Dec 2019 20:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576269683;
 bh=TD0vlyaaEUltY3uhgJ1XIdZNPofDo4T5Xxo/vcYOCwY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HlfwTnErUlECUKC8DbLDmiSp9ER8lm5MlUc4wAmhZAfxb80fNIgxtpMQLHBhIf2BD
 PhdWD0Nla1HEuWbkUx53pMHtpsBhP/isjIDZyCnhoB75dQIZpDSkGQdUFz6seFiqsA
 VcFTdm5rezIYZHYv7FrNXantiQ1m6HoYtrikD1XA=
Received: by mail-qk1-f182.google.com with SMTP id z76so330337qka.2;
 Fri, 13 Dec 2019 12:41:23 -0800 (PST)
X-Gm-Message-State: APjAAAVDa8CMFmVuzv1SVzDc/PxEWFXdzVvjVZP4AkRjczUFiGT6ihNP
 me9Jat6ux7mcCfyAoi941SbUbssUVZcTIcbroA==
X-Google-Smtp-Source: APXvYqxkbISqK9twnzzbDp0Ep4niiepgzIHARDF7yBHJmpY5klt6cp3Cad6Ltt+c1NvlrxmDe5/mRhj5K2wE2GoSEAU=
X-Received: by 2002:a37:85c4:: with SMTP id
 h187mr14127413qkd.223.1576249641042; 
 Fri, 13 Dec 2019 07:07:21 -0800 (PST)
MIME-Version: 1.0
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 13 Dec 2019 09:07:07 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
Message-ID: <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_124124_605204_658215BC 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -4.1 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, devicetree@vger.kernel.org,
 Chris Paterson <Chris.Paterson2@renesas.com>, Arnd Bergmann <arnd@arndb.de>,
 "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Simon Horman <horms@verge.net.au>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>, Tom Joseph <tjoseph@cadence.com>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 2:48 AM Lad Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> this patch adds support to parse PCI outbound-ranges, the
> outbound-regions are similar to pci ranges except it doesn't
> have pci address, below is the format for bar-ranges:
>
> outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
>                    upper32_size lower32_size>;

You can't just make up a new ranges property. Especially one that
doesn't follow how 'ranges' works. We already have 'dma-ranges' to
translate device to memory addresses.

Explain the problem or feature you need, not the solution you came up
with. Why do you need this and other endpoint bindings haven't?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
