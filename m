Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A15DBAD38
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 06:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3KsbA+k9ZFpD3ZabmKg6LwlXmCBpVWdoNDGJnH1dFKA=; b=YS0du97F6V8YX+
	ixQedo6XNh4lzxnt7NcSQWGjZi5oI9YiZ/ONTS4gx8GsdxcFZMkujhS9kLgZCrR+gfimYRMgaifu3
	0e1RO/C/MTrecnGmpIo+vCrHPVjsV5diPZd7N4scdi2kti7Y7e2HqFAZAxCn7PfStXxYSNob2dTea
	VNmPXOJyuQNq/ne6gShIR2DUlbCnR2GGy9P5sP6TFOoO8AmAtmMjWXNloOfWE9ATwUF3ZlGDnX3f1
	5mrVlpBSliSd2SVy37SrsRTXl2NMUZq9BzSRPu3HK3kyqybSNnbGYGI6/kmgqzMsDUw0tVMYW7KmR
	darIu6YFKJkKVF2IHqnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCFuq-0000IH-Cb; Mon, 23 Sep 2019 04:25:36 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCFuE-00006Y-Ae
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 04:25:00 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8N4OsiI083889;
 Sun, 22 Sep 2019 23:24:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1569212695;
 bh=Ix3ZW55dmahVihIFEJzilvpITh9WoTF5qul7xia81+A=;
 h=From:To:CC:Subject:Date;
 b=c5p4xfjcb1IopSe7O5br4cb0SYagFE/9vSOhcK8vS6VbwQcKRdTREsY4gwLDH92z2
 txUx3dFil6YcyMc6xyXnzCpjOF30viJpAePXWS3fqyXkWnQE5khY/dw5U52b1O5T2e
 f30LKCSCUtqMYzDtNQay82POOFRzmNTSYC7PLzOY=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8N4OsEv067401
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 22 Sep 2019 23:24:54 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Sun, 22
 Sep 2019 23:24:54 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Sun, 22 Sep 2019 23:24:49 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8N4OqDx094081;
 Sun, 22 Sep 2019 23:24:53 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>
Subject: [RFC PATCH 0/2] irqchip/ti-sci-intr: Add support for INTR connecting
 to INTR
Date: Mon, 23 Sep 2019 09:54:03 +0530
Message-ID: <20190923042405.26064-1-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_212458_692311_1E9E00D3 
X-CRM114-Status: UNSURE (   8.48  )
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
Cc: Nishanth Menon <nm@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series updates the driver and dt-bindings to accept INTR being a
parent to INTR and drop all the firmware related bindings.

Lokesh Vutla (2):
  dt-bindings: irqchip: Update bindings to drop the usage of gic as
    parent
  irqchip/ti-sci-intr: Add support for INTR being a parent to INTR

 .../interrupt-controller/ti,sci-intr.txt      |  28 ++--
 drivers/irqchip/irq-ti-sci-intr.c             | 137 +++++++++++-------
 2 files changed, 95 insertions(+), 70 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
