Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39D619A361
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 03:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpdVm/OUobIvgCXjw2usVY5gEwCd9dhj122yZSoN84k=; b=uL+A2k3KDjOqG7
	fQySRkCDp8timkd62/Ul7xBdwFjGqpkG9o03eEw9jOPoMnNMnoIijYDOuhwk+ZAuLkNEVUjgi3Jf6
	ONKoW6eAOtXqLUXl2xqRWyaSqdQ+N+r99YYIlOh7R8ZeMsY6VsvBxiW30dbKnPPUCRK9KLBORUwT+
	K1hJOElgum7LlUdpkAffOwz4QXewRsR01txkYM+sAqxKV1Ns1d/X3S1tnv3B4u+a3HExsT7dC0qiN
	EV6+34BHqp3/6I6VQnhKsoqyzsW27G8d4hqS2eiOdLEv1iu3cTBgd7yGTMQVQtHg5oF76L37KCyEB
	H7x5Sqaz/G2yZdLFGV3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJSbN-0007cg-6r; Wed, 01 Apr 2020 01:55:33 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJSbE-0007b0-PA; Wed, 01 Apr 2020 01:55:26 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0311rUiI023440;
 Wed, 1 Apr 2020 01:55:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2020-01-29;
 bh=56HjDNVgestS7LpQV0lxqaqXjiOTTvOFVDtev9qRn+o=;
 b=DSR8kU//seaM4ZqXFc5OgAqGpDhgNVPkkBjPy+qPmF50XY01Hkx3umLHoOAJQMdYJ8IK
 ndOIeP6BwNFbAU3GAxgPWwIzyfkSbDSaUbycXOGOjg7fF1KtrnwtqXun0sgr3/tij8Dz
 AcIPZZtIzjTd6im0E3Js26V1PmBkyIu1clMZq+7/ZAvR/c09EFqbjFZraA/U40A7HwYH
 r2FnmdgslSAq6xhEYA58h8v2mWRgCLhcLBmDu9lRYpDLklZiS/Ww1XhC0jNoRZCRRCgz
 Lqmb1WcjkyHwkcfSqjdRenwm2TyK517xrwyig2ZgvpfL9mzY+26+iPrV7YDTfy8i1Efd Dw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 303yun5ay6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Apr 2020 01:55:06 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0311q2k5193327;
 Wed, 1 Apr 2020 01:55:06 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 302g9yfaqv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Apr 2020 01:55:05 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0311t28v024722;
 Wed, 1 Apr 2020 01:55:02 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 31 Mar 2020 18:55:02 -0700
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/1] scsi: ufs: set device as active power mode after
 resetting device
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200327095835.10293-1-stanley.chu@mediatek.com>
Date: Tue, 31 Mar 2020 21:54:58 -0400
In-Reply-To: <20200327095835.10293-1-stanley.chu@mediatek.com> (Stanley Chu's
 message of "Fri, 27 Mar 2020 17:58:35 +0800")
Message-ID: <yq1h7y46kct.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9577
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004010015
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9577
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004010015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_185524_904905_80E1DE67 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> Currently ufshcd driver assumes that bInitPowerMode parameter is not
> changed by any vendors thus device power mode can be set as "Active"
> during initialization.

Applied to 5.7/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
