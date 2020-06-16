Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283C41FA757
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 06:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxWxBFQJoFy2tpw/BYB/+icQVshkZZ32Lj+FaGKiXIs=; b=npUZ0LfIkylZ6d
	8mng/83D1d+0tvFh2kJ2jE00zmo9w8jmHDlNHwW/IdEtCGvR+WAkZxG3MrSIq1i5dXq6Gbbc6NkJ7
	tV6qXkcV+ktOJifihdJGV8QAl1r0s+9itQiuSZqGk3HRf1mbdfZoiJCFyZiuXHjetdVC8xPladELO
	jXDK3LxXQZAbwvJUBK9IzIk3UOE1r3cFCchF6oAL79U5tXy8uuieKreBoye4P+lvX7TjeYddA/0OE
	U3Su0VyXKS/klGSmBqqlhri2VztoY8dLwOEjRCGEfMplSqBP9Q0jVpRf12PIdDw1aSXbUJbhUBZor
	fp/cOaTlMinEair3QP5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl2mv-0001Iq-E5; Tue, 16 Jun 2020 04:01:29 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl2lu-0000TD-9V; Tue, 16 Jun 2020 04:00:28 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05G3x7Hk195261;
 Tue, 16 Jun 2020 04:00:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=WCUhN94eoOku1+k3rSNEpLPDTZnjBYL2UylmBfw0T1s=;
 b=NrEF6i/WPI6mRZlBtiSuc80dJEZ8fMw8uud9MG/3nLfqrX7LqZJS4U1a4qso/A/oPt4N
 V/NXy7NNTZZqrsh6omloaDD8SD6POTRaxTKyAckG75SIi/o3pc42BgiEmsG/3jg/zgNQ
 brXy7hecxgguL8oMWf0CnfLy894rfQPLYE0kJ+YwCDDk5D0xpADI6/QgQqkMSyYbbW3K
 8cG9oOOWevdtW1Qx9siqtD/7jbR8CRrckYS2R9rpxV2VugnDXxoE5rvglvxABYRaqoiX
 jFqOcLrY3vI9KO+quzwEQ5xi8cBah2vX+sGfmfj5L1zLepAXOvYFPh6qPIxNgR6NjBnf bQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 31p6e5vdan-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jun 2020 04:00:22 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05G3x2a6020916;
 Tue, 16 Jun 2020 04:00:21 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 31p6s6hmcu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jun 2020 04:00:21 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05G40KmY001266;
 Tue, 16 Jun 2020 04:00:20 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 15 Jun 2020 21:00:20 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-scsi@vger.kernel.org, jejb@linux.ibm.com, avri.altman@wdc.com,
 Stanley Chu <stanley.chu@mediatek.com>, asutoshd@codeaurora.org,
 alim.akhtar@samsung.com
Subject: Re: [PATCH v5] scsi: ufs: Fix imprecise load calculation in devfreq
 window
Date: Mon, 15 Jun 2020 23:59:59 -0400
Message-Id: <159227986423.24883.5364281872549678357.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200611101043.6379-1-stanley.chu@mediatek.com>
References: <20200611101043.6379-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006160027
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 clxscore=1015
 suspectscore=0 spamscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006160027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_210026_487214_547D7439 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bvanassche@acm.org, "Martin K . Petersen" <martin.petersen@oracle.com>,
 andy.teng@mediatek.com, cc.chou@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, chaotian.jing@mediatek.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jun 2020 18:10:43 +0800, Stanley Chu wrote:

> The UFS load calculation is based on "total_time" and "busy_time" in a
> devfreq window. However, the source of time is different for both
> parameters: "busy_time" is assigned from "jiffies" thus has different
> accuracy from "total_time" which is assigned from ktime_get().
> 
> Besides, the time of window boundary is not exactly the same as
> the starting busy time in this window if UFS is actually busy
> in the beginning of the window. A similar accuracy error may also
> happen for the end of busy time in current window.
> 
> [...]

Applied to 5.9/scsi-queue, thanks!

[1/1] scsi: ufs: Fix imprecise load calculation in devfreq window
      https://git.kernel.org/mkp/scsi/c/b1bf66d1d5a8

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
