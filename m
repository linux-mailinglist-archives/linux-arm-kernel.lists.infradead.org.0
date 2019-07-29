Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B9478F93
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UOsRZtu3Jm98fupbCIAuOrqRUO/4jcqzKLxd3wTOQk=; b=hgM7wOnHzuc42e
	srdROzwsT9ftragEWPU9rdxCKbTj2yxTX61vh3sTdvTDzxWCo3wnM2K6/YXv97VRjezOwZhiVq/X9
	Pdc0mJBRKYO5FdqcOoqd7QJdk3uBKrLNzaHUHiZ9SWk/LL6XhbWf3liVckr3mpIxdlxpXU2rxxsZp
	rArPwzss0swIjs8vXWGtB2WkIIDyzQHpEE6snI15DHtaWesphCrfeEsJFzA07IN+KtdPY9PZFiXrg
	WrnTCiaFl0WsCptgdi2+cQL2wyh3Jbbhs85YBdUdwvci+vdraMghnqQERr73uwYOTpf07M43rIyXM
	F7MchfGO4BWm/pxwU+cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7ll-00036W-Ty; Mon, 29 Jul 2019 15:41:01 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7lY-00035z-CF
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:40:49 +0000
Received: by mail-lf1-x143.google.com with SMTP id c9so42344671lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 08:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ygvdaoF3+MRGVxrKdrfWYm+4OCrrKROdzHxrvWgJex4=;
 b=m8XxYqkfG1lFlK0q9OvLEvaxXZdlYLP2pqDe3rEKCzGuY5WY6tUh7BdeOCFzUrsZGL
 hP6pkfRusqmRGKtRrmcAlLrzp/f3CvqADN6p/InmKpPflgowHxWAD5+PR8H3ZS6m3dt7
 agZoRJte8xXzCerRKAGx8qHYSRI8vJJDJDNssaahxMZYp+c28xKEjeVOC/hBJs/EsZEf
 kIMX8+9MCLPYXfYx75LGeb2aC/DKUBVWaqlgyzZSTgbGRcC/Bfj5/CIZoonINMw1Zr0s
 K3Q3Ojd1w1IAlqxTvxnI31xez3rsG6/pasKCkvGealgN7waki/8m5rItbOsiCt++T58d
 rKNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ygvdaoF3+MRGVxrKdrfWYm+4OCrrKROdzHxrvWgJex4=;
 b=mlRoQGAnGFL3ZW9aHhENz04Rr62UrRSMmUKjWGQeb/L7vLaXfZ9vtIdL/xkwhLXxZ5
 o8dpmWvW/IKVpO4Gfnr3n7DCCFQtTxL41JGWi+hNVQ2BKOTYwkg3ZxOOC78/tKT+ytt/
 uIdk0gV/kmutwZzuy8sLBVUjgOrepOKp/IVz1aC55pprOhxIhUsOnK94V+SL9JM34EkU
 laf3EzTZa3JfNqUca4oUknJWBBtsXWKwG7tkvMNmPnP2n6ZvvuNW0YrBtFTF8k2h6U+x
 1hbT73BviM6lBRNqSz7+xtASYW/jiQMYd2wljB46QbHff8/mWtcANXVYwbOoJd1Hir2R
 WZXg==
X-Gm-Message-State: APjAAAWEy39gDpruI5lhkmu1+TVagGAEAczQr1yHzAJYO2OoCx5bJ/S6
 6uzY40H4Oc3j6PMGcU94lSq9XFaah6RvXpy90rQ=
X-Google-Smtp-Source: APXvYqytcOJq5av6hjEfe681aqs4buj3oTGGah+PBtkNvnzioLMiUV0ZMVFGTtZSBbHSH8ik1gCq894GR8C2lvaebnw=
X-Received: by 2002:a19:6e41:: with SMTP id q1mr42182072lfk.20.1564414846457; 
 Mon, 29 Jul 2019 08:40:46 -0700 (PDT)
MIME-Version: 1.0
References: <1564384997-16775-1-git-send-email-abel.vesa@nxp.com>
 <CAOMZO5C0WbaDzFcjeXeS1PivWUme=bzPur6Hj_xNz1oVzvpW2Q@mail.gmail.com>
 <20190729150712.3ah2ayeonhdfrt5n@fsr-ub1664-175>
In-Reply-To: <20190729150712.3ah2ayeonhdfrt5n@fsr-ub1664-175>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 29 Jul 2019 12:40:51 -0300
Message-ID: <CAOMZO5Bn0zeuDsMk7SbJxaqFsHtd8oO1xiN48Sx-RSkeGQ3dhw@mail.gmail.com>
Subject: Re: [PATCH v2] clk: imx8mq: Mark AHB clock as critical
To: Abel Vesa <abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_084048_438259_79BEB77A 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Guido Gunther <agx@sigxcpu.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Abel,

On Mon, Jul 29, 2019 at 12:07 PM Abel Vesa <abel.vesa@nxp.com> wrote:

> Please have a the explanation here:
>
> https://lkml.org/lkml/2019/7/28/306

I read that and it is still not clear for me: which hang exactly are
you referring to in your comment below the --- line?

Reading the commit log it is not clear if the patch fixes a real bug
or if it is just an improvement.

Please make this clear in the commit log.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
