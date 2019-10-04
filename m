Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92F4CBAB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jvk+zwns8INvOQw9QWfKDhce8i7B7FCxnIqZxiAD3yg=; b=YnwXE12L4CRgzZ
	/ie5TH9L0dF8TgUjo5jRLbjqa6gXgT+AQut0V8cYWtqyIkB1s1dy6ey8TvZV+3PJXwo3RI+LakjvI
	9sluqjMKDwPtLgwS1dvyCSK4dAaUY9rbDtV9qUAlnpUI+dzWj8m7ADtrvM/AUcIbNwcqtpExMvojV
	Jge07Kvk9ayXza/p+k1rDBY1ejacif+/Ydb0WaeDIOaCi1iO66e7/ZBN2SBJZmMKoAGJXv3YoB4/d
	HzXqsaldTvg7ThXIAs/Dj6lFjvsQ0xv2xbHW1A/G1xni24yzx8t1iIRiZI2VLSZU9w95TzxPd5USb
	CHVa1iGEtbzX0N5IUvjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMtN-0007z7-IB; Fri, 04 Oct 2019 12:41:05 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMtH-0007yN-27
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:41:00 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x94CehnI004605; Fri, 4 Oct 2019 14:40:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=CJilnt7RXtVd0FDtYcJq51Veg5c8TqGkDJf8lYJ2tPw=;
 b=T/ZqhHSXp6rpq4D/7hNMZ1NJdy2pA+Ll5JaAW4ffkECx6on1mXourM63w35XQ+siqEWo
 2qwZXyHiXhr4KUX1DQpYeCCtGE0lCtIfB2e78c4PSdoJFbJdCW/nTv+M94vePm9Sacow
 YCqBzPOxoTt3nafkjqxVGpNpHgqF/v2RhyFwwItgOkV+ztzEw1/jSQ5iSmc0mAfh4zFX
 7lzNcgEv56GCrnvN8XKB7iavKuJJYqHv5TR0Ztz+MoXsj7V/C1/gLewq+92PtvD6OKeR
 bEVbRXpb7rZX6Bki+ZJY4MUjukPnLmMgeS0AOfBH3KigdnWqhR/jtJXV6yx1l25LOiRE sA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v9w9wayfy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Oct 2019 14:40:43 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 774D810002A;
 Fri,  4 Oct 2019 14:40:38 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 59DF82BE254;
 Fri,  4 Oct 2019 14:40:38 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 4 Oct 2019
 14:40:38 +0200
Received: from localhost (10.201.23.73) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 4 Oct 2019 14:40:37
 +0200
From: <patrice.chotard@st.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 "Alexandre Torgue" <alexandre.torgue@st.com>, Russell King
 <linux@armlinux.org.uk>
Subject: ARM: multi_v7_defconfig: Fix SPI_STM32_QSPI support
Date: Fri, 4 Oct 2019 14:40:25 +0200
Message-ID: <20191004124025.17394-1-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.23.73]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-04_06:2019-10-03,2019-10-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_054059_549630_F8588913 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: soc@kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

SPI_STM32_QSPI must be set in buildin as rootfs can be
located on QSPI memory device.

Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
---
 arch/arm/configs/multi_v7_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 13ba53286901..510ad7691a2e 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -415,7 +415,7 @@ CONFIG_SPI_SH_MSIOF=m
 CONFIG_SPI_SH_HSPI=y
 CONFIG_SPI_SIRF=y
 CONFIG_SPI_STM32=m
-CONFIG_SPI_STM32_QSPI=m
+CONFIG_SPI_STM32_QSPI=y
 CONFIG_SPI_SUN4I=y
 CONFIG_SPI_SUN6I=y
 CONFIG_SPI_TEGRA114=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
