Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409644D94C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 20:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6j98uOamcpZ3cCrWMD5iBvV0n7RaQkiQd6Fg+SNQjPk=; b=c7Ytfk418mn8lY
	nao8xSashvufZ6ioPwtGlOC4m68ugWBhVc0UyG+mvahx5dTyUC/yp/gBjI5IZEnLnj/JtkzZwe9Th
	usvNS9etHcj6/iD8KoswKK+O21mEirHEERNIoIKgGmUX7xSO5KD1gcnlHpAPAgiCGmV7KzHNkPJQK
	ODvbYTaqLeCmMveFylaaEF5bRuE3xqnePrAXr/XiLZuYOmBAkBQw8oAotI4WoC3S6fSv1FLxav7gf
	KTugwyB351bGrs0rIF2A1JQPKHRbKgjPfpaMVYJWwbqNZveXxC381TonndTJ404ui/BLMlDxsh+Yk
	ki2eo091ZlK6AgMExU+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1rw-0007UM-6S; Thu, 20 Jun 2019 18:33:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1rN-0007Bn-Gy
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 18:32:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 581336115B; Thu, 20 Jun 2019 18:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561055552;
 bh=nNFaKlesrcQPjLvKVg+8OZfxjFS3WjlQjPLTlWJcIzI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G/om3z0q0f8XljaE59DwHsRfdyiHLxsOAcf6iUrv1qnyTZeOsEiyUeAwY5FL4KVUz
 aXJHp9LoZ7lowj8Zbc/IajfLUZs8y7Iebjl3fLHwPQDa1pqrb4tBDJfhBAQdDqMiKA
 Y4Psk7XdS+m6BsiQNdKa2aNFuQBfa/L0d+4t/cwA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7F1216090F;
 Thu, 20 Jun 2019 18:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561055538;
 bh=nNFaKlesrcQPjLvKVg+8OZfxjFS3WjlQjPLTlWJcIzI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bNgid0dFyvbzzgJhV0wavktTRxxIC71szOjTKcejzQq7L/jgp+/VSgpMebQuNi4lC
 BmxBRW4V3a3c4LHGRYlCHFsIeF/pdiomhlFxdNVKAe56yjYCLBdPQlgmuDEnqK4VeW
 M5Me0a5DD4tHKbeiF5KZ3deov3zECjdUzjkWlizI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7F1216090F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andy Gross <andy.gross@linaro.org>, David Brown <david.brown@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCHv2 2/2] coresight: Abort probe if cpus are not available
Date: Fri, 21 Jun 2019 00:01:52 +0530
Message-Id: <65050e4cb2b0433f3cb9b1ca0bf6ec49d0751086.1561054498.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1561054498.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1561054498.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_113233_635746_609216CF 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently coresight etm and cpu-debug will go ahead with
the probe even when corresponding cpus are not available
and error out later in the probe path. In such cases, it
is better to abort the probe earlier.

Without this, setting *nosmp* will throw below errors:

 [    5.910622] coresight-cpu-debug 850000.debug: Coresight debug-CPU0 initialized
 [    5.914266] coresight-cpu-debug 852000.debug: CPU1 debug arch init failed
 [    5.921474] coresight-cpu-debug 854000.debug: CPU2 debug arch init failed
 [    5.928328] coresight-cpu-debug 856000.debug: CPU3 debug arch init failed
 [    5.935330] coresight etm0: CPU0: ETM v4.0 initialized
 [    5.941875] coresight-etm4x 85d000.etm: ETM arch init failed
 [    5.946794] coresight-etm4x: probe of 85d000.etm failed with error -22
 [    5.952707] coresight-etm4x 85e000.etm: ETM arch init failed
 [    5.958945] coresight-etm4x: probe of 85e000.etm failed with error -22
 [    5.964853] coresight-etm4x 85f000.etm: ETM arch init failed
 [    5.971096] coresight-etm4x: probe of 85f000.etm failed with error -22

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 drivers/hwtracing/coresight/coresight-platform.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 8b03fa573684..3f4559596c6b 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -168,6 +168,9 @@ static int of_coresight_get_cpu(struct device *dev)
 	cpu = of_cpu_node_to_id(dn);
 	of_node_put(dn);
 
+	if (num_online_cpus() <= cpu)
+		return -ENODEV;
+
 	return cpu;
 }
 
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
