Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B7F87FF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nt7Z/LEuACRz0/yy96x5U1+wY+e0N1O0IqhuILkhMRM=; b=F6xTzeZUqQRLd9
	fPPFrnhomF6Z/iAhBZxG9FcIpUqO9kJnxu9Dic0WV4PKEHROEopRfBU+1Xw0B1HWU/916yLvT6H1F
	anfxPl+RvcOzduscBXMKL9tJl3Z5THG/bA8NWdPNZ7aYvdHspxJTN+QcGGmbu28k48KdU/8susx8g
	MIZ6rFwuXPCt8LsiSGADdqIVm3zFMJrfCisN5Ya+PuZfgKtxDoQHPIHu4I6EcMctGIAo2InXP2HKT
	aszbg7wOe49gUTG7MeIUg+YbSRRs0UNSrOu98YrqmZe0eQVxRH12u5RVOcqdGG/+II10yfLJNvjkX
	MGU6dbCReAhLORZ3J4yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7k4-00017W-05; Fri, 09 Aug 2019 16:27:48 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7jc-0000qm-DN
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:27:21 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x79GRIaX068444;
 Fri, 9 Aug 2019 11:27:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565368038;
 bh=hejhV7p35tABFvLqhdiGyN6o5tkE6x3rXXh80KuLZxc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=olyPnxjTYspFa2lTlq6wq3nFOp8orHB0zNOLMdX60uTyyibXGhVj1omuuYp35mu6K
 rAp4IyJkbhbO74Iz3K3Xj+jex+dGtlD0KaY+OO+xfMwgtpIL5khaiGFavroPKk+0aF
 S+1KZMEVsl4Pw2U3IysD3WZbc4JwLdEB4N7CVOAw=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x79GRID0035097
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 11:27:18 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 11:27:18 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 11:27:18 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x79GRIqC032436;
 Fri, 9 Aug 2019 11:27:18 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x79GRIZ10563; 
 Fri, 9 Aug 2019 11:27:18 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Ohad Ben-Cohen
 <ohad@wizery.com>
Subject: [PATCH 2/2] samples/rpmsg: Introduce a module parameter for message
 count
Date: Fri, 9 Aug 2019 11:27:10 -0500
Message-ID: <20190809162710.823-3-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190809162710.823-1-s-anna@ti.com>
References: <20190809162710.823-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_092720_528812_D724B1FD 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current rpmsg_client_sample uses a fixed number of messages to
be sent to each instance. This is currently set at 100. Introduce
an optional module parameter 'count' so that the number of messages
to be exchanged can be made flexible.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 samples/rpmsg/rpmsg_client_sample.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/samples/rpmsg/rpmsg_client_sample.c b/samples/rpmsg/rpmsg_client_sample.c
index b9a99e621a5c..ae5081662283 100644
--- a/samples/rpmsg/rpmsg_client_sample.c
+++ b/samples/rpmsg/rpmsg_client_sample.c
@@ -14,7 +14,9 @@
 #include <linux/rpmsg.h>
 
 #define MSG		"hello world!"
-#define MSG_LIMIT	100
+
+static int count = 100;
+module_param(count, int, 0644);
 
 struct instance_data {
 	int rx_count;
@@ -33,7 +35,7 @@ static int rpmsg_sample_cb(struct rpmsg_device *rpdev, void *data, int len,
 			     true);
 
 	/* samples should not live forever */
-	if (idata->rx_count >= MSG_LIMIT) {
+	if (idata->rx_count >= count) {
 		dev_info(&rpdev->dev, "goodbye!\n");
 		return 0;
 	}
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
