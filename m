Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0AE1BC688
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgNW3wIqq1yL6PHlPbpJql/IYzP94oeknPfa4lXPFf8=; b=HDyivqI9e4IJ+Y
	SuS2ATRWT2MiU7308+roNorPCx+GL/0WdRf327G8/pfxnK2DINrS4Mo0SbQlbCqbqvVoo28P/9pIH
	lu8FGQTQyUqqWf2cB/eh6VThv5npOOIVuaZIPXppnZscvVyVempeMSUMLjjrh6RO/3hO6BIxfiJDM
	LS9YgWehygy1L397pGsg/8BDamWarBPu2UcG91UC4SZfgdpeTTc1RyDzqQFFgtV3SEk6OuP0Ac7SU
	sMADkZCCq2kG5pz25bvBGkBuw81bXHcb3iTG/lX2jWHn84pjwrlMmAzGykE5mPPyX2jQshXLGLmp1
	Myj3JaEMH6zqMPkRynMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTxa-0005Ql-P6; Tue, 28 Apr 2020 17:23:54 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTxO-0005QM-Ct
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:23:43 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SHN2qP036115;
 Tue, 28 Apr 2020 17:23:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=nYRe3Y8uXuglxFzIR12FaigY66zRmKUyGWDwXjiXdU8=;
 b=cN0Bqq2/+5KRYNGOWfNpmF2uU9/AZOaZnRLCqrEa8dn/0TSCuzme1svSzlLnwkW+8rYK
 jzh/40NuUaLzABl4FTCby60G7PoklecspEg0nyHSr1hxFRfjRyZwPFsZ6tGzrZBTmWee
 MvmtIlZOmgx7CjGwclIUJCMoLxqkrrj5A1oyoVl2EYeGhENkvDUFWwnT/c/bu8D04hVX
 FXm09Uq2SZSxcK+ljsRt4CiKw7kNzfsHCiowYVFK1yRlJ3r4JdBHENHhhQDcWvdxLv18
 Sm7ZZuhoihIJCxCDuZ817tUtdbF8Ml176gGjCnb6k6HPu5udZg67li7HyjLtkdB5fIzE Nw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 30nucg1br4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 17:23:34 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03SHC1EK003111;
 Tue, 28 Apr 2020 17:21:34 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 30mxrt194w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 Apr 2020 17:21:34 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03SHLUSY017447;
 Tue, 28 Apr 2020 17:21:30 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 Apr 2020 10:21:29 -0700
Date: Tue, 28 Apr 2020 20:21:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sinan Kaya <okaya@kernel.org>
Subject: Re: [PATCH] dmaengine: qcom_hidma: Simplify error handling path in
 hidma_probe
Message-ID: <20200428172116.GG2014@kadam>
References: <20200427111043.70218-1-christophe.jaillet@wanadoo.fr>
 <20200428125426.GE2014@kadam>
 <1efa0186-7fbe-9cb5-2719-2d7192f99e27@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1efa0186-7fbe-9cb5-2719-2d7192f99e27@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9605
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 suspectscore=2
 mlxlogscore=999 malwarescore=0 bulkscore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004280136
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9605
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 priorityscore=1501
 mlxlogscore=999 impostorscore=0 suspectscore=2 malwarescore=0
 lowpriorityscore=0 mlxscore=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004280137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_102342_523637_E8A0577D 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.9 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [141.146.126.78 listed in bl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, vkoul@kernel.org,
 agross@kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I apologize, I wrote my code hurriedly and did no explain the bug well.
I understood what the code is doing, but my fix was missing an if
condition.

On Tue, Apr 28, 2020 at 12:01:15PM -0400, Sinan Kaya wrote:
> On 4/28/2020 8:54 AM, Dan Carpenter wrote:
> >> @@ -897,7 +897,6 @@ static int hidma_probe(struct platform_device *pdev)
> >>  	if (msi)
> >             ^^^
> > This test doesn't work.  It will call free hidma_free_msis() if the
> > hidma_request_msi() call fails.  We should do:
> > 
> > 	if (msi) {
> > 		rc = hidma_request_msi(dmadev, pdev);
> > 		msi = false;

What I meant to say here was:

	if (msi) {
		rc = hidma_request_msi(dmadev, pdev);
		if (rc)
			msi = false;

Otherwise we end up checking freeing the msi in the error handling
code when we did not take it.

Hopefully, that clears things up?

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
