Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533EF1FFA24
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 19:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V6GATGWUabMoAhLTIU5oHBYVcAWSeHeU7s3ay8uiIvY=; b=hio5ORHwxa2f1c
	z8aJIwuW5Wavko++xA2KtnSdvVKqCR02uJmnCwRJpugf+3H8KYWIA/GYlg457Ro0lWRBsdTS7bGkI
	+ofz4ymJop6noz8QbwKfcGryK0LEucp8fLnWSX88MijUXcftYpPFNcFvTF74fI23hXblaLmWLXXUt
	GcoQeY0Q3BLLwG9RqvptaPDiX45hOONDTiyU7wCXn0vUEAacH+tRfajbYpHSaBwveV3ebFUwEF7uL
	oji6vuiAOtYgQN5dNk4G/STxyohKKEdztxSc0RvWirOVEZ5bz1JGGEcZZFsSuQQfA2glWfhoH57Q5
	Ti2JxJvkOqEdiHINg7OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyIh-0003lB-0r; Thu, 18 Jun 2020 17:26:07 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyIW-0003kY-M1
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 17:25:58 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05IH2XcT014920; Thu, 18 Jun 2020 19:25:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=9JidG9SI0t24FUmVLA0cuOTFSYM8EHYtOdUK2GCQGQo=;
 b=YroBNmuZuxNVyqP6rkpu+5jD9Co2S3KWWRo+cn/EfBpiGn9fs279erCoa7AOd3A12jDG
 yypWkHkxM6/7CtIHmIs5Zg14Yrqej1idio8agYHjut2aEXKbm/gwmKhm1OOqLjw0WXMV
 r8qLQsCUs9boQJdVz0e2lz4oYVOVrf1iKVhv0LiKKA58OFmtzeKjIINd+/N8IOjfR3mg
 R/RkFUSqeuyqSVsyeJUDo/11dRrCqJAMjJjT/q3xnoAfLtfJr5fGyuWb7SdHRajR4C6x
 +7TvTsuydOYY/DY6wmW0FN1FiPUk9EUkDaYY1vCvzYpwDRsSyxDfckRAnUmls0qzYCoy dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31q64ccbrs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jun 2020 19:25:43 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 50B0310002A;
 Thu, 18 Jun 2020 19:25:42 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 36FFC2D6955;
 Thu, 18 Jun 2020 19:25:42 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG6NODE3.st.com (10.75.127.18)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 18 Jun 2020 19:25:41 +0200
From: <patrice.chotard@st.com>
To: Russell King <linux@armlinux.org.uk>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <soc@kernel.org>
Subject: [PATCH] Revert "ARM: sti: Implement dummy L2 cache's write_sec"
Date: Thu, 18 Jun 2020 19:24:56 +0200
Message-ID: <20200618172456.29475-1-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG6NODE3.st.com
 (10.75.127.18)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-18_14:2020-06-18,
 2020-06-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_102557_157522_A8C4DB3F 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [91.207.212.93 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alain Volmat <alain.volmat@st.com>, patrice.chotard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

This reverts commit 7b8e0188fa717cd9abc4fb52587445b421835c2a.

Initially, STiH410-B2260 was supposed to be secured, that's why
l2c_write_sec was stubbed to avoid secure register access from
non secure world.

But by default, STiH410-B2260 is running in non secure mode,
so L2 cache register accesses are authorized, l2c_write_sec stub
is not needed.

With this patch, L2 cache is configured and performance are enhanced.

Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
Cc: Alain Volmat <alain.volmat@st.com>
---
 arch/arm/mach-sti/board-dt.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm/mach-sti/board-dt.c b/arch/arm/mach-sti/board-dt.c
index dcb98937fcf5..ffecbf29646f 100644
--- a/arch/arm/mach-sti/board-dt.c
+++ b/arch/arm/mach-sti/board-dt.c
@@ -20,14 +20,6 @@ static const char *const stih41x_dt_match[] __initconst = {
 	NULL
 };
 
-static void sti_l2_write_sec(unsigned long val, unsigned reg)
-{
-	/*
-	 * We can't write to secure registers as we are in non-secure
-	 * mode, until we have some SMI service available.
-	 */
-}
-
 DT_MACHINE_START(STM, "STi SoC with Flattened Device Tree")
 	.dt_compat	= stih41x_dt_match,
 	.l2c_aux_val	= L2C_AUX_CTRL_SHARED_OVERRIDE |
@@ -36,5 +28,4 @@ DT_MACHINE_START(STM, "STi SoC with Flattened Device Tree")
 			  L2C_AUX_CTRL_WAY_SIZE(4),
 	.l2c_aux_mask	= 0xc0000fff,
 	.smp		= smp_ops(sti_smp_ops),
-	.l2c_write_sec	= sti_l2_write_sec,
 MACHINE_END
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
