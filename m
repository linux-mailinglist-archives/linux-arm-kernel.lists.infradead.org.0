Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 902621D8B6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 01:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEEgR3pOmbd1LeTj9sqJl+zB6nAiTq1IoIK+U+Kxwog=; b=CsyfClUpPdhbHH
	S/hQ+u8ffULyQrpHLbrwRf4l19qr1M92st6FzXIy4irPiCfuS2A2mcFWfKfV6czsNYiFeDyMsCysa
	I24bQrC1etT5Q9vomX3hot8lIqwWy4nQ7iCsKboAkdduFHGdhP9puV5easmAQTV9V8uScj4m+qClb
	JZE6Sw7gCTgWSaiV0sIpqLgEfumIHAYbJ2s+QMbVY6jLnwJ8T8DaxJmMpUrsKghBWNrAZLibDeYWu
	FHLAQQBZRhY3ME2oJHOv9CqQ/Y+g1B8XrYeBhbHk+uYgDjqmeSLygCC+CFCN7TctqGlXaaVMx9flV
	dIvAtCuCHBgvj+4rWPzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaopn-0003RQ-Lc; Mon, 18 May 2020 23:06:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoo6-0008PB-GY
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 23:04:28 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6EFA207ED;
 Mon, 18 May 2020 23:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589843065;
 bh=bitmyTr9R/oGSnaoA06CaiabbOP6nniUf9dbxg7nIgc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Rm+hqdIEk+57bdOzbpbAwxmoNUH53eOvFcjC/BhxDfUMOAa28P15GZ9A3IA7uWthQ
 AGiK1xGsizoRHeV44aGcUonMII2B2Kvo3x6xbVNn5u4wNGsi2EqTMkhE5rgdQjeal0
 q45OTpjA9/jwcQMb003DJJm0zFT3htnvxclTfipk=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Don't reserve implementation
 defined register space
Date: Tue, 19 May 2020 00:04:07 +0100
Message-Id: <158981256141.239287.4383286244395481954.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513110255.597203-1-jean-philippe@linaro.org>
References: <20200513110255.597203-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_160426_684710_988DAB41 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, joro@8bytes.org,
 robin.murphy@arm.com, tuanphan@amperemail.onmicrosoft.com,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 13:02:57 +0200, Jean-Philippe Brucker wrote:
> Some SMMUv3 implementation embed the Perf Monitor Group Registers (PMCG)
> inside the first 64kB region of the SMMU. Since PMCG are managed by a
> separate driver, this layout causes resource reservation conflicts
> during boot.
> 
> To avoid this conflict, don't reserve the MMIO regions that are
> implementation defined. Although devm_ioremap_resource() still works on
> full pages under the hood, this way we benefit from resource conflict
> checks.

Applied to will (for-joerg/arm-smmu/updates), thanks!

[1/1] iommu/arm-smmu-v3: Don't reserve implementation defined register space
      https://git.kernel.org/will/c/52f3fab0067d

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
