Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8228353D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKBXM8qvO6h75kfwNYmszlEMpKXumWQxJiGDtrGgTGc=; b=FLandc44sexecp
	OGl3FTItma0KZFagdz4/qtXGM7AQrOTmf96huWQBQ2KQmY+Oo+ntbE6labzMhUBrtmXWBAEzRq/jS
	6MBKR5PlAy0iAL3At7CaAWtlf/nJMqfkOV2bshEEdM3rg7a3Iuj6NhhOes5i/61KfPSjAdX3UDfkn
	Dp8fDaqCjGEV5cnpEXRveyv5YMDaRycJUS5PSHKL7RafhuO/uFGY4pHhdCj7x18cRX6dDHLXSUyyX
	qWKkPd6QADGmlg7AOtcAoq9hGp8IqVYzjMLL0oCLRWohzmsW5K2QdjZXXsqD6LlB9sefR3T6noWnO
	jxOxQWrwloIz7kBDAXHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1Nw-00015M-2Z; Tue, 06 Aug 2019 15:28:24 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1Nn-00014w-4Q
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 15:28:16 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 4DEA53D5; Tue,  6 Aug 2019 17:28:13 +0200 (CEST)
Date: Tue, 6 Aug 2019 17:28:12 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] iommu: arm-smmu-v3: Mark expected switch fall-through
Message-ID: <20190806152811.GD1198@8bytes.org>
References: <20190730152012.2615-1-anders.roxell@linaro.org>
 <20190730152600.643mg43y6567pchi@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730152600.643mg43y6567pchi@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_082815_321217_60EF28A1 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: robin.murphy@arm.com, iommu@lists.linux-foundation.org,
 Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 04:26:01PM +0100, Will Deacon wrote:
> Joerg -- if you'd like to pick this up as a fix, feel free, otherwise I'll
> include it in my pull request for 5.4.

Applied to iommu/fixes, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
