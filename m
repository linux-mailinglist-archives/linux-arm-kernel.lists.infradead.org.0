Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9664BDA259
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 01:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YFhlDdd7eUQNrTHP5+jrf7Fjnh306+Z4nIyU2mfUXw=; b=EB1jaVpDxgQmaC
	GCTewMkP+60RsNSibM9bwIZvFxxbXClNum+VqLIFc9JIeKPWjnoSVgxeBEPxMDs7HJpwql3JO2CAH
	Rj0OYezkFZczUKEWjT4uIkGL60zvKNxWIafuGwyExoWKU7MkdzepLxI1m4n4QPjbMCQOsyXviv+RU
	M6de5eI+9oE1gJjvzCIekY0vM7xYk8Q9iX0uHWbd/sf+c+QMEc+nUNTJGpCYSRPNJV9W/QlbkdKIM
	MzQk3afRFlBErrd/ND1tGcW2NTgMdtfPpcDyrRBRSPfOll/x2ANl2kjDPBvRe9xXBlLJ6LUYl8mBK
	I8VyzeqTu9waytaYtNiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKsp2-0001YB-4u; Wed, 16 Oct 2019 23:35:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKsoB-0000zY-9d
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 23:34:24 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCA782168B;
 Wed, 16 Oct 2019 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571268862;
 bh=vteasG9t82lTuUd1FLxsGGoHzxtVjFCukWZwh1O1yTw=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=IJCEHxCyF/QrZcX1ouR2Xs87dz0bNKCt5dCEU2dtoyrONT+mSIiaEMnpeI3tAKWnd
 PvioMJG9hafa5yrkztUz0Emnqt23HrRJl78oroPpPjm3trt2MeRsBm0ofYHYE2jv8p
 2+zO2yQ8jmca61oU2cjWsnjZ2Enjzkypu/J18af8=
MIME-Version: 1.0
In-Reply-To: <20191015142424.25944-1-yuehaibing@huawei.com>
References: <20191015142424.25944-1-yuehaibing@huawei.com>
From: Stephen Boyd <sboyd@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>, cw00.choi@samsung.com, kgene@kernel.org,
 krzk@kernel.org, mturquette@baylibre.com, s.nawrocki@samsung.com,
 tomasz.figa@gmail.com
Subject: Re: [PATCH -next] clk: s3c2410: use devm_platform_ioremap_resource()
 to simplify code
User-Agent: alot/0.8.1
Date: Wed, 16 Oct 2019 16:34:22 -0700
Message-Id: <20191016233422.CCA782168B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_163423_415884_CEEA006C 
X-CRM114-Status: UNSURE (   6.15  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting YueHaibing (2019-10-15 07:24:24)
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
