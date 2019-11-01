Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174C3EC115
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 11:09:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhAZm0mDO90k8EE/mgqIRILPGXZQknbeZehQ5NheQr4=; b=nofTQxEH+mA0gT
	10KzIkXR7YZ6HWu/z+0L4qYZ0pqEsiCN69/Ntj6lys1uy9FAWC/wvYcSBKIgj/GBywTS+h3zua8Ds
	Ngsr+aeCKq2ZeO6n694d3bXh+ybydpjh2gUVD1fL+msds8owAz8SZDH2sgzChDISy3um7s+9Efhv+
	uk04HqLCOJyWWJ1JHf3yH96/pXdcX6+bycPtZwxdppBzcU3sMr42nOWP4/u3PAhMPFehMCJXYThnW
	SolYZyeIV48G25i2/gYQrzf4byUPLGerInUeIEQxHedjzywm9u9VHF5r3aq9oaCqH/BHGy5aW7ALc
	4wgIxJqF0LAvGQ1KQaSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTrW-0001lj-Ah; Fri, 01 Nov 2019 10:08:58 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTrP-0001l7-5G
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 10:08:52 +0000
Received: by mail-qt1-x841.google.com with SMTP id y39so12316598qty.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 03:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dixvlRxBe1XqqJqVc1zgKXwNqGAEbJcLWXze4Juxj/A=;
 b=D6/bx9Qt4Sz4Zl1m7/iyiTMXK4O//gXhNKiXB2chqIP3aluDGN2fva+Y6wVKBDNG0P
 Li4oORgU/Hq8vdPn77G6Hk377QzmddzW+CNPZ9pO+TM2ikk2UmEM/qXJryAK1BMRT+/f
 4kl53gQeEIhRpSQ2xOi1McdZWP5sJpnLuRBcI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dixvlRxBe1XqqJqVc1zgKXwNqGAEbJcLWXze4Juxj/A=;
 b=aa6ZLUrXXP2xuWKwijYaJn0upr8cAx0x/ReMCuZbSrAvDzdpf5cntjt6+YBPwHw1Wl
 EmvIMpQBpn5T007+NslpWKifmxpx87yaiGuE6gIzBEyDDi9fw6DeTAm+MhOJRGQveAqC
 dMkyJht5BjXR7R0z+qfgfWNq+QWVZGS8vs7M+GsOLu7JCSYnCRZxF+ilYByRFtObttHM
 1vnIyW15l42rBeG6LH7l1kfxKM9YszsiBpn1FK1ruTYrO7GGOjkbrAVMc2CgBvMPZjbd
 J6jzrBslm+KWff6tr7ihr9fgmeIljql2DxxyN2EPtGF2bdbIcA9QV2Azidds5N9JMHgy
 ydQw==
X-Gm-Message-State: APjAAAUol8t6kEldUn3heqN9b5r1O7W/nuTnaNDu6FWvYBjwEG7BmZqW
 9WB2Xxlxp4Oqfy6AyfiPJDwUEK/HBhPD5LGwamg=
X-Google-Smtp-Source: APXvYqy0Z22TcpdNer9jICrspqvBdfKr5qP78g1hshmD7TQOwlJJKb1RCeY5BVLa6y96G8jOc0taqrKjoAq9DFAyCus=
X-Received: by 2002:ac8:e03:: with SMTP id a3mr9899612qti.169.1572602929835;
 Fri, 01 Nov 2019 03:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191021194820.293556-1-taoren@fb.com>
In-Reply-To: <20191021194820.293556-1-taoren@fb.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 1 Nov 2019 10:08:35 +0000
Message-ID: <CACPK8XcNxs5T=ZC_mRnvkOF_kqS1AvP=9PvMB6w9Fgn_XbtZQw@mail.gmail.com>
Subject: Re: [PATCH 0/4] ARM: dts: aspeed: add dtsi for Facebook AST2500
 Network BMCs
To: Tao Ren <taoren@fb.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_030851_404331_13D2E51A 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tao,

On Mon, 21 Oct 2019 at 19:49, Tao Ren <taoren@fb.com> wrote:
>
> The patch series adds "facebook-netbmc-ast2500-common.dtsi" which defines
> devices that are common cross all Facebook AST2500 Network BMC platforms.
> The major purpose is to minimize duplicated device entries among Facebook
> Network BMC dts files.
>
> Patch #1 (of 4) adds "facebook-netbmc-ast2500-common.dtsi" file, and the
> remaining 3 patches update CMM, Minipack and Yamp device tree to consume
> the new dtsi file.

The patches look okay to me. I modified the file name to match the
convention used by other device trees in the arm directory, where it
includes the SOC name first.

I also reworded the commit messages a little.

They have been merged into the aspeed tree for submission to 5.5.

Thanks!

Joel

>
> Tao Ren (4):
>   ARM: dts: aspeed: add dtsi for Facebook AST2500 Network BMCs
>   ARM: dts: aspeed: cmm: include dtsi for common network BMC devices
>   ARM: dts: aspeed: minipack: include dtsi for common network BMC
>     devices
>   ARM: dts: aspeed: yamp: include dtsi for common network BMC devices
>
>  arch/arm/boot/dts/aspeed-bmc-facebook-cmm.dts | 66 ++++---------
>  .../boot/dts/aspeed-bmc-facebook-minipack.dts | 59 ++++--------
>  .../arm/boot/dts/aspeed-bmc-facebook-yamp.dts | 62 +-----------
>  .../dts/facebook-netbmc-ast2500-common.dtsi   | 96 +++++++++++++++++++
>  4 files changed, 136 insertions(+), 147 deletions(-)
>  create mode 100644 arch/arm/boot/dts/facebook-netbmc-ast2500-common.dtsi
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
