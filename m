Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C23E1FA755
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 06:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Crhs7NrlTK3Q4OJXgnw4e+upeKCMKYkRsiJ99++nqsc=; b=bZ61fiaj5IFGEv
	qHvzDZK1mFc0TQEdPgfa4SmUumXiiPb6bnYey37zrANIP1X/2Y7LdAPRzaC7xeMLz11NHVsbFjLT0
	3uyhZ6+agVGNB2EzOnLrLRy6oeo+s+3oaFtuGAFphqQ7zfIgLeVykZcWBQbF2h5Ict9i4j+o+eRrH
	xypsoiFrBaNeSLeygQ+jd3i6P/VvF7CagffHy4xOGouASW6BnoGgxNsGqi2lYz0EN0WK1YQFdK9Ax
	PkuD9nogz46dhNClQwdFpm6SYwxGEwbA3MxHDCdWNb1KhvoorM1ZwovI+4yv3Ak93icKQMOp6aOod
	6jSaWPHLdciE2bsDLd6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl2mk-000199-4p; Tue, 16 Jun 2020 04:01:18 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl2lt-0000SL-Ds; Tue, 16 Jun 2020 04:00:27 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05G3umc2054141;
 Tue, 16 Jun 2020 04:00:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=tog6p+jhHv1MMPC5xFRis+xy2D7mIFMgOiTv3S7un+k=;
 b=kESvkjPnMz7HzI8reMaO92Zj5+1KoqISZ+p0/cI2ogRq0iXsGcJU8TSSuvGJuO3pSVfr
 GEU0flLEFA53KNwY6uH2rK3pBW3MsI8lm9j23GRDjdcdVdy75Pnx+BbTJ/tihgA+Tfrt
 KLWqFOjYinRBKYdA7DuArPJhdU/361V9lr3cfYdF6OQyfUAIkqYRLofHR9WSEWhdFJiA
 PzCsms6vGXfKiaWebBi9rANKbqT9v/XZIG09ErcMR6HJ3jMHnafC2JfEAkTaMxACzjbU
 HckDkrys1+rksF+xWxGnNlzh+S+KygsiHEluUgGSE4ZIByWg5SQHTALGwQ+kL7M4R+UC aQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31p6e7vdma-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jun 2020 04:00:20 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05G3xO22131197;
 Tue, 16 Jun 2020 04:00:19 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 31p6dcae83-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jun 2020 04:00:19 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05G40I22023320;
 Tue, 16 Jun 2020 04:00:18 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 15 Jun 2020 21:00:18 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-scsi@vger.kernel.org, jejb@linux.ibm.com,
 Stanley Chu <stanley.chu@mediatek.com>, avri.altman@wdc.com,
 alim.akhtar@samsung.com
Subject: Re: [PATCH v3 0/5] scsi: ufs-mediatek: Fix clk-gating and introduce
 low-power mode for vccq2
Date: Mon, 15 Jun 2020 23:59:58 -0400
Message-Id: <159227986421.24883.1728950810873542033.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601104646.15436-1-stanley.chu@mediatek.com>
References: <20200601104646.15436-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 suspectscore=0
 mlxlogscore=655 mlxscore=0 phishscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006160028
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 mlxscore=0 phishscore=0 mlxlogscore=685 lowpriorityscore=0
 cotscore=-2147483648 priorityscore=1501 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006160027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_210025_592636_5DCD381E 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org, bvanassche@acm.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>, andy.teng@mediatek.com,
 cc.chou@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, asutoshd@codeaurora.org, chaotian.jing@mediatek.com,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 1 Jun 2020 18:46:41 +0800, Stanley Chu wrote:

> This series fixes clk-gating issues and introduces low-power mode for vccq2 in MediaTek platforms.
> 
> v2 -> v3:
>   - Fix (add back) linkoff support in patch [4] since previous version incorrectly removed linkoff support
> 
> v1 -> v2:
>   - Add patch [4] and [5]
> 
> [...]

Applied to 5.9/scsi-queue, thanks!

[1/5] scsi: ufs-mediatek: Fix imprecise waiting time for ref-clk control
      https://git.kernel.org/mkp/scsi/c/fb43337cd4cf
[2/5] scsi: ufs-mediatek: Do not gate clocks if auto-hibern8 is not entered yet
      https://git.kernel.org/mkp/scsi/c/9006e3986f66
[3/5] scsi: ufs-mediatek: Introduce low-power mode for device power supply
      https://git.kernel.org/mkp/scsi/c/488edafb1120
[4/5] scsi: ufs-mediatek: Fix unbalanced clock on/off
      https://git.kernel.org/mkp/scsi/c/561e3a8726b2
[5/5] scsi: ufs-mediatek: Allow unbound mphy
      https://git.kernel.org/mkp/scsi/c/fc4983018fea

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
