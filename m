Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F6C78D3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ZByXNcSxm5vAFfwfE5lTP9pt42zZMV4rZSE9Ew1XtE=; b=hMVJ6jrjzelZCN
	1DS/OIDBdQ01eoAYQH7GwBl2vOrIJ+iiWrmzHYXkt867+EhXu4hzQOWFQic68SduivSdKeaEvgiaM
	4A/jeNPkgfoCNo0hRgDQBusSj/iDppgMcPCb837YptwfpG7ThnCajZGkl71bjuiCyaosq2HFom3Xk
	R69nf5OxYlQ9Ze7/JhlqHUKQd6au3bVYtI8iuk4Q2yyABSndhzbEruU4QURs3X4Ch+iaqU1fKMmmy
	yHDflkTsYWHJV9UGowc0Jt2/NQc/bAZoGIkyLytgaA7jEBR/q599/Bhaal4TXLS6NBUUedU/UAZRU
	1byLaqCZbmFoKQkp6VwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs67v-000266-Mt; Mon, 29 Jul 2019 13:55:47 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs67o-00025H-S6
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:55:42 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6TDq2J2020057; Mon, 29 Jul 2019 15:55:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=wfkrOwgCeZzV4fJ7ha2E0UrU2pJwRZbxnCDoHpSL6Lo=;
 b=aaHEAo21qSIaSv7R6MRoTxb5QmXdL8npp7YI9RenusW41aiT6cgb4klBMF3wLyarrKDq
 VlCfH0Ea/1CItcbbkdgcvqYmTVOYEzXmD6MSivh/DHf7yNpCh/NQ0bVrJmyUAvb5lcxj
 YNhIlNNqKG8VNke65yg2C2PGnOWMgAg9cdQpnrn4dNCNBgSZ3AzSgAz08fyvpx7d2BX8
 HmUT6+CPMxc6ynXrbVmIYYl4SFJYakXL0ySQKOfCSCI5RD3BP2DLZ3HhiQQYQT+8bbwU
 68k82la8jxiEDdAtjvlO/moctGJwbPwnGwydR2UimtYeMvC6YHrW+cHrspuLzN0rWIWc BA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u0dggvkww-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 29 Jul 2019 15:55:19 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A308F3D;
 Mon, 29 Jul 2019 13:55:17 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7810B5747;
 Mon, 29 Jul 2019 13:55:17 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 15:55:17 +0200
Received: from localhost (10.201.23.73) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul 2019 15:55:17
 +0200
From: <patrice.chotard@st.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 "Alexandre Torgue" <alexandre.torgue@st.com>, Russell King
 <linux@armlinux.org.uk>
Subject: ARM: multi_v7_defconfig: Enable SPI_STM32_QSPI support
Date: Mon, 29 Jul 2019 15:55:05 +0200
Message-ID: <20190729135505.15394-1-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.23.73]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-29_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_065541_380945_47018D8C 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patrice Chotard <patrice.chotard@st.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

Enable support for QSPI block on STM32 SoCs.

Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 6a40bc2ef271..78d1d93298af 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -403,6 +403,7 @@ CONFIG_SPI_SH_MSIOF=m
 CONFIG_SPI_SH_HSPI=y
 CONFIG_SPI_SIRF=y
 CONFIG_SPI_STM32=m
+CONFIG_SPI_STM32_QSPI=m
 CONFIG_SPI_SUN4I=y
 CONFIG_SPI_SUN6I=y
 CONFIG_SPI_TEGRA114=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
