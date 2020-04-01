Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E437B19A9E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 13:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qCG1N6dHk/F44k/G4uIPhLtl3pbFOAmWcg42wFd4ys=; b=a0M32ANI+AiwY8
	+BO9LNq8XoufHmCjtYppuHyVY2i5hvMydM80RiVHt9M4F7XPOUe2Q3T3rvgKnCP0ZL6uSmMZvcePv
	V3xp/fJLKmSnP/CQUAAbfmxz9X6+smLJdEvYH1GjdY7toC0Psv5NkT3TjD7Y75wrfoo3OuTPW+rI0
	yj01EeiWHHJ4IkCCxfX+3bhowvz4jNSMksNSC3wgnjprCzNIyDOqjJP57l0PqJ5sROMgwHEyLn9KL
	eckPHCYL/ndMqapygGF6nAmU7s6ZICpoJwud00M76iwJ99jg5tdOZk/CSZQutE4bPnIaT9RD/Ln1l
	tgcoo0sE3rhPJR3yfIEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJb77-0000BN-MU; Wed, 01 Apr 2020 11:00:53 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJb70-0000At-7I
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 11:00:47 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 031Aqijs155882;
 Wed, 1 Apr 2020 11:00:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=k/zLhrZsADjqzq+3QwgvoWL1MmcxznVBM92vxIE2puw=;
 b=ONdjM18avmW5dE+LLNFwYJoAAf8ZcTTxtrswiZj9Chf4Ukg35sdE5LaQNyZPIdnF57su
 rNKvBN5B8oAGEUdJBq6uMPAyIVRYctUKe+0FKp7+7y/tFbqasY/4kTGVUJKvY2yHN9j1
 DozpO8Yibrjf7wtChKBzlmYDAipeGswqfWSUMN2qQuUwtppVwbg3mft5tX5fQimrTV1I
 Hzl6BEm73VTbikMd7HxqnIabVego5iqh4N/YbE0oPL0pjj5FFAw2/8ilVAQrRGjreYAv
 1Vuek17GiklF0NZBBKNvbUMVAyhDY12/j938imRsUalvfbg0PRDnkQvrExOJvQb6Ozll Kg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 303aqhn75f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Apr 2020 11:00:18 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 031Ar08g045201;
 Wed, 1 Apr 2020 11:00:18 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 304sjk0hsg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Apr 2020 11:00:17 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 031B07RP031187;
 Wed, 1 Apr 2020 11:00:07 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 01 Apr 2020 04:00:06 -0700
Date: Wed, 1 Apr 2020 13:59:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 0/4] media Kconfig reorg - part 2
Message-ID: <20200401105949.GB2001@kadam>
References: <cover.1585151701.git.mchehab+huawei@kernel.org>
 <6fadc6ea-8512-03ba-da30-43c64d7562f6@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6fadc6ea-8512-03ba-da30-43c64d7562f6@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9577
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 mlxscore=0
 malwarescore=0 phishscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004010100
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9577
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 clxscore=1011
 malwarescore=0 impostorscore=0 mlxlogscore=999 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004010100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_040046_352208_33E546A5 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pavel Machek <pavel@ucw.cz>, devel@driverdev.osuosl.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-samsung-soc@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>, Yong Zhi <yong.zhi@intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Yong Deng <yong.deng@magewell.com>,
 Chen-Yu Tsai <wens@csie.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Hyun Kwon <hyun.kwon@xilinx.com>,
 Heungjun Kim <riverful.kim@samsung.com>, linux-renesas-soc@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 04:36:31PM -0300, Helen Koike wrote:
> Hello,
> 
> On 3/25/20 1:03 PM, Mauro Carvalho Chehab wrote:
> > That's the second part of media Kconfig changes. The entire series is
> > at:
> > 
> > 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=media-kconfig
> 
> I made a quick experiment (using this branch) with someone who works
> with the kernel for his master degree, but doesn't have much experience in kernel development in general.
> I asked him to enable Vimc (from default configs, where multimedia starts disabled).

The whole config system is really outdated.

It should be that this task was done with a command like "kconfig enable
vimc".  It would ask necessary questions and pull in the dependencies
automatically.

Twenty years ago it made sense to go through the menus and select things
one by one.  Does anyone really start from defconfig any more?  Surely
everyone starts with a known working config and just enables specific
options.

I started to hack together some code to create a kconfig program to
enable and disable options.  The problem is that all library code
assumes we want to display menus so it was a lot of work and I gave up.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
