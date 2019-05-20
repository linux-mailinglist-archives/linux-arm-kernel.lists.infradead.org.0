Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA6F243E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 01:05:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcjpSQ7GlddAIGZlwbxSt4YvuVQdNO42XWt9+LLB9yU=; b=SGDqqAC8ILZMko
	+V1TYPwfXfUUtjrzaGZFtPkFfP4dcT8pP9IJfQLzHnKhJJzMn7Z6urp3tvSUdZ2wHypfzKiWEiYE6
	aqo4SEUE8yY5MAIhFPZXjZxJx7VAOWBmKPjLgvMaKRk6TA+DlbuXcBFGGNOIY+otM6/tZwtr+ZObq
	Z/dipvBYzDDatj0bDr3OBYgrwlNS/JZ5TCzufqzdmDvacRdPteU5KN6eylm37P0M2r1bqxbqBXsd1
	XnBzj1+Q4G3UhTuOBRBN4alEj5n/3wMNQoVY2RxPii1hBa+Fthw2YLHCE3oTiS9EwxolBc9XXtLR0
	rXht2FQmoqcLplTiWnQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSrL1-0003N2-8w; Mon, 20 May 2019 23:04:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSrKu-0003MZ-Em
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 23:04:53 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 128EB21743
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 23:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558393492;
 bh=bXuJgo8hi+txkmmEB+2+yyfv36aYgFaplaMU1TzAqjU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DE6H505Nm73AVFDHxOctcTPdHGIOzMt9Xkmb/BKFJYRa1qw+GO6QJ9lE1qmFnkgiV
 s9GtA8XkuiL/h+SK9ttZpaovTghiQO1TOXPwa7j3NyFAMrVSmNCdCvhY80Rlt2e6H0
 QIH2yfz8I8i54/vmLMGio/pU0fbdJBG5ijqw+X58=
Received: by mail-qt1-f170.google.com with SMTP id k24so18352581qtq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 16:04:52 -0700 (PDT)
X-Gm-Message-State: APjAAAUXNOTHKwelETs5fgnLCzcEdf73s1ghj9RzvhA1Aye9Vfx9b9d5
 oQB97Scm7tQvLLJdh8ZriWD5/sCnNBIaSDOktA==
X-Google-Smtp-Source: APXvYqyP29y6x6qjCGVunD3WlKkVN6G0vuEFCREuPouJsGmsk7zhWXz+qn63NuIOwg1Di2PrEOo5roFl/r+92wYANlA=
X-Received: by 2002:ac8:7688:: with SMTP id g8mr37805616qtr.224.1558393491311; 
 Mon, 20 May 2019 16:04:51 -0700 (PDT)
MIME-Version: 1.0
References: <f53ee257855c6499fd783dc8665558f7670312f6.1558363790.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <f53ee257855c6499fd783dc8665558f7670312f6.1558363790.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 20 May 2019 18:04:40 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ+GAgJuQy85bw1WoXCkpaqRY+V9G9HY8PUM3MGXqLyoQ@mail.gmail.com>
Message-ID: <CAL_JsqJ+GAgJuQy85bw1WoXCkpaqRY+V9G9HY8PUM3MGXqLyoQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: spi: Add YAML schemas for the generic
 SPI options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_160452_511950_EDE424E7 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-spi <linux-spi@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 9:50 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The SPI controllers have a bunch of generic options that are needed in a
> device tree. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Change the nodename pattern
>   - Add a note to mention that the binding has moved
>
> Changes from v1:
>   - Rework the nodename pattern
>   - Limit the index of the usable chip selects to 256
>   - Rework the slave devices regex
>   - Remove the requirement on #address-cells and #size-cells
>   - Declare the slave and slave devices nodes as objects
>   - Add spi-max-frequency
>   - Fix the bus width range
> ---
>  Documentation/devicetree/bindings/spi/spi-bus.txt         | 112 +-----
>  Documentation/devicetree/bindings/spi/spi-controller.yaml | 161 +++++++-
>  2 files changed, 162 insertions(+), 111 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spi/spi-controller.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
