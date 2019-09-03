Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 202C3A61F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXQORROxbgQOF53mawP+MBtaQvSBUnMLh47RdpaoWLc=; b=ZZnedUNLwNXP5m
	ZqMGqADILX1bGR1FrLAeXLWXIpWYRSJqusH9vFhMToaWTpmaQlkTTGtYUoFe/Vme1xUIq/wUjRbSR
	Sjt7Eosqz1upnhx475sAUFffV0TmyQqxREBUlWVnMRILULrv3CuOIEZGJQ+21wJLOjbSBwFPGjCUr
	xINercnYbSgl/EAWPXCcIigt0XKCVmFfwRTbF78BwjN5q3BohDMI5Mfr0y1i1hxQkzsdW8IQAVvew
	hmzK1sCpZ0WiSNo+gdhu5L+wRKL92NK9oxtjF3Fn49vtECVdDtq8FT2yy/A3mmYJGF1gANW3ZBxiu
	CysigjjlcK8hrKkOjvkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52iY-0000tk-4g; Tue, 03 Sep 2019 06:55:06 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i52iA-0000tZ-LK; Tue, 03 Sep 2019 06:54:42 +0000
Date: Mon, 2 Sep 2019 23:54:42 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 5/5] iommu: virt: Use iommu_put_resv_regions_simple()
Message-ID: <20190903065442.GB28322@infradead.org>
References: <20190829111752.17513-1-thierry.reding@gmail.com>
 <20190829111752.17513-6-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829111752.17513-6-thierry.reding@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 iommu@lists.linux-foundation.org, Will Deacon <will@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I think the subject should say virtio instead of virt.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
