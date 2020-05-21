Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F369A1DC36C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 02:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/SVcBi6dI27I3Ke0+3nhWWOFZkSr40BXeqoCQw15zc=; b=Y2d+FwvzH/f5QM
	Ad0WDbDmMHBwMBOBavFpw2HlZ1NBUrg1veD857zBwTsAdjtZS335pk6ibKxWRUJlVzdEvT72xmHxo
	iNBO5ahEhaUHjJxYY6WTZJj6ydGaRuaQaRKneJ8M3NTJt/+IOlBPMIjAG6oB5OSycBK3OqsuFlqI4
	+VFcIcYCdtcezxi6joNDhzeEkw4V0/UvfjCFdUFMpI6iA/m9GHqLpGxOrfARHjLb1Bx64nCYT8sx/
	pzDHdLqKD7SUye3qhtVyr4e9KTC1FJavok0FdBYimZy6cYh2T7SmFXh90EoS3OEW+ZA2VX3XSec3K
	uw8iFOgIRzghuB2at/EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbYo1-00086K-Ka; Thu, 21 May 2020 00:11:25 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbYmx-0007NW-9q
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 00:10:22 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04L0AGhP039962;
 Wed, 20 May 2020 19:10:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590019816;
 bh=fyj/A44wMsZ1NeWYNrpqdgs9QWSsqWp9lY0ct4O7634=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=qrtnEqSfflYjpW2c8oN2FLWREcAGnEN++eZZnv6g9r4tKfyf0b+v1oB68RcK4bpaO
 suMGanqz+WY5asH/4KFtxUbHISWSuNInUFmXEui0X6nM9UGJ2vxWKw0SvxcAWUQwJe
 AwdxzxOF0AtpbHJTnPngx0luk0RuK5xh3UHDuSzE=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04L0AGhl034567
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 19:10:16 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 19:10:16 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 19:10:16 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04L0AGQK003730;
 Wed, 20 May 2020 19:10:16 -0500
Received: from localhost ([10.250.48.148])
 by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 04L0AGc6084900;
 Wed, 20 May 2020 19:10:16 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v2 4/4] remoteproc/k3-dsp: Add support for L2RAM loading on
 C66x DSPs
Date: Wed, 20 May 2020 19:10:06 -0500
Message-ID: <20200521001006.2725-5-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200521001006.2725-1-s-anna@ti.com>
References: <20200521001006.2725-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_171019_435431_40013222 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The resets for the DSP processors on K3 SoCs are managed through the
Power and Sleep Controller (PSC) module. Each DSP typically has two
resets - a global module reset for powering on the device, and a local
reset that affects only the CPU while allowing access to the other
sub-modules within the DSP processor sub-systems.

The C66x DSPs have two levels of internal RAMs that can be used to
boot from, and the firmware loading into these RAMs require the
local reset to be asserted with the device powered on/enabled using
the module reset. Enhance the K3 DSP remoteproc driver to add support
for loading into the internal RAMs. The local reset is deasserted on
SoC power-on-reset, so logic has to be added in probe in remoteproc
mode to balance the remoteproc state-machine.

Note that the local resets are a no-op on C71x cores, and the hardware
does not supporting loading into its internal RAMs.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v2:
 - Dropped the local-reset no-op checks from k3_dsp_rproc_prepare/unprepare()
   callbacks. The logic will be adjusted back in the C71 patch series.
 - The C71 local reset references are also removed from the comments for the
   k3_dsp_rproc_prepare() function.
v1: https://patchwork.kernel.org/patch/11458579/

 drivers/remoteproc/ti_k3_dsp_remoteproc.c | 72 +++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/drivers/remoteproc/ti_k3_dsp_remoteproc.c b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
index e4036f5992fe..610fbbf85ee6 100644
--- a/drivers/remoteproc/ti_k3_dsp_remoteproc.c
+++ b/drivers/remoteproc/ti_k3_dsp_remoteproc.c
@@ -174,6 +174,9 @@ static int k3_dsp_rproc_reset(struct k3_dsp_rproc *kproc)
 		return ret;
 	}
 
+	if (kproc->data->uses_lreset)
+		return ret;
+
 	ret = kproc->ti_sci->ops.dev_ops.put_device(kproc->ti_sci,
 						    kproc->ti_sci_id);
 	if (ret) {
@@ -191,6 +194,9 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
 	struct device *dev = kproc->dev;
 	int ret;
 
+	if (kproc->data->uses_lreset)
+		goto lreset;
+
 	ret = kproc->ti_sci->ops.dev_ops.get_device(kproc->ti_sci,
 						    kproc->ti_sci_id);
 	if (ret) {
@@ -198,6 +204,7 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
 		return ret;
 	}
 
+lreset:
 	ret = reset_control_deassert(kproc->reset);
 	if (ret) {
 		dev_err(dev, "local-reset deassert failed, ret = %d\n", ret);
@@ -209,6 +216,53 @@ static int k3_dsp_rproc_release(struct k3_dsp_rproc *kproc)
 	return ret;
 }
 
+/*
+ * The C66x DSP cores have a local reset that affects only the CPU, and a
+ * generic module reset that powers on the device and allows the DSP internal
+ * memories to be accessed while the local reset is asserted. This function is
+ * used to release the global reset on C66x DSPs to allow loading into the DSP
+ * internal RAMs. The .prepare() ops is invoked by remoteproc core before any
+ * firmware loading, and is followed by the .start() ops after loading to
+ * actually let the C66x DSP cores run.
+ */
+static int k3_dsp_rproc_prepare(struct rproc *rproc)
+{
+	struct k3_dsp_rproc *kproc = rproc->priv;
+	struct device *dev = kproc->dev;
+	int ret;
+
+	ret = kproc->ti_sci->ops.dev_ops.get_device(kproc->ti_sci,
+						    kproc->ti_sci_id);
+	if (ret)
+		dev_err(dev, "module-reset deassert failed, cannot enable internal RAM loading, ret = %d\n",
+			ret);
+
+	return ret;
+}
+
+/*
+ * This function implements the .unprepare() ops and performs the complimentary
+ * operations to that of the .prepare() ops. The function is used to assert the
+ * global reset on applicable C66x cores. This completes the second portion of
+ * powering down the C66x DSP cores. The cores themselves are only halted in the
+ * .stop() callback through the local reset, and the .unprepare() ops is invoked
+ * by the remoteproc core after the remoteproc is stopped to balance the global
+ * reset.
+ */
+static int k3_dsp_rproc_unprepare(struct rproc *rproc)
+{
+	struct k3_dsp_rproc *kproc = rproc->priv;
+	struct device *dev = kproc->dev;
+	int ret;
+
+	ret = kproc->ti_sci->ops.dev_ops.put_device(kproc->ti_sci,
+						    kproc->ti_sci_id);
+	if (ret)
+		dev_err(dev, "module-reset assert failed, ret = %d\n", ret);
+
+	return ret;
+}
+
 /*
  * Power up the DSP remote processor.
  *
@@ -352,6 +406,8 @@ static void *k3_dsp_rproc_da_to_va(struct rproc *rproc, u64 da, size_t len)
 }
 
 static const struct rproc_ops k3_dsp_rproc_ops = {
+	.prepare	= k3_dsp_rproc_prepare,
+	.unprepare	= k3_dsp_rproc_unprepare,
 	.start		= k3_dsp_rproc_start,
 	.stop		= k3_dsp_rproc_stop,
 	.kick		= k3_dsp_rproc_kick,
@@ -614,6 +670,22 @@ static int k3_dsp_rproc_probe(struct platform_device *pdev)
 		goto release_tsp;
 	}
 
+	/*
+	 * ensure the DSP local reset is asserted to ensure the DSP doesn't
+	 * execute bogus code in .prepare() when the module reset is released.
+	 */
+	if (data->uses_lreset) {
+		ret = reset_control_status(kproc->reset);
+		if (ret < 0) {
+			dev_err(dev, "failed to get reset status, status = %d\n",
+				ret);
+			goto release_mem;
+		} else if (ret == 0) {
+			dev_warn(dev, "local reset is deasserted for device\n");
+			k3_dsp_rproc_reset(kproc);
+		}
+	}
+
 	ret = rproc_add(rproc);
 	if (ret) {
 		dev_err(dev, "failed to add register device with remoteproc core, status = %d\n",
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
