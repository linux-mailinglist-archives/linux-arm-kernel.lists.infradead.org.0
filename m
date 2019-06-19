Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6774BA5A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHrrUtfvfhaYNBpLEsf8fBZx2fILmP8NoOWBLvxAclE=; b=EPAhsFUiJHv1RJ
	F6MaUgaOF/Y+dMw75ffpP3GO2A2DXBzBDFKapvJJjheo2RLeJNPJBqN258NCZ5icqgVtb0L+6Bq9p
	E6yHovdGZbZAYVS2dTfJTX9ms8Fsp/vxiIYWa8LmBDR7mR+uiIDTPiBj8uWEx7kAbeUvKpVsbD7BN
	x6gR6eUGEyz5t9bE6tjgVN0/8D9eIPAziCIyCgOAbtqKuzpsc4IFrrvYnFX7+98CVNtUvg2MQbGz7
	Piv8THkV5Keue4x0LYvMFfnefKJX8wG/YuMJ9k1/4TogPQ2pueKXQwBtO2dohZTBClNUk+KU0ZBnX
	PlUdEFHJCMR2AdA19vNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdarn-0003l5-Ni; Wed, 19 Jun 2019 13:43:12 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaoA-0007jl-PI
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:28 +0000
Received: by mail-ua1-x941.google.com with SMTP id j21so4235224uap.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ygy1CFkQCFTyi/IaVMEk8MlBKcngDnJcBhfNCxwCCbI=;
 b=SJYrCy+bfnRbJ93ZqsjyRYfk4YZr6fNQVRLcOUDirI0mB2QZiVbpPFPpgOH4OwXisL
 6T/Nz3oRrbVzY68aw9HU+kZGXvjwf7YTiDi4NxbV8yV0lyRy3Se3TO8YAaArfXc1NgtD
 e+tZPzTrD/vCFJ9UNyQsw9tSySTeg9ZqTusm+nmEM3quTV5E2qsygs361Z4PwT5q2ykf
 BhTkWoKQZX1OOVred+4P5uyHX9NfhGoPuKhVGsShL1G9F42URdX0phy2rRjOWz6ZkUDU
 fdM5Rc71DmqsoooEurdw3vvURuQnOoBEoebttrxPtmjg8cQ01FaT8ZtaTsis8IXqNWm+
 ZkQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ygy1CFkQCFTyi/IaVMEk8MlBKcngDnJcBhfNCxwCCbI=;
 b=BrgcdQhW2nyzEX/N4e53wxqrdVQhI2aXt/tuyJtyPvBim84/FRmGTTHfEzAfoGZ/+J
 L/pfnWzdwzJqMDnLgsb/ZvrYzdApDqLe3nZ07WLKgfwByHWEx5K4epxopmWbUDGGZXEK
 KM4CjZrkz7U8H+vrop+KYsnTVUttAKTuXXVk3W+J4hJCqdYGDm7qhFxnt1cQRjsBJ25M
 ILP1rmCQhewCmxcARQMtuHlz3xsfgMg13bgWn/3Roe3M7bR7t0Vq3PbW9Ys8Oi469xo0
 A2+Nw/aaMW7ocLJ2iunhCCsW6EZQa6UrMmOd6LAQp0AJZ+fTIKd++1Y/EZ+0Qf1rDDYj
 3tLg==
X-Gm-Message-State: APjAAAVxd7itRo/puL+yr1ax312YDiGPSLVQDhfH4sy5OSEJvVOmJiJP
 U4Jf7lp7IkObKn+TmA8AQsF2A14xMRWloLl+9a/gwlLL
X-Google-Smtp-Source: APXvYqy2SC+4P4kfrJYqcfaPIIK+E7p9ADoB0DluVM96aMYIJtafUGfr1APFftQPqYnOav8bOUtdJ6QkFhwE1yInUVU=
X-Received: by 2002:ab0:60ad:: with SMTP id f13mr15613313uam.129.1560951563492; 
 Wed, 19 Jun 2019 06:39:23 -0700 (PDT)
MIME-Version: 1.0
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFrJwpwUUX_q2kcR9QY_fv9Lgos+ixPmU6JMeJVqJAiFpg@mail.gmail.com>
 <5feac3fb-bef3-b7d1-57d6-81e115e1f555@xilinx.com>
 <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
 <MN2PR02MB6029DB87CEE32655B0F1E794C1E50@MN2PR02MB6029.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB6029DB87CEE32655B0F1E794C1E50@MN2PR02MB6029.namprd02.prod.outlook.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 19 Jun 2019 15:38:47 +0200
Message-ID: <CAPDyKFqb3uRU1XbrioSw6UZ5atZ8WwZNhQ_yq2+3JfxXZCxr7g@mail.gmail.com>
Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
To: Manish Narani <MNARANI@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063926_918487_DAAC9A0F 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Nava kishore Manne <navam@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Rob Herring <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 at 10:40, Manish Narani <MNARANI@xilinx.com> wrote:
>
> Hi Uffe,
>
>
> > -----Original Message-----
> > From: Ulf Hansson <ulf.hansson@linaro.org>
> > Sent: Monday, June 17, 2019 5:51 PM
> [...]
> >
> > The "const struct zynqmp_eemi_ops *eemi_ops; should then be moved into
> > a clock provider specific struct, which is assigned when calling
> > sdhci_arasan_register_sdclk. I understand that all the clock data is
> > folded into struct sdhci_arasan_data today, but I think that should be
> > moved into a "sub-struct" for the clock specifics.
> >
> > Moreover, when registering the clock, we should convert from using
> > devm_clk_register() into devm_clk_hw_register() as the first one is
> > now deprecated.
>
> Just a query here:
> When we switch to using devm_clk_hw_register() here, it will register the clk_hw and return int.
> Is there a way we can get the clk (related to the clk_hw registered) from the
> clock framework?
> I am asking this because we will need that clk pointer while calling clk_set_phase() function.

I assume devm_clk_get() should work fine?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
