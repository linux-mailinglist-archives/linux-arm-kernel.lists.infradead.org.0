Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD77B266E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 17:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xi+acNYy1PSQICgYiM/1drBefw8khya6bGQvtm4DkMk=; b=cJe8sH4/KkRWcq
	55x91SfTzND6s7hfCO2GE3rFA+pZfoUtkPqARnq4xZ/dl0UkxLr2wB3F/3jLsRaJxqUy4QkJ5eTQ9
	h7kFC4UME7SqAhTauOzPtS1AtpK+sAbjP9a4gXHVqtKtDHE80a+IgdswxRzFBj7G7F18+Wt/apcY8
	z1EmI/ZsDf4QnaTFeRIwEbrSJRKSYRBUr5yH3KNnJrOc4NR2enZmxg1nMsVJ9TTfun9L4ouUvkZek
	zoZbiveE7RH444pQds/skg3LIk18QEaq8W2fhAEvzGzHH36ffW13Ts0fwjT6dxoBduma3Ll20J1yi
	qGtB2XnLLJSP3WZUVFVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTBg-0003Ve-U6; Wed, 22 May 2019 15:29:52 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTBQ-0003Np-TV
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 15:29:38 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4MFQqg9026162; Wed, 22 May 2019 17:29:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=JrVfzO8I0FUdBcA3/JLpbsGbKJMCTTSle83Drqd40I0=;
 b=jSsr6s7jVaQbMt8kPO4pRmSUhH/+HT6oOwLe/dK8+tiiVoABSwi84tfdkDxRodCa/Imi
 Pfvf2epLhjBGK2VXZ30vNPpFux7ljEFUk7VdwmbHAPHGEKNm5ePQuDhhK5foqa0BTQDl
 0wmF8YO3QfllpXpTtlEvhaYn/WoTjUIPeYdgfNcwmDoi+JuRjPBT0xX80omOT8dT6T3R
 1kham35TZYpJACb7syn/erZH799wOpLhl6wi6DEwWy6rV5A3/a3mVMEOEJA7kQrnY9Zj
 xWymIlL6UZCdXiufj7KytYk0TvEaekYjMaTSkc9AvQ0UHvEHUEJuns78NIBddNt4vUcS jg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7tu979k-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 22 May 2019 17:29:31 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3AF0A3F;
 Wed, 22 May 2019 15:29:30 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 019DB2CD7;
 Wed, 22 May 2019 15:29:29 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 22 May
 2019 17:29:30 +0200
Received: from localhost (10.201.20.122) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 22 May 2019 17:29:29
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <linus.walleij@linaro.org>, <alexandre.torgue@st.com>,
 <amelie.delaunay@st.com>
Subject: [PATCH 1/2] pinctrl: Allow to create link between controller and
 consumer
Date: Wed, 22 May 2019 17:29:24 +0200
Message-ID: <20190522152925.12419-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20190522152925.12419-1-benjamin.gaignard@st.com>
References: <20190522152925.12419-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-22_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_082937_240208_FA787F78 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, benjamin.gaignard@linaro.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pin controller may want to create a link between itself and its clients
to be sure of suspend/resume call ordering.
Introduce create_link field in pinctrl_desc structure to let pinctrl core
knows that controller expect to create a link.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 drivers/pinctrl/core.c          | 11 +++++++++++
 include/linux/pinctrl/pinctrl.h |  2 ++
 2 files changed, 13 insertions(+)

diff --git a/drivers/pinctrl/core.c b/drivers/pinctrl/core.c
index c6ff4d5fa482..40b647f3dc7d 100644
--- a/drivers/pinctrl/core.c
+++ b/drivers/pinctrl/core.c
@@ -1216,6 +1216,15 @@ struct pinctrl_state *pinctrl_lookup_state(struct pinctrl *p,
 }
 EXPORT_SYMBOL_GPL(pinctrl_lookup_state);
 
+static void pinctrl_link_add(struct pinctrl_dev *pctldev,
+			     struct device *consumer)
+{
+	if (pctldev->desc->create_link)
+		device_link_add(consumer, pctldev->dev,
+				DL_FLAG_PM_RUNTIME |
+				DL_FLAG_AUTOREMOVE_CONSUMER);
+}
+
 /**
  * pinctrl_commit_state() - select/activate/program a pinctrl state to HW
  * @p: the pinctrl handle for the device that requests configuration
@@ -1261,6 +1270,8 @@ static int pinctrl_commit_state(struct pinctrl *p, struct pinctrl_state *state)
 		if (ret < 0) {
 			goto unapply_new_state;
 		}
+
+		pinctrl_link_add(setting->pctldev, p->dev);
 	}
 
 	p->state = state;
diff --git a/include/linux/pinctrl/pinctrl.h b/include/linux/pinctrl/pinctrl.h
index 8f5dbb84547a..11a42ccf4b0a 100644
--- a/include/linux/pinctrl/pinctrl.h
+++ b/include/linux/pinctrl/pinctrl.h
@@ -125,6 +125,7 @@ struct pinctrl_ops {
  *	the hardware description
  * @custom_conf_items: Information how to print @params in debugfs, must be
  *	the same size as the @custom_params, i.e. @num_custom_params
+ * @create_link: If true create a link between pinctrl and it consumer
  */
 struct pinctrl_desc {
 	const char *name;
@@ -139,6 +140,7 @@ struct pinctrl_desc {
 	const struct pinconf_generic_params *custom_params;
 	const struct pin_config_item *custom_conf_items;
 #endif
+	bool create_link;
 };
 
 /* External interface to pin controller */
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
