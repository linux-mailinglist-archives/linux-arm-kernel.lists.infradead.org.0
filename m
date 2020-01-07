Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B371321A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 09:49:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRU/SQPsFh484X+AKgLjkSv1u8G48K/hBCZc2Aquc4Q=; b=SW2PYWaDB6kNpD
	mfeKORyLyDul1CTGiabzfJSbgci8WxlegPJhGemLMwyk1uAXqaXrIfNunI0Xto3d64MPM0aOW60Hg
	b0OUO2DC2PfRod+bi5GnnI6RcxwoQD4c6odicOBTK+cd5nBCEEhMyKyxsE8vbr/ZiNvEH7vLsUFJk
	r8LqWdx8PEZeq/UyzRkYhWKHZZQNJQBRDFbn/lOnpBNnG22pTNkPg0pSTQtU5LsSrWLsjRxkwhJLA
	hir9HYqyAr7JvXomFJfkf9aA6eGNzMidhe+I9MstnaJa7rb4zniuOH5PqFc/1Xphki1JehEAhw2TL
	ZaBcq1rGWXsKcLgoefQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokYT-0000rC-Ky; Tue, 07 Jan 2020 08:49:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokYG-0000qr-Kr
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 08:49:26 +0000
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D509A2080A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Jan 2020 08:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578386964;
 bh=RC3gfxK85DszPMx6V9U+gAmYKbWG0Zlt9X6q5+MTylc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=t3MOD6EN8wlLClvHAIs3umVgEkRc2qnwxMlYoB5aTpp5aMd7rcKnzWkCViVlQzaKB
 6uVma0OEM7XzzT2PGt1g8fzlGYo1ODU9tw6kQ+AXroupv7M9blKNbY5NImzH6ijqbt
 oOwjhURdl0zq6hDad10nTA3+WLcpIB0prD/ntEAc=
Received: by mail-lj1-f170.google.com with SMTP id u71so53819673lje.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 00:49:23 -0800 (PST)
X-Gm-Message-State: APjAAAUXhJ8su2JtQpVMIa9yLAI4W+zTaCtPP1CkZKcR/rchSkGhkpxT
 ncMdEAMut4KsiTg5Llqp/8wJyJ43SSXXTQSpq2c=
X-Google-Smtp-Source: APXvYqwNsdbjriu62OGQO4MM5Vec+3qloJgcts9uClsSrEvqX0pd6ckRSZZs9dkYlaa2t9l6PYsq8a162l5KsVzcRBo=
X-Received: by 2002:a05:651c:232:: with SMTP id
 z18mr55385115ljn.85.1578386962107; 
 Tue, 07 Jan 2020 00:49:22 -0800 (PST)
MIME-Version: 1.0
References: <20200106191003.21584-1-tiny.windzz@gmail.com>
 <20200107084551.GB31906@pi3>
In-Reply-To: <20200107084551.GB31906@pi3>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 7 Jan 2020 09:49:10 +0100
X-Gmail-Original-Message-ID: <CAJKOXPdx3O5Vfv20UsD3qh5UC7TczrY9pBPObGcqamFt=9Pw5A@mail.gmail.com>
Message-ID: <CAJKOXPdx3O5Vfv20UsD3qh5UC7TczrY9pBPObGcqamFt=9Pw5A@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: exynos: tiny4412: add fimd node
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_004924_709435_E048557B 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, kgene@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 Jan 2020 at 09:45, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, Jan 06, 2020 at 07:10:02PM +0000, Yangtao Li wrote:
> > The patch adds fimd node for tiny4412 device.
>
> Hi,
>
> Thanks for the patch.
>
> Do not use "This patch ..." sentences but simple, imperative mode:
> https://elixir.bootlin.com/linux/latest/source/Documentation/process/submitting-patches.rst#L151
>
> Here you do not add FIMD node, because the FIMD is already there
> (defined in exynos4.dtsi).  You however enable it.
>
> Enabling it without panel does not really make sense - does it work?
> I guess not, so this should be squashed with second patch.

... unless it really works without panel, then it makes sense to keep
it separate. However in such case, the #cells properties belong to
second patch.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
