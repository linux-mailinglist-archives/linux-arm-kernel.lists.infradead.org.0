Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BE21FB435
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fbb1BOG+6/FLjGvx0uYyHh8YXJm/ZfH6GuXhqKVEjPE=; b=Bs2kQAY5S3aoiO
	KCroR352FVJL8zyiXHnrtLb1ntWvDy+3plKfs57RQmouO+rxbZTGP60lxLJ3RWHu0FzLK5FnWjNnS
	MqwkDkkGA/J528gc+toGG1/z5BAuA+X+u7As1eU9R4AYVjufC93cnJ68jZNhQJMuTvtV76nhaYb4u
	QwWN3o7sqKezxDzzSrX8ZUe7scPpOSgKyonz3hgHpdYCDCNFYWeL++PftliQ66zjL8nNJfBAahhX4
	UWEO08SxenHhKDbFL5XOKabOP/Dsfokb7EX7uC/+ioRjN6paTf9bhsdGZ/7Bn/1O+QV94xm2SjA0i
	/KCaN0BZAtcgY0Erfr3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCWn-0005sK-TZ; Tue, 16 Jun 2020 14:25:30 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCFS-0001lX-Du
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:07:38 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05GE45O7030455; Tue, 16 Jun 2020 16:07:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=LJYExI//g55+5a1wDjNlSgrFW28VW5UqLDHBZu/uoFU=;
 b=RaNeBzlQZQrOroti4HfugtIDDTCamDuPJOlCMN5TE2vcdLe6ddIyl2JD1kL3Dwo7sVwF
 tnaYeiyLhd6bJ3ZzQVHdgt5iFM6YBJ305Ij1Ht+kAiG2fCYWWHCcIZaYlO7r+yih2r3Z
 PpqVHnYHuw7dsb0fSrMHTZkMLmCF3+wFN0SG4cHdau5vNz1lUobmbnfzkV71b2jlSMBq
 hARTry2nu9vSHMPF3giovkx3CZmz2hdy32sFv5R2NcL3y/otw9W0UN+MEiUzWPxLF+k0
 6y9oSjDJs4NqoRTrtvZW8shOeiKfRSXB4ZlUDKNw82ae8HZaqbmRuorcwIXw2v/ooC3V NA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mkx97ufd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 Jun 2020 16:07:30 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CADCD10002A;
 Tue, 16 Jun 2020 16:07:29 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BC8202B569A;
 Tue, 16 Jun 2020 16:07:29 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 16 Jun 2020 16:07:29
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Minas Harutyunyan <hminas@synopsys.com>, Felipe Balbi <balbi@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH 2/3] usb: dwc2: don't use ID/Vbus detection if usb-role-switch
 on STM32MP15 SoCs
Date: Tue, 16 Jun 2020 16:07:16 +0200
Message-ID: <20200616140717.28465-3-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616140717.28465-1-amelie.delaunay@st.com>
References: <20200616140717.28465-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-16_04:2020-06-16,
 2020-06-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_070734_965908_95D7440F 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [91.207.212.93 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If usb-role-switch is present in the device tree, it means that ID and Vbus
signals are not connected to the OTG controller but to an external
component (GPIOs, Type-C controller). In this configuration, usb role
switch is used to force valid sessions on STM32MP15 SoCs.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/usb/dwc2/params.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/params.c b/drivers/usb/dwc2/params.c
index ce736d67c7c3..d6690ee7af01 100644
--- a/drivers/usb/dwc2/params.c
+++ b/drivers/usb/dwc2/params.c
@@ -183,9 +183,11 @@ static void dwc2_set_stm32mp15_fsotg_params(struct dwc2_hsotg *hsotg)
 static void dwc2_set_stm32mp15_hsotg_params(struct dwc2_hsotg *hsotg)
 {
 	struct dwc2_core_params *p = &hsotg->params;
+	struct device_node *np = hsotg->dev->of_node;
 
 	p->otg_cap = DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE;
-	p->activate_stm_id_vb_detection = true;
+	p->activate_stm_id_vb_detection =
+		!of_property_read_bool(np, "usb-role-switch");
 	p->host_rx_fifo_size = 440;
 	p->host_nperio_tx_fifo_size = 256;
 	p->host_perio_tx_fifo_size = 256;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
