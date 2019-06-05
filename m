Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE5635822
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bNh9fZcXyReFpNTwU+SBkNji+0qmGrMjnzda9qjaLq8=; b=pqtRflMbnop506
	qVdLWc4EjLTc2kaNJN5g0vj+SVIHfMQaM6LVRq3HjEBpuBkAxY196hFq8VyP0DyrKVZUbviatedEZ
	Scsvzk2HyQOUpl/44QrzJsxRe+s7eIYo486Al5a+rA/BoAbfhGGPW89RGauPh9EnCF9YQEzRO2wjU
	hzQzmOyqLw/m3E7e4HaliPKbE97afdh0byzDvWAPQdmzxFEepMQeTeFoi4huC7X1isCkr0+4rGije
	a4NxduGYkSveqOihIUffU1P3cx5jsM/DCnpeQIFRN8l2NReMg5J/YLWjEFIaaynnhVa7gSf/8kUqE
	8jMKmNzgitjUZAfrQ4Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQnD-0004zm-5E; Wed, 05 Jun 2019 07:57:07 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQn6-0004zD-6g
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:57:01 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x557uwUu000812;
 Wed, 5 Jun 2019 02:56:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559721418;
 bh=gYNLZ385lajEbx+E5yp06jfNtbTVTUN+kuz/RIevvJQ=;
 h=From:To:CC:Subject:Date;
 b=rrPaKBqrQtuadV5kAEmheIw4iam/vclAcOQkCpBovGPpwuEQSJjhOJ95D0tPbvrik
 U5H8M3CfD0b2iL7qDG5lMXCF9GdJhzEnalDCQIZ3t++SDZ6XMVgbsoOWAe+Lq945Kg
 ec4Wq2//pBz3dHx3jqQMwvpDwIBn8B56gow1DZNQ=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x557uwYf121971
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 02:56:58 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 02:56:57 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 02:56:57 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x557uqoO033893;
 Wed, 5 Jun 2019 02:56:54 -0500
From: Keerthy <j-keerthy@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>, <robh+dt@kernel.org>
Subject: [RFC PATCH v2 0/4] arm64: dts: ti: am6: Add gpio nodes
Date: Wed, 5 Jun 2019 13:27:06 +0530
Message-ID: <20190605075710.1691-1-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_005700_281543_8DA81C19 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

K3 AM6 platform has 2 instances of gpio banks on main domain
and 1 instance on wakeup domin. All are capable of generating
banked interrupts.

This series also adds 2 goio_keys nodes connected to SW6 SW5
switches and tested for gpio_keys interrupts.

The series depends on:
https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=112791

Posting as RFC as it has dependencies to be merged.

Changes in v2:

  * Added a separate am654 compatible. 

Keerthy (4):
  dt-bindings: gpio: davinci: Add k3 am654 compatible
  arm64: dts: ti: am6-wakeup: Add gpio node
  arm64: dts: ti: am6-main: Add gpio nodes
  arm64: dts: ti: am654-base-board: Add gpio_keys node

 .../devicetree/bindings/gpio/gpio-davinci.txt | 18 +++++++++++
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 32 +++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi    | 15 +++++++++
 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 27 ++++++++++++++++
 4 files changed, 92 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
