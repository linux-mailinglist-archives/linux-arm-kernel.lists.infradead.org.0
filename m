Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0959D136EBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:51:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OR5hOJimts24PuD6koDFCXvj7BWWbO4nhG22tevs6Vc=; b=GfxoGHBBVWY2bt
	21Q+wUxZf8+B66Y34MrCjZ8Bc7OL4s8uzWxgFwZNMY9SLAbJH1jRGpPFiGTDfVpjQthaMWY8q3o1I
	/MTKsE9KDSqnTX5dMKBou3YKYpMUSr+3uA4CGv1shzgRWccUybcIMovAsym1aVut6zJzJEa05NCGC
	BobSup4HXO+Pjd35vx7/I721yK96GztpYaaqJXLcDUkAqQ1bslsDYZKE+76lDJQwK9+b/Jjpw8CxS
	hdYl9Htqk/3hgKrqqf/saYk/JZgmHrv2j+E2lPHxCqUtBrtSzR/Pc9VBD5vqXjqQ9FmtcjfMRuGji
	No8ZHgrWoNRiFqDzdx0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipuhY-0007Y7-R3; Fri, 10 Jan 2020 13:51:48 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipuf2-0004I3-Nz
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 13:49:15 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ADlv32031935; Fri, 10 Jan 2020 14:49:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=NLjg1B5h+ASCcN62lZ3aN5vVT+hw/N/+lePHW81bf2s=;
 b=tcfLqYtUpbbZpK5tqQI+QMVZ9Fwbq5VTmxpWGsyYUErshZS8siHdXO8BBdnROlU49ekw
 18qUG2K9BOMcScJbYvdP2PiYPSvJjnGl2APcYaBjakZ3ioXShJizhpN5dSkcldE5Tirn
 zgT24pccFwmjhU8cVqKiNnLqwC9m6e4kyo5JhXvBYbJ1Cf+a8Y6QGT3PNIFRJ5PZg58t
 zIQTHdHlHTtonojP1cfVI4clmuP0Ij3bV/jgwiArWYqyOV7LTNZSu4gb5CoWBzdErnui
 eP+CifU7KeV80e0nGhoRgA07BzSFZIc3IeGW/1eC66kw0vHYZr1Zf4JHyefYokLG1wg2 Dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakur7dtu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 14:49:08 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 622F4100038;
 Fri, 10 Jan 2020 14:49:04 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 543672BC7D2;
 Fri, 10 Jan 2020 14:49:04 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 10 Jan 2020 14:49:03 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 7/9] mmc: mmci: add volt_switch callbacks
Date: Fri, 10 Jan 2020 14:48:21 +0100
Message-ID: <20200110134823.14882-8-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110134823.14882-1-ludovic.barre@st.com>
References: <20200110134823.14882-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_01:2020-01-10,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_054914_076917_7DB71FED 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds 2 voltage switch callbacks in mmci_host_ops:
-prep_volt_switch allows to prepare voltage switch before to
 sent the SD_SWITCH_VOLTAGE command (cmd11).
-volt_switch callback allows to define specific action after
 regulator set voltage.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci.c | 8 ++++++++
 drivers/mmc/host/mmci.h | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
index 00b473f57047..d76a59c06cb0 100644
--- a/drivers/mmc/host/mmci.c
+++ b/drivers/mmc/host/mmci.c
@@ -22,6 +22,7 @@
 #include <linux/mmc/pm.h>
 #include <linux/mmc/host.h>
 #include <linux/mmc/card.h>
+#include <linux/mmc/sd.h>
 #include <linux/mmc/slot-gpio.h>
 #include <linux/amba/bus.h>
 #include <linux/clk.h>
@@ -1207,6 +1208,9 @@ mmci_start_command(struct mmci_host *host, struct mmc_command *cmd, u32 c)
 		writel_relaxed(clks, host->base + MMCIDATATIMER);
 	}
 
+	if (host->ops->prep_volt_switch && cmd->opcode == SD_SWITCH_VOLTAGE)
+		host->ops->prep_volt_switch(host);
+
 	if (/*interrupt*/0)
 		c |= MCI_CPSM_INTERRUPT;
 
@@ -1820,6 +1824,7 @@ static int mmci_get_cd(struct mmc_host *mmc)
 
 static int mmci_sig_volt_switch(struct mmc_host *mmc, struct mmc_ios *ios)
 {
+	struct mmci_host *host = mmc_priv(mmc);
 	int ret = 0;
 
 	if (!IS_ERR(mmc->supply.vqmmc)) {
@@ -1839,6 +1844,9 @@ static int mmci_sig_volt_switch(struct mmc_host *mmc, struct mmc_ios *ios)
 			break;
 		}
 
+		if (!ret && host->ops && host->ops->volt_switch)
+			ret = host->ops->volt_switch(host, ios);
+
 		if (ret)
 			dev_warn(mmc_dev(mmc), "Voltage switch failed\n");
 	}
diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
index ddcdfb827996..c04a144259a2 100644
--- a/drivers/mmc/host/mmci.h
+++ b/drivers/mmc/host/mmci.h
@@ -377,6 +377,8 @@ struct mmci_host_ops {
 	void (*set_clkreg)(struct mmci_host *host, unsigned int desired);
 	void (*set_pwrreg)(struct mmci_host *host, unsigned int pwr);
 	bool (*busy_complete)(struct mmci_host *host, u32 status, u32 err_msk);
+	void (*prep_volt_switch)(struct mmci_host *host);
+	int (*volt_switch)(struct mmci_host *host, struct mmc_ios *ios);
 };
 
 struct mmci_host {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
