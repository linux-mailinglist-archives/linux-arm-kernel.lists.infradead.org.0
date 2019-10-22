Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB67E009D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 11:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=RI40vLWJsoe/xEO8k9sh6p39BFwD5WV2W50eO9jDm7E=; b=KA1HAP6FsdxeYN
	fc77wZYxZM0bFDTSniZjAoxoMb2Dca/dNYe+55OlC2cQnmyTYJwagWvv6ecDlpDjap+THYHppkmUJ
	KxOlZWS9jNPn5u7X4Gc2I5sFdWNplnSefLHOWNh7NhSCasuXZ0MReQUfoiXKJQlGGf39TAROIMCae
	g0lrn0YgeTonl63vDar2R6PoBco4N0LEOGfPMi5rY78lejIiGilvSQl4a9ilqvvS9VSPnBAp964r6
	d69O89u7asY3dR9/h/34S/lz6z3ssfgDnsQVGjGOKoDkfqqgbR/837jCptJGbaepCOQRHHGu0x9mb
	xm1vl0yeO39mIpshRb7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMqP4-0003pX-S7; Tue, 22 Oct 2019 09:24:34 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqOu-0003mH-1T
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 09:24:25 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9M9JU8i185942;
 Tue, 22 Oct 2019 09:23:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2019-08-05; bh=++cgjjQ/jgmlwI3rDPAllCFU0ypC2zwR/EH/tCVXcuY=;
 b=R3F5cO+rqCFTw59Qhr3SYTlf2PkZT2idE8BVKKsHaJin+qrPNm6KnMhoeKLMdFKc9qEO
 fsW4SGW8prYghRkvbgRzC38LMSWKi3R7patJVssDcsqogagNuoI3I/V6dmU4+j0FRfV5
 +RPO+TY21lJN5uBhsfH6xIOepme7PbhdPrrdyh1IyJ2HV6An8sVJm7O3SyeIHjF0rQHm
 0ivQwNJePmziXVQuJaMipaT/cqV+KG6VxLuMWY4W93bFrPUW3FnB0mcATSUWZH8IWQ7Y
 VeY/XS394I2IQCTgkAjxu0yERIBbmn7XMkOCYbIGo5NP75KUjzK2NS7ZwHdFL62PcaUf Ew== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2vqswtdekj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 22 Oct 2019 09:23:40 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9M9NLn9156690;
 Tue, 22 Oct 2019 09:23:40 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2vsx22bepv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 22 Oct 2019 09:23:39 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9M9NXj0032288;
 Tue, 22 Oct 2019 09:23:33 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 22 Oct 2019 02:23:32 -0700
Date: Tue, 22 Oct 2019 12:23:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v4 02/11] crypto: Add Allwinner sun8i-ce Crypto Engine
Message-ID: <20191022092312.GC10833@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191012184852.28329-3-clabbe.montjoie@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9417
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910220087
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9417
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910220087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_022424_222723_C512CA3D 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 FAKE_REPLY_C           No description available.
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kbuild-all@lists.01.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk, mripard@kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 will@kernel.org, davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Corentin,

url:    https://github.com/0day-ci/linux/commits/Corentin-Labbe/crypto-add-sun8i-ce-driver-for-Allwinner-crypto-engine/20191014-104401
base:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c:371 sun8i_ce_allocate_chanlist() error: uninitialized symbol 'err'.

# https://github.com/0day-ci/linux/commit/f113059e7b4f94c545994aeafdc809a3e4907ae4
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout f113059e7b4f94c545994aeafdc809a3e4907ae4
vim +/err +371 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c

f113059e7b4f94 Corentin Labbe 2019-10-12  334  static int sun8i_ce_allocate_chanlist(struct sun8i_ce_dev *ce)
f113059e7b4f94 Corentin Labbe 2019-10-12  335  {
f113059e7b4f94 Corentin Labbe 2019-10-12  336  	int i, err;
f113059e7b4f94 Corentin Labbe 2019-10-12  337  
f113059e7b4f94 Corentin Labbe 2019-10-12  338  	ce->chanlist = devm_kcalloc(ce->dev, MAXFLOW,
f113059e7b4f94 Corentin Labbe 2019-10-12  339  				    sizeof(struct sun8i_ce_flow), GFP_KERNEL);
f113059e7b4f94 Corentin Labbe 2019-10-12  340  	if (!ce->chanlist)
f113059e7b4f94 Corentin Labbe 2019-10-12  341  		return -ENOMEM;
f113059e7b4f94 Corentin Labbe 2019-10-12  342  
f113059e7b4f94 Corentin Labbe 2019-10-12  343  	for (i = 0; i < MAXFLOW; i++) {
f113059e7b4f94 Corentin Labbe 2019-10-12  344  		init_completion(&ce->chanlist[i].complete);
f113059e7b4f94 Corentin Labbe 2019-10-12  345  
f113059e7b4f94 Corentin Labbe 2019-10-12  346  		ce->chanlist[i].engine = crypto_engine_alloc_init(ce->dev, true);
f113059e7b4f94 Corentin Labbe 2019-10-12  347  		if (!ce->chanlist[i].engine) {
f113059e7b4f94 Corentin Labbe 2019-10-12  348  			dev_err(ce->dev, "Cannot allocate engine\n");
f113059e7b4f94 Corentin Labbe 2019-10-12  349  			i--;
f113059e7b4f94 Corentin Labbe 2019-10-12  350  			goto error_engine;

err = -ENOMEM;

f113059e7b4f94 Corentin Labbe 2019-10-12  351  		}
f113059e7b4f94 Corentin Labbe 2019-10-12  352  		err = crypto_engine_start(ce->chanlist[i].engine);
f113059e7b4f94 Corentin Labbe 2019-10-12  353  		if (err) {
f113059e7b4f94 Corentin Labbe 2019-10-12  354  			dev_err(ce->dev, "Cannot start engine\n");
f113059e7b4f94 Corentin Labbe 2019-10-12  355  			goto error_engine;
f113059e7b4f94 Corentin Labbe 2019-10-12  356  		}
f113059e7b4f94 Corentin Labbe 2019-10-12  357  		ce->chanlist[i].tl = dma_alloc_coherent(ce->dev,
f113059e7b4f94 Corentin Labbe 2019-10-12  358  							sizeof(struct ce_task),
f113059e7b4f94 Corentin Labbe 2019-10-12  359  							&ce->chanlist[i].t_phy,
f113059e7b4f94 Corentin Labbe 2019-10-12  360  							GFP_KERNEL);
f113059e7b4f94 Corentin Labbe 2019-10-12  361  		if (!ce->chanlist[i].tl) {
f113059e7b4f94 Corentin Labbe 2019-10-12  362  			dev_err(ce->dev, "Cannot get DMA memory for task %d\n",
f113059e7b4f94 Corentin Labbe 2019-10-12  363  				i);
f113059e7b4f94 Corentin Labbe 2019-10-12  364  			err = -ENOMEM;
f113059e7b4f94 Corentin Labbe 2019-10-12  365  			goto error_engine;
f113059e7b4f94 Corentin Labbe 2019-10-12  366  		}
f113059e7b4f94 Corentin Labbe 2019-10-12  367  	}
f113059e7b4f94 Corentin Labbe 2019-10-12  368  	return 0;
f113059e7b4f94 Corentin Labbe 2019-10-12  369  error_engine:
f113059e7b4f94 Corentin Labbe 2019-10-12  370  	sun8i_ce_free_chanlist(ce, i);
f113059e7b4f94 Corentin Labbe 2019-10-12 @371  	return err;
f113059e7b4f94 Corentin Labbe 2019-10-12  372  }

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
