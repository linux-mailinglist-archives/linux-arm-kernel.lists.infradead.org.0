Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753651B0931
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=To3DJazc+SiUFQViorOzh7V+/13pSwVADfwqikMXIeY=; b=Y8QROIQ6klyu1R
	Ly9cyDiptv4+qmn6UZj4kguY7VmqipRdXAqdPEGuJcoTkntKLhaeXYTX3nSX9AEhyt49/gWgl3yh+
	mnbriA3SOx7EbB7salVJlOQfN8btOVkg9Sc2m8ADUzi3XnkvWeP0OcUw0m1w6fDcKUDDtFb+tgVpN
	pTDtLgQiOba3CaojU4Bo+pvC2f3Yho9PzQr2rJh1nArtnSSWFK5X0UJ25w4fPNefrX7h6Uw9CEY0O
	vaZ9oA3h69LhTUtmlEwPVgy1XUxvU3ycK02htdUJclE/NQe0PPpPgVE5k5+0+o8DcamZV3YvxBDAN
	4W01BoiESgvT3UZ6u+6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVN2-0005z5-Ag; Mon, 20 Apr 2020 12:17:52 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVLt-000573-PE
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:16:43 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KBrrvp025502; Mon, 20 Apr 2020 14:16:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=UJmO87qFK0xEY46lSDFeEL2UHjX2gK9xwkAP9IoX/lc=;
 b=EyI649PwAFgMm13IhbMmuXgBY7KAZq75GiC1uP4KoB9sXMNsDB0R/LMVS2q6DfzRcEOm
 UfPIClMFMLRWvG4BI0oWgcPIvSQDg4Ji8dTU5NEMRtprAcJKHVAhw/1cM+RUCnIfRXSD
 +Pz2pNT0Uf6kRK3T4jPFakE2j0Rr1P7HkAJjMLj59ARm9xwKT6ZBwayA4RPYiH2xDr07
 6tNgyIVL4GE6qaAZHkuJVjiGc/yLHQfYhK+iI3K7VeKhCDQ11fYECV3oQW7aS/Gkz6x2
 5GjNqvO7Ca6u7uR6pF0deb0Yqyyy03NPMNpnTh+Kn4FzSiBJYI931op6j1wEASJuIdsH 7Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fq11a66y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 14:16:34 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1EBA310002A;
 Mon, 20 Apr 2020 14:16:34 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B520520FA76;
 Mon, 20 Apr 2020 14:16:33 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr 2020 14:16:32
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <fabrice.gasnier@st.com>, <lee.jones@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v7 4/6] mfd: stm32: enable regmap fast_io for stm32-lptimer
Date: Mon, 20 Apr 2020 14:16:18 +0200
Message-ID: <20200420121620.2099-5-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200420121620.2099-1-benjamin.gaignard@st.com>
References: <20200420121620.2099-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_03:2020-04-20,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_051642_126862_ED8EBEDC 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Because stm32-lptimer need to write in registers in interrupt context
enable regmap fast_io to use a spin_lock to protect registers access
rather than a mutex.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Acked-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/stm32-lptimer.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/stm32-lptimer.c b/drivers/mfd/stm32-lptimer.c
index a00f99f36559..746e51a17cc8 100644
--- a/drivers/mfd/stm32-lptimer.c
+++ b/drivers/mfd/stm32-lptimer.c
@@ -17,6 +17,7 @@ static const struct regmap_config stm32_lptimer_regmap_cfg = {
 	.val_bits = 32,
 	.reg_stride = sizeof(u32),
 	.max_register = STM32_LPTIM_MAX_REGISTER,
+	.fast_io = true,
 };
 
 static int stm32_lptimer_detect_encoder(struct stm32_lptimer *ddata)
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
