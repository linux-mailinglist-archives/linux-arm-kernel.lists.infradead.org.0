Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAE4DC467
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yJzyRXaD9s9m14OpMOcdtNLPBrTSi1asRPlIFokHX2k=; b=QFIMczx08DU6t6
	0VoHJbSz5birNYQG6zDiUhC5Cf/PLLqto4x0KCBVQhLbm/IpfLw076fNsGaBh2x6vPLt91TndP+2D
	58fSIq1fB49UklNs1NwUxgEPeyPV3bYZWeQS6Fl+i48zxGYwKpN+BMWa3xhGRsJ0gvPtEQlof9C99
	OMhM7o4TA6u5bTEgcmW2IvpqQMxXbQe++aL7ZVCRNjBHu+jZDuUvnkl5VgaD0imjd87s0hKL/vIR9
	7WEqti4GHcCxIHf/+wdNI82zfvb0nX3JcrWmTAV/Fwofl13ka5CJmnhJRYSEXZE2QQEW/iRnRi6sE
	UeXfa8d4QoxB7XU6Mi1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLR3P-0002tR-Ku; Fri, 18 Oct 2019 12:08:23 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLR3H-0002sK-GG
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:08:17 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 47292C30828965867981;
 Fri, 18 Oct 2019 20:08:06 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Fri, 18 Oct 2019
 20:08:00 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <khilman@kernel.org>, <tony@atomide.com>, <linux@armlinux.org.uk>
Subject: [PATCH -next] ARM: OMAP2+: Make some functions static
Date: Fri, 18 Oct 2019 20:07:01 +0800
Message-ID: <20191018120701.29364-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_050815_711714_FC636177 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-omap@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix sparse warnings:

arch/arm/mach-omap2/pmic-cpcap.c:29:15: warning: symbol 'omap_cpcap_vsel_to_uv' was not declared. Should it be static?
arch/arm/mach-omap2/pmic-cpcap.c:43:15: warning: symbol 'omap_cpcap_uv_to_vsel' was not declared. Should it be static?
arch/arm/mach-omap2/pmic-cpcap.c:93:15: warning: symbol 'omap_max8952_vsel_to_uv' was not declared. Should it be static?
arch/arm/mach-omap2/pmic-cpcap.c:107:15: warning: symbol 'omap_max8952_uv_to_vsel' was not declared. Should it be static?
arch/arm/mach-omap2/pmic-cpcap.c:140:15: warning: symbol 'omap_fan535503_vsel_to_uv' was not declared. Should it be static?
arch/arm/mach-omap2/pmic-cpcap.c:155:15: warning: symbol 'omap_fan535508_vsel_to_uv' was not declared. Should it be static?
arch/arm/mach-omap2/pmic-cpcap.c:173:15: warning: symbol 'omap_fan535503_uv_to_vsel' was not declared. Should it be static?
arch/arm/mach-omap2/pmic-cpcap.c:192:15: warning: symbol 'omap_fan535508_uv_to_vsel' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 arch/arm/mach-omap2/pmic-cpcap.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-omap2/pmic-cpcap.c b/arch/arm/mach-omap2/pmic-cpcap.c
index 2c2a178..3cdf40e 100644
--- a/arch/arm/mach-omap2/pmic-cpcap.c
+++ b/arch/arm/mach-omap2/pmic-cpcap.c
@@ -26,7 +26,7 @@
  * Returns the microvolts DC that the CPCAP PMIC should generate when
  * programmed with @vsel.
  */
-unsigned long omap_cpcap_vsel_to_uv(unsigned char vsel)
+static unsigned long omap_cpcap_vsel_to_uv(unsigned char vsel)
 {
 	if (vsel > 0x44)
 		vsel = 0x44;
@@ -40,7 +40,7 @@ unsigned long omap_cpcap_vsel_to_uv(unsigned char vsel)
  * Returns the VSEL value necessary for the CPCAP PMIC to
  * generate an output voltage equal to or greater than @uv microvolts DC.
  */
-unsigned char omap_cpcap_uv_to_vsel(unsigned long uv)
+static unsigned char omap_cpcap_uv_to_vsel(unsigned long uv)
 {
 	if (uv < 600000)
 		uv = 600000;
@@ -90,7 +90,7 @@ static struct omap_voltdm_pmic omap_cpcap_iva = {
  * Returns the microvolts DC that the MAX8952 Regulator should generate when
  * programmed with @vsel.
  */
-unsigned long omap_max8952_vsel_to_uv(unsigned char vsel)
+static unsigned long omap_max8952_vsel_to_uv(unsigned char vsel)
 {
 	if (vsel > 0x3F)
 		vsel = 0x3F;
@@ -104,7 +104,7 @@ unsigned long omap_max8952_vsel_to_uv(unsigned char vsel)
  * Returns the VSEL value necessary for the MAX8952 Regulator to
  * generate an output voltage equal to or greater than @uv microvolts DC.
  */
-unsigned char omap_max8952_uv_to_vsel(unsigned long uv)
+static unsigned char omap_max8952_uv_to_vsel(unsigned long uv)
 {
 	if (uv < 770000)
 		uv = 770000;
@@ -137,7 +137,7 @@ static struct omap_voltdm_pmic omap443x_max8952_mpu = {
  * Returns the microvolts DC that the FAN535503 Regulator should generate when
  * programmed with @vsel.
  */
-unsigned long omap_fan535503_vsel_to_uv(unsigned char vsel)
+static unsigned long omap_fan535503_vsel_to_uv(unsigned char vsel)
 {
 	/* Extract bits[5:0] */
 	vsel &= 0x3F;
@@ -152,7 +152,7 @@ unsigned long omap_fan535503_vsel_to_uv(unsigned char vsel)
  * Returns the microvolts DC that the FAN535508 Regulator should generate when
  * programmed with @vsel.
  */
-unsigned long omap_fan535508_vsel_to_uv(unsigned char vsel)
+static unsigned long omap_fan535508_vsel_to_uv(unsigned char vsel)
 {
 	/* Extract bits[5:0] */
 	vsel &= 0x3F;
@@ -170,7 +170,7 @@ unsigned long omap_fan535508_vsel_to_uv(unsigned char vsel)
  * Returns the VSEL value necessary for the MAX8952 Regulator to
  * generate an output voltage equal to or greater than @uv microvolts DC.
  */
-unsigned char omap_fan535503_uv_to_vsel(unsigned long uv)
+static unsigned char omap_fan535503_uv_to_vsel(unsigned long uv)
 {
 	unsigned char vsel;
 	if (uv < 750000)
@@ -189,7 +189,7 @@ unsigned char omap_fan535503_uv_to_vsel(unsigned long uv)
  * Returns the VSEL value necessary for the MAX8952 Regulator to
  * generate an output voltage equal to or greater than @uv microvolts DC.
  */
-unsigned char omap_fan535508_uv_to_vsel(unsigned long uv)
+static unsigned char omap_fan535508_uv_to_vsel(unsigned long uv)
 {
 	unsigned char vsel;
 	if (uv < 750000)
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
