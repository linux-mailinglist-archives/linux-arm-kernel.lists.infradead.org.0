Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E173C1682BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:05:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BkXk/5ChdpNHQ/OV4HDHwaaY93PJcb5BG5Yof6SeKk4=; b=TmQVs8e39n/3HM
	KB+6XiDIJOemS8V6UjMbVR8/so8ikOmpnKgKrsR6D3SPlS0nJOyR7KO/W8LNh14j5INlFSCxpCuOd
	7jpsBjnQXeCAwnhWrw+pC0M64G5MVac0uhsi7wlivfGnqk5mqZWyJmZriDlSCxmLIIbTsDneNXQuc
	KbYtw8zfMu9+EEQhPKtfygPDtwvj2hNbJiweismbqSZP19N7rX4X4+IaMHluPe2IWa6+piYhAICgC
	0VMO6H8LVYWweNX8ueuOVwVhDv1BsA94Cc6uUJvcUKBtWe1qL4WVtSqqiFIHXbsxRIYCfwtHFg7qi
	15TJ+yTfobhckjQPwPkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Ano-0001V1-Hq; Fri, 21 Feb 2020 16:05:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5AnX-00014U-JR
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:05:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6836730E;
 Fri, 21 Feb 2020 08:05:02 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 91A0C3F68F;
 Fri, 21 Feb 2020 08:05:01 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com,
	mark.rutland@arm.com
Subject: [PATCH 0/3] arm64 CPU DT binding updates
Date: Fri, 21 Feb 2020 16:04:55 +0000
Message-Id: <cover.1582300927.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_080503_712329_BFC32364 
X-CRM114-Status: GOOD (  10.01  )
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

Since A55 and others are now starting to show up in upstream
DT postings, it seems high time to get these updated.

I haven't yet found the chance to sit down and go through the
time-consuming part of cross-referencing TRMs to fill out the
event maps, but it seems worth getting the fundamental definitions
in sooner rather than later to at least un-block DT authors.

Thanks,
Robin.


Robin Murphy (3):
  dt-bindings: ARM: Add recent Cortex/Neoverse CPUs
  dt-bindings: ARM: Add recent Cortex/Neoverse PMUs
  arm64: perf: Support new DT compatibles

 Documentation/devicetree/bindings/arm/cpus.yaml | 9 +++++++++
 Documentation/devicetree/bindings/arm/pmu.yaml  | 9 +++++++++
 arch/arm64/kernel/perf_event.c                  | 8 ++++++++
 3 files changed, 26 insertions(+)

-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
