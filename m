Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CDF1614DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vd7kp2e/3W4bXYQUA1GjRV0lSln1cEorNcUx1yjBock=; b=NT8yVhNKJBXWmN
	V2mntXnFXmnikfEjGPBm2KMA0EzXwckdI/jB5ITIoSL3dGCSGJsbgxbxq4qqJpHFivTgt42bg/5dE
	GMfZ5O5oN+NU5pofHhzTjms5duayJ6fl8Vta7JEpRp4EN0shsbQPObMwtDyzayMtdelAO74/s4VZK
	lj1IXRQKcXCgRTHtkuJjpDK68qy7GK5dF6P96lbUkDcOwPO7G8ws3ie6aK19vBCowb3QjxoGkQTLd
	+9ZRXOkMQW/1wE/+nqKbHpy4yzjq950WjuxMf9koEJYUCkxEb4QYEXHgHscgebbl45EAqWoe9vpuU
	R0fWmKEdbnVjP7TnhPaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3haI-0006i2-4f; Mon, 17 Feb 2020 14:41:18 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3haA-0006hd-Dd
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:41:11 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01HEd51w036740;
 Mon, 17 Feb 2020 14:41:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=lNSy4MY7tJkmA0otKbFVvoWD69fUmaOTKq9HL2N/k5g=;
 b=n0caQ1wrumvJUiuD2y/EgPAFj7yjuJJ68fr0zOq75KYU4eLcocxPk5kdKtETTWKQ1Uqc
 U/+0ot+TG6ZHKh5CMv69aRrmZ22ZOe/q/IoXTgecPUBT0LoPUrd1g/DCW1dNW7Btyzx1
 kh3cuttFsWYrsErClKBKre+PRcFBg8s6MPBU5xIQX30mmZGFnSM3TS2uYsGQLFcIA7SN
 8G+6pFR/JJ1Lt1m5keKtnUpwoz4J7nIf82472FsBI9TAFYxZmbHAA+s+Yge1izFCrloL
 KdItVdNrD4dhsrSvPNahgPUQEeiCmff93wfbKLXzCVMfkCtYow62f7awb0jnpLBmohqN JA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2y68kqrks4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Feb 2020 14:41:01 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01HEbfSe125405;
 Mon, 17 Feb 2020 14:41:01 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2y6tejawd3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Feb 2020 14:41:01 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01HEewYl015006;
 Mon, 17 Feb 2020 14:40:58 GMT
Received: from kili.mountain (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 17 Feb 2020 06:40:57 -0800
Date: Mon, 17 Feb 2020 17:40:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Linus Walleij <linus.walleij@stericsson.com>
Subject: [PATCH] dmaengine: coh901318: Fix a double lock bug in dma_tc_handle()
Message-ID: <20200217144050.3i4ymbytogod4ijn@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: NeoMutt/20170113 (1.7.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9533
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=928 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002170121
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9533
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0
 lowpriorityscore=0 mlxlogscore=985 malwarescore=0 priorityscore=1501
 clxscore=1011 mlxscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002170121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_064110_547161_02ECAD94 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-janitors@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Jia-Ju Bai <baijiaju1990@gmail.com>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The caller is already holding the lock so this will deadlock.

Fixes: 0b58828c923e ("DMAENGINE: COH 901 318 remove irq counting")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
This is the second double lock bug found using static analysis.  The
previous one was commit 627469e4445b ("dmaengine: coh901318: Fix a
double-lock bug").

The fact that this has been broken for ten years suggests that no one
has the hardware.

 drivers/dma/coh901318.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/dma/coh901318.c b/drivers/dma/coh901318.c
index e51d836afcc7..1092d4ce723e 100644
--- a/drivers/dma/coh901318.c
+++ b/drivers/dma/coh901318.c
@@ -1947,8 +1947,6 @@ static void dma_tc_handle(struct coh901318_chan *cohc)
 		return;
 	}
 
-	spin_lock(&cohc->lock);
-
 	/*
 	 * When we reach this point, at least one queue item
 	 * should have been moved over from cohc->queue to
@@ -1969,8 +1967,6 @@ static void dma_tc_handle(struct coh901318_chan *cohc)
 	if (coh901318_queue_start(cohc) == NULL)
 		cohc->busy = 0;
 
-	spin_unlock(&cohc->lock);
-
 	/*
 	 * This tasklet will remove items from cohc->active
 	 * and thus terminates them.
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
