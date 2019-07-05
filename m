Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25B26071C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iw7PkyNoM4KOc0f6kiVmfGobQmu/hgrp4PDa4alBRrc=; b=jSPa1DEnPN7jyE
	vMhLhSXayp0B2KXfctzaZCeYKRmGD7AIOrRCQvICXTHrlQDsHhWMSJeblrRTzh01uNCkrdipmpQ2s
	O3yUL+LbCSgDFIPJe2+JgapbaUzgmY/SUz31ZYbipcAhvXKwwaneRgZNWRjerK3CPWWUr06xR2fOQ
	vvVkjcmHr917oED30InhuUFLTrMf7WOAyFJOKAU8y1T0Xd80GBH6m16dV9+BVhI1MBpKYtboNzqRF
	iPhMTdNS7onPeJPme6UojYyOwrtHy+pxlCsQbll388T9lOhl2to0DCDgxynWbbaHFLWIFyFCIY0B3
	tVeSodADxq9/vvcOp3Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOnR-0006XX-U1; Fri, 05 Jul 2019 14:02:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfi-00050l-Ux
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 13:54:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hANK4Rn8H539ugz+gNIMv2tZNOtAOeYjC5INbzDlbwU=; b=Hr9eX9VB3UwN6fWzckVsxD/Wto
 2W6ij5ZcP36lODI77hS2KzDs6qMaykEWIqi1Rq25h/T6eRWC74juJh/1YyTr5tC24mXjAckbd/T2P
 kfh2vNW8tduNWUAQQ4Xz5Jg/VMfvyVDuZ3eEL/3GA7LBSWq8MJ7aY5sEQ4WVm2bEKYH+ZLBV+Wqv5
 VJuZrp2IdLY8+pvh/sA0MjbEa1P/P/0e3c7A0rq+72rNwVcC6O9zj+H0YNskn7myaCfrmXNYw1uIO
 dNDJCSsCmo2pqwgGz/kXqXrTOwWHpAJwh6A2LVR7Q9ZLO/SVxDZGM1ElEjxmnEFB/MNuH/WqUkIN7
 OTKJ1C2w==;
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJ6K-0004Vd-Ch
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 07:57:51 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x657tP3H001598; Fri, 5 Jul 2019 00:56:28 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=hANK4Rn8H539ugz+gNIMv2tZNOtAOeYjC5INbzDlbwU=;
 b=gvDCDQzoOYZkQqhkhgTu/KCMtsm2iGGWbIJPBvtJFl4/BSqJlyo3oJhW70ia85vS0xmj
 fuZpC287ysRzDV/U/mT3GdvyOAuhz2edySbaljMBxoScqFcC6cmvR9eWzR+ac/R6Qq4S
 Uz5HrbHybCWwa1xlmxo9kpeJarvGROJXLMLdqMEe1qro1qvPltPPmcv6Oaa8DbkHPDdr
 GM+P21x9m+WBdq+oObms64sWfSQxWlHN4RBtXGi2dcCWg2JwBUrjzAeUrTBZKAs2GvKa
 NYQBXluWkBi/qeoRcgZxRoaI7LkAM+2HN+6cBCGgF6ZC6vCKedbAFctxrdqzETDwPc7F dQ== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2thjyraww4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 05 Jul 2019 00:56:27 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 5 Jul
 2019 00:56:26 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.56) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 5 Jul 2019 00:56:26 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hANK4Rn8H539ugz+gNIMv2tZNOtAOeYjC5INbzDlbwU=;
 b=f5OMHV8eMRPfTAvgH0QaedDImlqIse4D/OV10NV9J/Vihgru7YJj9qvahbSKAm77GYyfT6S1ZKfZW+qogKxEV0tAFZ9xtevFLX88MnSXaBzMf2GcbaOrDAwhyy7xwoeGfMz/5qV+CuxalZhCA9kyARvLxoanuMm5Dp5lpMpr6/g=
Received: from MN2PR18MB3055.namprd18.prod.outlook.com (20.178.255.209) by
 MN2PR18MB3117.namprd18.prod.outlook.com (10.255.86.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Fri, 5 Jul 2019 07:56:21 +0000
Received: from MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::600f:38e6:1583:487d]) by MN2PR18MB3055.namprd18.prod.outlook.com
 ([fe80::600f:38e6:1583:487d%7]) with mapi id 15.20.2052.019; Fri, 5 Jul 2019
 07:56:21 +0000
From: Shijith Thotton <sthotton@marvell.com>
To: Thomas Gleixner <tglx@linutronix.de>, Julien Thierry
 <julien.thierry@arm.com>
Subject: [PATCH v2] genirq: update irq stats from NMI handlers
Thread-Topic: [PATCH v2] genirq: update irq stats from NMI handlers
Thread-Index: AQHVMwciauGSRMuvEU240iVDoNUQJw==
Date: Fri, 5 Jul 2019 07:56:20 +0000
Message-ID: <1562313336-11888-1-git-send-email-sthotton@marvell.com>
References: <1562214115-14022-1-git-send-email-sthotton@marvell.com>
In-Reply-To: <1562214115-14022-1-git-send-email-sthotton@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR16CA0004.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::17) To MN2PR18MB3055.namprd18.prod.outlook.com
 (2603:10b6:208:ff::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92b21098-7645-4af8-58fb-08d7011e4489
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR18MB3117; 
x-ms-traffictypediagnostic: MN2PR18MB3117:
x-microsoft-antispam-prvs: <MN2PR18MB3117C21225627DEFBFA3C700D9F50@MN2PR18MB3117.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:580;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(396003)(39850400004)(366004)(199004)(189003)(14454004)(110136005)(66476007)(52116002)(6506007)(54906003)(4720700003)(25786009)(7736002)(66446008)(66556008)(64756008)(107886003)(15650500001)(186003)(102836004)(73956011)(66946007)(71200400001)(81166006)(81156014)(71190400001)(386003)(53936002)(305945005)(478600001)(316002)(68736007)(4326008)(256004)(14444005)(66066001)(76176011)(36756003)(6512007)(6116002)(86362001)(486006)(476003)(3846002)(2616005)(446003)(2906002)(11346002)(6436002)(6486002)(8936002)(26005)(8676002)(50226002)(99286004)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB3117;
 H:MN2PR18MB3055.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Vn/T+tNopTKfUdcpWVcQwl3/G4Yf6oBOlOp60VK3L/U5Q/Pdjg22+ndkDgHhJw78BJoRUhoObZc4Oatx6WMATaB7y0/AcKW0eDvPoxXn+AjJdvSYge7nwU3fSrdTdL/pqeUZeIGxyiFf7R2mpgmHKr+Eeort1J19Rd0BYb2vBrc2HNcRbjKEcnDOI0yLwMVMbJNUz1IbZQzJRCf8uG9qkRVzfGr+vIT8DA5rwW3R7Xp3F1J/LADntkJ8MknOREcLFzlidwlchw6qZ870cRX69Wppx4uCJJFm3ARyCQAzaign0/XnVhIr3ARNRYAMNryOPGqoWl2tjEvP8jC+AOZ3y3bxItcs/rF9U4V8PjDVhAqgwOtYI98a6QrdqCiD9oQWzhxmM6zFxabDAO7G4WMs5QFHumAcDtOHFVLlK5MHQCU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 92b21098-7645-4af8-58fb-08d7011e4489
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 07:56:20.9681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sthotton@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB3117
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-05_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_085749_037007_34952C88 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, Jayachandran
 Chandrasekharan Nair <jnair@marvell.com>, George Cherian <gcherian@marvell.com>,
 Shijith Thotton <sthotton@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The NMI handlers handle_percpu_devid_fasteoi_nmi() and
handle_fasteoi_nmi() added by commit 2dcf1fbcad35 ("genirq: Provide NMI
handlers") do not update the interrupt counts. Due to that the NMI
interrupt count does not show up correctly in /proc/interrupts.

Update the functions to fix this. With this change, we can see stats of
the perf NMI interrupts on arm64.

As NMI handlers can't update tot_count in irq descriptor, kstat_irqs()
has been updated not to return tot_count for NMI.

Fixes: 2dcf1fbcad35 ("genirq: Provide NMI handlers")

Signed-off-by: Shijith Thotton <sthotton@marvell.com>
---
Changes since v1:
- Don't touch tot_count from NMI handler.
- Update kstat_irqs() to not return tot_count for NMI.

 kernel/irq/chip.c    | 4 ++++
 kernel/irq/irqdesc.c | 8 +++++++-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
index 29d6c7d070b4..04c850fb70cb 100644
--- a/kernel/irq/chip.c
+++ b/kernel/irq/chip.c
@@ -748,6 +748,8 @@ void handle_fasteoi_nmi(struct irq_desc *desc)
 	unsigned int irq = irq_desc_get_irq(desc);
 	irqreturn_t res;
 
+	__kstat_incr_irqs_this_cpu(desc);
+
 	trace_irq_handler_entry(irq, action);
 	/*
 	 * NMIs cannot be shared, there is only one action.
@@ -962,6 +964,8 @@ void handle_percpu_devid_fasteoi_nmi(struct irq_desc *desc)
 	unsigned int irq = irq_desc_get_irq(desc);
 	irqreturn_t res;
 
+	__kstat_incr_irqs_this_cpu(desc);
+
 	trace_irq_handler_entry(irq, action);
 	res = action->handler(irq, raw_cpu_ptr(action->percpu_dev_id));
 	trace_irq_handler_exit(irq, action, res);
diff --git a/kernel/irq/irqdesc.c b/kernel/irq/irqdesc.c
index c52b737ab8e3..9149dde5a7b0 100644
--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -946,6 +946,11 @@ unsigned int kstat_irqs_cpu(unsigned int irq, int cpu)
 			*per_cpu_ptr(desc->kstat_irqs, cpu) : 0;
 }
 
+static bool irq_is_nmi(struct irq_desc *desc)
+{
+	return desc->istate & IRQS_NMI;
+}
+
 /**
  * kstat_irqs - Get the statistics for an interrupt
  * @irq:	The interrupt number
@@ -963,7 +968,8 @@ unsigned int kstat_irqs(unsigned int irq)
 	if (!desc || !desc->kstat_irqs)
 		return 0;
 	if (!irq_settings_is_per_cpu_devid(desc) &&
-	    !irq_settings_is_per_cpu(desc))
+	    !irq_settings_is_per_cpu(desc) &&
+	    !irq_is_nmi(desc))
 	    return desc->tot_count;
 
 	for_each_possible_cpu(cpu)
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
