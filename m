Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB25120051
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t01cQqd6SFAEd5Y7QDvD/v7Sj8YE6dbjWBcH+N+++fQ=; b=V3JHyafnbLNgiS
	OlV5VRi/3FglG8HG64oBzIPoCBqbBVC5oVL2ZhD9LD6lcoUs8se0FXfYQfkGrJCB+kk2nSfyQhy/l
	8g5E2NQLbQuNWUT+MXdY5VK0J8tMC7N3OkzhFHFjPfFov5VRhLi/AvSGBxe3nyEa9aXZWZ4j8lbH4
	HeFHCD44DTQnCPCOiwwQRLwt6VnwiUKOtTcKeKfPTqdmmViZf/ymUQLiK6rDq282JChTnIQt0cnsE
	Dh2TnWgEZ0DM0fyx9pAU4ahtlrSxCp4fPHQd1UtBAKv4RdANOXhyRgWHnBpIiq+r9DqggRTjyxyvP
	0sSOmRoH/KTxIqsjgYGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igm8M-00025X-Br; Mon, 16 Dec 2019 08:53:42 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igm4d-0005yt-Hw; Mon, 16 Dec 2019 08:49:59 +0000
Received: by mail-ot1-x336.google.com with SMTP id i15so8226393oto.7;
 Mon, 16 Dec 2019 00:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4xOLwi7XGa06O+FcZfECpskN3Lf2VXslN2VEftJlRvg=;
 b=dJ58NKxpobcoCFcVrixIygWkFd2lRYRcK62+F0oqTQy0PfcLrohbjZ/4794t+zXWew
 6YLPUjhuSc++1fWNSHL/u93PNyCv2AvGz6o5coEvJZP3/hXPveU7fhP50DZUhQl1cz7m
 V5fbw5287Yw5Yh7oHOP+LKFl2v6NCNjzpdDHSpDJqcHwSxuqAjcA54zuTxIvsu+dfUvy
 UjipEEgIYB2tmihK3Vq8xjpTJ7WIBIUSWu1i2WoVVYyGSEL2gBFGJRoiUBwuf9+OYdfq
 fv/+7QQ5mAQxYsEukysEKYsNNsRRs/bU9NflxHI5EA4lz+ZI6DUvHdRkPSA7tteynrLD
 HAbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4xOLwi7XGa06O+FcZfECpskN3Lf2VXslN2VEftJlRvg=;
 b=pLXvhFvaACXNuRmoIZq5SMcLVako6u8YYF2WLBQrVz/hcPGV9eie/Qk4UZdYot5aFW
 NI3GDAjcsaQy2FrrJWY9qQfAnzoD9sG4fWd/GHXigLVNPaoYl4JfCLwy+qyef7svITxg
 4hYKP8ObRNynFqns2UcTv2mEE768Vx0lMJocMh67+nhTvbD4Q0OQEZ+Gmm+Q/0ozQZpJ
 Ealksq65GiS5tTzdGKuFAH7v8kaGdmO+fg9u2stovrTyWl+66BeIt9D25NKUCkVjcFai
 wPW+zJSoSVWKu57qzpnNfee/RnptrB5oU7oZkibeNhWr3MJekCN87IfVRANnAth/kJ6h
 7oLg==
X-Gm-Message-State: APjAAAVwrare+YSl5nMy22LivmdoUnGzogUinILJC+h//hAAxPFawxOa
 4ASfMRpu00yrEFfzm4RgCyJXvSMkdttmvxSi5l0=
X-Google-Smtp-Source: APXvYqwlbGXOP54hraUBXqLyvcB1sZC55s35DdLDVTvMlWDnFYSYzIpnhC0yoc7BBbnE7hMFzhGGWwdDVzlod+Kll6g=
X-Received: by 2002:a05:6830:16d0:: with SMTP id
 l16mr31683433otr.176.1576486189948; 
 Mon, 16 Dec 2019 00:49:49 -0800 (PST)
MIME-Version: 1.0
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLSYroDZGWksJJ=E+01X=3Tji4+GmK8s3i+d2BJphqiLQ@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 16 Dec 2019 08:49:23 +0000
Message-ID: <CA+V-a8uKBuVUQvkoJ9pJYX97Qy3JazTyLCy-2T35gOX77AP8vg@mail.gmail.com>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_004951_702573_72C39D96 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:336 listed in]
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
 Geert Uytterhoeven <geert+renesas@glider.be>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
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

Hi Rob,

Thank you for the review.

On Fri, Dec 13, 2019 at 8:37 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, Dec 13, 2019 at 2:48 AM Lad Prabhakar
> <prabhakar.csengg@gmail.com> wrote:
> >
> > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > this patch adds support to parse PCI outbound-ranges, the
> > outbound-regions are similar to pci ranges except it doesn't
> > have pci address, below is the format for bar-ranges:
> >
> > outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
> >                    upper32_size lower32_size>;
>
> You can't just make up a new ranges property. Especially one that
> doesn't follow how 'ranges' works. We already have 'dma-ranges' to
> translate device to memory addresses.
>
> Explain the problem or feature you need, not the solution you came up
> with. Why do you need this and other endpoint bindings haven't?
>
rcar SoC's supports multiple outbound region for mapping the PCI address
locally to the system. This lead to discussion where there exist controllers
which support regions for high/low priority transfer and similarly regions
for large/small memory allocations, as a result a new ranges property was
added, where we can specify the flags which would indicate how the outbound
region can be used during requests.

The current endpoint controller drivers just support  single region.

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
