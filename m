Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C40EC167
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 11:54:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jvMd81FhWjPT6dDiS1BRxcWsB6nqSoJ/oR27kEbzsI=; b=N8Rq27n5IWQGA7
	esU04Cc5l61gTlAtfZHYzYGwaX74KU/AwftGtC4dcDhv/ZlcZ5qHs4xy/6T8MXvDP076w1kfss9tf
	NIDpqiKrNEZNU0umpeeelL6V5q90xg/HnkCWkbDschLvjlZoKvv//0ymUFyq8lK6Kjkvsbgs/LO8p
	HHjfcw9OJp8NLSfNvX/Ot3c/rASvIIXpjLByQoBPS7wtegexx7zS4/Be6fK6a//wms0EkRl2X9/LE
	YWC1gjmrlYYqsw3b+W1Otd/XxNX0EAcjySvU5h/Z5w+JDaSJ91K4MAMTBTkkrfDG8UZuL+GLW50dP
	bIe9ih9nW++Usl4fEIbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQUZB-0001G4-Dk; Fri, 01 Nov 2019 10:54:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQUZ6-0001FX-0Z; Fri, 01 Nov 2019 10:54:01 +0000
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 097F021835;
 Fri,  1 Nov 2019 10:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572605639;
 bh=Qq5uDUh2NAo8fqV6wNGVGEMgX1RTvNFGVvP2NZoDCJs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dJssP0BubNF96U27YGA25BF4L03OtdVguBaTCc00FUo0WFtULEicmT4wttke4p4Pt
 2O2Rw0nW5apd0QaniBP3+m0ewuiu6nlWqaooJT7vgZVV01uND28whgkmCp5XzM9yX4
 WTfayBWyWoyWkUOz9uP+o3u6Hr7XkXfFoIsMlAOU=
Received: by mail-lf1-f51.google.com with SMTP id q28so6942079lfa.5;
 Fri, 01 Nov 2019 03:53:58 -0700 (PDT)
X-Gm-Message-State: APjAAAUqiH6YROSzuc0ykRaBfj+4lO/3M5pdC1cdKFuFN+vLEY1rSjDv
 VR0jxiLVcg0q4IPgSv5hdfrocLkFaaDXKObOmAY=
X-Google-Smtp-Source: APXvYqzPNO+lSp1NGMQoEFqECmKTS1sJUS58FFxOWntNonCUIVnUCLRCXSqjn52p8zPDEzb3zy9Uf2v1Rt6VLAnp19Y=
X-Received: by 2002:a19:ad4a:: with SMTP id s10mr6726882lfd.159.1572605637145; 
 Fri, 01 Nov 2019 03:53:57 -0700 (PDT)
MIME-Version: 1.0
References: <20191021161351.20789-1-krzk@kernel.org>
 <20191021161351.20789-4-krzk@kernel.org>
 <CAMuHMdXr7_HP5NUQ_0D76N-eBuootQqyPusqmf6nyDnLN__ORA@mail.gmail.com>
In-Reply-To: <CAMuHMdXr7_HP5NUQ_0D76N-eBuootQqyPusqmf6nyDnLN__ORA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 1 Nov 2019 11:53:45 +0100
X-Gmail-Original-Message-ID: <CAJKOXPcZGhC1+-tOwL6N_ohWzXEqJ3T6=HWefNzXsa3eeQN1fg@mail.gmail.com>
Message-ID: <CAJKOXPcZGhC1+-tOwL6N_ohWzXEqJ3T6=HWefNzXsa3eeQN1fg@mail.gmail.com>
Subject: Re: [PATCH v4 4/7] dt-bindings: sram: Merge Renesas SRAM bindings
 into generic
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_035400_098799_58BE6F0D 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 1 Nov 2019 at 11:08, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Krzysztof,
>
> On Mon, Oct 21, 2019 at 6:15 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > The Renesas SRAM bindings list only compatible so integrate them into
> > generic SRAM bindings schema.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> Thanks for your patch, whcih is now commit 0759b09eadd0d9a1 ("dt-bindings:
> sram: Merge Renesas SRAM bindings into generic") in Rob's for-next branch.
>
> > --- a/Documentation/devicetree/bindings/sram/renesas,smp-sram.txt
> > +++ /dev/null
> > @@ -1,27 +0,0 @@
> > -* Renesas SMP SRAM
> > -
> > -Renesas R-Car Gen2 and RZ/G1 SoCs need a small piece of SRAM for the jump stub
> > -for secondary CPU bringup and CPU hotplug.
> > -This memory is reserved by adding a child node to a "mmio-sram" node, cfr.
> > -Documentation/devicetree/bindings/sram/sram.txt.
> > -
> > -Required child node properties:
> > -  - compatible: Must be "renesas,smp-sram",
> > -  - reg: Address and length of the reserved SRAM.
> > -    The full physical (bus) address must be aligned to a 256 KiB boundary.
> > -
> > -
> > -Example:
> > -
> > -       icram1: sram@e63c0000 {
> > -               compatible = "mmio-sram";
> > -               reg = <0 0xe63c0000 0 0x1000>;
> > -               #address-cells = <1>;
> > -               #size-cells = <1>;
> > -               ranges = <0 0 0xe63c0000 0x1000>;
> > -
> > -               smp-sram@0 {
> > -                       compatible = "renesas,smp-sram";
> > -                       reg = <0 0x10>;
> > -               };
>
> > --- a/Documentation/devicetree/bindings/sram/sram.yaml
> > +++ b/Documentation/devicetree/bindings/sram/sram.yaml
>
> > @@ -186,3 +187,17 @@ examples:
> >              reg = <0x1ff80 0x8>;
> >          };
> >      };
> > +
> > +  - |
> > +    sram@e63c0000 {
> > +        compatible = "mmio-sram";
> > +        reg = <0xe63c0000 0x1000>;
>
> Is there any specific reason you converted the example from 64-bit to
> 32-bit addressing?
> All Renesas SoCs using this have #address-cells and #size-cells = <2>.

I should mention it in commit msg. The reason is because examples are
compiled inside a {} with address/size cells of 1. Instead of
conversion maybe it would be reasonable to put it inside additional
node adjusting the address/size cells.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
