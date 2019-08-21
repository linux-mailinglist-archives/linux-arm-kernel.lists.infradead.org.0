Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46AD97305
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=9ifgFrTMPfzXScguSFlRmQAcBVP5zmXTYBcbPLbqiOI=; b=ZS7kjvRJW6Swcn
	67JPbESv8sRnn/6f2n/2/W1Kykp+iwUsMfqb+pys4sqE1esOcM/MhnHKZXThCaSv42+MNXDm2a4CX
	FMEHO24p7jspcsLn606gSHXCPMSNWpWklAEsWjSJMhptl9IOm4LUw9OS7ZpnT5bWeCteXu/chzOeR
	hwbYDrDvpXlKO5qo5qCtqN9Dp6Hlz3CSscpqP5rixssh59mvf2WhyEtCH9gJx3d/mlPioXrfhB3t2
	J7zdKb/yKv2LxRMgYmgWi8FqOkCgYlCkWj7R6Mg1+4ppPqhP48FzB/CZ1xfYNT7JGkNGeQbGSTTpF
	vvSROesCXp35qZ5249WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KiR-0003Vv-0T; Wed, 21 Aug 2019 07:07:31 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0KiB-0003V5-Pr
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:07:17 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L74Ful078588;
 Wed, 21 Aug 2019 07:07:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2019-08-05; bh=cE9s0Cp1ViW4krpgGQjjfgAOVUXuBLNUghjKIjDQfmY=;
 b=C3xv6rQIuzVnjMkkBCEdmoeUR3Yl2ix2bcPFGozJURC5uoX8SeduUvSr8UQQgaHuzbEK
 NjXZ4G8mu9m/BQr0E6l4j27bPK0Yse1fc6qs0qV0C1UffivLx5T+a2yMSROj2caDa6oA
 KhmYTfVGldZPq8Jgulk+CPx/2b6CL2AZ9TuHOWVFlfoJ9FFXF3FKJRsO/bwi5nteCxJM
 frW4eQP3bmg+Uhn5/ik5fOO9h6ZuuGtbC+mYmtcELedYK7wzlnv67DXxD92eidxLZ8gM
 Q0L8zN77Sa1cxCbeSG+ttu+5k//M3ezUH3cnZBjn9Bc5FIX0RVaZ75oE5ej2D6n2GISE mQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2ue9hpka6r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 07:07:11 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L74EkP174834;
 Wed, 21 Aug 2019 07:07:11 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2ug1ga8jgu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 07:07:11 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7L77AjQ023628;
 Wed, 21 Aug 2019 07:07:10 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 21 Aug 2019 00:07:09 -0700
Date: Wed, 21 Aug 2019 10:07:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Derek Kiernan <derek.kiernan@xilinx.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: [PATCH 2/4] misc: xilinx_sdfec: Return -EFAULT if copy_from_user()
 fails
Message-ID: <20190821070702.GB26957@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821070606.GA26957@mwanda>
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908210076
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908210076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_000715_925152_513F5468 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The copy_from_user() funciton returns the number of bytes remaining to
be copied but we want to return -EFAULT to the user.

Fixes: 20ec628e8007 ("misc: xilinx_sdfec: Add ability to configure LDPC")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/misc/xilinx_sdfec.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index dc1b8b412712..813b82c59360 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -651,9 +651,10 @@ static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
 	if (!ldpc)
 		return -ENOMEM;
 
-	ret = copy_from_user(ldpc, arg, sizeof(*ldpc));
-	if (ret)
+	if (copy_from_user(ldpc, arg, sizeof(*ldpc))) {
+		ret = -EFAULT;
 		goto err_out;
+	}
 
 	if (xsdfec->config.code == XSDFEC_TURBO_CODE) {
 		ret = -EIO;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
