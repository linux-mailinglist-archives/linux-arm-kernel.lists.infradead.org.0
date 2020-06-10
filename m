Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F34A1F4B93
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 04:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SlSz18wUDAsQfSb5mMb84K8gyodtDWqt6U0Migzwpc=; b=jVD64DwnydOlqo
	+F//zxL8lnf8jonoMy2ISANoMUSI/gpTUGzeaQ/hGbAo0P3wfCfSY831QcM4f5ZGZH7J/g3JId73K
	H2vYKMC9hNGiJ3/ejvF8AinK7T2hjZcTHSRJ78soLYclROrl5QPa++Zgpwy+i8taTdXddFt9VyjgH
	TtYAS/1nysD3zkZ97uVQoNOfpJNy/uPHABE+IkI1AfbcmoiwYvgdwvuRG00qY5BVt2vzORD8ACSu8
	W4l/NqIGh4iyzXRsfcZMvEzy6kpJRDiuT4PmLaiMDHF43LrgLMLFqwNHvn6zTsYJfd/An2kLRc6jO
	VRxq7lP9NFoZdLOeR9Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqiL-0006Mp-Du; Wed, 10 Jun 2020 02:43:41 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqiB-0006MS-Gm
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 02:43:32 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05A2aPQF156121;
 Wed, 10 Jun 2020 02:43:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=C9Es8C2+h/s3EAvw1L4stcE5EvLdFlxZ20/jsvWY5DU=;
 b=sjrwwITlQXByBBbx98warsAzGtPWel0pBdnisKkVYISzNmlCjPMf7ZjRCcwqVAZzFpJy
 OUfVbfumm5qI0Q4Oqg0JY3S1MQxERw69kn/gInW2vhMvzzNU5T+nbEtVu8B/xys6X8sE
 k3B05EjkSam695t4p7elssl+BcZP0wEzv57LFDXxuyYbNna4cTydMUFLBU55asr8mlnv
 rDSWrcbLiWJRQqO7DN6MXWsvb/IOUdjP8EbkGLJJlHvzL5mAge4L1AqyDieBXpGTZXjM
 y+bkE/70i70N+8Ky7qI3U/yDYxKseUEg4i+X6Z/T8/AxiNWfrPMoLUq5T+LpwQWFA8zp yA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 31g3smytrc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 10 Jun 2020 02:43:27 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05A2YOmZ155677;
 Wed, 10 Jun 2020 02:41:26 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 31gn27jug6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Jun 2020 02:41:26 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05A2fNeE021432;
 Wed, 10 Jun 2020 02:41:23 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 09 Jun 2020 19:41:23 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: jejb@linux.ibm.com, linux@armlinux.org.uk,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] scsi: eesox: Fix different dev_id between 'request_irq()'
 and 'free_irq()'
Date: Tue,  9 Jun 2020 22:41:20 -0400
Message-Id: <159175686975.7062.16533438955437978870.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200530073418.577210-1-christophe.jaillet@wanadoo.fr>
References: <20200530073418.577210-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9647
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0 mlxlogscore=885
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
X-CRM114-CacheID: sfid-20200609_194331_689858_3A4E151F 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-scsi@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 30 May 2020 09:34:18 +0200, Christophe JAILLET wrote:

> The dev_id used in 'request_irq()' and 'free_irq()' should match.
> So use 'host' in both cases.

Applied to 5.8/scsi-queue, thanks!

[1/1] scsi: eesox: Fix different dev_id between request_irq() and free_irq()
      https://git.kernel.org/mkp/scsi/c/3bab76807d95

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
