Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE4C129ECD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 09:10:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQwWZRRz0UsqTt58u0pO71pI+yMN7K2y0+hoHQcjL2A=; b=Ajv48J/OyqUHLq
	YsmYT+S3dZbgcmB0TWWRMRYctcU4XcbaCjRhgj8ifDeCR6D8BmnEzqKBLt/cv7PDKAhW1kLnaez4F
	DXP/FfTwI2mX7IDObPlOxKWxvtjMrpySbUpShidMiarxoRWty6GiUNfuqsii4twrVFvviT51Tu1Ps
	8ZeMU+RRHJULXqXn2T21zk3ZIbDYJ2STnekSMv9TaBTLMMz/ZgMgH+ZYbCkxheUzfiYPd/61N+KHC
	t5doLu7GoWYGG2zZZkXzOrHBC1hzwbdcohuoXAQBtq0pM2EnvW4E47U9VrP4Hc9UOrIh0pVI4hQGH
	GZhl5xOBOk20SA0QtLzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijfHE-0008JC-LP; Tue, 24 Dec 2019 08:10:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijfH5-0008Ij-Tu
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 08:10:41 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C9D220643;
 Tue, 24 Dec 2019 08:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577175039;
 bh=1L4dp+QiqPHu7wf6E/7HV0BXGvYjQV2y0FxjdXBHZ9s=;
 h=In-Reply-To:References:Cc:From:To:Subject:Date:From;
 b=RY7QYj5lLy1i/HTUw0wApZHy5nhxgS1JolwiFEk9QB9rxouqZ4NmlxOSYzpJ6Dct+
 cxdSEqyKOyfU152A91Juvdc5de3oRiufgv4sKmJR6032Wnw9hvP+Be4osDJ5fvlHb/
 m4T4LhRz0bt5CrrX81pbtANWSI4/DXmNyXXvtAgs=
MIME-Version: 1.0
In-Reply-To: <20191129033534.188257-1-yuehaibing@huawei.com>
References: <20191129033534.188257-1-yuehaibing@huawei.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] clk: bm1800: Remove set but not used variable 'fref'
User-Agent: alot/0.8.1
Date: Tue, 24 Dec 2019 00:10:38 -0800
Message-Id: <20191224081039.6C9D220643@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_001039_986986_88770668 
X-CRM114-Status: UNSURE (   5.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: YueHaibing <yuehaibing@huawei.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hulk Robot <hulkci@huawei.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting YueHaibing (2019-11-28 19:35:34)
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/clk/clk-bm1880.c: In function 'bm1880_pll_rate_calc':
> drivers/clk/clk-bm1880.c:477:13: warning:
>  variable 'fref' set but not used [-Wunused-but-set-variable]
> 
> It is never used, so remove it.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
