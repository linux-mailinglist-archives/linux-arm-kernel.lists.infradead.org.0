Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5CA4B041
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 04:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9W8L5ktff0hMRtHleViCvHSatWA9XKvvgn75CEGDgY=; b=GpdzE3yyOidKIn
	OD8mHSQwwNHehO2GIduno4NNfReyKqq+N+zXXjD6ukG6KYWw6wgQS2nzLV63DhQZTXkqaSPFZjmW8
	8mwgmARY7PgY+HQunXmlnmvRCe96bP578NY8vjVxB5/n8+dCIKSg7//9lM3QtWkLoUB5UUHJZZeNi
	v1nWTEAGFGQmLyjx8aCvoo4ZiPHXdlpRldkRl9QEmnpjQUVo3yeOZnPxnogwiNxv3lBkDErldP1qL
	PWdlTys8Yh0qD+gHHUsVtD2seacSfG/JPFfejw6ylG8oxnMQULgcs4q4S63/v6OsMLHxdbCvS0dMz
	QrdozHGOVfqDQub+G9aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdQhP-0000lG-Vv; Wed, 19 Jun 2019 02:51:48 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdQhC-0000kH-S9; Wed, 19 Jun 2019 02:51:36 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J2nJkC075342;
 Wed, 19 Jun 2019 02:51:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=L4phCbahTYJumOSspv1r7NxClQaWWMs5xDPyNWp/G6w=;
 b=MPOSUmu1KK3+g0SG5BW3UbjLkcgMh+DJAjWdLQr4S+X8tqs7Z4MHZ/pF3QKiaYkFzt0z
 QCV5PonpxjKUVzq/hfDJH88s2MMcqtJZJtwTGfjWW/uXVH5D70p57XcJ+ApxAo/qEDkw
 1I5A7MuLqhqH005HclYlygoSEC0h6iNVp6SHvs/2MIErnfUuKL3+3C4r0qSYdzTcmSp2
 9DUjDnGL/jzTj0DZfnFfjTjfWJidQdYVXzYR3jvBDVlk+WOms4Co3g9hV+jGqBV+iaOR
 ulTgFCUQ2doDwuASSgwH1oIoIVkxT58Ywm943sdfN3ytBNGN2nusbY848Rd9ZUo3rBEe /g== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2t78098qh8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 02:51:19 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J2p9nh163405;
 Wed, 19 Jun 2019 02:51:18 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2t77ymtuuk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 02:51:18 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5J2pFbs004087;
 Wed, 19 Jun 2019 02:51:15 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 Jun 2019 19:51:14 -0700
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v2] scsi: ufs: Avoid runtime suspend possibly being
 blocked forever
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <1560352745-24681-1-git-send-email-stanley.chu@mediatek.com>
Date: Tue, 18 Jun 2019 22:51:10 -0400
In-Reply-To: <1560352745-24681-1-git-send-email-stanley.chu@mediatek.com>
 (Stanley Chu's message of "Wed, 12 Jun 2019 23:19:05 +0800")
Message-ID: <yq18stywan5.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=974
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906190020
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906190021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_195134_999287_89D34697 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sthumma@codeaurora.org, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, marc.w.gonzalez@free.fr, subhashj@codeaurora.org,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com, peter.wang@mediatek.com,
 evgreen@chromium.org, avri.altman@wdc.com, linux-mediatek@lists.infradead.org,
 ygardi@codeaurora.org, alim.akhtar@samsung.com, andy.teng@mediatek.com,
 matthias.bgg@gmail.com, stable@vger.kernel.org, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Stanley,

> UFS runtime suspend can be triggered after pm_runtime_enable()
> is invoked in ufshcd_pltfrm_init(). However if the first runtime
> suspend is triggered before binding ufs_hba structure to ufs
> device structure via platform_set_drvdata(), then UFS runtime
> suspend will be no longer triggered in the future because its
> dev->power.runtime_error was set in the first triggering and does
> not have any chance to be cleared.

Applied to 5.2/scsi-fixes. Thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
