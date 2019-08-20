Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2816295D9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hv+FOXi2FlbG+FRM1wMYzC7b1+vaCEw4D/3DfHexoMo=; b=WbE7EUiNypAWfJ
	DZdyacOBmXrArlUmsgZeDUl4MKSk9iqRBDKAX86bDhoIVD2YSUxRLtRbP81m9FV7gsZlDvffY3XbD
	faIjjUeBSFzM9L2K4L02eCA5CXkJoCaLcbsUn/Sv/PqLi8cHW9px34YsNs/sQwvoEz75wz1grIK79
	9UvTXHVfb0XgYD2SsaIwA80NKK5tELNR0NKGmizeytUZrhLGgpGluQPlVnLCIwJpcaehOH8iToqCD
	qCFKswMbrrY60Zz/bGuYaruRCSXXp3qdybYzZiOxFQS1GJ/qsAudwWYAU+pQK7IqeIwgB9D+HkGM+
	9HkBxh7464FcMhDW6u9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02WS-0000gU-2v; Tue, 20 Aug 2019 11:41:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02WF-0000gB-7m
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:41:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15248214DA;
 Tue, 20 Aug 2019 11:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566301301;
 bh=9s7o6zZ76OS1IthcMa/ST21tcXOvg2qDs/Oqx1JNOEc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xguat+upvO10HWYhgpcqZGs+2SPzVe4fjrxWG8f2YYXGAEwB4HClaGD+CciZD2T9u
 hgnwhRV43ZQ3wF5j2tKuWaPBBfrOxI905uzBU/P6eVM37NnJxeaS6cT4GuN3rxchQa
 ccZCy1TtnUBy87qaM55lP3VpbHSx1Y8OAyfgcdAw=
Date: Tue, 20 Aug 2019 12:41:38 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/arm-smmu: Fix build issues
Message-ID: <20190820114137.biqykhexvxuemwku@willie-the-truck>
References: <909636ed9dfc702a7cb4806903e3e698ce9b29a6.1566301129.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <909636ed9dfc702a7cb4806903e3e698ce9b29a6.1566301129.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_044143_299935_AAD1D076 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: joro@8bytes.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 12:38:49PM +0100, Robin Murphy wrote:
> In a hurry to get things ready for merging, we missed that one more
> include needs moving to arm-smmu.h along with the register accessors
> to prevent 32-bit builds breaking, and some missing static specifiers
> made Sparse sad.

I already fixed the static stuff locally (and I think you missed
'calxeda_impl'), so I'll reword this and just take the missing include.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
