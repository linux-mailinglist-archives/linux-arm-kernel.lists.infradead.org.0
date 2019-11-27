Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CB510AE26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EW1PqTtLOQZpFE3qg/NJdqCdmlmnRB97Mo7svl9zxKo=; b=G65+jUOTqNqskZ
	Vwfaj/AMM9GLzevUkFKmibR2RmnI3FfcqfnchT4ZYkQkMyTB5elaN6dv308N3s88+mmJadZ5XCfmq
	Esi4mG0gCydLr8X+HulaGqNes3HHwKgOkEG2oV++Dwg8B/6dAdGH+N08WT6aWmjgLvzAU8HGWLZpC
	tL5HgpNN9wtN7tg2mdhbH3/ac967t8NRPJm8YyHQOaD7iT/NrSrZASuHk629JMgVEG5eFcMqdadJp
	29xCzwYnBfX5JmzbMXySxiHu0RZc92WjnNQRnhilFQjFbYaZHc1wnxmmZsSDWx/SFXG5l0Inl/j52
	uYvu6p73Dz1pM6mpCXnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuqe-0007Lo-5R; Wed, 27 Nov 2019 10:47:04 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuq3-00074S-E5
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:46:29 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xARAg6Ln017474; Wed, 27 Nov 2019 11:46:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=xvXkmL97UPwwgWi9f71wpPjYqhWarn5Mvwlggysmi7M=;
 b=S+OE0xYIHoSMcfTGz9P/+22kFE4cTR05zFG/LiubAXMsfz3dXu+u4dfhnal5rr0EvNNn
 4Byt8FnlpbBsQNVTQx3F8wMrHePAi/xzDjuhi5g69jHKnFtxKuzF+p6V6Y5lkwRc7nM3
 sk8MlG6ceP4qQgCbxbC2znwX6YD/0GCMletFLNi6zodcsDfxk8x+mxcKlNps0S0Dg7Bn
 FGweJZxyupSkhdokuwgpZWLzz3wBjWCkMw8XkgPzjw9Fgn78PjMTEEKBLhQMqp0WdYXV
 JI4B7GPyJW3FfnSNRXvBBI/68qr0XKzdJ3oi8gNlXD8tgdlfMCZ6JC4XOe8uj/6eM0sK 3w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2whcxyb45n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Nov 2019 11:46:22 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 98FBF100038;
 Wed, 27 Nov 2019 11:46:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8506E2B242F;
 Wed, 27 Nov 2019 11:46:20 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 27 Nov 2019 11:46:19
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH 2/4] ARM: dts: stm32: add i2c4 sleep pinctrl on stm32mp157c-ed1
Date: Wed, 27 Nov 2019 11:46:20 +0100
Message-ID: <1574851580-25586-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-27_02:2019-11-27,2019-11-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_024627_787235_3CC80C6F 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the sleep state pinctrl entry for the i2c4 node
of the stm32mp157c-ed1 board.

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 arch/arm/boot/dts/stm32mp157c-ed1.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index 1d426ea8bdaf..3ab1c64ea1e2 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -114,8 +114,9 @@
 };
 
 &i2c4 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&i2c4_pins_a>;
+	pinctrl-1 = <&i2c4_pins_sleep_a>;
 	i2c-scl-rising-time-ns = <185>;
 	i2c-scl-falling-time-ns = <20>;
 	status = "okay";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
