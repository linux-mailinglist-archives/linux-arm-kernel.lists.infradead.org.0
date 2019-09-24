Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB014BBFFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4+v3rpjTrtecBp4N9MTSEYbrOZHV3P+Onmush6JHNM=; b=oMcqUn2q9Dqs5t
	TKt7DSqc6Mnmej7MG8KZGe+nLX8l1LEqNkBmzHdD7quB5FEC4FY5AYXuwkuPBCvNDCnW7ijWQpq3h
	810+nB0fwx2PcKcLTXW2QprfQw+KyviP+cRdWHGWY4/MIOUWXT4U8Y89O+SeewM2EoJeQRp91VHv7
	mGNHCJ5xsL7595Nh5EazeU7IqJwxLE/NBkHFXZUT6zc9zs2CMq/APRJ+7MJTnxPf9HhtqMzDZ2vMc
	5ilNlEM3qIbP8ji3+ZxTpISarTWcB+h+3QXlInazOyNNIdHq7ah6kueqtY1zffuA+4faHzYne7nQ9
	6rqE1+UB2eUYsPxfyuyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCaXi-0002LN-9X; Tue, 24 Sep 2019 02:27:06 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCaXV-0002KT-Ei; Tue, 24 Sep 2019 02:26:55 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8O2NweF103631;
 Tue, 24 Sep 2019 02:26:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=WWWsc3hud/ujqHoGG9ItTT3NOPVXdOVdxQNDHJgUDrA=;
 b=C26j9Glip/SHVg1MIjC+xmFn7g3kJcsDfFwzktmKGqvPAcMKLSCNr/tJT1B4CJntqUpt
 oUrDOT8P7feqH1WLsDWBK2QvDn/f2BQ+A3MMhq9NRT58ZFqEcs6VTMBG77hXJXPvD6jN
 G37uE4wIDFV80c3t9QyGhl2IbVvXcVdaj6hQjFScoDm5u7EdVkbGLSHVj6zZrNcXZGYZ
 meG+SmKIBfTUVyaT7Wk3R2CnYdHA3jhr5ClNjWFUeTAX4THL049yRRh+JFtdPpUUFOHU
 nhXwsuftZmFjAdiYp5Lf2/hAamRbXaT0xsT7ALogOMuzDAu4Sk0EW45vwgw7lZwDXO0s fw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2v5cgqtpqf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2019 02:26:47 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8O2IILc099073;
 Tue, 24 Sep 2019 02:24:47 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2v6yvqn34d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2019 02:24:46 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8O2OiLI019172;
 Tue, 24 Sep 2019 02:24:44 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 23 Sep 2019 19:24:43 -0700
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1] scsi: ufs: skip shutdown if hba is not powered
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <1568780438-28753-1-git-send-email-stanley.chu@mediatek.com>
Date: Mon, 23 Sep 2019 22:24:40 -0400
In-Reply-To: <1568780438-28753-1-git-send-email-stanley.chu@mediatek.com>
 (Stanley Chu's message of "Wed, 18 Sep 2019 12:20:38 +0800")
Message-ID: <yq1sgom4ejb.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9389
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=931
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909240022
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9389
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909240023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_192653_583810_4281751C 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 kuohong.wang@mediatek.com, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Stanley,

> In some cases, hba may go through shutdown flow without successful
> initialization and then make system hang.

Applied to 5.4/scsi-fixes, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
