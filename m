Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DC88AC82
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 03:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAWY7ILwj7xcqJJNX+2QqRWO74gg1GmvhIfqd3RzskY=; b=H7wmm/r4YGizY4
	x86U4T39SfUq6FzoYQZcTnwBmn1VDe9wHEETdN+xhAb5QyeXqJA1C5U7bLmdQQf+7pbCadxdEq+bv
	mj0OxadPIL45sRh175oX8yY0kKuJho1EATiHQUe3gslm/nEZRW0j3C+HHvYXtY0lKPkVhNo9Bn1jo
	FNgYj3+Lj07qRYOcetzr3tcCQQ2kbZKugU3jsBYCrQhra4MeRK+vqhAbLgiGn/ZbdoOGG/0xuxwlT
	PU/4NOHDhnnAY2IrllVnc7DLap89YZp6VjVmCeSdDW0TaQ6FTf9xgh52RkNLrAx2HAd0YXN/xmuqC
	aYF6dNi1xzMDY5SKqIxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxM2A-0001nR-8x; Tue, 13 Aug 2019 01:55:34 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxM1v-0001n6-3s
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 01:55:20 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7D1rXGO036396;
 Tue, 13 Aug 2019 01:54:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=SYAQIRoMCOUWC/dnAEtYfhr7+UppLGKt5YYkaWCo30Q=;
 b=aDDxWTInuti323aiPo+BAVCOwDreT1zgEK9gwstr2Mc0B9MoW3KtA9l9bFE6Wlsv8in4
 mS6kGiOGM2O9sxabXIqsVfmUhUPkStZpkqFetNiWG6uuk+6qDb/eI8M56SsqfiDeHLEw
 9+j4peLEFZMqDXbyxeREukao1SS7Dopa3GkDNBjdPzoZPg3j3vxSDp+KFc1Zp8IA3RRB
 SF2jAMzy2LAWXxMr9TFK6mH9BGGp6RDVZUaVOUCmBwjWkAjamRq5g1ux41qOv57MphYF
 Zw54dG/Y2OhhnGbhC+mL7gVlfGOpg0Q8yCot8GaqNuLUUza+Fs+aePL/BRGMIkVFeU4k Sg== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=SYAQIRoMCOUWC/dnAEtYfhr7+UppLGKt5YYkaWCo30Q=;
 b=minwhby8GEz8P5Fp95/9QqKztJ1Ut3jEMr8eo7I+k/kt7gPdKBmajAz2O6nuh435oyzP
 qOL56hk+rKRssHdVIIZvwp1687WK5Oy9Z5QJOMAKYSqr22ChBji6WiWbcdjkW/us1J3T
 EHBGvWq+yvok10sRCqxdcBBKXdSxkMvTqb2FeDZYYPOXJViW1qGHILyEu1gTm0z2X5mW
 E82bYfjZ6U8K3VQkaNK7V3dADoSQbovSOTWRTdaVl61duiolGuSeR9meI/PesZtTi16B
 UnnVV383APpc4mVYPiR3aoiEERemss8U+82qPRMx4fyqv3Q7YJzHmuiP/UIWv+PVV1u2 rA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2u9nvp331s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 13 Aug 2019 01:54:44 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7D1rWik166526;
 Tue, 13 Aug 2019 01:54:44 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2u9m0asjsx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 13 Aug 2019 01:54:44 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7D1seFW023232;
 Tue, 13 Aug 2019 01:54:40 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 12 Aug 2019 18:54:39 -0700
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] scsi: fas216: Mark expected switch fall-throughs
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190806082902.GA11122@embeddedor>
Date: Mon, 12 Aug 2019 21:54:37 -0400
In-Reply-To: <20190806082902.GA11122@embeddedor> (Gustavo A. R. Silva's
 message of "Tue, 6 Aug 2019 03:29:02 -0500")
Message-ID: <yq1d0h996ea.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9347
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=773
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908130018
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9347
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=840 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908130018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_185519_253100_7EA57DEF 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-scsi@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Gustavo,

> Mark switch cases where we are expecting to fall through.

Applied to 5.4/scsi-queue. Thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
