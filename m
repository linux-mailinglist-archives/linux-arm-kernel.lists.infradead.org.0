Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95B512006A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:56:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuEw47NrtgNY05Pc7XYgLP70UHKTwjpQ6jjS8oc5lQs=; b=udgSGRuLeXDpgR
	SzRbeh6SUw6Y7daLtOsq81m6Nt8c5aj+DVJv6Vddskj7Jq0wmw/k7q3mwVnfC8GR4kNJKQ5hhfAQB
	/cicpaNMRhEYhzBuxQOFSCrNyJVW1LNEQfPQwmP7kfIAe+e2wCoLn2ZPWOLIv8sen/jMGVSIniy43
	rMnZoDZwKdiLd/sj5OnXbAHUxyqrygn4QZDuLAWxkksFNG4T/AoYAt8b1AsRSeFiY5Hi3pAjfbWw3
	k7R+sziTN1E+o8sb7oM0MMUvzLLFFnRBXN0Gzkz201k2LB0LCI9c7pmpvn0G7pSCkbyhZMj7ecjpe
	jKt6OORc6veZAYtRNQOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmAq-0004fs-C1; Mon, 16 Dec 2019 08:56:16 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmAc-0004ej-Ns; Mon, 16 Dec 2019 08:56:04 +0000
Received: by mail-ot1-x341.google.com with SMTP id h20so8269768otn.5;
 Mon, 16 Dec 2019 00:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kYtpzi4OVKtcejBRTQymtnHqpwZ9IMOgfskqRMoMYJk=;
 b=FjlOHfjUAfcuD6g8sPuagxsQz5NN8GYgQkKB5eMFUDSFQVwSP89GYTqlut3C2mn/YS
 eBOmWEFi3DmQuTp/qkgihQaDk97WF8xOzKLyWA49CUntFhQp+iGILFSDaYtSjG/0u4Wj
 LxTSyOx9E//ppj6YpXZ9za8Llr1VmVC8BQXLoBKo0CW3HilP1RhaTFw1FQjulLbUp223
 mcF16tAkJWH/7f/hSfMy6k/MJDZnaM06WaiErKL/enY0E/Lb5Y7170h/2S8KarFCyZDD
 CgTiwf8HwXNonQvRTdFiPmrTUBGgr+ds+XVrfdLY1VYSxeJGxr4PI7XI3xP99XeFpSks
 XLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kYtpzi4OVKtcejBRTQymtnHqpwZ9IMOgfskqRMoMYJk=;
 b=mu97z2Jth1lCR1Wd5mSDq+kP25Y49+W5Kgl/u4XwbxZPypetrml8ZxGMRoyvlc3k3j
 a2miAlwEFfmaviub87h7JMb8j1U9R0lzIJDQdqpYnleqAX8ABjSwAjc9mGHUmUXWLg9Z
 nPuxmOOBl/H/LURiLMb2lfo8bEXhr9JV7RUMPrxHrskqnZr3gEQYWJxtRuSnWSHHSF2B
 YuKn8++lJytAUuqwuqnL2sjwu5xg+EY8dQh5zhsTh4aqkY2B0YpFRjpTwrkhLbG1UzPp
 g4K7IKN9YyhBA6FDRe8DJcN6xFJ4JfkmX+nnfgwo8QUfcd1GCsw9nGdDYp5yrFXVQxxE
 UymA==
X-Gm-Message-State: APjAAAUaMX9VjEAvcHzFub+QMmkaodL0D/p43v9/HmQBppW6ijAqYXGP
 8y9oTGXNisvbb4nTjb1SA7f5MtHUK5yXnm8t7lM=
X-Google-Smtp-Source: APXvYqxuG1NFvuEk8dd9qCJss5ujNitykdgf+GtcWeO9MK3yKpQRtT4rBhNxc5bDbHMtxvDMRwurT0NSEqfrjfpI+2g=
X-Received: by 2002:a05:6830:147:: with SMTP id
 j7mr15118795otp.44.1576486562033; 
 Mon, 16 Dec 2019 00:56:02 -0800 (PST)
MIME-Version: 1.0
References: <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20191213201944.GA190383@google.com>
In-Reply-To: <20191213201944.GA190383@google.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 16 Dec 2019 08:55:35 +0000
Message-ID: <CA+V-a8sd1c_8-weQjn6_UbAmVELLQa=3Fe+0cdXSm2Sif0HDRQ@mail.gmail.com>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_005602_798916_C78B66C2 
X-CRM114-Status: GOOD (  15.27  )
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
 linux-rockchip@lists.infradead.org, Catalin Marinas <catalin.marinas@arm.com>,
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

Thank you for the review.

On Fri, Dec 13, 2019 at 9:05 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Fri, Dec 13, 2019 at 08:47:45AM +0000, Lad Prabhakar wrote:
> > From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> $ git log --oneline drivers/of/address.c
> 951d48855d86 of: Make of_dma_get_range() work on bus nodes
> 645c138636de of/address: Fix of_pci_range_parser_one translation of DMA addresses
> 81db12ee15cb of/address: Translate 'dma-ranges' for parent nodes missing 'dma-ranges'
> b68ac8dc22eb of: Factor out #{addr,size}-cells parsing
> c60bf3eb888a of: address: Follow DMA parent for "dma-coherent"
> 862ab5578f75 of/address: Introduce of_get_next_dma_parent() helper
>
> Make yours match.  There are a few "of: address: " subjects, but the
> ones from Rob (the maintainer) use "of/address: ", so I'd use that.
>
will do the same for next iteration.

> > this patch adds support to parse PCI outbound-ranges, the
> > outbound-regions are similar to pci ranges except it doesn't
> > have pci address, below is the format for bar-ranges:
>
> s/pci/PCI/
> Capitalize sentences.
>
will fix that.

> Is "bar-range" an actual DT property?  If it's supposed to be a
> generic description, "BAR range" would be better.
>
my bad, it should be outbound-range.

Cheers,
--Prabhakar

> > outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
> >                    upper32_size lower32_size>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
