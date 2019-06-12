Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624E441EAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 10:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08p7k+j4k6A5mZ4tnknY00GuScD3DfuIKFjcBiUQ56I=; b=fdzhUCY/0Wrq7W
	9s7KtRezdGaS9SCfx4BxTZ0jyK+NUs//DYZrmx/3IKKeyXizKVp4k8CffGCpfLnZN7WLOirh7oqPB
	63azqx1jSMqUAx4bKyU13xuy/6OKSiDYeDbkSgPbLIC706xMBkXoqxtryF3Puq79xiIw+44UtbHvc
	sZ3JWOgO04V3J7NEZUGfTPPYOBslPrAVvlTgS45LH55AhE1XtJ7zApBRk2zyKcsIL+WdCT3ByIsJb
	5IvcfYS+zydITrbKoaE2js42iuypeEp5lhv2NJQaHw+ZiVG0kPLjkm+vGZV9It3szUp5vHQkN3xpS
	jKmxuqwmz6sj+WvtkOIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hayLl-00051E-8J; Wed, 12 Jun 2019 08:11:17 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hayLV-0004zz-6l
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 08:11:02 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id A4896398; Wed, 12 Jun 2019 10:10:51 +0200 (CEST)
Date: Wed, 12 Jun 2019 10:10:51 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v3] iommu/arm-smmu: Avoid constant zero in TLBI writes
Message-ID: <20190612081051.GD21613@8bytes.org>
References: <f523effd-ef81-46fe-1f9e-1a0cb42c8b7b@free.fr>
 <20190529130559.GB11023@fuggles.cambridge.arm.com>
 <84791515-e0ae-0322-78aa-02ca0b40d157@free.fr>
 <09a290f1-27a0-5ee3-16b9-659ef2ba99dc@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09a290f1-27a0-5ee3-16b9-659ef2ba99dc@free.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_011101_403319_4C89CB02 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 iommu <iommu@lists.linux-foundation.org>, Andy Gross <agross@kernel.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 02:15:37PM +0200, Marc Gonzalez wrote:
>  drivers/iommu/arm-smmu.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)

Applied, thanks. It should show up in linux-next in the next days.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
