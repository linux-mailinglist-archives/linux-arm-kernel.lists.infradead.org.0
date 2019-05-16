Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2936A21114
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 01:41:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vd4t/i/zBF4w5Kq9TEK8//fqu6a5IwfcoW6sU2fO0dE=; b=mxGTkX/3wHWVnv
	o5z3dyKmUaBnnNr908TM0ut6K87sOeUJSHXtekMu34myKWyATS7c7lOVlZB2x83ipA6+/l0NTas7B
	ofku/iFcSnIeUax+zE5K2qkBXJe/zTHed2qzplZ+cOXUNRqGnj2vsHBiZCWd+C/yDTyp9XifKxuIx
	n5FQrERxwlG4TlQ5aRxu+bl33F112jM9FOfDYss+w1h5lErTLQUiiQy7hfVYL01eNiV9PTV41kb9p
	nSnp0ZotD9KOCT5PrGmk8roSbCFhR54NfjWHKx1XhJNFL1Q3ji5/MvAhnCQE6HtnHVf2naeFnrntE
	r75O61kwfomGvqHurq6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRQ04-00015a-7I; Thu, 16 May 2019 23:41:24 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPzx-00014u-Gz
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 23:41:19 +0000
Received: by mail-it1-x142.google.com with SMTP id q132so9049669itc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 16:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M5qSvf+7/386vVXt+NHavt50lVIGL89scHYOq4Rlvr4=;
 b=po3MLkh+9m1RUrmOa0xuYBMDHoyiVYWjuSHQflW89VtGym1qHXie2kCrBWspc+N6fZ
 c133OA7C8q/i41+HxxjsNT8HgaWN7AbBsZjWMQ5FilP7lJ3LxIm8CBj8VZy7fgp8Z1vG
 bAVciiIt/N2ex+4d2wFzx9MtcDNj0wR+SdGsjC7YxTbsNk7xBQwkKVpIWrxzCX0NS1JG
 Vq7iR74ES1mrYex/BEWATpmfQ6roEIJZQ8Kxb0E1cAx6O6S9zWHYdQwtqkFHxBzn80z7
 WorUVy4BqUw+omVFMO5a/QC+5tRisTUweMGurx+9b419h80Xf3mr+KKRO/e0ZZEuthJf
 pTAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M5qSvf+7/386vVXt+NHavt50lVIGL89scHYOq4Rlvr4=;
 b=R/nDZPTciOI8VxZrAOMIPf6kZ47Rad2SLFUwD5RLbEt/vcKh0mYkWUKkefD6ckwZn/
 9hNveHTf7qO8C40LqUCLAiof1cvH7ex/cP1C0+6aN1J3CSuuRtpETm6TOvquPpFC3MUT
 FFfjxVX11wD+SvGSgGdBxkusHGz937xI7kC9CN5sKHB9ykbIeYlzXwojtQirofZpR38M
 rcwENxroHFxKe/tEzTJzX5VGUT/49Jf61FbvAXcotfczHV9tszKMdLgRXMR8ppObVN8s
 6XqXq3BQ9iobPzS4AgHVSxFjjTzG3yhDB7fhX3TZQFHR15P9ti/ShG93HTzWHi5PDoEN
 VsCQ==
X-Gm-Message-State: APjAAAVyq1uupBvBGrji8oB+HFfmJWPc0lUPSm62KO7Z6NIOmTsgz4Hc
 LyWuyxgE+r9Ns4fcCmG7cQiFkXKkJUivlLShwk5dQA==
X-Google-Smtp-Source: APXvYqzJckXlP7mpcLPMwE30As8An3JqjJkES5XBQi+B9j9bRLTv+xKphNdtnIuFdPrelWDdMnPeczzjDuAd72NPXt0=
X-Received: by 2002:a24:5fc2:: with SMTP id r185mr17055035itb.43.1558050075986; 
 Thu, 16 May 2019 16:41:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190422031900.GV19962@dragon>
 <AM0PR04MB64349811AD49484EE269E2AEEE300@AM0PR04MB6434.eurprd04.prod.outlook.com>
 <20190507083218.GB22736@dragon> <20190516215030.bzmsdcu5524lskki@localhost>
In-Reply-To: <20190516215030.bzmsdcu5524lskki@localhost>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 16 May 2019 16:41:03 -0700
Message-ID: <CAOesGMi9GttEyQeG8geePG6=FdhhJYYhFieo9BAb5fpnPFw3Yg@mail.gmail.com>
Subject: Re: [GIT PULL] i.MX fixes for 5.1, round 3
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_164117_704690_1D17DF00 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Andrew Lunn <andrew@lunn.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 2:51 PM Olof Johansson <olof@lixom.net> wrote:
>
> On Tue, May 07, 2019 at 04:32:20PM +0800, Shawn Guo wrote:
> > On Mon, May 06, 2019 at 07:10:22PM +0000, Leonard Crestez wrote:
> > > On 4/22/19 6:19 AM, Shawn Guo wrote:
> > > > The following changes since commit 7aedca875074b33795bc77066b325898b1eb8032:
> > > >
> > > >    ARM: dts: imx6q-logicpd: Reduce inrush current on USBH1 (2019-04-11 13:45:03 +0800)
> > > >
> > > > are available in the Git repository at:
> > > >
> > > >    git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.1-3
> > > >
> > > > for you to fetch changes up to c7861adbe37f576931650ad8ef805e0c47564b9a:
> > > >
> > > >    ARM: dts: ls1021: Fix SGMII PCS link remaining down after PHY disconnect (2019-04-21 15:51:28 +0800)
> > >
> > > I am confused by the path these fixes take to Linus.
> > >
> > > The rgmii DT fixes from commit 0672d22a1924 ("ARM: dts: imx: Fix the
> > > AR803X phy-mode") are still not present in v5.1 and netboot fails on a
> > > large number of imx6 sabresd boards which have been stable for quite a
> > > while.
> > >
> > > These should have been included from "round 2":
> > > https://www.spinics.net/lists/arm-kernel/msg723998.html
> >
> > Unfortunately, we did have both round 2 and 3 miss 5.1 release.
> >
> > @Olof, on April 28 you said you merged them.  What happened there?

To clarify; I had a batch of fixes in our tree that didn't get sent in
by v5.1 final, so while I had merged them (and merged them as part of
the merge window contents to catch up), it didn't make it into -final.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
