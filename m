Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3C077741
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 08:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3WtEGwNkgVWW36vrXIVMovK2DC24kwpVN0vscFAJkg=; b=pg2JbjxdUFyks5
	uOZDqvYo8WbrWusvFDaTPAj860FE5luTD1wUeXf/2VZKxTreJgMRaVMi+I9UcarjSaMOJEHqPaHHQ
	05BKwRVVZaeOxwSQdbDuP06GFOMSjO+is1wpuvFvq75JRb1QdyYN5/UlhdDfqTCBPrCTAMEzIfWn8
	tY11965FRc+9taeJzCIdPqygd6D4AgxztDZDfwd5pgZklTdzCv5uVcW/CuKyX5hg7FGkPeqz5u/1Q
	3AanTrSoMWXH5NfUY5L1ORFaaBlQgbAKpZr9vk5Jr0mFjHurxteeRKC+W7jsN2sRECFMmWrje9CdO
	tMjBY9MGcd0Fi7ar6oDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrGEm-0006SZ-8A; Sat, 27 Jul 2019 06:31:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrGEY-0006S6-0Q
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 06:31:11 +0000
Received: by mail-wr1-x444.google.com with SMTP id n4so56551399wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 23:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HKeMdrdWBgdGTKyoRuJP3d49YclQQWgce18ijijgk9I=;
 b=AGHQ4E1M37EE6M5F7RtEuQX4fkGB62kY4xRAU4L+AEosvTGG1SlsCDHK/o1yzkzkDs
 dIXgIfZkTv5prHK3S04NTfBitoJAJxa2qMEF2hXgq7kcHz/Ph+bnLSuGJ6xuuopOZFDw
 6uuBk4Vxg8Cczbs0i0DHfpYyQXXpLe4C83J19nZ5t8hJ3C13Z9IFgCOGRHXtYUaxunpD
 C8pDK25kbahOed4KZT9hdXJ35VWXDaf3pe7uE3M8lH2RhTE0NiZMb0IfzfwLPyFq8KYa
 1Ow0QA9gE6SIWSxWWNN1mLHBF71kHuLo1XlD8aJmTl7YQoevnv6ebF+Y0TT/XY22mpXB
 uPiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HKeMdrdWBgdGTKyoRuJP3d49YclQQWgce18ijijgk9I=;
 b=OvYZaMrlxUagkxS6LNN0ZW84UYwYau45D0bbMjUB9vTXSFHRndv9NjQOvhD4/bp2Uh
 sZbBqYF8Vt1J9ZWv6xnTy5HNoKxLf27HlKOaskZpS/7cz2ntXSgYILZsMuu+KPL4+S3B
 uwy3xCZuHsba1gPvh/H9B49FzLe+LbVTgGC++wGVjFKawwNtNs+ECNVPdqcsaXah0506
 M9GkkoeRyJ8pQtaZXrTBSoctnSqyR1QkQJr488HegIFHayozXu433NETXrH+ivzfzV8p
 +QKThsfhprMpdRwpQSEOMCNNUPG8N7HGBctFLb3Vmdb+O6QoU2pX7LfzVnjL0iUiCDEb
 0QsQ==
X-Gm-Message-State: APjAAAVQeA2Or2gfm4yxRGicsauEz4T1fWjWbIkI3OBUkW+AsLTqlh/a
 KCtgL7esA6NABJK4NqIxzem48Sc6p8znpQbtFFE=
X-Google-Smtp-Source: APXvYqzdgecswj3pdUxE5wMpc0iYUFA3hEfoHHf/1a5LOh9kiFNqb77jfKSfAfUuh+1oWpfs5nRNP7Da4/Vx0J4QRJc=
X-Received: by 2002:adf:f450:: with SMTP id f16mr74204830wrp.335.1564209068259; 
 Fri, 26 Jul 2019 23:31:08 -0700 (PDT)
MIME-Version: 1.0
References: <1561453316-11481-1-git-send-email-abel.vesa@nxp.com>
 <20190625223223.3B8EC2053B@mail.kernel.org>
 <20190705085218.lvvqnqx6nfph2era@fsr-ub1664-175>
 <20190722212537.41C9121900@mail.kernel.org>
In-Reply-To: <20190722212537.41C9121900@mail.kernel.org>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sat, 27 Jul 2019 09:30:57 +0300
Message-ID: <CAEnQRZAFdvSzh-pDJ-rsyaEJw83ymSVW0CC2+QZyWwAPeTOyBw@mail.gmail.com>
Subject: Re: [PATCH] clk: imx8mq: Mark AHB clock as critical
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_233110_079051_76DFC7D2 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 6:17 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Abel Vesa (2019-07-05 01:52:19)
> > On 19-06-25 15:32:22, Stephen Boyd wrote:
> > > Quoting Abel Vesa (2019-06-25 02:01:56)
> > > > Keep the AHB clock always on since there is no driver to control it and
> > > > all the other clocks that use it as parent rely on it being always enabled.
> > > >
> > > > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > > > ---
> > > >  drivers/clk/imx/clk-imx8mq.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> > > > index 5fbc2a7..b48268b 100644
> > > > --- a/drivers/clk/imx/clk-imx8mq.c
> > > > +++ b/drivers/clk/imx/clk-imx8mq.c
> > > > @@ -398,7 +398,7 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
> > > >         clks[IMX8MQ_CLK_NOC_APB] = imx8m_clk_composite_critical("noc_apb", imx8mq_noc_apb_sels, base + 0x8d80);
> > > >
> > > >         /* AHB */
> > > > -       clks[IMX8MQ_CLK_AHB] = imx8m_clk_composite("ahb", imx8mq_ahb_sels, base + 0x9000);
> > > > +       clks[IMX8MQ_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mq_ahb_sels, base + 0x9000);
> > >
> > > Please add a comment into the code why it's critical.
> >
> > Comment explaining why the AHB bus clock is critical ?
> > Isn't that self-explanatory ?
>
> Nope, it isn't self-explanatory, because nothing on this line says "bus"
> and it could be that someone reading this code isn't well versed in the
> concepts of ARM world AHB to connect the two.

Agree with Stephen. Commit message should try to give as much details
as possible
also maybe educate the readers who might not have that much knowledge.

Abel, I understand that for someone who works daily with this part of the kernel
this change might look trivial.

Also, without this patch linux-next hangs on imx8mq.

With the explanation added you can add my:

Tested-by: Daniel Baluta <daniel.baluta@nxp.com>

thanks,
Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
