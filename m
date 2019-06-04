Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135B43443D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eBTWdijQYHAWIpPxAaxu1Ydif9nw60iZE1Bm22iX/rw=; b=Hn3xV/iVrU7pPS
	dTzBJRVdKo+7FfGLj2muK5Drwom2pHzZo1j/o+YcWEGPwTDWaktbixyeTXQMM3DBPBbdXl79T/S+9
	F+NlOW73BkQR2S9Tz9JA90DuioK30p6wYVCRp7PAD9YqirfKnOJ66UqtUXthEKHKD4vS0m+6fBn0j
	0tnnJyAOSgClW+B64lUR3IPH3nWZDNmZ1snufB0BJAqc5pV+ybSb/+3CulKwGDY+bHXWDlx/KznSS
	OcVidKPjMxe/L+1/O71l0JUaCwthrvM58rUrQ6U7IUC8WRMq4CkgfP2/sCId5O1h5/H1sBFAnyYGY
	1FwfKt07nGe3JYKXlRzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6Vr-0004Gx-Tj; Tue, 04 Jun 2019 10:17:51 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6Vl-0004Ge-FI
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:17:46 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54AHT8A048287;
 Tue, 4 Jun 2019 05:17:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559643449;
 bh=P7u/0x1ABNz4IJDSe4vcOUhEhDTUB7ePRAMjbKE0Eww=;
 h=From:To:CC:Subject:Date;
 b=Ok7kdjYQ0Gfe6RfSkA3iOuxKo7k3WaFEDlfDgmYs3KTba/qaOFGyvVGgNI66/jA1O
 oG3AHr03unXKCn9SkdmlSIhw+UNTr0WRPEQp63Zqd7TrEV9oZn3VLgGEVzqc5lYwDO
 i1JXf3m7Un7+JkDqSrdTcQfg3zTk4wdpJpeQK79U=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54AHTnf064832
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 05:17:29 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 05:17:27 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 05:17:27 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54AHOnc015021;
 Tue, 4 Jun 2019 05:17:25 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <lokeshvutla@ti.com>, <tglx@linutronix.de>, <jason@lakedaemon.net>,
 <marc.zyngier@arm.com>
Subject: [PATCH] irqchip: ti-sci-inta: Fix kernel crash if
 irq_create_fwspec_mapping fail
Date: Tue, 4 Jun 2019 13:17:51 +0300
Message-ID: <20190604101751.8265-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_031745_547108_BD5040DE 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, t-kristo@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssantosh@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

irq_create_fwspec_mapping() can fail, returning 0 as parent_virq. In this
case vint_desc is going to be NULL in ti_sci_inta_alloc_irq() which will
cause NULL pointer dereference.

Also note that irq_create_fwspec_mapping() returns 'unsigned int' so the
check '<=' was wrong.

Use -EINVAL if irq_create_fwspec_mapping() returned with 0.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/irqchip/irq-ti-sci-inta.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
index 011b60a49e3f..ef4d625d2d80 100644
--- a/drivers/irqchip/irq-ti-sci-inta.c
+++ b/drivers/irqchip/irq-ti-sci-inta.c
@@ -159,9 +159,9 @@ static struct ti_sci_inta_vint_desc *ti_sci_inta_alloc_parent_irq(struct irq_dom
 	parent_fwspec.param[1] = vint_desc->vint_id;
 
 	parent_virq = irq_create_fwspec_mapping(&parent_fwspec);
-	if (parent_virq <= 0) {
+	if (parent_virq == 0) {
 		kfree(vint_desc);
-		return ERR_PTR(parent_virq);
+		return ERR_PTR(-EINVAL);
 	}
 	vint_desc->parent_virq = parent_virq;
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
