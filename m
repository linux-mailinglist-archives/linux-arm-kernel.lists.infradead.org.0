Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D08670A8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 22:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wSsZiersb7/RO0KEe5T5+C5cb78atsBBzJwN47BjQro=; b=RlbyghAw9Zs/eA
	BgRiu2gbITq91hJD3tV9t6T5KNxxZ73CW/ZFm0z73ibaN3w/odOF0KcdNtvhn2kcHAmjq+Ss9fd9N
	5fKm1a04+P6wrhJo+N4kI84ZGFuRjV5zvKEHm8vOnyI8VHfI7dmq06ng6mzjjW9OtYD/gsvY/DAKL
	V9gW0rvZ19TR1eCi9SUltWjJkSJcQhliY7XhYy9BZv+xORdJxg0s3XBISUVqT5Lun1IXm1fdrh/tq
	2E62hRh0u1ik6bmpeTl7pTkrdVUyLYeYbXG2JDDUGkalJnN7zfAXnHH6sh3M3BI121TWCN1ZZ3xNe
	S/r9du1VVqCfP8u95Qsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpenh-0000ek-JX; Mon, 22 Jul 2019 20:20:49 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpenP-0000eG-Fz
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 20:20:33 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKUcX063228;
 Mon, 22 Jul 2019 15:20:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563826830;
 bh=jGA+cZiSLSnRMYqsz6m/UDZ8vwC3lDAu/9qePTX+uaw=;
 h=From:To:CC:Subject:Date;
 b=bCRItFTgKpOV3kL2QvligjxtQju7xfWgDbsBKgftTeu0574UnTvfxM4Vzkb4KnuWv
 ZZrHEYAXQFLdHlxQPvgBaiO8DaGybCwz6Oj5/InSP5oIFZ6gnoWjWiAQ/g6zS6NQ1x
 1ijxCitSKlVvLZ4uqmj12aLxIsM54FTcfRbmZjHI=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MKKUsp115318
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jul 2019 15:20:30 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 15:20:30 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 15:20:30 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MKKUZj099849;
 Mon, 22 Jul 2019 15:20:30 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MKKUZ21462; 
 Mon, 22 Jul 2019 15:20:30 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 0/4] Add Mailbox nodes for TI K3 AM65x & J721E SoCs
Date: Mon, 22 Jul 2019 15:20:20 -0500
Message-ID: <20190722202024.14867-1-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_132031_641709_164F61AB 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tero,

The following series adds the Mailbox DT nodes and the sub-mailboxes
used to communicate between the main MPU processor running Linux and
the various R5F and DSP remote processors present on the TI K3 AM65x
and J721E SoC families. Patches are based on v5.3-rc1 + the HwSpinlock
DT node series [1], and are intended for the 5.4 merge window. 

The bindings and driver support for the same have already been merged
in v5.3-rc1. Functionality is verified using a out-of-tree unit-test
module and some additional loopback test nodes available here [2] for
reference.

regards
Suman

[1] https://patchwork.kernel.org/cover/11053311/
[2] https://github.com/sumananna/mailbox/commits/mbox/test/5.3-rc1-k3

Suman Anna (4):
  arm64: dts: ti: k3-am65-main: Add mailbox cluster nodes
  arm64: dts: ti: k3-am65-main: Add IPC sub-mailbox nodes for R5Fs
  arm64: dts: ti: k3-j721e-main: Add mailbox cluster nodes
  arm64: dts: ti: k3-j721e-main: Add IPC sub-mailbox nodes for all R5Fs
    & DSPs

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi  | 120 ++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 158 ++++++++++++++++++++++
 2 files changed, 278 insertions(+)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
