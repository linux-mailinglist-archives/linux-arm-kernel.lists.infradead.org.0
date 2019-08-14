Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B3D8D1F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mAsxQ39c9BAIWRCF4ZM5q+kW6upnOzUTxmB+3zsO7o=; b=pYtQ0gbMBbsr2V
	AkebEJjRfKq9UUufXYgK7AmSnHUKoPrkfAFUNTUnVoRS2vmsXS98IwQcPTJNOGYSuZoaHS1/FEkxG
	pHg7rQSaa40lHQpzIa93+0BaV6og725Gu/22ki8MoMcdYajD96gQNIOEMR+lxT+zrwOyb7I7RuW7R
	BH291H3+MSRwYPaIDUUpoGXNcqELl0cZzhgQrChF4v0pS2cHtMORAofkrYEWhXmHZHIa3iKwOC0zn
	w8EX0CwDH0fbsGw+BGH9jAeGr2qUpZH/jbECvAHTJyA3nyeJmZ+/E4hktQCxg61RoOl/tjy8vqIla
	E7/mlNTAzRoLHAJJdLBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrHL-0003hX-Ly; Wed, 14 Aug 2019 11:17:19 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrH7-0003gs-59
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:17:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id m24so1975246ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 04:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bpg3G9Etz4OvVx8IFQ1AOlUEfhUeo6540gz6ahfkyQc=;
 b=NBBp8OKeUdGlXRspVtZwJ2kI+diM9Z8irDSmvjLWSlMQywy/iDOLn5EcBHgEfSEWxr
 Z2gSzonKyTcHG6gUnhDnB1eFo5D5hXbbe48aL8blx8qICeJOJG8HVwjowH+quM8P/I/T
 K8l3T2I4tweMSQsWBChGVUVmZv5DTbaiwPmTLhOSryHxcpofpxwl2R3CzHblxmzkHGkq
 Q2FicIyvRL7qxuNyoHosJXKcHXfvp3GBmjbwa6oH2WhVOST71ON2vFfOSbdwvAvsGBwj
 EYi3RdP2gOM5cwR5tzZ2+qYjCX1QILUBZ1Ye9xl/cpDjh+HiMDNy7uRm/AtVZ6BmOehf
 f+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bpg3G9Etz4OvVx8IFQ1AOlUEfhUeo6540gz6ahfkyQc=;
 b=QWL54MLGADT96ifxhA1Gc8tWVNb7r5FMfu5K704eXdwIgHgad1+V/FkcB7WzK34suv
 5RRsxq7Gb4L2L8PE0DoJ2EUeR/tLHU2gCGEGBwjl32jR68Gi4m1Ox9zl1RcLTz1ee/5y
 nOu/K1hpqPMCFkjSH78bin8ILolRiYgnMWYSGeU+6Jp7d3ZyMKwl++RPvv4J1KPYeITn
 zU97077b55YPdM1JuKIibGct1l3qvM8jQsSAKU5Yi1PbN5dtAiJlNJfxI1YQCJBnjZXV
 KVhHBmeHtTTBhQHbuOZczVPoX16kcxwG6OXdKQ/ru32wwfwcwcDlShsWtL5cw0qXXhOQ
 7o3g==
X-Gm-Message-State: APjAAAWJWs4H7x2ZaOz8teloFCVa1/GmHCYW+m8+K85IrWygyvKJZOjf
 58Y6gU9XrttVgyXE07cg7Zk8pzNnzO6ddANwXZI=
X-Google-Smtp-Source: APXvYqym+y7qghCuVZ7uMfBL4Y09yZokgyk/DRxedzjSbW1CvgLMDhOhWj6uS4zbGCv6Y9EwZB1FMZYrLmlojOLTh1s=
X-Received: by 2002:a2e:978e:: with SMTP id y14mr10027268lji.10.1565781422625; 
 Wed, 14 Aug 2019 04:17:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-13-codekipper@gmail.com>
 <20190814072046.metavychqvhuohwy@flea>
In-Reply-To: <20190814072046.metavychqvhuohwy@flea>
From: Code Kipper <codekipper@gmail.com>
Date: Wed, 14 Aug 2019 13:16:51 +0200
Message-ID: <CAEKpxBk4H=N-SVzXpAGkF79xmOhczOmKpJ7rJ9Js9vquw_QE7Q@mail.gmail.com>
Subject: Re: [PATCH v5 12/15] ASoC: sun4i-i2s: Add multi-lane functionality
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_041705_221997_7B963794 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019 at 13:08, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Wed, Aug 14, 2019 at 08:08:51AM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > The i2s block supports multi-lane i2s output however this functionality
> > is only possible in earlier SoCs where the pins are exposed and for
> > the i2s block used for HDMI audio on the later SoCs.
> >
> > To enable this functionality, an optional property has been added to
> > the bindings.
> >
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
>
> Wasn't the plan to support only stereo for now?
Stereo HDMI can be introduced on the H3 and later if we get the first
three patches
merged. Post those patches is the work to get multi-channel working.
>
> Either way, that property should be documented.
I can do this...but I'm thinking we should bang our heads together to
find a solution
that we all agree on...especially if we're considering multi-channel
tdm support.
Thanks,
CK
>
> Maxime
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
