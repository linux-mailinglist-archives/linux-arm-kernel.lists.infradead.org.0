Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AF41E3CF4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5NWmT933Q1kLC2KOeANwIu4LAqNCSG8dZNZlWAj1jM=; b=LYpFYnoyNx5cds
	A2NqvvuUwc/sNCiB6hNjcLfx40rvk0+ec8H7zZg5pRp1GmoLQqx3O3hrgNfB5V+T2VLB/GFd4GBfH
	cXAb5crohBgPadFkVJzVCHK9dsW1UHy1zZbATGmcYP7kpPCNLWXE4jHW+mPlAK43cBdLu0gMmx+UD
	IpTb6jDmMFOpzKLmxPGgxRq53uXkbx7iK+yMvRoGe+ylwWe3ofUXOknZlSVwNVpmrkLD/AdmEpX2B
	mY70ZOwkInQQXAKDbwesSDs0cx0Tk+1x0uhs/VNxsfRJ58FcBfmjdCOmirSw9+X4gPeCzj7gwM/O2
	QNx44RBDjgtFlPmK6btw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrvS-0005zC-QO; Wed, 27 May 2020 09:00:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrv2-0004RH-Ay
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:00:14 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE06A20723;
 Wed, 27 May 2020 09:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590570009;
 bh=GzN9KZi8SIAiZv6JsaMy5rtT9c4WVtJCbDQmDejM+Rc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dw8PQDiM90GK1xPK0MDmtsB/uuNO5KqcuE2U8o5Bi9m3bkWcLa2RYu4UYcftfI8gL
 7map9j1fDgO+xHYZCtIgx1wv9/xmbcAUQMZ2V17LMke54thxct3Cz7n7lWZ60o+1Qn
 SucOB5Se6nCwWAoR5L8bMbTnC5mBS13qfDJaL2Og=
Date: Wed, 27 May 2020 11:00:07 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Zhangfei Gao <zhangfei.gao@linaro.org>
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
Message-ID: <20200527090007.GA179718@kroah.com>
References: <1590493749-13823-1-git-send-email-zhangfei.gao@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590493749-13823-1-git-send-email-zhangfei.gao@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_020012_637084_DAF08621 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-acpi@vger.kernel.org, Wangzhou <wangzhou1@hisilicon.com>,
 linux-crypto@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, kenneth-lee-2012@foxmail.com,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 07:49:07PM +0800, Zhangfei Gao wrote:
> Some platform devices appear as PCI but are actually on the AMBA bus,

Why would these devices not just show up on the AMBA bus and use all of
that logic instead of being a PCI device and having to go through odd
fixes like this?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
