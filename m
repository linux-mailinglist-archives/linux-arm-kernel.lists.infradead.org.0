Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF372135B94
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:41:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJwsTl8+77oCBw9ZU2NKsuos+21+s9V4bmZXNDMCsZY=; b=dLHGalKdcKmeLA
	g5NhFhO1i06vs3/ZF6Qba0eZR1O1UZS/OEtk4RvC+eqETt16EBafNfm6nz5DmhT+RDgZH7AXokNnw
	xKDExNfceaKJWJzK0boUVTo/0LTK+NW23RJC8AatocXlUNVlOCsTx79zjr1KEjFIZ4dHY2lzlbJcj
	QheUvVEhIcfMaq/Jw4xvzgwFX4o5wl5aoqYpXLtIwkjROIUuzbB4opTuW8zCTdYpKdcbXJS3h0da0
	3+1Ita+uyNAHpBuont1sts29HLvooGKy7l+wV9hNWAYAwLXP2DrQpb9QlxKTHK9bGcee9Lzzq3bTc
	8So74GQF1RZ39u5Zzj6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYzs-0007oR-CU; Thu, 09 Jan 2020 14:41:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYzj-0007o4-5T
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:41:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7461720673;
 Thu,  9 Jan 2020 14:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578580866;
 bh=DlrMPvVhccNEDW9koI+U3MM8MLRCHlA/GNRJ1PYg/fQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hBGaU9mYNlsPavcKzkYmo8SaTZNfzP/+FyxOm3wgOBXu17YOlpUXWG+DX8Km4vn61
 nhbPjGDttsPWISCNuaksOju0v0lwRPNIzEjOpQmHmWIn2zp2h5RLc3ywrmizM5H0fE
 JZIoKiMKQKpN+2PBhZR09JXUtzQDao5gIDDtK21A=
Date: Thu, 9 Jan 2020 14:41:01 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 00/13] iommu: Add PASID support to Arm SMMUv3
Message-ID: <20200109144100.GD12236@willie-the-truck>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20200109143618.GA942461@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109143618.GA942461@myrica>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_064107_225230_4A9C21E3 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, guohanjun@huawei.com,
 bhelgaas@google.com, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 03:36:18PM +0100, Jean-Philippe Brucker wrote:
> On Thu, Dec 19, 2019 at 05:30:20PM +0100, Jean-Philippe Brucker wrote:
> > Add support for Substream ID and PASIDs to the SMMUv3 driver. Since v3
> > [1], I added review and tested tags where appropriate and applied the
> > suggested changes, shown in the diff below. Thanks all!
> > 
> > I'm testing using the zip accelerator on the Hisilicon KunPeng920 and
> > Zhangfei's uacce module [2]. The full SVA support, which I'll send out
> > early next year, is available on my branch sva/zip-devel at
> > https://jpbrucker.net/git/linux/
> 
> Is there anything more I should do for the PASID support? Ideally I'd like
> to get this in v5.6 so I can focus on the rest of the SVA work and on
> performance improvements.

Apologies, I'm just behind with review what with the timing of the new
year. You're on the list, but I was hoping to get Robin's TCR stuff dusted
off so that Jordan doesn't have to depend on patches languishing on the
mailing list and there's also the nvidia stuff to review as well.

Going as fast as I can!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
