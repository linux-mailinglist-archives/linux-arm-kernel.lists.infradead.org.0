Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70234C2C26
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 05:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5fBHEqRzno8rQ2C/OEP+GGPWjaafbUmiVi5etworJk=; b=nCpTTG63Ghe13j
	RzxsM2Am7TruOJwmReDEYMUJ0jsQRioTki/x4GoqHbYKbECsw7eGs9tDw7EzhylYtfTSXtQjiU5vf
	V1OHSTlXPIH7+OrrL/2h6ewIu7Iw7hX+Fy3cRrOsgHBMTKA5xOjEF/hKNiiQ8sWo7aVaA23WBaSdt
	kqzFvvMpmQD/J6vbYfG8GtkSi7F4IDhCI09qCnCZu0z9w57fobSdrzJ59qTiA7HUpobO6Gt2RO5hT
	3vCCIszS0s1e3xgP5CozKaOblsF4yDc37Gp/HyFqoMwKVNco5TtWzo/M/yY0TR0xlWkTKvBWsDm7y
	GPP5xSUhnS9URCy7VfrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF8Qh-00056t-M9; Tue, 01 Oct 2019 03:02:23 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF8QV-00055W-Fg; Tue, 01 Oct 2019 03:02:12 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x912wgD1123860;
 Tue, 1 Oct 2019 03:01:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=njwwrnTifs8mrKE8jnEn5CkrqleEPai9Gly5Yeav8D0=;
 b=cAUQHJBnGzWF7MI4SCB1phb0aN5MTzD42w+hscUrp5YyNRo0SBAeDZk7p6XUlx9A1YvJ
 a5fFO5Xf2uJqyeg+74iX3oia29430BC8/AeBFGmwwJs8+JN5RZxKxgg7wm6vjZu20YbQ
 7/fva448QrBWI+oM1APP7CNCXfqhJD8QgJ9/SxoJiI3StDqrLPB0ZWiiillxyvrRUJ4D
 4tipgv2m8KYHQgMnBQfi7Z8N6W1JGpHtNPJHzmtwUDM7GRGx9HPXlr5G6hcYCxCo8yXz
 c/HFJsggWJCdai0yZ/zGCogwfyTOeTeyoxXq3BQ+hT9qMPpMPEPtWIijsBKelYZAqGcg aA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2va05rjtda-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 03:01:55 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x912whdC038056;
 Tue, 1 Oct 2019 03:01:54 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2vbsm13ssp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 03:01:54 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9131nkm005437;
 Tue, 1 Oct 2019 03:01:49 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 30 Sep 2019 20:01:49 -0700
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v4 0/3] scsi: core: allow auto suspend override by
 low-level driver
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <1568649411-5127-1-git-send-email-stanley.chu@mediatek.com>
Date: Mon, 30 Sep 2019 23:01:45 -0400
In-Reply-To: <1568649411-5127-1-git-send-email-stanley.chu@mediatek.com>
 (Stanley Chu's message of "Mon, 16 Sep 2019 23:56:48 +0800")
Message-ID: <yq1o8z1xj6u.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=893
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910010029
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=973 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910010030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_200211_657555_E24C866F 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sthumma@codeaurora.org, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, marc.w.gonzalez@free.fr,
 vivek.gautam@codeaurora.org, kernel-team@android.com, jejb@linux.ibm.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com, subhashj@codeaurora.org,
 evgreen@chromium.org, avri.altman@wdc.com, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, alim.akhtar@samsung.com, andy.teng@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, bvanassche@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Stanley,

> Until now the scsi mid-layer forbids runtime suspend till userspace
> enables it. This is mainly to quarantine some disks with broken
> runtime power management or have high latencies executing suspend
> resume callbacks. If the userspace doesn't enable the runtime suspend
> the underlying hardware will be always on even when it is not doing
> any useful work and thus wasting power.

Applied to 5.5/scsi-queue, thank you!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
