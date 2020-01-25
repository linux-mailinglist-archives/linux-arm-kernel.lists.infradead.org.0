Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8578E14952F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 12:20:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmWx6ABKtq6u8CO46Y1869NIjS18ES/4Rgh2zA7LU/M=; b=CYC+UiKWLQXIs7
	s5Sf+Q4e4rYaBIRYDs5SlZVo8T2M6yPSaYgfqi8CbOjnfzay377QYV2fwlqJ49okLgwIhaP94hU9o
	4AMSDSQ8x306acPXYPTfDhrt8s9fDKRJlfltvVqkR3uySWI+rFZm8zJacujMULnxQdg9/QTpt0gPO
	ksn2GbIP1i2/OiqgxuvYnSBjozeWWJ42ZTtJ94/kgFLUg90nm+6r9sVTFKVLJxHaKvvzP4WSUdSmy
	elghAjUYTiFf2tep64AXBQ1P/0pXgyeFJGiQyRdjNmaKipECKLgqPmXL0Y7n/XtUfErnd9CEi1geu
	WQPIxEeQwZ5U4mPFSbMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivJUQ-0005P2-37; Sat, 25 Jan 2020 11:20:34 +0000
Received: from mailoutvs43.siol.net ([185.57.226.234] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivJUD-0005OV-Rb
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 11:20:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 7DE3B520C74;
 Sat, 25 Jan 2020 12:20:19 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ydjZDDwb9wfv; Sat, 25 Jan 2020 12:20:19 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 2BF84520C7E;
 Sat, 25 Jan 2020 12:20:19 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id AF879520C74;
 Sat, 25 Jan 2020 12:20:18 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] [PATCH 1/8] clk: sunxi-ng: sun8i-de2: Swap A64 and
 H6 definitions
Date: Sat, 25 Jan 2020 12:20:18 +0100
Message-ID: <2008374.irdbgypaU6@jernej-laptop>
In-Reply-To: <CAGb2v6680yWT8KtjK0uKM00+6ed4NoPpsMaDyfYERwOXgb8Vbg@mail.gmail.com>
References: <20200124232014.574989-1-jernej.skrabec@siol.net>
 <20200124232014.574989-2-jernej.skrabec@siol.net>
 <CAGb2v6680yWT8KtjK0uKM00+6ed4NoPpsMaDyfYERwOXgb8Vbg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_032022_051203_43556A6C 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.234 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne sobota, 25. januar 2020 ob 04:05:33 CET je Chen-Yu Tsai napisal(a):
> On Sat, Jan 25, 2020 at 7:20 AM Jernej Skrabec <jernej.skrabec@siol.net> 
wrote:
> > For some reason, A64 and H6 have swapped clocks and resets definitions.
> > H6 doesn't have rotation unit while A64 has. Swap around to correct the
> > issue.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> 
> Could you add Fixes tags for this one?

I'm not sure which commit to reference. H6 one? or also initial A64 one?

I just found out that H5 compatible uses A64 structure, which is not correct. 
H5 doesn't contain rotate core.

Do you have any better idea how to nicely solve this mess? I'm thinking that 
for v2 I would first decouple some compatibles, like this for H5 and R40 and 
V3s from A83T (as it can be seen in the next patch). After that, rather than 
switching definitions I would fix each compatible one by one. At the end, if any 
entry is duplicated, I can add one commit to merge same structures.

What do you think?

Best regards,
Jernej




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
