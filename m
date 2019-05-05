Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A166913D82
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 07:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Td5/haaNbWGGFIdJDMj9VRpEvKaJrs/LTQlrSHCkTU=; b=OVwcXm+nOvt7/I
	h7xEns20IgCU/1FcOWOVYc6ZcJx8a056cBnIyzjAbpe9jH4rcRFVUUKMrzoCZDoVRV4HYMHwlGXmE
	Kpgeb2xexE8prSInwazw8eMx3olhfY1OMWuj1mc5hrDIanQ6YgeSOOoMdDqYTKK+l8mxOpeJxlMx8
	08DIk9vkRnNLO7bopTNk9hUtHIVLe9RnstmOjATNnPXXcxEE7lBWJrvpy0S6YL2V9PvdAB7fkyb1n
	+cv000i14tkkF1X+hiiqC7dktnXzknsTwn5G75VQCPeRB5vroZ0magbj3xwzy9oirNlt7cTeGXTqu
	XXzU0u/NcsLbyab6rfTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN9I9-0008MM-QI; Sun, 05 May 2019 05:02:26 +0000
Received: from mail-eopbgr130070.outbound.protection.outlook.com
 ([40.107.13.70] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN9Hx-0008Lg-7E
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 05:02:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mL8c1wp2SdDJZThoH10q4Y4BLAXZi6NDdzG59TV9bD4=;
 b=hkizsgTe/Ss1uh6h/b2eZ3jrpgv/XJxSIYtU8inyngu2aoBzhBHB57kwMP4fMtH6umfNfvI9P+cKWqoa3E38R0SpyEuWNLu9PfSPfeNSl+sbNU0pNbmQlk5mMKdY0kpOWlVO+yb9xl89phb9zUASomygbxue1YpVTH9Ux2WO5c0=
Received: from VI1PR04MB5135.eurprd04.prod.outlook.com (20.177.50.160) by
 VI1PR04MB3086.eurprd04.prod.outlook.com (10.170.228.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Sun, 5 May 2019 05:02:05 +0000
Received: from VI1PR04MB5135.eurprd04.prod.outlook.com
 ([fe80::a986:98cc:25cc:ace0]) by VI1PR04MB5135.eurprd04.prod.outlook.com
 ([fe80::a986:98cc:25cc:ace0%6]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 05:02:05 +0000
From: Po Liu <po.liu@nxp.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v1] timer:clock:ptp: add support the dynamic posix clock alarm
 set for ptp
Thread-Topic: [PATCH v1] timer:clock:ptp: add support the dynamic posix clock
 alarm set for ptp
Thread-Index: AQHVAv+uAw38mip9iECrS0NFEcaAmQ==
Date: Sun, 5 May 2019 05:02:05 +0000
Message-ID: <1557032106-28041-1-git-send-email-Po.Liu@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 1.8.3.1
x-clientproxiedby: HK2PR02CA0203.apcprd02.prod.outlook.com
 (2603:1096:201:20::15) To VI1PR04MB5135.eurprd04.prod.outlook.com
 (2603:10a6:803:5a::32)
authentication-results: spf=none (sender IP is ) smtp.mailfrom=po.liu@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 607b9a46-1526-4465-f003-08d6d116d10b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3086; 
x-ms-traffictypediagnostic: VI1PR04MB3086:
x-microsoft-antispam-prvs: <VI1PR04MB3086AFDF98784DD04AF5361A92370@VI1PR04MB3086.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(39860400002)(136003)(376002)(346002)(199004)(189003)(476003)(4720700003)(68736007)(6486002)(14454004)(53936002)(2616005)(66066001)(4326008)(6506007)(386003)(7736002)(6436002)(486006)(73956011)(66946007)(3846002)(99286004)(186003)(6116002)(26005)(66556008)(66476007)(66446008)(64756008)(6512007)(8936002)(81166006)(86362001)(81156014)(2501003)(102836004)(8676002)(2201001)(316002)(71200400001)(71190400001)(36756003)(25786009)(2906002)(5660300002)(54906003)(50226002)(14444005)(256004)(52116002)(110136005)(305945005)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3086;
 H:VI1PR04MB5135.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zKYOu3T2gBIwgO4bwj7gXHbRSoDhYCEc6EOsuataDVy/yw4a0up0K5auLxXIk+BZi7fKx+yf0enOqmmexGpZ1WCFZUPEAV0dHbRWy2u3lkApgb8eLDYDAs6Qaow+e3EbXEjiAtxYRm5W6ptRc2QtzBmokb55f9o9lFbF4rZDyQGOMJ9eJGW/lvCCOtzsadlqukjjzfloSvsbgOXpEcv2RjQcLB1oqGV2qfVGP+cD60KBPIeLwz0MxiHLPhD9YYrc3I1iy7tRtP19HZeW+nSiSlfhO2KnaZV2X6M5z17qVSxohFLPwYJoZ5u/oeD7mU3IkrjYp3TVGvP0sz4dB0SM0q1nn3H3IT4E5gGgwatR31uretluTF2BrXF1I+c5BypS1xe+8d8YSY1jA1WdRYbOqREF7Lb5qYD/ozXuEe780f0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 607b9a46-1526-4465-f003-08d6d116d10b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 05:02:05.1383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_220213_604337_4A9A3E1A 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Roy Zang <roy.zang@nxp.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, Po Liu <po.liu@nxp.com>,
 Leo Li <leoyang.li@nxp.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "deepa.kernel@gmail.com" <deepa.kernel@gmail.com>,
 "Y.b. Lu" <yangbo.lu@nxp.com>, "davem@davemloft.net" <davem@davemloft.net>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current kernel code do not support the dynamic posix clock alarm set.
This code would support it by the posix timer structure.

319  const struct k_clock clock_posix_dynamic = {

320         .clock_getres   = pc_clock_getres,
321         .clock_set      = pc_clock_settime,
322         .clock_get      = pc_clock_gettime,
323         .clock_adj      = pc_clock_adjtime,
324 +       .timer_create   = pc_timer_create,
325 +       .timer_del      = pc_timer_delete,
326 +       .timer_set      = pc_timer_set,
327 +       .timer_arm      = pc_timer_arm,
}

This won't change the user space system call code. Normally the user
space set alarm by timer_create() and timer_settime(). Reference code
are tools/testing/selftests/ptp/testptp.c.

Some case requiring providing the alarm set for user space by ptp clock.

Signed-off-by: Po Liu <Po.Liu@nxp.com>
---
 drivers/net/ethernet/freescale/enetc/enetc_ptp.c |  1 +
 drivers/ptp/ptp_clock.c                          | 39 ++++++++++++++-
 drivers/ptp/ptp_qoriq.c                          | 44 +++++++++++++++++
 include/linux/fsl/ptp_qoriq.h                    |  3 ++
 include/linux/posix-clock.h                      |  3 +-
 include/linux/ptp_clock_kernel.h                 |  5 +-
 kernel/time/posix-clock.c                        | 60 ++++++++++++++++++++++++
 7 files changed, 152 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/freescale/enetc/enetc_ptp.c b/drivers/net/ethernet/freescale/enetc/enetc_ptp.c
index 8c1497e..35e2f2a 100644
--- a/drivers/net/ethernet/freescale/enetc/enetc_ptp.c
+++ b/drivers/net/ethernet/freescale/enetc/enetc_ptp.c
@@ -21,6 +21,7 @@
 	.gettime64	= ptp_qoriq_gettime,
 	.settime64	= ptp_qoriq_settime,
 	.enable		= ptp_qoriq_enable,
+	.alarm		= ptp_qoriq_alarm,
 };
 
 static int enetc_ptp_probe(struct pci_dev *pdev,
diff --git a/drivers/ptp/ptp_clock.c b/drivers/ptp/ptp_clock.c
index 79bd102..72d06a8 100644
--- a/drivers/ptp/ptp_clock.c
+++ b/drivers/ptp/ptp_clock.c
@@ -23,7 +23,9 @@
 #include <linux/init.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/sched/task.h>
 #include <linux/posix-clock.h>
+#include <linux/posix-timers.h>
 #include <linux/pps_kernel.h>
 #include <linux/slab.h>
 #include <linux/syscalls.h>
@@ -166,12 +168,31 @@ static int ptp_clock_adjtime(struct posix_clock *pc, struct __kernel_timex *tx)
 	return err;
 }
 
+static int ptp_clock_alarm(struct posix_clock *pc, ktime_t expires,
+			   bool absolute, struct k_itimer *timr)
+{
+	struct ptp_clock *ptp = container_of(pc, struct ptp_clock, clock);
+	struct ptp_clock_info *ops;
+
+	ops = ptp->info;
+	if (!ops)
+		return -EINVAL;
+
+	if (!ops->alarm)
+		return -EINVAL;
+
+	ops->alarm(ops, expires, absolute, timr);
+
+	return 0;
+}
+
 static struct posix_clock_operations ptp_clock_ops = {
 	.owner		= THIS_MODULE,
 	.clock_adjtime	= ptp_clock_adjtime,
 	.clock_gettime	= ptp_clock_gettime,
 	.clock_getres	= ptp_clock_getres,
 	.clock_settime	= ptp_clock_settime,
+	.clock_alarm	= ptp_clock_alarm,
 	.ioctl		= ptp_ioctl,
 	.open		= ptp_open,
 	.poll		= ptp_poll,
@@ -324,6 +345,20 @@ int ptp_clock_unregister(struct ptp_clock *ptp)
 }
 EXPORT_SYMBOL(ptp_clock_unregister);
 
+int alarm_timer_event(struct k_itimer *timr, int si_private)
+{
+	int ret = -1;
+
+	timr->sigq->info.si_sys_private = si_private;
+
+	rcu_read_lock();
+	ret = send_sigqueue(timr->sigq, timr->it_pid, PIDTYPE_PID);
+	rcu_read_unlock();
+
+	/* If we failed to send the signal the timer stops. */
+	return ret > 0;
+}
+
 void ptp_clock_event(struct ptp_clock *ptp, struct ptp_clock_event *event)
 {
 	struct pps_event_time evt;
@@ -331,8 +366,10 @@ void ptp_clock_event(struct ptp_clock *ptp, struct ptp_clock_event *event)
 	switch (event->type) {
 
 	case PTP_CLOCK_ALARM:
+		if (!event->timr)
+			break;
+		alarm_timer_event(event->timr, 0);
 		break;
-
 	case PTP_CLOCK_EXTTS:
 		enqueue_external_timestamp(&ptp->tsevq, event);
 		wake_up_interruptible(&ptp->tsev_wq);
diff --git a/drivers/ptp/ptp_qoriq.c b/drivers/ptp/ptp_qoriq.c
index 5377536..ce14d44 100644
--- a/drivers/ptp/ptp_qoriq.c
+++ b/drivers/ptp/ptp_qoriq.c
@@ -163,10 +163,15 @@ irqreturn_t ptp_qoriq_isr(int irq, void *priv)
 
 	if (irqs & ALM2) {
 		ack |= ALM2;
+		if (!ptp_qoriq->timr) {
+			ptp_qoriq->alarm_value = 0;
+			ptp_qoriq->alarm_interval = 0;
+		}
 		if (ptp_qoriq->alarm_value) {
 			event.type = PTP_CLOCK_ALARM;
 			event.index = 0;
 			event.timestamp = ptp_qoriq->alarm_value;
+			event.timr = ptp_qoriq->timr;
 			ptp_clock_event(ptp_qoriq->clock, &event);
 		}
 		if (ptp_qoriq->alarm_interval) {
@@ -341,6 +346,44 @@ int ptp_qoriq_enable(struct ptp_clock_info *ptp,
 }
 EXPORT_SYMBOL_GPL(ptp_qoriq_enable);
 
+int ptp_qoriq_alarm(struct ptp_clock_info *ptp, ktime_t expires,
+		    bool absolute, struct k_itimer *timr)
+{
+	u64 ns, now;
+	u32 lo, hi, mask;
+
+	struct ptp_qoriq *ptp_qoriq = container_of(ptp, struct ptp_qoriq, caps);
+	struct ptp_qoriq_registers *regs = &ptp_qoriq->regs;
+
+	if (!timr)
+		return -EINVAL;
+
+	now = tmr_cnt_read(ptp_qoriq);
+	if (!absolute)
+		ns = now + ktime_to_ns(expires);
+	else if (ktime_to_ns(expires) < now)
+		ns = now;
+	else
+		ns = ktime_to_ns(expires);
+
+	hi = ns >> 32;
+	lo = ns & 0xffffffff;
+	ptp_qoriq->write(&regs->alarm_regs->tmr_alarm2_l, lo);
+	ptp_qoriq->write(&regs->alarm_regs->tmr_alarm2_h, hi);
+
+	spin_lock(&ptp_qoriq->lock);
+	mask = ptp_qoriq->read(&regs->ctrl_regs->tmr_temask);
+	mask |= ALM2EN;
+	ptp_qoriq->write(&regs->ctrl_regs->tmr_temask, mask);
+	spin_unlock(&ptp_qoriq->lock);
+
+	ptp_qoriq->alarm_value = ns;
+	ptp_qoriq->alarm_interval = ktime_to_ns(timr->it_interval);
+
+	ptp_qoriq->timr = timr;
+	return 0;
+}
+
 static const struct ptp_clock_info ptp_qoriq_caps = {
 	.owner		= THIS_MODULE,
 	.name		= "qoriq ptp clock",
@@ -355,6 +398,7 @@ int ptp_qoriq_enable(struct ptp_clock_info *ptp,
 	.gettime64	= ptp_qoriq_gettime,
 	.settime64	= ptp_qoriq_settime,
 	.enable		= ptp_qoriq_enable,
+	.alarm		= ptp_qoriq_alarm,
 };
 
 /**
diff --git a/include/linux/fsl/ptp_qoriq.h b/include/linux/fsl/ptp_qoriq.h
index 992bf9f..2928df4 100644
--- a/include/linux/fsl/ptp_qoriq.h
+++ b/include/linux/fsl/ptp_qoriq.h
@@ -143,6 +143,7 @@ struct ptp_qoriq {
 	spinlock_t lock; /* protects regs */
 	struct ptp_clock *clock;
 	struct ptp_clock_info caps;
+	struct k_itimer *timr;
 	struct resource *rsrc;
 	struct dentry *debugfs_root;
 	struct device *dev;
@@ -190,6 +191,8 @@ int ptp_qoriq_init(struct ptp_qoriq *ptp_qoriq, void __iomem *base,
 int ptp_qoriq_gettime(struct ptp_clock_info *ptp, struct timespec64 *ts);
 int ptp_qoriq_settime(struct ptp_clock_info *ptp,
 		      const struct timespec64 *ts);
+int ptp_qoriq_alarm(struct ptp_clock_info *ptp, ktime_t expires,
+		    bool absolute, struct k_itimer *timr);
 int ptp_qoriq_enable(struct ptp_clock_info *ptp,
 		     struct ptp_clock_request *rq, int on);
 #ifdef CONFIG_DEBUG_FS
diff --git a/include/linux/posix-clock.h b/include/linux/posix-clock.h
index 18674d7..80cc214 100644
--- a/include/linux/posix-clock.h
+++ b/include/linux/posix-clock.h
@@ -59,7 +59,8 @@ struct posix_clock_operations {
 
 	int  (*clock_settime)(struct posix_clock *pc,
 			      const struct timespec64 *ts);
-
+	int  (*clock_alarm)(struct posix_clock *pc, ktime_t expires,
+			    bool absolute, struct k_itimer *timr);
 	/*
 	 * Optional character device methods:
 	 */
diff --git a/include/linux/ptp_clock_kernel.h b/include/linux/ptp_clock_kernel.h
index 7121bbe..b51f64b 100644
--- a/include/linux/ptp_clock_kernel.h
+++ b/include/linux/ptp_clock_kernel.h
@@ -24,7 +24,7 @@
 #include <linux/device.h>
 #include <linux/pps_kernel.h>
 #include <linux/ptp_clock.h>
-
+#include <linux/posix-timers.h>
 
 struct ptp_clock_request {
 	enum {
@@ -148,6 +148,8 @@ struct ptp_clock_info {
 	int (*getcrosststamp)(struct ptp_clock_info *ptp,
 			      struct system_device_crosststamp *cts);
 	int (*settime64)(struct ptp_clock_info *p, const struct timespec64 *ts);
+	int (*alarm)(struct ptp_clock_info *p, ktime_t expires,
+		     bool absolute, struct k_itimer *timr);
 	int (*enable)(struct ptp_clock_info *ptp,
 		      struct ptp_clock_request *request, int on);
 	int (*verify)(struct ptp_clock_info *ptp, unsigned int pin,
@@ -180,6 +182,7 @@ struct ptp_clock_event {
 		u64 timestamp;
 		struct pps_event_time pps_times;
 	};
+	struct k_itimer *timr;
 };
 
 #if IS_REACHABLE(CONFIG_PTP_1588_CLOCK)
diff --git a/kernel/time/posix-clock.c b/kernel/time/posix-clock.c
index ec960bb..ac25d17 100644
--- a/kernel/time/posix-clock.c
+++ b/kernel/time/posix-clock.c
@@ -8,6 +8,7 @@
 #include <linux/export.h>
 #include <linux/file.h>
 #include <linux/posix-clock.h>
+#include <linux/posix-timers.h>
 #include <linux/slab.h>
 #include <linux/syscalls.h>
 #include <linux/uaccess.h>
@@ -314,9 +315,68 @@ static int pc_clock_settime(clockid_t id, const struct timespec64 *ts)
 	return err;
 }
 
+static void pc_timer_arm(struct k_itimer *timr, ktime_t expires,
+			 bool absolute, bool sigev_none)
+{
+	struct posix_clock_desc cd;
+	int err;
+
+	err = get_clock_desc(timr->it_clock, &cd);
+	if (err)
+		return;
+
+	cd.clk->ops.clock_alarm(cd.clk, expires, absolute, timr);
+}
+
+static int pc_timer_set(struct k_itimer *timr, int flags,
+			struct itimerspec64 *new_setting,
+			struct itimerspec64 *old_setting)
+{
+	const struct k_clock *kc = timr->kclock;
+	bool sigev_none;
+	ktime_t expires;
+
+	if (old_setting)
+		pr_err("old_setting not support!\n");
+
+	/* Prevent rearming by clearing the interval */
+	timr->it_interval = 0;
+
+	timr->it_active = 0;
+	timr->it_requeue_pending = (timr->it_requeue_pending + 2) &
+		~REQUEUE_PENDING;
+	timr->it_overrun_last = 0;
+
+	/* Switch off the timer when it_value is zero */
+	if (!new_setting->it_value.tv_sec && !new_setting->it_value.tv_nsec)
+		return 0;
+
+	timr->it_interval = timespec64_to_ktime(new_setting->it_interval);
+	expires = timespec64_to_ktime(new_setting->it_value);
+	sigev_none = timr->it_sigev_notify == SIGEV_NONE;
+
+	kc->timer_arm(timr, expires, flags & TIMER_ABSTIME, sigev_none);
+	timr->it_active = !sigev_none;
+	return 0;
+}
+
+static int pc_timer_create(struct k_itimer *new_timer)
+{
+	return 0;
+}
+
+static int pc_timer_delete(struct k_itimer *new_timer)
+{
+	return 0;
+}
+
 const struct k_clock clock_posix_dynamic = {
 	.clock_getres	= pc_clock_getres,
 	.clock_set	= pc_clock_settime,
 	.clock_get	= pc_clock_gettime,
 	.clock_adj	= pc_clock_adjtime,
+	.timer_create	= pc_timer_create,
+	.timer_del	= pc_timer_delete,
+	.timer_set	= pc_timer_set,
+	.timer_arm	= pc_timer_arm,
 };
-- 
1.8.3.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
