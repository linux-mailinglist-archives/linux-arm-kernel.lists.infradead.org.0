Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F25916877B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 20:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k8RjYJKq2iCM+yGgCZ6w8TvK+BHkuK6t46lsMdPU2m0=; b=rooWtMI2+fqaxk
	M3Y0GBKHY8ffej8DEFKCsLOmw2wiRJDXt+g7yAaHl13onYIpAKR2YQvrSyJHcHDvic3FNCrbaHs95
	4OMMhSrk1c3mwheQ8M0joDb/qzXykjW1lv8mNStMrThoY04icxDnQo7FxjzhUXIIKJ2TxT4DbR4gH
	sIhoNT+8J6xcMN7re7/EZhWIcfPW6zCOz0BZX+Ec494TqgSPQNhxPLdZ2/F6ivcHdP8nSuoRD97c8
	miVp6mY8lzsb/y0l6uyJAYkZ9kYYtBOcuxe7C7TYxx+HXOkEszywy41tnZ7X+btwdpdTDg74s+yBL
	CKRquzI1wkkwTUT47IzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5E5T-0004tZ-OK; Fri, 21 Feb 2020 19:35:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5E5L-0004sl-Uv
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 19:35:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7944D30E;
 Fri, 21 Feb 2020 11:35:36 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A54343F6CF;
 Fri, 21 Feb 2020 11:35:35 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com,
	mark.rutland@arm.com
Subject: [PATCH v2 0/5] arm64 CPU DT binding updates
Date: Fri, 21 Feb 2020 19:35:27 +0000
Message-Id: <cover.1582312530.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_113540_050212_2B4AF4B0 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here's a quick turnaround from v1 so I don't have to remember where
to pick up from next week :)

Thanks,
Robin.


Robin Murphy (5):
  dt-bindings: ARM: Add recent Cortex/Neoverse CPUs
  dt-bindings: ARM: Add recent Cortex/Neoverse PMUs
  dt-bindings: ARM: Clean up PMU compatible list
  arm64: perf: Refactor PMU init callbacks
  arm64: perf: Support new DT compatibles

 .../devicetree/bindings/arm/cpus.yaml         |   9 +
 .../devicetree/bindings/arm/pmu.yaml          |  41 +++--
 arch/arm64/kernel/perf_event.c                | 168 ++++++++----------
 3 files changed, 111 insertions(+), 107 deletions(-)

-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
