Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728E2956D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 07:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrIJDHQmFeSbsZa7S8ELMOSWXPqE5UTramNZtibRhgU=; b=NfhQGXtBLQoF5U
	sczAb5ltEgmLenej1uQxznmJavsRLTJFWxAgKCBx2eYYbj0OX4m7LHhZTdMpS+ed7dm9X6RkBjQkF
	L3ZPnr79xg0iHj0q0ZKcX2CPtFg/n3nKrsbhkdYZzDVGoDLAcBwAuxshX8Ra9j8qisNF50qXgsIjQ
	+9oIwFpMQPFHROdWlxd+p/9un+Oy4UC7KOdzkKqfpVDSQDSbyTm4sPrZcRhu2+1UqwgxJa5CE/YVG
	/kQGH7IlHrZ5Sp7AnGN01pQDy2a6S1seMB9slNWGxMD/clYyNW46UDEB5vlCAl/4sfh+HSilQ62wF
	V5XnyBLii/JYCz0YDTtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzwyZ-0003zC-Tx; Tue, 20 Aug 2019 05:46:35 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzwyB-0003sx-R8
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 05:46:13 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6944C68B02; Tue, 20 Aug 2019 07:46:05 +0200 (CEST)
Date: Tue, 20 Aug 2019 07:46:05 +0200
From: Christoph Hellwig <hch@lst.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: Build regression in Linux 5.3-rc5 with CONFIG_XEN=y
Message-ID: <20190820054605.GA27501@lst.de>
References: <ebd95b7c-d265-cbf1-be50-945db1dd06ad@gmx.net>
 <825549ed-8aa4-b418-8812-15a9d3cc153e@arm.com>
 <0b019cdc-6f0e-c37f-2be7-c24293acb8cd@gmx.net>
 <20190820012415.GA21178@lst.de>
 <a69cce68-8c41-2030-b011-cdfacfeae421@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a69cce68-8c41-2030-b011-cdfacfeae421@gmx.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_224612_118188_CEE2597B 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Avaneesh Kumar Dwivedi <akdwived@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, iommu@lists.linux-foundation.org,
 Ian Jackson <ian.jackson@citrix.com>, Stephen Boyd <swboyd@chromium.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 07:43:52AM +0200, Stefan Wahren wrote:
> i applied this patch and it fixes the build issue i reported before. But
> this seems to reveal another build issue in drivers/firmware/qcom_scm.c:

Yes, I rean into this as well until I disabled the qcom platform.  But
this is in no way related to the swiotlb changes.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
