Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 368D21BA0F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tqz5qfZ5qV1WFkSLAF1UaI60nPpIDwn+oLeCfUlo6RU=; b=Oyt6M67frAuIcV
	Wgsa/Cl+g3C6gNfFUR7bUzmhQtNBpEjiiBA7f23QObsqGEUWnPwt2sLsxtgapX9iEs/ptf9TAQvla
	8olMB7mIoO7pRhJeaTefZbKfsEvSg4MIla+6MSNQS4zEtUBd7WKI2LxveMvzS70gbn5W6rQ+7YgYo
	7OAfDvKHGwiWlkOAq4HGd3aOsbrAmNW3ZPd/ZXJaAFltw6dHzLAOWOZlpJ2AgzY+e3qn4pR/mv7V6
	l6vWxV2nUhGECsxxlFnaz8vfmoDzC/rMJKW2fgcTDVU3Zf+Pu+ovGgGV2ZwjEmm5AykYq0nOLnGN6
	JJAwtAb5o6YJspYzKyzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT0sb-0004c9-Vs; Mon, 27 Apr 2020 10:20:49 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT0sT-0004bU-V4
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:20:43 +0000
Received: by mail-ot1-x341.google.com with SMTP id j4so25253537otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 03:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gUcWSkbxyPvJ0+ERW/qepkDLsiLjdEGghyciw3XnsT4=;
 b=uNy2SXjrR2mbQALDHVMHlcFBkpzgy8HTawiU3KEQzSt++Gk5NabhVh9Ye4tWjoYCKl
 pUmPFhRGG+Ecfi4QF7T7Fml1Ft31cm1aCR9QLNusoV6LIdEu/4gPNnbynP6ZUU2FTzfG
 hvYSUHt9mYQVUl3PiZTKwiJvhWG4wXKqhdzTE9gtGfyM/Gbi4rWevwH8BBo1xQ6vBwZW
 scW9/eXN/w6qmx9mT3YHcZrtoP/vO+RK54L0D48d7Y1ZrXPvsOkY7ib53eTwWszwsLEU
 Xfhw5+HfEMIlhQNWef8RoTmymqqsrKfa2YJn2skuiblTh7MqWRbwBUsSNBKhtNJWhqia
 w26A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gUcWSkbxyPvJ0+ERW/qepkDLsiLjdEGghyciw3XnsT4=;
 b=ktcNMlzCL4QFw4n53IpAMRmXDZG+x7+iKOHyxUGOsfMz6X0onuIr+mVOmIQQutd3Q1
 PFRqdOVRMh0LeeIGBvZQ6ABJcR8hsqVb+yrlBZpZ0/UEuOg6oA2Zge4N91aRfoTW3p6d
 kpu61vqFMcGlh/8apmNWNTXbigsa6iGhanQKA8mqpiIvzSfPv4rLYXYLTwmS3sQmF4LO
 IPEwEn/PgN7pawDJ5XCQ4UVqlqWPVcxWSv1yLf/Wpc77CBfpHOfz2lbve6tXZ0uRBJdC
 vhVhiBjZ7y/ouPIavrx2KCW6jcYppbs/G7GHalT7qlnVdiN/vhHg2DSIRnPkgcTD4IpN
 oaEA==
X-Gm-Message-State: AGi0PubHYwviLv1tyLw58DoL9NG/yxXABZ422b1KDcsreqNlpqd87YEw
 OCuCJuhHiQYcftRcRAsBh9rWFALarsoMdey7puk=
X-Google-Smtp-Source: APiQypIeuwTOWNRaduLVrl8FnkbpT7m1ncyU5dpdVc0UJFZpGKzatZMZ/wGFpQdBgCzzzKU46eV7y4UpS9+lDJyUvmw=
X-Received: by 2002:aca:b783:: with SMTP id h125mr3049635oif.62.1587982840882; 
 Mon, 27 Apr 2020 03:20:40 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-11-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdV6J-_gBkzhUXtA8OrxhJVzyrAqjA8oeGJGBp86X-C3Nw@mail.gmail.com>
 <20200427092408.g2vpc6j2c6it4x2i@vireshk-i7>
In-Reply-To: <20200427092408.g2vpc6j2c6it4x2i@vireshk-i7>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 27 Apr 2020 11:20:14 +0100
Message-ID: <CA+V-a8vwF=u53dZ_U4vX3oAUHrBh5uVUBeOTiDqTZJfV8UUeCA@mail.gmail.com>
Subject: Re: [PATCH 10/10] cpufreq: dt: Add support for r8a7742
To: Viresh Kumar <viresh.kumar@linaro.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_032042_025889_67F10DAA 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

On Mon, Apr 27, 2020 at 10:24 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 27-04-20, 11:22, Geert Uytterhoeven wrote:
> > Hi Prabhakar,
> >
> > This patch should be merged through Viresh's cpufreq tree (CCed).
> >
> > On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
> > <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> > > Add the compatible strings for supporting the generic cpufreq driver on
> > > the Renesas RZ/G1H (R8A7742) SoC.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
> >
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Prabhakar,
>
> Please resend the patch with all dependencies to me so I can apply it.
>
This is the only patch which is needed for R8A7742 SoC which needs to
be applied for drivers/cpufreq. Shall I still repost it or you are
happy to pick this one up ?

Cheers,
--Prabhakar

> --
> viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
