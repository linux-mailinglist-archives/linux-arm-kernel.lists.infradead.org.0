Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B86F8604
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 02:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3infH2/kqD8tFgZSYSVtiYt56TnzRHcZQZ0aRqK0Cs=; b=rGpkbL/plxT65O
	HXoCadv0PdFHCtUiFd+tKGUPwk7Yb+ORG8NhGHIi+mqqoPenGY7J2SYwAFOE+YeE9e23OgIwuWZs2
	Dig0C/pBR17Te5TMrKZftn1XTi69HrlUX1BCEBI93shlK50y07jUdL8g5uYJM0ditCJDBOr1I//Ol
	/Q0r7Y+kytZ4bLO+46FTSVyx1VcaYWLWCYmGOrmyAJvSNWA1zO1gT1fiiNnfn+3VAJskb5MVqCtmw
	zIo9QuqbUhdPHgDpzxfyxsV3Bt5Kb3A0xIg6bsVCKsdnotF2hOiTSgKWnWn5HvuK3hLSSR2dYLxgm
	kMtZMeA6k1mkC98wnCJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUKwV-00053R-JT; Tue, 12 Nov 2019 01:26:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUKwO-00052f-0f
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 01:25:57 +0000
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B667D21E6F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 01:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573521955;
 bh=DX1vEzL+3MVt5eUlyF+zAZKHx1YMsLdQ/QqoNGaymIY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VyBIZsWWEPq3CL0syfUsNgnrtZEz9tIlQF9ktRM0nRy6nNo1E7UMwyP+tM//Jvqyt
 EtJ9wrNhbpR2OfI2gOYekZezu6wc5Jey/Z1Y12+Vzz9OheqPLUVq32kkKB7yiIB0z1
 wrt4GPSK160qgZ6gTWXeQJ89a1RGxQw4z/2a5lWo=
Received: by mail-lj1-f182.google.com with SMTP id p18so15867746ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 17:25:54 -0800 (PST)
X-Gm-Message-State: APjAAAVM3tE5tQHsKcykaPQQlRkx8bSLySl68DgpKW1Ufw8eHJok/Vw5
 PKwxMRNYWppFkDw14uTDzAAiO3HQty2aYX0MxXY=
X-Google-Smtp-Source: APXvYqzAnmRY46Y2319LxA1ya2AzC1meK/bB08e65CFbaxgsbQnz3pwwhZ8Nlkuu9qdGAX+SGLMNHEpbtuJbuho6W9s=
X-Received: by 2002:a2e:9a55:: with SMTP id k21mr16063034ljj.85.1573521952893; 
 Mon, 11 Nov 2019 17:25:52 -0800 (PST)
MIME-Version: 1.0
References: <20190806165749.29468-1-GNUtoo@cyberdimension.org>
 <CAJKOXPcuPQa-jVtFMfiseuXq3P=mxc6DecCCj_j-y2NauMqTdA@mail.gmail.com>
 <20191111195219.768cee6d@primarylaptop.localdomain>
In-Reply-To: <20191111195219.768cee6d@primarylaptop.localdomain>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 12 Nov 2019 02:25:41 +0100
X-Gmail-Original-Message-ID: <CAJKOXPc+6zjkHq70FQ7NZN3U_=zcS_KhF+x7KcctngEWdPBPJw@mail.gmail.com>
Message-ID: <CAJKOXPc+6zjkHq70FQ7NZN3U_=zcS_KhF+x7KcctngEWdPBPJw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: add touchkey nodes for midas
To: "Denis 'GNUtoo' Carikli" <GNUtoo@cyberdimension.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_172556_081067_E47AD115 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Simon Shields <simon@lineageos.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019 at 19:59, Denis 'GNUtoo' Carikli
<GNUtoo@cyberdimension.org> wrote:
> > > diff --git a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> > > b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi index
> > > ce87d2ff27aa..e71f103ab940 100644 ---
> > > a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi +++
> > > b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi @@ -166,5 +166,9 @@
> > >  &s5c73m3 {
> > >         standby-gpios = <&gpm0 1 GPIO_ACTIVE_LOW>;   /* ISP_STANDBY
> > > */ vdda-supply = <&ldo17_reg>;
> > > +};
> > > +
> > > +&touchkey_reg {
> > > +       gpio = <&gpm0 0 GPIO_ACTIVE_HIGH>;
> >
> > You break existing code...
> I didn't understand this comment.

With this change you break the s5c73m3  by making it disabled.

>
> > Let's keep the name as in schematics - "LED_VDD_3.3V"... which brings
> > us to the question is it really needed for touch keys? or for display
> > panel?
> On I9300, I9305 and n7105 without the touchkey_reg node, the keys still
> work but the keys backlight doesn't.

So it's for backlight - let it be the name from schematics "LED_VDD_3.3V".

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
