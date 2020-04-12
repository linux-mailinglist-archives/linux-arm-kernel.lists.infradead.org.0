Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AE51A5D63
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 10:10:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eowCrDrmjuwKBl9WAsk4S5CK8Gt/P5Ho64eYLndixEM=; b=CkeEnRotD1RUIr
	23HdRlCM3PI8qypxUfflE4vFh6+uSUErQpYxxFqP+5qwhzoc3zpkdrSM886cBOCkx2/IeQOfSvbBD
	HIiEMC+zkB5FVAv9Nuuae5SyCn71WbCXjWHfjk8y3yocQyU+K46CVmj30btCo+eZ8BKeWmKUo89SC
	eM27AVUusWoEoqepjIPJnx9HYRFKrDsky8gBI9u3gCV0Hzr17pydjCsn6er6h5kr4egy4FeWhfX2j
	9iEeC1Oy66AyYPACFo4MaRzt7zaXXC9eBsVBBEdNtbh479M+wjEwUUbkkomUWN/pvKwWT0OO3lRW/
	aV0c9WfM+Gf9nM8q+/dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNXgf-0001kN-I0; Sun, 12 Apr 2020 08:09:53 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jNXgZ-0001kE-Rp; Sun, 12 Apr 2020 08:09:47 +0000
Date: Sun, 12 Apr 2020 01:09:47 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v5 4/5] scsi: ufs-exynos: add UFS host support for Exynos
 SoCs
Message-ID: <20200412080947.GA6524@infradead.org>
References: <20200412073159.37747-1-alim.akhtar@samsung.com>
 <CGME20200412074218epcas5p3ef7973c8a47533a15a359b069da8003c@epcas5p3.samsung.com>
 <20200412073159.37747-5-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200412073159.37747-5-alim.akhtar@samsung.com>
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 linux-arm-kernel@lists.infradead.org, stanley.chu@mediatek.com,
 Seungwon Jeon <essuuj@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 01:01:58PM +0530, Alim Akhtar wrote:
> This patch introduces Exynos UFS host controller driver,
> which mainly handles vendor-specific operations including
> link startup, power mode change and hibernation/unhibernation.

So this doesn't actually require the various removed or not added quirks
after all?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
