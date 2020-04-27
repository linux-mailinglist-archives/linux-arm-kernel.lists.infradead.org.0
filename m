Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EA31BA15D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMCcRRC997v1oKZ+ngeNoby9MS74GmV4nqhyDkBUsuY=; b=plUgma2zg5mJ2R
	9YFAO0d5RcgbBp3XCvKDhVV8Ypz8Cqowhbp4j4w7m7JaNbe/myWnO1+/+40ZzNbchZQYOn3U0Jgmr
	O2gBppaiKwh/NbzM8garraHfzCXr3wFfbUGa6wo0IwTOP/QBkJXYD7pUXjSPPPg1luzRD/DiJObMN
	c4m//jQEiS7014Pun19WQVIdQQQcMcoJcC/jgk2nBCm7VsPz73PQTm1250VVARBDOyADI/X1jgAGd
	26R+jghfA0xt8DVPmC5ztFYAbnxuvzKy5hoCs0AyhZTqchXa9Tx8f29YZy3g4gkOZKtlMDbiHz+yk
	TEYhZyBgOTUX5G4+T+Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT151-0004Fx-Bp; Mon, 27 Apr 2020 10:33:39 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT14p-0004F6-RM
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:33:29 +0000
Received: by mail-ot1-x341.google.com with SMTP id c3so25258537otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 03:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RHfKISSDuem09HNmnqJrvLsee+Kd/nK6TGgV01HIek4=;
 b=u871Cc3aU+fj9E/6ltaMi4DRumGoRfm36hLggOksBcwUIQlOn+/VZR5G8ZmZ+MSjOs
 R0ahBZlobrZWEonpeSZVJbZqyUJHfuSEK6LwjXbKKL33b8U/lX+aPIj3cXjM58nwR8cg
 zk5FfOFxVWl4st/r6DjbI3ohzYmy3Sufzui6R0MtC0h6ZGAMOUS7xYRliSOv31QY5qi3
 ZR9CpoLvcvWwSt2Cdh85uBHqMky7C1e7mbWk3Fj+rQZo/s8dJ1z5Y2wZEnGQFx7xTKnA
 Xs6wOq3xj+V2SetBWAnFdlGiPrTvXuDcPVqqxzrMCw+VcxhmfIxoIglQs2ecwrMsEbHu
 U+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RHfKISSDuem09HNmnqJrvLsee+Kd/nK6TGgV01HIek4=;
 b=QM6fOLQ/Lushies3JlfiBvHk8Pg1//br1gut9wY8I0r8DmIqRQuFrf8enMbBbZYmiR
 DeMllM34WjeJgZFGkX/Xzon5ci7RU+bIjdqWVFjuQssX924VMN1npOc1rjwPki1LHYJN
 xlA8VmZzrji92bF6Lup+qWJ4U5gst9kUOpA4x4kR20fzIZvcVb/64KIdCGYaGtxYr5r+
 xuHdLMVS8a8krADdTOGRcycG5JIhioTneTdYtRjo3fL8jt/07eNdBDPHqGH1rXIf9+yF
 Nqp+r6X0dZU6L9CK+AX32FlPiCBs9zx7TRYWUQmiG+RjcjDUFdyPwUlCPL8z0OMC0Bsw
 M55g==
X-Gm-Message-State: AGi0Pub+PDKggvcyTmh8ZnQ0VfTZwdT1Mr2xTEKsEgRjHVPgRialTDu1
 W0TJMxzLvXi5Qst1uRAZGWqyCP60DQP//2y8+fI=
X-Google-Smtp-Source: APiQypJYWrI2wW3qHn8idUgkhu1PgaumpBUm2i/d7Fy3/icjCxWW32db6tol3+HUkjrAEJvFcar5dI/Knt8Yve0JLgM=
X-Received: by 2002:a9d:7390:: with SMTP id j16mr16472029otk.43.1587983606923; 
 Mon, 27 Apr 2020 03:33:26 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-11-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdV6J-_gBkzhUXtA8OrxhJVzyrAqjA8oeGJGBp86X-C3Nw@mail.gmail.com>
 <20200427092408.g2vpc6j2c6it4x2i@vireshk-i7>
 <CA+V-a8vwF=u53dZ_U4vX3oAUHrBh5uVUBeOTiDqTZJfV8UUeCA@mail.gmail.com>
 <20200427102240.jsskbskczvctvcwv@vireshk-i7>
In-Reply-To: <20200427102240.jsskbskczvctvcwv@vireshk-i7>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 27 Apr 2020 11:33:00 +0100
Message-ID: <CA+V-a8u46NZ8Y9dAQRHpsVQ2h4fevmRVxnCMLL5mJ2uewRUm8A@mail.gmail.com>
Subject: Re: [PATCH 10/10] cpufreq: dt: Add support for r8a7742
To: Viresh Kumar <viresh.kumar@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_033327_910727_7C7E4FF0 
X-CRM114-Status: GOOD (  20.09  )
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
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 11:22 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 27-04-20, 11:20, Lad, Prabhakar wrote:
> > Hi Viresh,
> >
> > On Mon, Apr 27, 2020 at 10:24 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > >
> > > On 27-04-20, 11:22, Geert Uytterhoeven wrote:
> > > > Hi Prabhakar,
> > > >
> > > > This patch should be merged through Viresh's cpufreq tree (CCed).
> > > >
> > > > On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
> > > > <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> > > > > Add the compatible strings for supporting the generic cpufreq driver on
> > > > > the Renesas RZ/G1H (R8A7742) SoC.
> > > > >
> > > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > > Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
> > > >
> > > > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > >
> > > Prabhakar,
> > >
> > > Please resend the patch with all dependencies to me so I can apply it.
> > >
> > This is the only patch which is needed for R8A7742 SoC which needs to
> > be applied for drivers/cpufreq. Shall I still repost it or you are
> > happy to pick this one up ?
>
> would be easier for me if you repost it. I don't have it in my
> mailbox.
>
Sure will post that in a bit.

Cheers,
--Prabhakar

> --
> viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
