Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDCA1E33D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 01:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohAJ8aYz40AilAECc05A3BscYP2gsCALS80+hwzGx+Q=; b=BO77TIoDUzm4G2
	lW3JoNzibTEIoJXjaRFrxhwIRc9J4XNoC81+x9r9Uzp7xJg9b6ux9EtrLwLt2jmCgwNd3yFZolNe4
	yN6j6DfG6l7sVYkWj+6IbjL1TjBTUhs3KAQkGLd7CmNKSYckqvgy1qOcsehA3xFGVXVcVgJMHDjST
	/rmi1qOCCPkTX5fvyPFe41LrxlR/iAU/7WKt95tbkch0Ww4KvIWS2no7199EjSADUIh2OzsXew9O9
	AeTaFtTR8Q1mEVPi6YcKX51NKu13/GXxwwkrt2ShXaRqRxyDv0CM/auUtaaoo/tAkitAV0jy6//w+
	Ef51TxYOebw91vasOznA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdjD7-00060M-B4; Tue, 26 May 2020 23:42:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdjCw-0005zQ-NB; Tue, 26 May 2020 23:42:08 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D66D0207D8;
 Tue, 26 May 2020 23:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590536525;
 bh=QEWird265mk1GlMLo+zNPmoKJzyahnxjMwGIEmQdINw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=lp5l750Xyu1zmTDS6FhIoTi8xDIbgFtvRddgxIS6cvkkZQ1qPF926joakdkigxkO/
 tNI+1L7g8SAFZ7U8wnp5gRB9G7kuBguloHo+rZOPthCOwBEQtsbXplNTUjo9sye9pI
 pAzYBYjpkvxjsWXU7cFbDb+mOdPBFUZxTa3R18Ek=
MIME-Version: 1.0
In-Reply-To: <20200516080806.1459784-1-natechancellor@gmail.com>
References: <20200516080806.1459784-1-natechancellor@gmail.com>
Subject: Re: [PATCH 1/2] clk: bcm2835: Fix return type of bcm2835_register_gate
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Date: Tue, 26 May 2020 16:42:04 -0700
Message-ID: <159053652408.88029.5210144839543172586@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_164206_781864_60F34462 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Sami Tolvanen <samitolvanen@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nathan Chancellor (2020-05-16 01:08:06)
> bcm2835_register_gate is used as a callback for the clk_register member
> of bcm2835_clk_desc, which expects a struct clk_hw * return type but
> bcm2835_register_gate returns a struct clk *.
> 
> This discrepancy is hidden by the fact that bcm2835_register_gate is
> cast to the typedef bcm2835_clk_register by the _REGISTER macro. This
> turns out to be a control flow integrity violation, which is how this
> was noticed.
> 
> Change the return type of bcm2835_register_gate to be struct clk_hw *
> and use clk_hw_register_gate to do so. This should be a non-functional
> change as clk_register_gate calls clk_hw_register_gate anyways but this
> is needed to avoid issues with further changes.
> 
> Fixes: b19f009d4510 ("clk: bcm2835: Migrate to clk_hw based registration and OF APIs")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1028
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Thanks. Applied to clk-next.

> 
> base-commit: bdecf38f228bcca73b31ada98b5b7ba1215eb9c9

Please don't base on some random linux-next commit though.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
