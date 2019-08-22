Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BD19990F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 18:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tqrd1+Jxq+o8nEZppSkpVODCa72e6YG1AQZLUIkCAPs=; b=V4JEU5JBGPxpXy
	OBlO3uLi7lbI3WbsB6aqMu8ECmn2pABLvqxaOb1UKqChOIgPy2oFolifTc6bRmdcGTBqkPf+Xs/pO
	LvST404IfA9NLxebZnfs0xwPPemiuELLiNiePvpXyRbfF+bClsGLOofhlAiPCSW+aMlv80svF7zZY
	NzHNSrjIHgSbDkYW7bghw3i3iqf6t3brz8aczCYluohIn0Aw2GJh83yckcOnAcriS8InMf4x+BDol
	LIgjT5hC090TW+cvY4wy+eHUpnJ9Kt/e/tk2tUZFrLCQlKuLMOxpJTcAfzH49Mv9bbNlJPs2CZZ61
	2dQWrr1C0pD6Uw3X/rzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0psu-0008ID-Nr; Thu, 22 Aug 2019 16:24:24 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0psi-0008HI-0W
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 16:24:13 +0000
Received: by mail-io1-xd42.google.com with SMTP id z3so13108589iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 09:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5jA9zwn1UxjBuCxNstI14/1pfzFprdw/Ed8oKUD0YIk=;
 b=wnk14vUUq6zpP5CzYxIVacuXxytmkig+eZ/o2O8a9Wid0GHC4JbykIBqwDLLux1mAZ
 2n70jUXa8jEv0BnA2gtWJHfOibK6cxxKsdnjcHfBoPCbXR1PRgp4nqaXCLPtinun87Eb
 8Eeds3rTPI+f/r4ORNbQmnGN2qNtZLfoAm5C54V2AciQERaf+dUo6JfPP+Q2yTy7p9mr
 YrkPLYFkvlkI128m5q/nrW4J9aZnu5PFtVJE/3X0GkF7LfPUs0KnKbC+ZoOqUeU8npbE
 4Z1KAzE4lbVQEMW0GvbFodhHRJkgYty7ucFet4lsx8NXbLXQ/T8KqMzNxazxQ+RRSLcv
 GkYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5jA9zwn1UxjBuCxNstI14/1pfzFprdw/Ed8oKUD0YIk=;
 b=p35VwrItPfetl4SmAf7F/rtG4XlloY+T1IsyWszhFNyu/Z/324RqG1sGEbK6W2VKQH
 B2NjfB3SASfa650j7AbP/gy4VGojUXwyPRveI/TXlvm/fpHiHyCnzSrw5jffq4RzOhR3
 /pvyuTm4FYmHL0xRu91nEk2wMDTfsdizSMnc4yXVLQyUM/CgC4zlqMqxytTsyKw2H31p
 ycdP1s5KWdKiAPLLudfcdIyQOXYreK0z4qCle80klmM9RloF/fyIVO6kddfO8/L3Y7nm
 Y2qQt1kpKRCpBVif4F4g9D1urcCfyweOPmjlyT6UCknSdUWheMr+MATi45HPi/q2sGU5
 nWMQ==
X-Gm-Message-State: APjAAAV9IhBj2JuT58yS+hX/kWj/uJEWbOUmyBq0i6mkb1WHxR6q0Jl2
 996GuKZr47khGB17c5pjnT4kvttGv+r+ha40Q1uyIA==
X-Google-Smtp-Source: APXvYqzCwIozfnYJNCN4i+QfSef2+thQeEphqEkwMXZMvYLndmnllz8/vu0rhkQbN9YkrG2PKeJ5ts2DohP9qnbTM5E=
X-Received: by 2002:a5e:8a46:: with SMTP id o6mr646257iom.36.1566491050001;
 Thu, 22 Aug 2019 09:24:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <244fdc87-0fe5-be79-d9cd-2395d0ac3f57@kernel.org>
In-Reply-To: <244fdc87-0fe5-be79-d9cd-2395d0ac3f57@kernel.org>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 22 Aug 2019 09:23:59 -0700
Message-ID: <CAOesGMjDTbwSviXbB2P=wPjmp2JC_U8XB0fUby5R003RCaeRaQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/20] Initial support for Marvell MMP3 SoC
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_092412_079890_A2B3C1AF 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 3:32 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On 22/08/2019 10:26, Lubomir Rintel wrote:
> > Hi,
> >
> > this is a second spin of a patch set that adds support for the Marvell
> > MMP3 processor. MMP3 is used in OLPC XO-4 laptops, Panasonic Toughpad
> > FZ-A1 tablet and Dell Wyse 3020 Tx0D thin clients.
> >
> > Compared to v1, there's a handful of fixes in response to reviews. Patch
> > 02/20 is new. Details in individual patches.
> >
> > Apart from the adjustments in mach-mmp/, the patch makes necessary
> > changes to the irqchip driver and adds an USB2 PHY driver. The latter
> > has a dependency on the mach-mmp/ changes, so it can't be submitted
> > separately.
> >
> > The patch set has been tested to work on Wyse Tx0D and not ruin MMP2
> > support on XO-1.75.
>
> How do you want this series to be merged? I'm happy to take the irqchip
> related patches as well as the corresponding DT change (once reviewed)
> through my tree.

DT changes, unless there's lack of backwards compatibility, are best
merged through the platform trees. Especially for new platforms like
these where there's likely going to be nearby changes (and thus
conflicts).

I.e. driver changes I'm all for bringing through driver trees
(including binding patches), but please leave dts/dtsi changes to the
platform.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
