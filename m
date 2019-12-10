Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5900211921D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:34:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s1kTenVg79cYfAuqEXp8fDjoEtVUEudu3ory/mJ420o=; b=RbUzdiS794Amjv
	aLOvRo6baT84qFFB9IRLDPwlnJi8hYsrsBSwnDonXGsjrM/RfQwteNI2jtzTY9JIpPqbw8NIG4KkZ
	y5XtcgkI4hsmjVYohk2o3lqQX5VOGK0PKIRjrp5yMghYQzxJWilSwh5ZviOCxKF2TI2NvsZoV8S6u
	8hlAnWdmFIlQClqAc5RX++cBFEIGB+PO/7oQhR/bR8E3oolYKqYE2eDKd7kK0IEj0OomQLL/BY/1B
	RDRijS2PIQR9SB0tG+lB/gtsSPL6rD1bObkb9gNFLCvfGhDfYAIS8o1rynM5d0VqpXWoxXEQL1TMm
	ev957FTgZt9h7Ve0lqLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemCl-0002Ro-Ks; Tue, 10 Dec 2019 20:33:59 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemCd-0002RD-0V
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:33:52 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MTiDV-1iI4HB3JXx-00U2pg; Tue, 10 Dec 2019 21:33:40 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH] coresight: etm4x: fix unused function warning
Date: Tue, 10 Dec 2019 21:33:19 +0100
Message-Id: <20191210203339.2830960-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:PZv6Q0/vdlVSHBHJn7T1gpGLlPiQ8u4vxmASJnEyI/W8tB+C7Ve
 47L8q68zl+iwEznlpWRUChe6lxKnFsHUwqYKFHYEIbeSXPS+U0RIGw0vMzPYEzLaO7TqSw0
 micRDY7OOQhNERdJ52106PBe9uWQunzsjC2rIFxPS12ZjkU/3nYpBC8aWen4FX9z1M4w13Z
 3YVYvWnRVPTW02f6K7rng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5PIKYtZ1FQM=:89IFv7vKvpz0RD/0CpqeCv
 CcwCoqI74Hf/TI75aRAaX6frcGQMdlMQQFv+H1sU3tbdLh52LAaW9L8WVvdSILT5SY667EkZ/
 rs9T7Q4W3kJ52a520xcjkbj5k5q1heM6KFdnk5cdhGywyNK11fDinVVg4UNN/9zeYC3HY+rMP
 JExZUgsk/GPyjEXOdgTD8RvH2vhEdFqrAdLt7IlJsD0YYeX6ErlWIlPuBl58N9vZM3NJezznO
 1GE5RW7AFRScIp9pDOr9n+PMJfvAMZbQMM5O6HdPxem05lmVgLSUUZrOqza0XXkkxQ3hSYCIK
 Bt7vQWLwGd62u/71ZHM2gGcqCn5rkZb16m0jwPnW4VAzteFoZzaopTL447obA2u9JNmmwvslF
 j0TVFDS6ESa6YbaI2uq/+K6KRteoXwOGwYgudAz1diRzJsD2YZX6jS3qIQW6SdWiXd3JaQnDG
 KliVjSAWHp+N+9DhCAJHDExMgq4EuJKoowG6l4nnmIdi6pMZNUL/juWD0ATdyBeYTHdlJa2TV
 JrA9xj/jh67RhmrkQF7qCl3gFVd+d6UoBBsW0YUkQr6hgF2YTpZkCLY/l79PbnLJ3ONScq+Km
 IjtT6V8NbE9zJUM184uQbDybo29+z3uhgzzwvKQB4siR5Za5e47jg9MEt+IXf12FD1LO8xleO
 iWVanHRw/O8zcZflJbjHMSFGMZ3ApihHX8X+D8IHSlTh23XIO+rKrhYRn0W8BXEPQ5hvCo5F9
 +UOnbMA49lZzR9+fNdooTbOM9gC4Rx/fgcmG6nSj/bCpXKWKiypegOyJ4zFV2aaMDWjUgvORM
 4RQcNeyHcNjN2m8FJxOdu2U6DbSado1gqiJsL2w28u1Rf/W+jUtCcfLoKBqnMJml6vpbCr7RM
 1wa7mhMTFhNyS+VcZWAw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_123351_353002_05F4884E 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some of the newly added code in the etm4x driver is inside of an #ifdef,
and some other code is outside of it, leading to a harmless warning when
CONFIG_CPU_PM is disabled:

drivers/hwtracing/coresight/coresight-etm4x.c:68:13: error: 'etm4_os_lock' defined but not used [-Werror=unused-function]
 static void etm4_os_lock(struct etmv4_drvdata *drvdata)
             ^~~~~~~~~~~~

To avoid the warning and simplify the the #ifdef checks, use
IS_ENABLED() instead, so the compiler can drop the unused functions
without complaining.

Fixes: f188b5e76aae ("coresight: etm4x: Save/restore state across CPU low power states")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index dc3f507e7562..a90d757f7043 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1132,7 +1132,6 @@ static void etm4_init_trace_id(struct etmv4_drvdata *drvdata)
 	drvdata->trcid = coresight_get_trace_id(drvdata->cpu);
 }
 
-#ifdef CONFIG_CPU_PM
 static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
 {
 	int i, ret = 0;
@@ -1402,17 +1401,17 @@ static struct notifier_block etm4_cpu_pm_nb = {
 
 static int etm4_cpu_pm_register(void)
 {
-	return cpu_pm_register_notifier(&etm4_cpu_pm_nb);
+	if (IS_ENABLED(CONFIG_CPU_PM))
+		return cpu_pm_register_notifier(&etm4_cpu_pm_nb);
+
+	return 0;
 }
 
 static void etm4_cpu_pm_unregister(void)
 {
-	cpu_pm_unregister_notifier(&etm4_cpu_pm_nb);
+	if (IS_ENABLED(CONFIG_CPU_PM))
+		cpu_pm_unregister_notifier(&etm4_cpu_pm_nb);
 }
-#else
-static int etm4_cpu_pm_register(void) { return 0; }
-static void etm4_cpu_pm_unregister(void) { }
-#endif
 
 static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 {
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
