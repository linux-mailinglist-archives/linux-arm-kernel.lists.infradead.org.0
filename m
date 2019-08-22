Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346F598DB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=xL2TDYTR0fG/r1wi7Y9dS2loK1JaSXxLG/j7uA3XOak=; b=Dj1kPkhqNlFKqP
	YwKHaz3yiPwYvt9a91E85W34rAlltdInS21iF5b6jHuCgD1AyJHyXDInmDIpOS2srkTuxRAQjZsOa
	xsVoMaYgC9v4pkAiBYUCHNYDJJBvcoNBJQiV3Lgew/RDT2kN40i0JYnS/qUqvHaK5/URWu5v11qnM
	RYfKm+PHvcXgWqRBDDbL6cKVIjcMUoy+nzMynfeQJ+fRe1b1ICxo9/md9a1KFYZJ9Tl4eLyFEmsHN
	RfyCS//rOc71LTWCcWYG+rUQYOojKmrL4ozrbY30UAcu0tzwHYsLee+PzOtetE0EJBW/ADzkSEVRS
	KCtCvSuFeljnlc+oOjDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iVJ-0001C7-I4; Thu, 22 Aug 2019 08:31:33 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iV3-0001Bl-Rf
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:31:19 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7M8T40f083059;
 Thu, 22 Aug 2019 08:31:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2019-08-05; bh=wvYiP03diDw4mPM79mRFmzdAWF1KTz/Do+tWoBDqL7g=;
 b=UbAVT4htoWZXk08/Rp3rfixodscqhAqT3egD7NadwHwljZtuKydKUALM9Wwm5bwRV3OV
 f7CjKlS5Gt9OwxM8+D9cRtHCcNTWdI9deh+zO9GMcvsgfH2mHHf6HXgOxYLVdQaFMGN7
 UQFUuVaxHsgpqRYNAqG7ufltA9vjddQQS5cnQ+bcJVRARGgF8SOgkdR1tAZ2x7U7rC3N
 yEMxn2eMhj6iudYi2fn0L1V0QvA3XDqPjMlJ+p35hpvag18Wnu9LRDLonyUUwocdJk1L
 6WcrCeqSJOb+zs5FM+PAXJWtFNpe+SkIr9dg75lE0v8nTPsYfCRPezApjbDdblRfSrAD dA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2ue90tuvhe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Aug 2019 08:31:13 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7M8T8fK020772;
 Thu, 22 Aug 2019 08:31:13 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2uh83pr6ap-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Aug 2019 08:31:13 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7M8VCtK031210;
 Thu, 22 Aug 2019 08:31:12 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 22 Aug 2019 01:31:11 -0700
Date: Thu, 22 Aug 2019 11:31:05 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Derek Kiernan <derek.kiernan@xilinx.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: [PATCH 2/4 v2] misc: xilinx_sdfec: Return -EFAULT if
 copy_from_user() fails
Message-ID: <20190822083105.GI3964@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821070702.GB26957@mwanda>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908220093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908220093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_013118_029565_3ACED6A3 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The copy_from_user() function returns the number of bytes remaining to
be copied but we want to return -EFAULT to the user.

Fixes: 20ec628e8007 ("misc: xilinx_sdfec: Add ability to configure LDPC")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Michal Simek <michal.simek@xilinx.com>
---
v2: Fix a typo in the commit message.  funciton --> function

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
