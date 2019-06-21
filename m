Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F8F4EAEF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 16:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YrSWKmwK1BdLhz7wCTw/dmuvkL95f3aqFnKj/IGiqXc=; b=ZUQsKJbhmZBw4T
	WC23HopRF+Zyiz8Al+nXMTYqEkZI1C+rEMytWBEwEyWyKLqAtRyL5UO9HIzO12ZLuaAfhhypJ37nt
	G8UN9yujfFrmH11d7nJKpyaGjustzB9Qj4UJLn1XicZanm/GXgGrYBC/IPhEh6EgdUlN5Wubmddzo
	w69eKzDGcdH6rD+/ybOZpqt0Rof/ibaU0TdxdhJsPJpiqzmqdaCG1l0JUFFwlWh/TzJ2STgd4LX4a
	IOP7MiV9UVgGjxOBL6wlAU6daHjso5J8TbezOoZifsAf42w6IHh/5DAU3TP6C02skzDjD1z5OsXNm
	iS+4CPydDJZg7gzYU7rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heKmb-0003dK-L2; Fri, 21 Jun 2019 14:44:53 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heKmQ-0003WG-AJ
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 14:44:43 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5LEag8Y027335; Fri, 21 Jun 2019 16:44:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=/yFYsE5nIlxG6wDOPJnHheZWalnbY+nM6oujrN80cA0=;
 b=xhCIMFG9P66FecoSO1jPaSzUwCdgOpllxyKMp2MfQcYN9BMGA4b/Ft2pRyy0sow36eGr
 wIVBjQ7rQW2ObQdwmFYoKPcYNud2SPac8J4PM4cKAAc+zvcV0DWwGNgvNdJnO5Zv2nM+
 fW5dcupgENcNUpLTdsRlT7AJxwgFVvhUccme45penJQrZvF+1qmStot82LPEu6YqdSBf
 wbbywripw4AeRmDM/JhQVo02GZfIMR6/3yQ4jqKYRqRqpFY2uVDKGkxNaOieqYv9SQco
 RGlJMrBNQJ7+1tc2/k+uspEXObxBDKD60FU+6g+LKVwcvfX08ph02lSqfrPLwlrQOUWV Uw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t781v810a-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 21 Jun 2019 16:44:33 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F30C638;
 Fri, 21 Jun 2019 14:44:32 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D87FF2BA9;
 Fri, 21 Jun 2019 14:44:32 +0000 (GMT)
Received: from localhost (10.75.127.50) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 21 Jun 2019 16:44:32
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>, <arm@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] ARM: multi_v7_defconfig: enable STMFX pinctrl support
Date: Fri, 21 Jun 2019 16:44:32 +0200
Message-ID: <20190621144432.8191-1-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-21_10:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_074442_643747_230A2476 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Amelie Delaunay <amelie.delaunay@st.com>

This patch enables support for STMFX pinctrl.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

---
Hi Arnd, Olof and Kevin,

I only have this patch for STM32 configs part. So please consider it
as my pull request for v5.3.

Thanks

Alex

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 6b748f214eae..e386f351f0ed 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -413,6 +413,7 @@ CONFIG_SPI_SPIDEV=y
 CONFIG_SPMI=y
 CONFIG_PINCTRL_AS3722=y
 CONFIG_PINCTRL_RZA2=y
+CONFIG_PINCTRL_STMFX=y
 CONFIG_PINCTRL_PALMAS=y
 CONFIG_PINCTRL_APQ8064=y
 CONFIG_PINCTRL_APQ8084=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
