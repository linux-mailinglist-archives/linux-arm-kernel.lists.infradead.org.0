Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C901D95DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IF32foXCrl3o+XZ9aptDJ2AapUfJDd2ZDdqFU2mN2L0=; b=sJcF3gpejbgiaK
	TiF528vbprH8gLUa4LGBBblMuQQSgH/FS5fB8/ujsXA6IRWVGv9qAKJvWVdB2QOIbiYE1muRIwHj/
	hrC8TlA2Y0Sclyug3L8VSqZFP302CbGHsSAqk27pb1q4kbOrgIn5tAs52lD3if8BriwXPnvjsrNi8
	e5ks2NvfYp3paBw0zfkheUMie90CBc63J5tpmzkI2OHKKDSq83ZOxNpNEvvEEcKO724DUKsQVo5GP
	0DI/W+Cp308yxGcwLy0Wb6mT/1ahnf1BwNFvvtIh6CU0EOpgVL3agzmyd8tQiCBCVvl/0NUS+8Q8y
	LVbNWbhnr7YW0XgzgjgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb11R-00078C-BH; Tue, 19 May 2020 12:07:01 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb11G-00077V-E5
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:06:51 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 10E3E386; Tue, 19 May 2020 14:06:40 +0200 (CEST)
Date: Tue, 19 May 2020 14:06:38 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Wei Yongjun <weiyongjun1@huawei.com>
Subject: Re: [PATCH -next] iommu/sun50i: Fix return value check in
 sun50i_iommu_probe()
Message-ID: <20200519120638.GG18353@8bytes.org>
References: <20200519091857.134170-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519091857.134170-1-weiyongjun1@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_050650_623208_0B1473C2 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 09:18:57AM +0000, Wei Yongjun wrote:
> In case of error, the function devm_platform_ioremap_resource() returns
> ERR_PTR() not NULL. The NULL test in the return value check must be
> replaced with IS_ERR().
> 
> Fixes: 4100b8c229b3 ("iommu: Add Allwinner H6 IOMMU driver")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/iommu/sun50i-iommu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
