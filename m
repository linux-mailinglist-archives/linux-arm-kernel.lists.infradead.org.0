Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2B818A6CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 22:12:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMUbhmvINpgBZl0S3KqfoPgI2TJeNpnei7mlE57oNz0=; b=oBO5EN6yZsPzRD
	GtdyJBume0haxs9QygqzHCCz0QOX7PHhv1n2bdw0eFTkldaby2NsxtdSjhYDxE5ADDyBQn/JDz7vX
	BB5k5Vml9v3lbF5CaxysP17ayIs8t1c7MznldZh9E0s4S8tzpF2c6X7/DtlHoR6om56r81u1eOWwu
	HeZpC1cvVYh/gsvBlzFS6jXdsWTZoLW4FaZ14umsAq5TKkVOXBEXQuiFJXaUi/H9+qtRY9s6kkBdu
	OuLlQVm9pedQyOaRFP//um06RZqAcTtRbyVgZcQrS93Lt0JruNND566bCBjT5w6kLjmCVui1hZwyA
	uyVAQuOAsBw+bfQduHWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEfz9-0000J9-Or; Wed, 18 Mar 2020 21:12:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEfz1-0000Ih-Qq
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 21:12:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADD2920409;
 Wed, 18 Mar 2020 21:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584565931;
 bh=JdPxj7772rqqL4deVazLX6+da+1KtQgThsGQGsgwdR4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IQz17JFV2M6Fp7E31D3nzmKhWstevjvKMkZK3JA9IYkqFTxJqguHPT1/mr2gzAjkA
 nkspGxEtbEDAwTFFhmdV85l00Ve3Q0tTAVw7npj2NU6UA8npzj5acUzSQIsi2MazJU
 NqLC9smeccOgDMGrBI2kE0vM6Qax0CxEhhnreSlE=
Date: Wed, 18 Mar 2020 21:12:06 +0000
From: Will Deacon <will@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v2 1/6] PCI/ATS: Export symbols of PASID functions
Message-ID: <20200318211205.GA8477@willie-the-truck>
References: <20200224165846.345993-2-jean-philippe@linaro.org>
 <20200318183606.GA207832@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318183606.GA207832@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_141211_911358_05F5D2BE 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, robh@kernel.org,
 linux-pci@vger.kernel.org, joro@8bytes.org, iommu@lists.linux-foundation.org,
 jonathan.cameron@huawei.com, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 01:36:06PM -0500, Bjorn Helgaas wrote:
> On Mon, Feb 24, 2020 at 05:58:41PM +0100, Jean-Philippe Brucker wrote:
> > The Arm SMMUv3 driver uses pci_{enable,disable}_pasid() and related
> > functions.  Export them to allow the driver to be built as a module.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> 
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>

Cheers, Bjorn. I'll queue this series in the Arm SMMU tree.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
