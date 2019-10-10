Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD5AD32FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poU40aZw3nJD/N2f1PJ3u800LolHhcXXsyvrswCnf1g=; b=Bn/BxmTXuGGFEE
	BJTx5Ms7Yhee+ViKVCMkXQz7zr4wp2iFk8K3JEw+zFGHRMUevoktilbFrAoT8nFzraIJC6RN3sjKv
	y4zwI3KGi4nh/vNyI1QQ1NAmChk99nYqNyJzbyNphBHfEb0JbzZ39y8hI+stHFP/qcaUT2xxGrPWZ
	o/bPmtNXcY8Humlh9a+a66kN8kARf5/khs96/sOrpV7jDejHdudmJjLPQgEfgHz9lQW5hTJO0XiJN
	JygILY+fEtsIbpGHyI9vuneIvYlJVSWzaEqu30vUNDh3FELyzeYhs9ENOCsJCrmRJ4iiq86DRc/7V
	Ysku2lYbluWrcn7mkp4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfRh-0000mp-HR; Thu, 10 Oct 2019 20:54:01 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfRa-0000mP-6D
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:53:55 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MHmuE-1iLR8L2rMU-00EtUy; Thu, 10 Oct 2019 22:53:51 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [PATCH 31/36] ARM: s3c: cpufreq: use global s3c2412_cpufreq_setrefresh
Date: Thu, 10 Oct 2019 22:30:15 +0200
Message-Id: <20191010203043.1241612-31-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Fqr+3CFSJ3z4nTjJP8VvOYDnXO9EX8g1sytJseiBmwVd5rPpq97
 9sruTvvZ87o0fdD7Cb5YJZoyiUwUQ2d20fjsnrZ2/ti0eYbj94X/VXq060K27XIYEuUjcn6
 evrUWDq66oQbd8FaGR7d/8oiFeD55KCF/Nb9Hvd7zZcx9COJsqf+8pLR+bTu3F/RE4wig8M
 bL1N+gwAQac2r4xR8sQsw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:I4aXG3I2BlQ=:WzAJmAR6TpeAp6EuftPE/X
 G3vu9wKCdQh+X+DtHXLsSX9uM+cjh88bct9q5yhn5vuuMLMgdE3sLrpUc/JVj/kRZdRCP8SO0
 ZKXiJ7MO0FqsYjgjjlsh1L+JaI+qp/FLi53fjDEWQBGWcI75qofK/YGNBjIqUMj57RMNGRnqN
 7+rn+u6/IOwjeqta8QTy2XB12OibL1hQ0MzblW5y19TTqC6vR/w7yGbDVFmDFUEE264k7yMlH
 Dm11HWnMYWAL92rFyR3nPFm/mK7mpFGRq2qHeLBvlLUOmC+KS3SQgfhU17mmDtXWvr1X0Ea3L
 IuHcsi9nNRVRC9Bg65Ry9nPskAhZi+id0hJNMsVAjYgPICbS1OZgDbH3viSZYTrEy4G5OY1L+
 kqNU7mMyDuNyC45HX3xIvfpNr3dM/87I/bRDa5cBnc10UwXI0wTMP2tOG8xcFVNptjWqsc/ps
 IdlQAV8J37riuHqYb4ZrqyE5uNyfazEn/z0CPNZnDc6drOWgTdw2bbXaSlhm4b70tQKBYfFkx
 4KmdS2rSSE7w8a7mVNf6SiCDQNLHA9GPf9aqPCsIJdB5PsDOddoIRC6cc96yITIBuMKLfwqO4
 3+WhQudP1iFmGo/CA3TgHH2YzP2hpmpYXy1QMX/RNVBvKgdmNyEiR/yGX1Nal/tMrpLfYMa3Q
 EDHGD9KLQ/akRINDWbJga9ZSoU4ksWC1BPTk7i7Y2uTvWEmJYMJJAbEMFFucUm6VVV92+bJoj
 /0fntlkd9YT6tdXyEcBZrbBzOI+sg7spN+zTq8+Kf24a/8k5J0Gzke7kPc+ASlnwsWwnYBM7Z
 zDcq+Bu2brWvxhzIOAxKtUI1GD47uapI1T0wZxEldPhUU2yWT00FBQMklj84IehO5EzwKQ7BY
 wi5YZxTT79iCz0e2t4sw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_135354_518378_17D0C1EF 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two identical copies of the s3c2412_cpufreq_setrefresh
function: a static one in the cpufreq driver and a global
version in iotiming-s3c2412.c.

As the function requires the use of a hardcoded register address
from a header that we want to not be visible to drivers, just
move the existing global function and add a declaration in
one of the cpufreq header files.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/cpufreq/s3c2412-cpufreq.c            | 23 --------------------
 include/linux/soc/samsung/s3c-cpufreq-core.h |  1 +
 2 files changed, 1 insertion(+), 23 deletions(-)

diff --git a/drivers/cpufreq/s3c2412-cpufreq.c b/drivers/cpufreq/s3c2412-cpufreq.c
index 38dc9e6db633..a77c63e92e1a 100644
--- a/drivers/cpufreq/s3c2412-cpufreq.c
+++ b/drivers/cpufreq/s3c2412-cpufreq.c
@@ -25,8 +25,6 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
-#include <mach/s3c2412.h>
-
 #include <mach/map.h>
 
 #define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
@@ -156,27 +154,6 @@ static void s3c2412_cpufreq_setdivs(struct s3c_cpufreq_config *cfg)
 	clk_set_parent(armclk, cfg->divs.dvs ? hclk : fclk);
 }
 
-static void s3c2412_cpufreq_setrefresh(struct s3c_cpufreq_config *cfg)
-{
-	struct s3c_cpufreq_board *board = cfg->board;
-	unsigned long refresh;
-
-	s3c_freq_dbg("%s: refresh %u ns, hclk %lu\n", __func__,
-		     board->refresh, cfg->freq.hclk);
-
-	/* Reduce both the refresh time (in ns) and the frequency (in MHz)
-	 * by 10 each to ensure that we do not overflow 32 bit numbers. This
-	 * should work for HCLK up to 133MHz and refresh period up to 30usec.
-	 */
-
-	refresh = (board->refresh / 10);
-	refresh *= (cfg->freq.hclk / 100);
-	refresh /= (1 * 1000 * 1000);	/* 10^6 */
-
-	s3c_freq_dbg("%s: setting refresh 0x%08lx\n", __func__, refresh);
-	__raw_writel(refresh, S3C2412_REFRESH);
-}
-
 /* set the default cpu frequency information, based on an 200MHz part
  * as we have no other way of detecting the speed rating in software.
  */
diff --git a/include/linux/soc/samsung/s3c-cpufreq-core.h b/include/linux/soc/samsung/s3c-cpufreq-core.h
index 4d22be1031b9..eca942559014 100644
--- a/include/linux/soc/samsung/s3c-cpufreq-core.h
+++ b/include/linux/soc/samsung/s3c-cpufreq-core.h
@@ -246,6 +246,7 @@ extern int s3c2412_iotiming_calc(struct s3c_cpufreq_config *cfg,
 
 extern void s3c2412_iotiming_set(struct s3c_cpufreq_config *cfg,
 				 struct s3c_iotimings *iot);
+extern void s3c2412_cpufreq_setrefresh(struct s3c_cpufreq_config *cfg);
 #else
 #define s3c2412_iotiming_debugfs NULL
 #define s3c2412_iotiming_calc NULL
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
