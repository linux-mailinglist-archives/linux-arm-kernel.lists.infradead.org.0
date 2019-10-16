Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE16DA255
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 01:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7BXL3rtobV+ORSlRmODAjw3B78UwI4YAPPrq5+IbeI=; b=ms1L3G11S8hQao
	V0TY4Yi8JGH+8odStT5jPhWKlA+8SbUSVmyEgsyudCzgWMwZn7+vrC8qiAKoGLEClL1Yr0MP1DXCu
	8J/X5NVlXQkr1tBcjJDqmG4gC1uXc1K0IJm3VrWIa0m7tY4mLHxBsZ+cbDJcq5y1Lv1Jnk508hVLb
	MwWVYgeNBDCXqic8RUGoc1PQVMSwnJXpGsDtN7bq+zhDTG+S91L08Ipb4N8rI8laDukpvh6+Sw4Yh
	3QwQLgMVci+Npstz3Q0QldfyZgr5R/awZ75xEgx7DEeejg/nDd98S0lC1pTWPV/RjeFXk9CSMcVEM
	CnSqSe/2rql5EbgmNQHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKsoO-0000zO-2V; Wed, 16 Oct 2019 23:34:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKsnd-0000S9-HL; Wed, 16 Oct 2019 23:33:51 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC30621A49;
 Wed, 16 Oct 2019 23:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571268828;
 bh=J0c1fc+cVlOSedR6bxWcZ3BNhUFkVY/5owItVepDo14=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=ravOVQCp8V/0fJXEs3ewm1/jkVXFZTtklaupE62sRKCFtO8Tiz2GknIp8fK6Y2a93
 K2yFDI0zmFgPTJjGZvtgAKYGVaGocf3sxXdFgt23wPlE2vTr8zzBPBEXWkjD+iDKhL
 x5ZaCzE7g7nQz0lNw7Npz5oGRXi6bLt00nyGz05U=
MIME-Version: 1.0
In-Reply-To: <20191015124226.25792-1-yuehaibing@huawei.com>
References: <20191015124226.25792-1-yuehaibing@huawei.com>
From: Stephen Boyd <sboyd@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>, matthias.bgg@gmail.com,
 mturquette@baylibre.com, robh@kernel.org, ryder.lee@mediatek.com,
 wenzhen.yu@mediatek.com
Subject: Re: [PATCH -next] clk: mediatek: mt7629: use
 devm_platform_ioremap_resource() to simplify code
User-Agent: alot/0.8.1
Date: Wed, 16 Oct 2019 16:33:48 -0700
Message-Id: <20191016233348.BC30621A49@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_163349_713466_D51C3B24 
X-CRM114-Status: UNSURE (   5.69  )
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting YueHaibing (2019-10-15 05:42:26)
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
