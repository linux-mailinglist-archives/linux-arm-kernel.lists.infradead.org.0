Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999C913387
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 20:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ucw6CRdwR+VEfTIN6yMZ3InEvK2JIKhP0FcN+hSZeyc=; b=DsQ3k2mMt2n6nL
	Cq2wCfuVTY5yUr3BMyVeW1Il3VCYbeWDN2jf5bvZjCb+WMXSPdl/KFop+BTkcJZkd59kdrdC8RQ1A
	CJ5jl4ESGTH9g4hZJA+QnEokmuOsFMc92bT/COVazYWwPkCOTLBCa4qjk52FNu1Q6bTYTx+XmUmA+
	mpf1P14qxWigA9ZoAHzd/ZSUEsm0CHxN3Z8HRSf22l+Gnc5KuIrdrRbfXNqAxFr8YXgZ45V4AC1VV
	pkDP4j7nmfwu0136GdL8Sj99Hu+QfZ44UF/ESgo1nm+Nomsc8WBDFPbfwvYmrko8AtpDXV/rbXuN7
	YshWJkt90W19OlYRR/uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMch9-0007OC-27; Fri, 03 May 2019 18:14:03 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMch1-0007Nm-Ax
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 18:13:56 +0000
Received: from pps.filterd (m0148460.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x43I3VX1019040
 for <linux-arm-kernel@lists.infradead.org>; Fri, 3 May 2019 11:13:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=883wCebAN1KM2oekjLpbnb88YeeO9l8mZlAi2lYfxLU=;
 b=MjbnO6Ez7XPNNhUZqp2S309sB4RiGFOdNfsdxcyc1Am6gQk6Vg+D40RUXeD2+W2sIezl
 Yqfx3FuHKfQN9tsUbotv915Suc1+FamF5n2s4vmXVDAm5yegPPG0CZjhmWt8VRUEsshe
 0c9mVqrnkSLAPdfye+iNUZwmLTGsh+Ff4B4= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2s8sbu89tn-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 03 May 2019 11:13:54 -0700
Received: from mx-out.facebook.com (2620:10d:c0a8:1b::d) by
 mail.thefacebook.com (2620:10d:c0a8:83::6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 3 May 2019 11:13:53 -0700
Received: by devvm4117.prn2.facebook.com (Postfix, from userid 167582)
 id E48EFD713BB5; Fri,  3 May 2019 11:13:51 -0700 (PDT)
Smtp-Origin-Hostprefix: devvm
From: Vijay Khemka <vijaykhemka@fb.com>
Smtp-Origin-Hostname: devvm4117.prn2.facebook.com
To: Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery
 <andrew@aj.id.au>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
Smtp-Origin-Cluster: prn2c23
Subject: [PATCH v2] misc: aspeed-lpc-ctrl: Correct return values
Date: Fri, 3 May 2019 11:13:36 -0700
Message-ID: <20190503181336.579877-1-vijaykhemka@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-03_11:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905030118
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_111355_504706_37B6A4FF 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: sdasari@fb.com, vijaykhemka@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Corrected some of return values with appropriate meanings and reported
relevant messages as debug information.

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
---
 drivers/misc/aspeed-lpc-ctrl.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/misc/aspeed-lpc-ctrl.c b/drivers/misc/aspeed-lpc-ctrl.c
index 332210e06e98..aca13779764a 100644
--- a/drivers/misc/aspeed-lpc-ctrl.c
+++ b/drivers/misc/aspeed-lpc-ctrl.c
@@ -93,8 +93,8 @@ static long aspeed_lpc_ctrl_ioctl(struct file *file, unsigned int cmd,
 
 		/* If memory-region is not described in device tree */
 		if (!lpc_ctrl->mem_size) {
-			dev_err(dev, "Didn't find reserved memory\n");
-			return -EINVAL;
+			dev_dbg(dev, "Didn't find reserved memory\n");
+			return -ENXIO;
 		}
 
 		map.size = lpc_ctrl->mem_size;
@@ -134,16 +134,16 @@ static long aspeed_lpc_ctrl_ioctl(struct file *file, unsigned int cmd,
 
 		if (map.window_type == ASPEED_LPC_CTRL_WINDOW_FLASH) {
 			if (!lpc_ctrl->pnor_size) {
-				dev_err(dev, "Didn't find host pnor flash\n");
-				return -EINVAL;
+				dev_dbg(dev, "Didn't find host pnor flash\n");
+				return -ENXIO;
 			}
 			addr = lpc_ctrl->pnor_base;
 			size = lpc_ctrl->pnor_size;
 		} else if (map.window_type == ASPEED_LPC_CTRL_WINDOW_MEMORY) {
 			/* If memory-region is not described in device tree */
 			if (!lpc_ctrl->mem_size) {
-				dev_err(dev, "Didn't find reserved memory\n");
-				return -EINVAL;
+				dev_dbg(dev, "Didn't find reserved memory\n");
+				return -ENXIO;
 			}
 			addr = lpc_ctrl->mem_base;
 			size = lpc_ctrl->mem_size;
@@ -239,7 +239,7 @@ static int aspeed_lpc_ctrl_probe(struct platform_device *pdev)
 		of_node_put(node);
 		if (rc) {
 			dev_err(dev, "Couldn't address to resource for reserved memory\n");
-			return -ENOMEM;
+			return -ENXIO;
 		}
 
 		lpc_ctrl->mem_size = resource_size(&resm);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
