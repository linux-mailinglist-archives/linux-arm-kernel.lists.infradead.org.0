Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE021E4DCF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 21:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vN28fuc5+/19TBxGSF+1bqNgkjZ6lFuDXz45EWxGd2o=; b=ZySo2NPMfxyeQ/
	qSK7eL6tmBQ3zQpfXFB4P/FMZXMsjSq7LheGhsiykIqhw/+NaG21ydJCSC8CE+RDenCVBXmEcEysE
	VKYCE3kIJ/LIEA7sPpUNzbgNwlF6807qJfklBmcKUFQDIralgOD2qlJ1wEEtCIBz/tNfI+l8D/cM7
	VUWODULO4tE7dEU6bEgvPLQzGun+BAwKa4KAJzuo4cPgsCdxR1/nTI7/cvEv0V3KlCvaymbOiPZzu
	KnWx6MJAW2DQM1EW+kg9DoSOvCCnIoT3IpqE3yE/bqv7jqS9MPYlo0rKf9YECbAPXd2CttKUOSpwe
	QT9/cmOhRd2nTF1g3qVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je1KV-000390-Ge; Wed, 27 May 2020 19:03:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je1KK-00038b-S0
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 19:02:58 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 500E42075A;
 Wed, 27 May 2020 19:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590606176;
 bh=FNRfGNiDqmWVtzvD/Q+0ubn+3BG7qdDhL75ewsHexII=;
 h=In-Reply-To:References:Subject:From:Cc:List-Id:To:Date:From;
 b=jOmhbTRe/HIa8jjS5YECy/YpZAZi0TQf2rWQcO3wFyRhphqvNlw3KRZgZPR5jxiOa
 8orVjWXIkV1j6YOJD/kBrNsnYMnJYBmzgv0coHCAzWGbrVWmscxv0nO7pGZ0OD9l/d
 rY0dEQB///b8AqiW+BZKFA2fTd96CpBDWpKQZDiw=
MIME-Version: 1.0
In-Reply-To: <20200527181307.2482167-1-robh@kernel.org>
References: <20200527181307.2482167-1-robh@kernel.org>
Subject: Re: [PATCH] clk: versatile: Fix kconfig dependency on
 COMMON_CLK_VERSATILE
From: Stephen Boyd <sboyd@kernel.org>
To: Rob Herring <robh@kernel.org>, soc@kernel.org
Date: Wed, 27 May 2020 12:02:55 -0700
Message-ID: <159060617560.88029.15560634206504689864@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_120256_923797_F944CC2B 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>, anders.roxell@linaro.org,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rob Herring (2020-05-27 11:13:07)
> If COMPILE_TEST is enabled, then COMMON_CLK_VERSATILE can be disabled
> when dependent options like ICST are selected resulting in kconfig
> warnings:
> 
> WARNING: unmet direct dependencies detected for ICST
>   Depends on [n]: COMMON_CLK [=y] && COMMON_CLK_VERSATILE [=n]
>   Selected by [y]:
>   - ARCH_REALVIEW [=y] && (ARCH_MULTI_V5 [=n] || ARCH_MULTI_V6 [=n] || ARCH_MULTI_V7 [=y])
>   - ARCH_VEXPRESS [=y] && ARCH_MULTI_V7 [=y]
>   - ARCH_ZYNQ [=y] && ARCH_MULTI_V7 [=y]
> 
> WARNING: unmet direct dependencies detected for CLK_SP810
>   Depends on [n]: COMMON_CLK [=y] && COMMON_CLK_VERSATILE [=n]
>   Selected by [y]:
>   - ARCH_REALVIEW [=y] && (ARCH_MULTI_V5 [=n] || ARCH_MULTI_V6 [=n] || ARCH_MULTI_V7 [=y])
> 
> Fix this by dropping COMMON_CLK_VERSATILE and just using 'menu' instead
> of 'menuconfig'.
> 
> Fixes: 81134fb541d4 ("clk: versatile: Rework kconfig structure")
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
