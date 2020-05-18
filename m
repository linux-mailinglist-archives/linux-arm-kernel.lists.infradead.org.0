Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65641D8B6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 01:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vQYxcRMlhQibyYpmjTMbDqd6iCW9UckafS1TUiCCsU=; b=LM7JKu7b0oTT1R
	s53xBqPAISWRYzhMAVn2xqGJ0akHcp0DYjeP/hrd8cRaqWFYXsMzI5rI+sCa1Hoz8DY+4vfNOQTDB
	7FULdUm6kZD009zLZQRTfmzTsTH5EeCwPXSmYCGrQsRG6uTcFcDGl9WHIeyUggLcoXvcLf/grdsF8
	JJ8XOXwNVfiFVHazjAStEtP/r+S3qf6edzCBT638tqTmCvitTVKQoMTziuyjiZPdQl8oAwJAPPBIh
	dKXht4da8ZzIhLJYYG87NjrUkJQ/LgUOvVTxPmtowm30jxkAY9IUCF9GHDxgJGC92fr2WiW5fyGmE
	Yu+684wDhSmgJTCMaLNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaopc-0003Bj-Mw; Mon, 18 May 2020 23:06:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoo3-0008Mt-Sa
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 23:04:26 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 747C12084C;
 Mon, 18 May 2020 23:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589843063;
 bh=mdDBICGc/1OVf1NxEPnOEe4l94uJZgJ0V0xs46WSuvU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KxwyXazHoWJGhkwv66rMVcRMPq+clFDbR4QWw8u3bnJE8muf14kQJYHDSZGGOriFp
 3YqntC+doiOvB8w82MSAAkHmxWDTk1J6H/WeD4g9Gbw80fjWEqY9tUKyb8tSrZoTli
 YeG0fdKwbvMBjlIShhBqVmWEncO9OosObwGRQ28A=
From: Will Deacon <will@kernel.org>
To: mark.rutland@arm.com,
	Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH] pmu/smmuv3: Clear IRQ affinity hint on device removal
Date: Tue, 19 May 2020 00:04:06 +0100
Message-Id: <158982257913.5151.8809626382618545833.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200422084805.237738-1-jean-philippe@linaro.org>
References: <20200422084805.237738-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_160423_970120_1A614008 
X-CRM114-Status: UNSURE (   8.11  )
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 Apr 2020 10:48:06 +0200, Jean-Philippe Brucker wrote:
> Currently when trying to remove the SMMUv3 PMU module we get a
> WARN_ON_ONCE from free_irq(), because the affinity hint set during probe
> hasn't been properly cleared.
> 
> [  238.878383] WARNING: CPU: 0 PID: 175 at kernel/irq/manage.c:1744 free_irq+0x324/0x358
> ...
> [  238.897263] Call trace:
> [  238.897998]  free_irq+0x324/0x358
> [  238.898792]  devm_irq_release+0x18/0x28
> [  238.899189]  release_nodes+0x1b0/0x228
> [  238.899984]  devres_release_all+0x38/0x60
> [  238.900779]  device_release_driver_internal+0x10c/0x1d0
> [  238.901574]  driver_detach+0x50/0xe0
> [  238.902368]  bus_remove_driver+0x5c/0xd8
> [  238.903448]  driver_unregister+0x30/0x60
> [  238.903958]  platform_driver_unregister+0x14/0x20
> [  238.905075]  arm_smmu_pmu_exit+0x1c/0xecc [arm_smmuv3_pmu]
> [  238.905547]  __arm64_sys_delete_module+0x14c/0x260
> [  238.906342]  el0_svc_common.constprop.0+0x74/0x178
> [  238.907355]  do_el0_svc+0x24/0x90
> [  238.907932]  el0_sync_handler+0x11c/0x198
> [  238.908979]  el0_sync+0x158/0x180
> 
> [...]

Applied to will (for-next/perf), thanks!

[1/1] pmu/smmuv3: Clear IRQ affinity hint on device removal
      https://git.kernel.org/will/c/10f6cd2af21b

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
