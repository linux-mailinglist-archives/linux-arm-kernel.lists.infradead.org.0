Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1452713D267
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 04:01:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hP7HsJiQyk4/wF1XxRd1Xep0ETeBH/huQs49LL0EJOw=; b=OXL8sdpRqJS8kX
	4gmIVvjlQl9kmTScXy/8NtiaBnNmJM75JoAW0UizfK3J//PYFW2D+TzOscudgV2Ei5VGy/TtmnYYN
	TZ5f84hxf4rqngydz3k2wm156Eof7HvaN+Hk9viLWFMxedHUY0GW93e1iH3ZvaCgq8vOiX9I4r7/H
	2XTO32KLPpc4Hgnmy7l7cQ5gE+2enG3MeND7ncHZqYEHIp1NzrACWgHlUGNBmvg8iHuX7CGroJ/c6
	VMgiuzE2mLVpji7uCxGvJK8Q5DuMl+iy39IA0HgD2U51Fm/uvcmn5N/OF31g76g1vHXFsoqCU3Cb8
	6wz540lXYKwlLi9xpQhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irvPA-0003k1-Fl; Thu, 16 Jan 2020 03:01:08 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irvOq-0003is-Un; Thu, 16 Jan 2020 03:00:53 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00G2s9po082540;
 Thu, 16 Jan 2020 03:00:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=pYqAmex2w8tiqRFaW1jCj7M1ge+Xb9hYqrytKH/JEAk=;
 b=XeFvjIGUPyf29kMh8ImLl2O8tLws5Dpngfve2rdjFNyrahC6qPrSwT8uP8DTIDrzVt9E
 TdfEszW+xlQMWpnA4ymFOwYi/XayCp6Hat9P6r23Kho90QjA7bDi/1mSgAHA1fhdCkaC
 Rf1Tyb0++XNvC7lNs4dG23GsJxSdm02oCP97k6gkturjqDOx8fBg/7r1rJb6btxniAOv
 zCrYvaR2Uon48gIymJ+oVr7HKhB0HjibEIOTdy1VlbLkr6sskl3VMoIKmmVm9fis0k3x
 Ylag6tlfcc/IdygHQrjwvL6sVhdNfLLL09vSeUrEZyRJ0QWm+QWptGdEYNTuXB3lE/wy fw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2xf73yqvvt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2020 03:00:30 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00G2sbY5151689;
 Thu, 16 Jan 2020 03:00:29 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2xj1asnarp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 Jan 2020 03:00:29 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00G30QFJ026830;
 Thu, 16 Jan 2020 03:00:27 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 15 Jan 2020 19:00:26 -0800
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 0/3] scsi: ufs: fix error history and complete device
 reset history
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <1578147968-30938-1-git-send-email-stanley.chu@mediatek.com>
Date: Wed, 15 Jan 2020 22:00:22 -0500
In-Reply-To: <1578147968-30938-1-git-send-email-stanley.chu@mediatek.com>
 (Stanley Chu's message of "Sat, 4 Jan 2020 22:26:05 +0800")
Message-ID: <yq1ftggp0l5.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001160023
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001160023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_190049_079670_3E3F70EF 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 cang@codeaurora.org, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, alim.akhtar@samsung.com, matthias.bgg@gmail.com,
 asutoshd@codeaurora.org, bvanassche@acm.org,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Stanley,

> This series targets on UFS error history fixes and feature add-on,
>
> 1. Fix empty check logic while outputing error history.
> 2. Add device reset history events for vendor's implementations.
> 3. Remove dummy word in output format.

Applied to 5.6/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
