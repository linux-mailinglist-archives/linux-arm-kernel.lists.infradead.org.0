Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21851E3565
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 04:15:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fu9JwFw7W9m5j21NeEB235fMdv70Oc1kDyurALFFG4=; b=B1GyqzIR3AzzcA
	oQM5UghR3v3huE116BIJs1hsAIgawRMJD8hjvZU0FYhsqNktmgbol82SKUnPMR0fC5xSrai48o07R
	w+XMivodYWBhbqujbS5uBz1vOLqeMuO9AqQJiA5pdWOpK0zH/J5jQyOZ/6RpqQ0IPHKjadcGvZz01
	JeP30Kqb1H0MSdOEcr0OMZTeF4Ef04JLTkOFt4WGk6b70iGkUdLl+a0F3Qarvs5Cd/G6K1PNpGv97
	aoK6vnYJ6bCQ61qLv2deQJUvfVWTXsIeQMDtdhhbSSaQnCiFhxaVk2AwUYvxr9vhEPzAzlud7Rm3Q
	1KiXj02HfxvPjexZb/sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdlbY-0005AV-LX; Wed, 27 May 2020 02:15:40 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdlbK-00059X-AM; Wed, 27 May 2020 02:15:27 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04R2BjPs057175;
 Wed, 27 May 2020 02:15:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=p4qvcrtuW2bQGADmeQqiBGaWVrsj08iNi0oxkXFi0eQ=;
 b=fPS3SYDVFsh+c3H8EZcys574JlA89oAGvHnq3N3ieIOzmgxz2cKa/sLsZfIwHbKvqRqy
 tcKIPfofusdABQBRqsHSknxoAsTvhi72bvbGV0MGM7j8bXFKM3axK1kN5XlunQbsD9Sb
 MO+Wdy9IdZeBlUJXcGwXtjglTuN9QQKmkUdriBfSG13SJKCxAPtaGC94PvfHTpxAvn6c
 nGYqspb79ICwJr2vT2qGc9S7xt14tRJqWijl3vPIFcOXKN//zpmTSKsSIjgpqnrSOE2F
 kjWL/yvLAGdI4Ygon5MRsUkh6CA+xag5vfCOVBtwC1vYmj2OHapEhZYmaJRZRpG5e01D KQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 318xbjvyqx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 27 May 2020 02:15:16 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04R27ZGl133300;
 Wed, 27 May 2020 02:13:15 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 317j5q908d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 May 2020 02:13:15 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04R2DEwN024111;
 Wed, 27 May 2020 02:13:14 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 26 May 2020 19:13:14 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: avri.altman@wdc.com, asutoshd@codeaurora.org, linux-scsi@vger.kernel.org, 
 alim.akhtar@samsung.com, jejb@linux.ibm.com,
 Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v4 0/4] scsi: ufs: Fix WriteBooster and cleanup UFS driver
Date: Tue, 26 May 2020 22:12:59 -0400
Message-Id: <159054550935.12032.12783598826763830376.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200522083212.4008-1-stanley.chu@mediatek.com>
References: <20200522083212.4008-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270012
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 cotscore=-2147483648
 suspectscore=0 bulkscore=0 clxscore=1011 impostorscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005270013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_191526_443287_D4326742 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
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
Cc: Virtual_Global_UFS_Upstream@mediatek.com, bvanassche@acm.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 May 2020 16:32:08 +0800, Stanley Chu wrote:

> This patch set fixes some WriteBooster issues and do small cleanup in UFS driver
> 
> v3 -> v4
>   - Squash patch [4] and [5] (Asutosh)
>   - Fix commit message in patch [4]
> 
> v2 -> v3
>   - Introduce patch [5] to fix possible VCC power drain during runtime suspend (Asutosh)
> 
> [...]

Applied to 5.8/scsi-queue, thanks!

[1/4] scsi: ufs: Remove unnecessary memset for dev_info
      https://git.kernel.org/mkp/scsi/c/3a66ae512b09
[2/4] scsi: ufs: Allow WriteBooster on UFS 2.2 devices
      https://git.kernel.org/mkp/scsi/c/c7cee3e746a5
[3/4] scsi: ufs: Fix index of attributes query for WriteBooster feature
      https://git.kernel.org/mkp/scsi/c/e31011ab3709
[4/4] scsi: ufs: Fix WriteBooster flush during runtime suspend
      https://git.kernel.org/mkp/scsi/c/51dd905bd2f6

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
