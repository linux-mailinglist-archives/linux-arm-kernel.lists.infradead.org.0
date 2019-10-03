Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1D5CB10D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 23:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPFKi7ydn99cxLnbGD2n074EKtqLW+XJKnCx8nebNPg=; b=AYxcZ3tL28I943
	VlpYuNOlLZkdnnm+jx2sx+IwXG9NAeZUuH8rGWUpxaqd3OogTBZZpp+Dv+J8SVzxmLiu7uZEV4EIB
	uNEcbm/gdg5sOJQxt7QgecT9Tjcbt30MU7g53fNJEdg+4H/FKMgjuJ5pnQHr6wkfFSG+tpRHWP7L6
	qE28nx1jhJ2DXds9cz9HlrHZ45vHzZX7KtZq+cGSREcl82Q8KTJ9NQg/v98ao6liVhY4RBQOeFBFn
	WI7cBdaszEJT6Fw6D9S3fBdWKrhDvBDLght+UphI+/eY8b+6FCQygUahLjLXmTFOSlljwVeVPL5So
	euPhyE/dBy/XZhTEsMlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG8bx-0004Ja-Ga; Thu, 03 Oct 2019 21:26:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG8bn-0004IG-9R; Thu, 03 Oct 2019 21:26:01 +0000
Received: from p57b7758c.dip0.t-ipconnect.de ([87.183.117.140]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iG8bg-0000an-7d; Thu, 03 Oct 2019 23:25:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 01/13] arm64: dts: rockchip: fix iface clock-name on px30
 iommus
Date: Thu, 03 Oct 2019 23:25:51 +0200
Message-ID: <2015322.eFjuJPvpNX@phil>
In-Reply-To: <20190917082659.25549-1-heiko@sntech.de>
References: <20190917082659.25549-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_142559_479713_35F248EB 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 17. September 2019, 10:26:47 CEST schrieb Heiko Stuebner:
> The iommu clock names are aclk+iface not aclk+hclk as in the vendor kernel,
> so fix that in the px30.dtsi
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied patches 1-11 for 5.5

Patches 12+13 need the corresponding phy change to land first



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
