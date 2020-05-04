Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9257F1C48C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 23:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7tMwHzhT8D5l9RyvYG4Wpm88ZMF1aKOyjd9HPqL0UM=; b=Ht3mslgmFcV+8x
	T7MDK/rdcregQIq/aldGcKIz4+u8G3MgUrlo5FQITvD+s0NWajLRxG8WNH5XA5o6dS6cI4kbF2521
	lYDnx8+bA9DmoSBoDUf+/moaBxW5+lt6YHRvez0mb3R+sVVaq95PkaJ7FkcdeGu4Ds8oPZZs6GJ3Y
	reylCC/myyIjgcAbqDpeNs99PXpjjGd8wylqEqGnmXOVaCwUbDys2F+r5Wh2LQ4OkX8iCldEqdrzF
	yWOJkEvIvmKztpMffKpNlqymuFxUkA/6uqf9xSqK5juIjfO4aVTrY2wfSeOJax1x1weL17sML4Yb3
	iqCT4A08BTARoaxl76vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jViGU-0002Yu-01; Mon, 04 May 2020 21:04:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jViGA-0002PH-Oa
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 21:04:20 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BDC520721;
 Mon,  4 May 2020 21:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588626258;
 bh=uzln4Pud3znUaVLrXJ/2VBLassqd467HHBti1c0w4sc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z1D64umVPdKGTDrHCEl6UPZw+rkmnm7Wuv5L2nsENzpGvbO7Wql2rFPJk5bunNM9c
 NXgnaWayAG3aru9r7nPrB5S5O2+EzvX2rDdNNZ7ImJ8kZR4RzeMo5mEbjEGgGhKQG6
 u8SemSfFpY9zRYwL7RXKK2Dn9MiLfroD3YUXO3Oc=
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] firmware: arm_sdei: Drop check for /firmware/ node and
 always register driver
Date: Mon,  4 May 2020 22:04:10 +0100
Message-Id: <158861396805.45075.3995796630639381619.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200422122823.1390-1-sudeep.holla@arm.com>
References: <20200422122823.1390-1-sudeep.holla@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_140418_816374_0EE3D746 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 Apr 2020 13:28:23 +0100, Sudeep Holla wrote:
> As with most of the drivers, let us register this driver unconditionally
> by dropping the checks for presence of firmware nodes(DT) or entries(ACPI).
> 
> Further, as mentioned in the commit acafce48b07b ("firmware: arm_sdei:
> Fix DT platform device creation"), the core takes care of creation of
> platform device when the appropriate device node is found and probe
> is called accordingly.
> 
> [...]

Applied to arm64 (for-next/sdei), thanks!

[1/1] firmware: arm_sdei: Drop check for /firmware/ node and always register driver
      https://git.kernel.org/arm64/c/caf2cd610dbb

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
