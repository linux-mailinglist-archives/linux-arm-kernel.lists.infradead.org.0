Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA17B1E428C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NP+iYlu/ZfSLtTkzHa5gm2csFn+4lxO3NoWSl20HSY0=; b=STl/B/XOJoWtsm
	BeTln8X8gBVCsQyJ0Go+LVeuObCoyHMfdJyY7OyrZyXs5tRYki5VezUgjwehzPMtrkXb2lbb+6IA5
	gVAhA6D/09fEHnfTgmgaib+13aczps5LjU/kIeDznHL2a3TVAzuSDhozLtTlZ0aD99evQrk5vqN2G
	l05sF/RxJVjBLRE6VXLUZOAjVG+KxTFrTKjfLzBl5tAJ15D06AmMcBZkLWULWC/OMMREJtzuI2bRC
	btXVMukCW0PKZsxeeSAChz/Y1bsNK2pfGWVQMYnjkZTlHEYjPDuN2MDWRoCWIEZXZtfI8goMGzX5z
	mGbTwQ+3ahFIOmJZfmNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdvLO-0001zW-9y; Wed, 27 May 2020 12:39:38 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdvLD-0001t6-My
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 12:39:28 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 82F30247; Wed, 27 May 2020 14:39:25 +0200 (CEST)
Date: Wed, 27 May 2020 14:39:24 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Subject: Re: [PATCH 0/2] drivers/iommu: Constify structs
Message-ID: <20200527123923.GJ5221@8bytes.org>
References: <20200525214958.30015-1-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525214958.30015-1-rikard.falkeborn@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_053927_899143_60572A77 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
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
Cc: Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 linux-hyperv@vger.kernel.org, Haiyang Zhang <haiyangz@microsoft.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, iommu@lists.linux-foundation.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 11:49:56PM +0200, Rikard Falkeborn wrote:
> Constify some structs with function pointers to allow the compiler to
> put them in read-only memory. There is not dependency between the
> patches.
> 
> Rikard Falkeborn (2):
>   iommu/hyper-v: Constify hyperv_ir_domain_ops
>   iommu/sun50i: Constify sun50i_iommu_ops
> 
>  drivers/iommu/hyperv-iommu.c | 2 +-
>  drivers/iommu/sun50i-iommu.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
