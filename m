Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E4670945
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sP4smkrl/xUf9XfL0q3OLyQG7CEgpax2ABxO1Xml76c=; b=IQAlso7Fc8NwC0
	dLhn+sFsJE6+sSsoRma5ftkD0PfAZzT8L4aRtU0fG6Lq1dnl4CSzpqw+o2Th0Ci2tf7LZrlUKB/6I
	ZU153lxBh40On6wzkCvzQmkVHaugGqZcJsUjrVKZm4p3b3gfRWW49x8vFMcdCbTSq/33lxTiFdEWO
	1eOGqnVqZZXhHYt/QLmtg1WjrfEqe9Zah9m/S3YXWrssllFQBsyDQuWBNXBmpey7G7j2etsc/O4Xd
	9uZvhkInpGvMKBeQ1zqYupUr5utGibCWosP1JIHHZGtEbsxJhwKByctw/gIzyYH+ZZHTBf69zhWqQ
	/Z02Navq4EeV9KQFhblA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpddw-00030f-G6; Mon, 22 Jul 2019 19:06:40 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpdd2-0002XH-7S
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:05:46 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6MJ5fck106947;
 Mon, 22 Jul 2019 14:05:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563822341;
 bh=mz8MhyIsX5DOXGbWUjIm6SKTM4q+CG3owh03/4TZcz0=;
 h=From:To:CC:Subject:Date;
 b=VgBzdK8+CYDDAsPxNrjP2IM+lBPfjS53odAYdrV3COOdgxPSR+EGdmRWfHPmnRGeZ
 406op4jiYTlKBPjJ2wKo9tcR8bTb+UJCVujXTZbVPQGHN0+KD1De8txY95Dr+sY5ze
 nlkOUtQzXX4nG/KSD3UYraoD15igMUXBtVQr5HDk=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6MJ5fwL026653
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jul 2019 14:05:41 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 14:05:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 14:05:41 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6MJ5fY6127997;
 Mon, 22 Jul 2019 14:05:41 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x6MJ5eZ02565; 
 Mon, 22 Jul 2019 14:05:40 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 0/2] Add HwSpinlock nodes for TI K3 SoCs
Date: Mon, 22 Jul 2019 14:05:37 -0500
Message-ID: <20190722190539.27816-1-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_120544_348945_5F61D92F 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

The following series adds the HwSpinlock DT nodes for the
TI K3 AM65x and J721E SoC families. Patches are based on
v5.3-rc1.

The bindings and driver support for the same have been
merged in v5.3-rc1.

regards
Suman

Suman Anna (2):
  arm64: dts: ti: k3-am65-main: Add hwspinlock node
  arm64: dts: ti: k3-j721e-main: Add hwspinlock node

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi  | 6 ++++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 6 ++++++
 2 files changed, 12 insertions(+)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
