Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2701FD34A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 19:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=dyxEBQPsG1SjlHmYh/8SDuLcb+aJN6MfR439dNEX+0M=; b=X8M1G50ijDcyQl
	SCQ4Usu856k1FJX1hy1spPVXDWXv14Gk7d6R5YRjJANytGGdUI+Oxt/0/Ch5iAz1IJtH4qeUaCORo
	WjTiRpxlIXeaXSMno6um+b8VrSh6IZfw495+VvJdmLn4WPDQ9ZvGmko1sG8JSoi/F1XQeQ7nN6lZA
	bOYm3ld23CGbiqDnsS11cpqLxlm2lLnCmOAgVCxttyBvIiPbqH4OI5wsNTS5vXKR1PIZxRVUAuL2a
	rAuxHb2qN9IGJkZzOQfCZ+1U7++bSyKAyE59h+U3aynAK4rJPPw69yefkXhc2NCgZdMfZcVPC8s9q
	M4tycy45Tcu+jtLZmaUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbhb-0001WM-MJ; Wed, 17 Jun 2020 17:18:19 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbhS-0001Vi-TQ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 17:18:12 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05HHHmcZ103922;
 Wed, 17 Jun 2020 17:17:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2020-01-29; bh=9VQqTPZpR0kzjjfzvsdc4Cd29YvF0dcmDmbQ6puPfZE=;
 b=WkhgoKnEal4c9PClFZzLziJhMWKcbyIeQUkNxg7Qso6eH8O9emFNz5Yxyn80BZRLSz6q
 +YgycPyZ+vfek55tD//ARjQCfv9w2jKX0ln7oZX06tsBb7B1pfRCTtLxs4Ova+2nhHxd
 ukCTajQ4fUmm4HjcdFXx0OK1NUiK8w7UBM97bjqI8coEjQM+bMlEBIaJge8yY5pLDNwB
 gpBp8atNBQgx818Es5Bagq/yfskFLGaS/F9sHbA+G3aSiCbG7a+XkfOKaOUKBO9Mx1PO
 1cNgg2RPzBTk2TXBhe7JW4fAiqXYeptpaqcVA5skwU61al7p/63LNcan8tHYeuDtnGyy XQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 31q65yvmda-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jun 2020 17:17:59 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05HHDADm140357;
 Wed, 17 Jun 2020 17:15:58 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 31q66netxq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jun 2020 17:15:58 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05HHFuNR021623;
 Wed, 17 Jun 2020 17:15:57 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 17 Jun 2020 10:15:56 -0700
Date: Wed, 17 Jun 2020 20:15:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Mike Leach <mike.leach@linaro.org>
Subject: [PATCH v2] coresight: cti: Fix error handling in probe
Message-ID: <20200617171549.GA9686@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ9a7Vjn-1gvOY0h5eiffXgqiNu4rz=Z18hgV33WExGnLEV-nA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9655
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 phishscore=0
 mlxscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006170136
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9655
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 clxscore=1015 mlxlogscore=999 suspectscore=0 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_101811_037980_39740B16 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There were a couple problems with error handling in the probe function:
1)  If the "drvdata" allocation failed then it lead to a NULL
    dereference.
2)  On several error paths we decremented "nr_cti_cpu" before it was
    incremented which lead to a reference counting bug.

There were also some parts of the error handling which were not bugs but
were messy.  The error handling was confusing to read.  It printed some
unnecessary error messages.

The simplest way to fix these problems was to create a cti_pm_setup()
function that did all the power management setup in one go.  That way
when we call cti_pm_release() we don't have to deal with the
complications of a partially configured power management config.

I reversed the "if (drvdata->ctidev.cpu >= 0)" condition in cti_pm_release()
so that it mirros the new cti_pm_setup() function.

Fixes: 6a0953ce7de9 ("coresight: cti: Add CPU idle pm notifer to CTI devices")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
v2: I accidentally introduced a bug in cti_pm_release() in v1.

 drivers/hwtracing/coresight/coresight-cti.c | 96 ++++++++++++---------
 1 file changed, 54 insertions(+), 42 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
index 40387d58c8e7..d2da5bf9f552 100644
--- a/drivers/hwtracing/coresight/coresight-cti.c
+++ b/drivers/hwtracing/coresight/coresight-cti.c
@@ -747,17 +747,50 @@ static int cti_dying_cpu(unsigned int cpu)
 	return 0;
 }
 
+static int cti_pm_setup(struct cti_drvdata *drvdata)
+{
+	int ret;
+
+	if (drvdata->ctidev.cpu == -1)
+		return 0;
+
+	if (nr_cti_cpu)
+		goto done;
+
+	cpus_read_lock();
+	ret = cpuhp_setup_state_nocalls_cpuslocked(
+			CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
+			"arm/coresight_cti:starting",
+			cti_starting_cpu, cti_dying_cpu);
+	if (ret) {
+		cpus_read_unlock();
+		return ret;
+	}
+
+	ret = cpu_pm_register_notifier(&cti_cpu_pm_nb);
+	cpus_read_unlock();
+	if (ret) {
+		cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
+		return ret;
+	}
+
+done:
+	nr_cti_cpu++;
+	cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
+
+	return 0;
+}
+
 /* release PM registrations */
 static void cti_pm_release(struct cti_drvdata *drvdata)
 {
-	if (drvdata->ctidev.cpu >= 0) {
-		if (--nr_cti_cpu == 0) {
-			cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
+	if (drvdata->ctidev.cpu == -1)
+		return;
 
-			cpuhp_remove_state_nocalls(
-				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
-		}
-		cti_cpu_drvdata[drvdata->ctidev.cpu] = NULL;
+	cti_cpu_drvdata[drvdata->ctidev.cpu] = NULL;
+	if (--nr_cti_cpu == 0) {
+		cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
+		cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
 	}
 }
 
@@ -823,19 +856,14 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 
 	/* driver data*/
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
-	if (!drvdata) {
-		ret = -ENOMEM;
-		dev_info(dev, "%s, mem err\n", __func__);
-		goto err_out;
-	}
+	if (!drvdata)
+		return -ENOMEM;
 
 	/* Validity for the resource is already checked by the AMBA core */
 	base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(base)) {
-		ret = PTR_ERR(base);
-		dev_err(dev, "%s, remap err\n", __func__);
-		goto err_out;
-	}
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
 	drvdata->base = base;
 
 	dev_set_drvdata(dev, drvdata);
@@ -854,8 +882,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 	pdata = coresight_cti_get_platform_data(dev);
 	if (IS_ERR(pdata)) {
 		dev_err(dev, "coresight_cti_get_platform_data err\n");
-		ret =  PTR_ERR(pdata);
-		goto err_out;
+		return  PTR_ERR(pdata);
 	}
 
 	/* default to powered - could change on PM notifications */
@@ -867,35 +894,20 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 					       drvdata->ctidev.cpu);
 	else
 		cti_desc.name = coresight_alloc_device_name(&cti_sys_devs, dev);
-	if (!cti_desc.name) {
-		ret = -ENOMEM;
-		goto err_out;
-	}
+	if (!cti_desc.name)
+		return -ENOMEM;
 
 	/* setup CPU power management handling for CPU bound CTI devices. */
-	if (drvdata->ctidev.cpu >= 0) {
-		cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
-		if (!nr_cti_cpu++) {
-			cpus_read_lock();
-			ret = cpuhp_setup_state_nocalls_cpuslocked(
-				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
-				"arm/coresight_cti:starting",
-				cti_starting_cpu, cti_dying_cpu);
-
-			if (!ret)
-				ret = cpu_pm_register_notifier(&cti_cpu_pm_nb);
-			cpus_read_unlock();
-			if (ret)
-				goto err_out;
-		}
-	}
+	ret = cti_pm_setup(drvdata);
+	if (ret)
+		return ret;
 
 	/* create dynamic attributes for connections */
 	ret = cti_create_cons_sysfs(dev, drvdata);
 	if (ret) {
 		dev_err(dev, "%s: create dynamic sysfs entries failed\n",
 			cti_desc.name);
-		goto err_out;
+		goto pm_release;
 	}
 
 	/* set up coresight component description */
@@ -908,7 +920,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 	drvdata->csdev = coresight_register(&cti_desc);
 	if (IS_ERR(drvdata->csdev)) {
 		ret = PTR_ERR(drvdata->csdev);
-		goto err_out;
+		goto pm_release;
 	}
 
 	/* add to list of CTI devices */
@@ -927,7 +939,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
 	dev_info(&drvdata->csdev->dev, "CTI initialized\n");
 	return 0;
 
-err_out:
+pm_release:
 	cti_pm_release(drvdata);
 	return ret;
 }
-- 
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
