Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B5224C17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+XoK9esaz2Qy1A0vHyvl2MKr0hmn9QkH/gf3p+vj3Co=; b=cl6o0T1FTkYAAQ
	lxACjaTOIP11j2GYMyt77cnupsmMyfPmI0c1WzDb+YY0+5E5yYCSuPLPz/Wc024QFDifkWMRsngoI
	hmijTsDCvFGVViWiRa3RCUFhpxAlZaYK81pRNahPoa04OfDTpuKoZsgYH8RCn8S6u0Cf7xswRgj5I
	fuW6t9dC0xYgscl4itreo058yctB/6tRDC+W47ovS+TXEjzowu6OnvGh5rFigZ1QWroRhZ2yWzSPw
	N2rVukby6mcWFHHlLH6rOMDPG7JFEqm/dC7l9pE/xQKDgKYhTFlBmk+KaGMNL9v2wJzlrzpI4LJiV
	JLSf4VknuawrlY+pQKWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1Yp-0000Rh-Fc; Tue, 21 May 2019 09:59:55 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1Yi-0000R9-5z
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 09:59:49 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4L9aWVY004730; Tue, 21 May 2019 11:59:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=vq/nSg27gm3FHERhSOAoi49hkfDWTgsfrmKdS0NWRuQ=;
 b=Lmt7Iilg41yXC1xW3J70M6+DiPxFhJIzaHq5DuDyeK0+xzcm2shiV77gRGtJCd1astgT
 E38pT13GIuDb4oPf2GEieYc7/O/l9QWk6UjtTunUeI+c9mSrzhGngYjuoyB2STtxrEWf
 UnmilkGCtXt7IqKDEKpolRyQS5nfrJKmxROrk6sVPYQIl13An785VlTtxTP0CWoL531q
 QNT58mkXktrLM5JWgspDNSJvaMkZE4nWXPOWZVSTXScd1DpG3uYWjbG8cYjz3sBIdnI6
 E7Rf63ObG/UgtRBcXs7uaRgBE3myi3oB50AlABFwwY02ROhqiZRJ/ilGPX6+fhwroE3o Yg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sj8xg8jk8-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 11:59:30 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 31B3F31;
 Tue, 21 May 2019 09:59:29 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EF2DE256F;
 Tue, 21 May 2019 09:59:28 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 21 May
 2019 11:59:28 +0200
Received: from localhost (10.201.20.5) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 21 May 2019 11:59:28 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Russell King <linux@armlinux.org.uk>, Alexandre Torgue
 <alexandre.torgue@st.com>, Olof Johansson <olof@lixom.net>, Simon Horman
 <horms+renesas@verge.net.au>, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Geert Uytterhoeven
 <geert+renesas@glider.be>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH] ARM: multi_v7_defconfig: enable STMFX pinctrl support
Date: Tue, 21 May 2019 11:59:27 +0200
Message-ID: <1558432767-23139-1-git-send-email-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.20.5]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_01:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_025948_546830_C60A1C2D 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enables support for STMFX pinctrl.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index c75051b..7f6f5bf 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -408,6 +408,7 @@ CONFIG_SPI_SPIDEV=y
 CONFIG_SPMI=y
 CONFIG_PINCTRL_AS3722=y
 CONFIG_PINCTRL_RZA2=y
+CONFIG_PINCTRL_STMFX=y
 CONFIG_PINCTRL_PALMAS=y
 CONFIG_PINCTRL_APQ8064=y
 CONFIG_PINCTRL_APQ8084=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
