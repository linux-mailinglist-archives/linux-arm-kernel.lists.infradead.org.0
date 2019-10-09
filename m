Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0DBD0AC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pQIiTLIU23J4limrIrrL1aBf5RqLImCFknA0pqjOFh4=; b=E2mVAgndr860NU
	/hz17JSoSLjR9M38hAf5eE23EelmHsgIwRk7Y8lI4tHU0AGL8arN+Wz6+S984qvaAcm54//22iq4D
	u5oxeQB45Rxnlptpi2meCzVMBBRPXXeMtiqU+tmuTx3ACzdD2uxJvTUqRuTJU3Qqj0/zw97zMjdK4
	8DpMebJRrKOcKDGNSctyohuFBGa0Ho0uGUikk8334/MLDRxlG9ZlQxdJrcIXFH6EBvq1Mv70RJwU5
	uqA8DM4w0TBTzcSmqREG8DvkjC2UQukmvDthUTw/kfGFeu63YGQgQhZ+FRswvI8qxwPDi0RIxZSaa
	U7xx2jJ1gLcrdV5sl+Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI855-0004An-RY; Wed, 09 Oct 2019 09:16:27 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI84t-00048J-HR
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:16:17 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x999DIwJ011666; Wed, 9 Oct 2019 11:16:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=rvKrWgmVfwCw+WB+p5j5ZFC8+JEiy93wT4hT1MInc0o=;
 b=x2bi0GyT9/9w9OFd92/x/A2VhkGf/Bo10ex3dyVZ4hq3ALlgGTzmfB+WFqzlkAJo71s8
 bzL26zTCo4csfOukWb+1mcVv/vQe8WW5FC0pKsY9Z0UPUNxxwWcNGlLG9gfVbB3yKMCY
 1bkmXWDyC4KE5OXJIBJRVKTbgzuklOI5HBfKXgDXOfxuvDWqUF5I/sVu62Ei6LebbRkS
 rkaRqA+Z4sB9sYjjdERrfjUdNgwHuYk8/HbyHshwfeJmdtHjLR3rUwSP1lQZGBbu+9+5
 IfPR3iraDAjnF38kFHG8A3MHhwfCMJuRJyxzc/2sSOxZ6STIvjTtHRl1Q4QvSQ9vw4sh 9w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vej2pda7d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 09 Oct 2019 11:16:08 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 92CFE10002A;
 Wed,  9 Oct 2019 11:16:07 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 842C32062BE;
 Wed,  9 Oct 2019 11:16:07 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 9 Oct 2019
 11:16:07 +0200
Received: from localhost (10.201.22.141) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 9 Oct 2019 11:16:07
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Linus Walleij <linus.walleij@linaro.org>, Alexandre Torgue
 <alexandre.torgue@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH v2 1/1] pinctrl: stmfx: add irq_request/release_resources
 callbacks
Date: Wed, 9 Oct 2019 11:16:06 +0200
Message-ID: <20191009091606.17283-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.22.141]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-09_05:2019-10-08,2019-10-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_021615_928663_26926982 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When an STMFX IO is used as interrupt through the interrupt-controller
binding, the STMFX driver should configure this IO as input. Default
value of STMFX IO direction is input, but if the IO is used as output
before the interrupt use, it will not work without these callbacks.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
Changes in V2:
- use gpiochip_reqres_irq and gpiochip_relres_irq instead of calling
explicitely the lock/unlock.
---
 drivers/pinctrl/pinctrl-stmfx.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
index 564660028fcc..e5d49742d4db 100644
--- a/drivers/pinctrl/pinctrl-stmfx.c
+++ b/drivers/pinctrl/pinctrl-stmfx.c
@@ -505,6 +505,25 @@ static void stmfx_pinctrl_irq_bus_sync_unlock(struct irq_data *data)
 	mutex_unlock(&pctl->lock);
 }
 
+static int stmfx_gpio_irq_request_resources(struct irq_data *data)
+{
+	struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
+	int ret;
+
+	ret = stmfx_gpio_direction_input(gpio_chip, data->hwirq);
+	if (ret)
+		return ret;
+
+	return gpiochip_reqres_irq(gpio_chip, data->hwirq);
+}
+
+static void stmfx_gpio_irq_release_resources(struct irq_data *data)
+{
+	struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
+
+	return gpiochip_relres_irq(gpio_chip, data->hwirq);
+}
+
 static void stmfx_pinctrl_irq_toggle_trigger(struct stmfx_pinctrl *pctl,
 					     unsigned int offset)
 {
@@ -678,6 +697,8 @@ static int stmfx_pinctrl_probe(struct platform_device *pdev)
 	pctl->irq_chip.irq_set_type = stmfx_pinctrl_irq_set_type;
 	pctl->irq_chip.irq_bus_lock = stmfx_pinctrl_irq_bus_lock;
 	pctl->irq_chip.irq_bus_sync_unlock = stmfx_pinctrl_irq_bus_sync_unlock;
+	pctl->irq_chip.irq_request_resources = stmfx_gpio_irq_request_resources;
+	pctl->irq_chip.irq_release_resources = stmfx_gpio_irq_release_resources;
 
 	ret = gpiochip_irqchip_add_nested(&pctl->gpio_chip, &pctl->irq_chip,
 					  0, handle_bad_irq, IRQ_TYPE_NONE);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
