Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B24202039
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 05:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKs8MPvk5auZB0HOQ0oTIIjPNMK2+qvhYgTWnvoz3iA=; b=eVZNrselqBuXnb
	6Lp0NScaOzBvPRkBNwNlE+slMIw+oFQvMVxx3RwUGRPQeridZ1vOKg6mclFoJfkM12bFxnK13eGJy
	kfvdu50wo0u+VL5saF+TzgfB8sXjnnXdjZtpgkmUQjv+k8WZQvlDF2PvzWPJf6y71exTKM/PwvjZo
	4YgTX7FNhIrwM/zT2Hhvl4cYzxCAeke9cL7EfehbJuPbFycQleZAOIHRsHqIyxGKQEzvnKtClYZn/
	NZ5Ek0U1/uCvcxg0rx1YxKmqeYCDST67GTQhh/rzOTSYIXfQKWhb/qv/ozhcNzBMZrT0u637gO1eu
	B6YgT12tTBvj6CWlRk+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmU9q-00087S-Ue; Sat, 20 Jun 2020 03:27:06 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmU9f-00086b-Pj
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 03:26:57 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05K3IXU3194488;
 Sat, 20 Jun 2020 03:26:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=PF84+gWPFaJNdwDpeizHfentgldpxqhtBTI+d6ZBfuM=;
 b=BT0qt+tc6qfjaZXXBP1CxgHKRKdWtr4bi40pftvAezuG/T58SvV25XVG0FwQXd7WSK66
 Oa+lbZsqPLpb4fgUip1qB9+jrl4nmQQpcW5rzRft6I+BU70rV0qvYWjLO50nXixBn0MC
 U26zhkmQ+WVKUcjUurKCMsHCLy3dNMaH5Cn+ollb6OywDNdP98yz38mvOfCdGQ2G2hDQ
 8dZrtxDBokGC79EfdJA7Roxu4J8OQ/dMNAzraTRQX98F98pPGqmZICYbJC2OEkc1di8z
 06nIzObYzRJnYYMpzDHGu2Iz32xkPfxK/MBEpKue+pEsXD8fseVlJ3zMLwVsFyuUqwUN 2A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 31s9vqr1vs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 20 Jun 2020 03:26:45 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05K3Jc0p005666;
 Sat, 20 Jun 2020 03:26:44 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 31sa8yh28f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 20 Jun 2020 03:26:44 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05K3Qggp002429;
 Sat, 20 Jun 2020 03:26:43 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Jun 2020 20:26:42 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Avri Altman <avri.altman@wdc.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Kiwoong Kim <kwmad.kim@samsung.com>, Colin King <colin.king@canonical.com>,
 Seungwon Jeon <essuuj@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Kukjin Kim <kgene@kernel.org>
Subject: Re: [PATCH][next] scsi: ufs: ufs-exynos: fix spelling mistake
 "pa_granularty" -> "pa_granularity"
Date: Fri, 19 Jun 2020 23:26:36 -0400
Message-Id: <159262354734.7800.18123945491973468082.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200617084911.167359-1-colin.king@canonical.com>
References: <20200617084911.167359-1-colin.king@canonical.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9657
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 adultscore=0
 malwarescore=0 spamscore=0 mlxlogscore=960 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006200022
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9657
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 clxscore=1011
 malwarescore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 mlxlogscore=983 mlxscore=0 phishscore=0 cotscore=-2147483648 spamscore=0
 adultscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006200022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_202655_921298_3D17323D 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 17 Jun 2020 09:49:11 +0100, Colin King wrote:

> There is a spelling mistake in a dev_warn message. Fix it.

Applied to 5.9/scsi-queue, thanks!

[1/1] scsi: ufs: ufs-exynos: Fix spelling mistake "pa_granularty" -> "pa_granularity"
      https://git.kernel.org/mkp/scsi/c/393403efc360

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
