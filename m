Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5D51F4B8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 04:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnSiQBWZhleoGZbwhb6ZjN4KgrjhHK4p8U9DXCA+tmI=; b=XXEGqN7FEh4Bsg
	0LuIeaxbeCncNG2b2EJ0vKYjvxqjFVBp8fGDlp1iUXMHX0C+/GlwkmBLxDl0Yz6/A4yQEkRtj9x6m
	yDPxGJvzQJ//YisVayJipZtLPoo5ELVXKAJGkQnDLxuFbZrSZfo5MJwt3gk8K2RHUTttRuUWLnmi3
	0qhcOHM1CI8Y++4e6Avq8h+3+PPm9ofd/Q5gFPdtZ05TwkOQLqdHTTo49foHyUe4r6FASwXSaAdlY
	wIwUbQQ/pVC2LoMEu9QzIc72qRtF9ndHdjV6UIqO+DrVIJfxt6xW4l9YUsFjDT/v0BwxICXHHpuoj
	v3oVIAUZx+oA2zTpIZRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqh3-0005RM-CY; Wed, 10 Jun 2020 02:42:21 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqgi-0005Js-Kj
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 02:42:02 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05A2aard156161;
 Wed, 10 Jun 2020 02:41:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=FPiVafim4lK5nnNGYMQvhqTi3L7FWo/K8vEdhh1owm0=;
 b=yHJ7XuU3p62wQ0Vh/EGuugsppsdispGcei/+2hjDBt/te7iQcg/nabb0VPUHkNLEePjc
 ktUxdFA5Cu4ljmtC4ODb+WZFy70jh5fK/eZnK9fnnLq8E3EMYzpDvPzc3Fa9+64hqC3J
 wKIjQsR7dbxd295ZJbN+SrlAbys1zrgwqEs/r09DZCkqCFkO7SylASFixWC6Nm3dW6xO
 ZoG9cv0LiBY4UKQgEQziuEvUP3R2MOUNgUQFwswANqSvGwSMsJqzKViS8M92RbX5W8Hw
 lIbeanxHtqP+aWLEvMp2Bu7xDAbbHMY6z3Hktr7YuEZZpIX67TEk87/a1MCdfC0CnBaV Fw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 31g3smytkr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Jun 2020 02:41:27 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05A2bu9L183400;
 Wed, 10 Jun 2020 02:41:26 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 31gmqpgp3g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Jun 2020 02:41:26 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05A2fO2c005804;
 Wed, 10 Jun 2020 02:41:24 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 09 Jun 2020 19:41:24 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: jejb@linux.ibm.com, linux@armlinux.org.uk,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] scsi: powertec: Fix different dev_id between
 'request_irq()' and 'free_irq()'
Date: Tue,  9 Jun 2020 22:41:21 -0400
Message-Id: <159175686974.7062.8526082970785072740.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200530072933.576851-1-christophe.jaillet@wanadoo.fr>
References: <20200530072933.576851-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9647
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 mlxscore=0
 mlxlogscore=885 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006100019
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9647
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 cotscore=-2147483648 suspectscore=0
 spamscore=0 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0
 mlxlogscore=937 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006100019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_194200_763928_42E6198D 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 30 May 2020 09:29:33 +0200, Christophe JAILLET wrote:

> The dev_id used in 'request_irq()' and 'free_irq()' should match.
> So use 'host' in both cases.

Applied to 5.8/scsi-queue, thanks!

[1/1] scsi: powertec: Fix different dev_id between request_irq() and free_irq()
      https://git.kernel.org/mkp/scsi/c/af7b415a1ebf

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
