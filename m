Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040F897EA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyKrY0jUVoReWFHSGEldMitYMXXFji4Iu82UBhaHTsU=; b=JoGtZHbZza8iND
	wf/IVfZj+jGYZRXAE41vYsnwptBPydaaF/SH23PMoyQsGFrJ0Y7Y+YbPZjcm7aE0Ax+5OWDRFIfAB
	PbC0JbwB8sllV3zPH61FPWm6DQd9O/UlYceqlKZ+E9xd+unbASgXUqq30WsDU+1apXh2SwhPo8Ppt
	fDOVXdWXZuDzLmee6RSd9M5cCqVEmpsAVBtG1m7L8mMghfPurs0TQtfyoYorgZL5BHx2nyiRz9ztA
	6pWHq3zuhzTcqVTcfYeh5IWV2qZ/1PshT0p0SzsPfKBgx9/wFL2nE117UmsDShhFRzmqjuH/AwUcy
	8ppgeVTTlIzeSEe3qnDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SUb-0001wy-BX; Wed, 21 Aug 2019 15:25:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0SUQ-0001wY-Fl; Wed, 21 Aug 2019 15:25:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0307C206BA;
 Wed, 21 Aug 2019 15:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566401134;
 bh=Z133FCcaUexJ59kOIXUWJUTamhLJKJ6ldqxj9NWa3tk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gUDPg5D2HGetVoKEHsW8DXI3N8IRAZgH4Tai4x88ildrlJztU+xVCdx4+3RGx2O2c
 N5xYByPeiRxepUcdRhHOkougwAECZWjBWIx9W0p1/W0+2p3czw/xCZjOZAh7KO7B+o
 cfMKfQyFaTQVwpV34sGMhCCZ2nWA2Elrqu5sjzPE=
Date: Wed, 21 Aug 2019 16:25:28 +0100
From: Will Deacon <will@kernel.org>
To: Yong Wu <yong.wu@mediatek.com>
Subject: Re: [PATCH v10 07/23] iommu/io-pgtable-arm-v7s: Use ias/oas to check
 the valid iova/pa
Message-ID: <20190821152527.6rkgf4g5wgsc7fyq@willie-the-truck>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
 <1566395606-7975-8-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566395606-7975-8-git-send-email-yong.wu@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_082534_541038_74BA0B90 
X-CRM114-Status: GOOD (  14.30  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 09:53:10PM +0800, Yong Wu wrote:
> Use ias/oas to check the valid iova/pa. Synchronize this checking with
> io-pgtable-arm.c.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/iommu/io-pgtable-arm-v7s.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
> index 72f1880..fa1b38f 100644
> --- a/drivers/iommu/io-pgtable-arm-v7s.c
> +++ b/drivers/iommu/io-pgtable-arm-v7s.c
> @@ -504,7 +504,8 @@ static int arm_v7s_map(struct io_pgtable_ops *ops, unsigned long iova,
>  	if (!(prot & (IOMMU_READ | IOMMU_WRITE)))
>  		return 0;
>  
> -	if (WARN_ON(upper_32_bits(iova) || upper_32_bits(paddr)))
> +	if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias) ||
> +		    paddr >= (1ULL << data->iop.cfg.oas)))
>  		return -ERANGE;

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
