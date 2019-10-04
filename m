Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED3ACBA6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ljYtmdEz2YdfWG3v4vSgQDftF75RZN2aZ+6zXgNb8Cs=; b=SwmU2hBiuH4EXR
	IfxfhFmxc08/kQk5TiH5WgWwu+8oAj0eSzl0uU2y//3n3Vuz7fxu4ox2iNlasWJnMmS1GfHhSPtcJ
	0Lbc5FMqE6Tak7Mz2qmV+G1xsJ/0ESaLJ6RegESDdPmu76enlbzaqJaBOaggZnKu5jn0G/KTZtHU1
	Zilw9IP6CZT4VhUXKRnz5YaFzqg3H+1Vf6ASYexJOrG7TR/n+POjLF7luPR/+jk52HcEAUKFOgLr/
	LyJ68sQF4cEGIGe+aD1j3N8h1Udrz/vgMeQp1kYbOMIsjkCLl7Pt7ULcG9pRe3zyLNx6Nao4rlkxz
	/Vrd6GP/wrUExxw2179Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMiF-0002SP-JU; Fri, 04 Oct 2019 12:29:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMi6-0002Rq-Nq
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:29:29 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x94CQIm1006703; Fri, 4 Oct 2019 14:29:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=9A+NHcV5pb4nSM8hQ4ARvkipxNSadOGVLrTQhB3YT70=;
 b=oMGxvVkBNHBhNXKCunTAcmhMuDMMaKR/pka5cAnOKWUJIFOPBsEqnHp4jXOplWml6oR1
 IO0yL3cy6uzUmgfeqo79i7p+z7963pKcr1+enDnBFhmtwsl/0B234U2Iopl2xh6SCrZV
 JDeh9J7sme+7dM4XXrY9Bsuee55CfuDdOpnliPczu1icFws6IKg9YgEGS0HWodO2Uaym
 GeLXjMUNVBANR/rV2nFZmdEYYaYxqwg5snc/fqwYluTa6uxxW7HuEfROfbdnMD2zlhhN
 kL305zUnZ/qjetGpzJe3DUdzPmkHArsaWOzRdhB+DGpUdDjgEzcghpFHIm7HISWJTgx+ qg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9vnatyht-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Oct 2019 14:29:24 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7383A10002A;
 Fri,  4 Oct 2019 14:29:24 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 655832BE231;
 Fri,  4 Oct 2019 14:29:24 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 4 Oct 2019
 14:29:24 +0200
Received: from localhost (10.201.22.141) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 4 Oct 2019 14:29:23
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Linus Walleij <linus.walleij@linaro.org>, Alexandre Torgue
 <alexandre.torgue@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH 1/1] pinctrl: stmfx: add irq_request/release_resources
 callbacks
Date: Fri, 4 Oct 2019 14:29:23 +0200
Message-ID: <20191004122923.22674-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.22.141]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-04_06:2019-10-03,2019-10-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_052928_479020_7C477F41 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/pinctrl/pinctrl-stmfx.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
index 564660028fcc..e3a3dcc145b4 100644
--- a/drivers/pinctrl/pinctrl-stmfx.c
+++ b/drivers/pinctrl/pinctrl-stmfx.c
@@ -505,6 +505,34 @@ static void stmfx_pinctrl_irq_bus_sync_unlock(struct irq_data *data)
 	mutex_unlock(&pctl->lock);
 }
 
+static int stmfx_gpio_irq_request_resources(struct irq_data *data)
+{
+	struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);
+	int ret;
+
+	ret = stmfx_gpio_direction_input(&pctl->gpio_chip, data->hwirq);
+	if (ret)
+		return ret;
+
+	ret = gpiochip_lock_as_irq(&pctl->gpio_chip, data->hwirq);
+	if (ret) {
+		dev_err(pctl->dev, "Unable to lock gpio %lu as IRQ: %d\n",
+			data->hwirq, ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void stmfx_gpio_irq_release_resources(struct irq_data *data)
+{
+	struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);
+
+	gpiochip_unlock_as_irq(&pctl->gpio_chip, data->hwirq);
+}
+
 static void stmfx_pinctrl_irq_toggle_trigger(struct stmfx_pinctrl *pctl,
 					     unsigned int offset)
 {
@@ -678,6 +706,8 @@ static int stmfx_pinctrl_probe(struct platform_device *pdev)
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
