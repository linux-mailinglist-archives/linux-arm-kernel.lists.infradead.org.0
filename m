Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF24FAC277
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 00:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=833nSOLw9gnk3Taa40Lgs3uhoClWn4cD4ayg/Y5FErE=; b=poMp7N/LCyoQF2
	CO6ooOcrdquvyb6/SVzmR+SgCD59PGJcdBpAAPLVXsgOiBbSI0So+7+pzF5PtLsH3CUWI81yyXbYB
	mu3yoyyZkPkhuouK+ltLPI2b+SF6Z3AXX99x4alzDT6KUINyMpUfmRUXHOInhCOQeyQG3Wviih3xD
	O7HdtDvELk8diZXd+ieRdCfnKDFANOzI3BWRWPDRUuKfi/e2pZPe1cL/Mehqx5BuCjr2mvKni+brV
	OM3tl7yIlqdSqAj1w7JMw4eJUGmdU7W+9gk+8mk8o2hmf6gdz2O+ZuTpday4vZISf9yN9NTE3Rhgf
	aO5ZfYwt1fkTDsq7Qb3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Me1-0008Hp-PE; Fri, 06 Sep 2019 22:23:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Mdq-0008HV-D6
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 22:23:44 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E63C2207FC;
 Fri,  6 Sep 2019 22:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567808622;
 bh=bZdcjHRTRictQKuKHROlwLDaTmKRAORwUFoQbRhpj28=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=DZ6igBgMOMpRoIV4Lq6HqTpdhr2Z7iGqIkhs8+ySpg6iV9iUejH5iUEkMTxD4A0VZ
 aX9iy9LAUaxyqPWfQJdUPXtfHMOGVO8gpngAezv1MyZ1MD0b+z3A/JWBNGzQFDC8JY
 HQ3HdZ14sHe6zjmvhx7iYeToJ8rKdCyCLnTCCKzg=
MIME-Version: 1.0
In-Reply-To: <20190825141848.17346-2-joel@jms.id.au>
References: <20190825141848.17346-1-joel@jms.id.au>
 <20190825141848.17346-2-joel@jms.id.au>
To: Joel Stanley <joel@jms.id.au>, Michael Turquette <mturquette@baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 1/2] clk: aspeed: Move structures to header
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 15:23:41 -0700
Message-Id: <20190906222341.E63C2207FC@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_152342_464844_618BEF74 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Joel Stanley (2019-08-25 07:18:47)
> They will be reused by the ast2600 driver.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
