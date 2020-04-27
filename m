Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EEE1BA108
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+AL1uXxbZTmbBKsvcjBGLDvM+YFnnuWZ0F4/ZXKpsc=; b=OuGN+zwhah9gyP
	xec59k5e8rRVixxJDVn8CO7tvjWXZA5149or5YBkHcahHH9GzGsz9i5n8pXFkYY3uu8t72KZT+dRZ
	GZkhZlTooQY+UNAly6mvz+7EQ0QUcAQhgZHuDJk8IxAf/nu+yxrq1271Qk0ER/3Dr/CqYZA9SR16s
	AHuuLsZxDTC/7jbj5X9kOGKEksKJgYUtJJx/3oSjShsuXwZaN7H0Qglz6t0JhNtDsKwVCwKacUlkq
	k7TVHInygNFbwgM1h9QqvxomkyqtmLBNLjCiPhB25v0wtqlgkgA+p3z0BzWKyIgFqms4HlGYnCPxn
	kskDISdXEG5hWO/rcZXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT0uf-0005Sh-5t; Mon, 27 Apr 2020 10:22:57 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT0uR-0005RS-VW
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:22:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id s18so5822018pgl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 03:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1CyxLaZcj63tQcR7tpc4uGoE1KDGBKikBpluCv751iQ=;
 b=Hgm0O5D0lCarAkzn4DV0qMdx7tM3kC1QJVrjbaAa/X38bcsMUwXZDOePZRakepLaEi
 ya2IRGM2AuFx6/UTyzBLHVx9q79FtdJq/l/m3VSUHXUvl5AGOsXg02/t+JpagqTKBY+l
 obX+tcG3SyQnpGzNDAdirBSQEglqgR6wCxsUrwAQQzjt2Bu+XzZsIEHvDpjMra1GLSlQ
 MSEf4ffKitmCDwnSIVAkqJSZNUB/aQfo6Ui2zLT0F5Ryz8LEqvNYgvQGnyKwe77+XYoS
 Vxb+SytqcBGuoccm99VXH3I6Ke6RBkkw2FA3eFkxWF4W/BvMnNrec62dGeUBH+npxyEk
 XcPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1CyxLaZcj63tQcR7tpc4uGoE1KDGBKikBpluCv751iQ=;
 b=f7Y+nCLtzcEy/L5NtZEx53LZa2gq5aP2kbNuG9s/GZ2rq6Ya119LPnXkVWTZSy/Lco
 P/CkXadHRfd8ff2jMCLPvOFg+QpimVSPDpM/IFWYnty/7F82H7MCx2vqUSq1UWqpMId8
 DP6z32pjvw7HxzFVivVh3aHPcuAbATEjgy9hiypyR7RJrnGZBVqYSN2hJAOEFREtoO8x
 Ct7V2K6apxqlf86MUz/FnccC9UfIx7VeY/mTh+QN722cPMTJ51LCue1x0evQK7SNDD0r
 IRNZgC8WehmZv5tPcumUGE7qfb+7tHxae8fT7LPYwtJMk8QDbShBQw/rHCKvQ9EVecLy
 DOFA==
X-Gm-Message-State: AGi0Pub7TaGR8hXiwODdLFs84Oq6Mjo+xmWH4/6HWlI0Sap58LxG9iGr
 Syhu2D8Xf4pqLOv3NarrmO0iIQ==
X-Google-Smtp-Source: APiQypK3z4yQqpVlHsZhnbToQmUFhKubYEh51/9LQwynKZdCC2YUpDM70yeaRzHItaf4MzlKveltLA==
X-Received: by 2002:a62:fc82:: with SMTP id
 e124mr23801311pfh.126.1587982963367; 
 Mon, 27 Apr 2020 03:22:43 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id h31sm11276301pjb.33.2020.04.27.03.22.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Apr 2020 03:22:42 -0700 (PDT)
Date: Mon, 27 Apr 2020 15:52:40 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH 10/10] cpufreq: dt: Add support for r8a7742
Message-ID: <20200427102240.jsskbskczvctvcwv@vireshk-i7>
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-11-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdV6J-_gBkzhUXtA8OrxhJVzyrAqjA8oeGJGBp86X-C3Nw@mail.gmail.com>
 <20200427092408.g2vpc6j2c6it4x2i@vireshk-i7>
 <CA+V-a8vwF=u53dZ_U4vX3oAUHrBh5uVUBeOTiDqTZJfV8UUeCA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+V-a8vwF=u53dZ_U4vX3oAUHrBh5uVUBeOTiDqTZJfV8UUeCA@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_032244_536241_2EFA5915 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 27-04-20, 11:20, Lad, Prabhakar wrote:
> Hi Viresh,
> 
> On Mon, Apr 27, 2020 at 10:24 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > On 27-04-20, 11:22, Geert Uytterhoeven wrote:
> > > Hi Prabhakar,
> > >
> > > This patch should be merged through Viresh's cpufreq tree (CCed).
> > >
> > > On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
> > > <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> > > > Add the compatible strings for supporting the generic cpufreq driver on
> > > > the Renesas RZ/G1H (R8A7742) SoC.
> > > >
> > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
> > >
> > > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >
> > Prabhakar,
> >
> > Please resend the patch with all dependencies to me so I can apply it.
> >
> This is the only patch which is needed for R8A7742 SoC which needs to
> be applied for drivers/cpufreq. Shall I still repost it or you are
> happy to pick this one up ?

would be easier for me if you repost it. I don't have it in my
mailbox.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
