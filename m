Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE75BA368
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 19:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AregR4Xtn35wQj+A2wFkwRqEmoSj/XwZmRHrjOLXdIw=; b=egTYEyIT+bou8x
	aTfoj8gcniV7GACp8Gx8fARpjZCBKAixvPeFSje9RCmHEUVNHUjEmSeudpJGgblZ8D99gFHJ0mLZp
	acagCBhd/5mjO1f0o/zEpJTtqf7VlFEnrP3afslCTrL1HIHHSR0dUpQySk1qQj8z88VxtuqRxc4lg
	9Tpl1F2PzaK7f7iNMuDS4AVGhpzLG5IpkLnIHprwQjqJsuHcVePMjr695XAaZypgU9pFcsMorGHCs
	SbGxW4UEi8jXi79mT2M/kzL0EV5MPXjCa+IqwJHtsqhvyqiKGPQnNMNw7QDzot2PLPzgDexQFX1Ad
	PVqTeGd3O25FtW+0G21w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC5z2-0005g3-Vw; Sun, 22 Sep 2019 17:49:17 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC5yc-0005fe-9F
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 17:48:52 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8MHesNA018859;
 Sun, 22 Sep 2019 17:48:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=INbULvYIT/Pb5v51jJEHnRs9ROAHWMn+IjBL3bVcp64=;
 b=A79eBZV8n8/ZVP9fGbKGZIwxGGbt194EsBlgFxHFH4OccZPuReDFWYr79OjIEq2zC9zm
 IxChKHlGY6enssLa6OoSirY197kHVk7HPOhQvIWmK4KE3hitrWWaBHZqMwuqX71rPr/p
 al55rlFi5Wbv0CaIkHzxFOdsXajlvpv+o/Oh2vHbVZh3Tl0RP7F9KPdEeJCF5+YkZADu
 +QNcp3bt4qCAvY7Ia0AukWTExwKbGJIrNmI+Zb3TWxBmToT8HY5zPpCIyLg9KFbNskLU
 PtL19u7ZFpi12glADrRB9+Lu+g2vwNfSdwzZ+3qCNKtkmx436+fAUvYNC11sU38ov1wY oA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2v5b9tbbud-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 22 Sep 2019 17:48:20 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8MHiHhA166738;
 Sun, 22 Sep 2019 17:48:19 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2v6actrs49-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 22 Sep 2019 17:48:19 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8MHmC7q025278;
 Sun, 22 Sep 2019 17:48:15 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 22 Sep 2019 10:48:12 -0700
Date: Sun, 22 Sep 2019 20:48:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@01.org, Russell King <rmk+kernel@armlinux.org.uk>
Subject: [arm:cex7 23/26] drivers/bus/fsl-mc/fsl-mc-uapi.c:88
 fsl_mc_uapi_dev_open() warn: possible memory leak of 'priv_data'
Message-ID: <20190922174804.GI20699@kadam>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9388
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909220187
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9388
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909220186
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_104850_458295_AEB38D77 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbuild-all@01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git cex7
head:   f959c38798814d3063719e70f279280fde355a49
commit: 00d36fa7e9c860aae5034c5f52acd91e6fb4ab4b [23/26] fsl-mc: add uapi interface for restool

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/bus/fsl-mc/fsl-mc-uapi.c:88 fsl_mc_uapi_dev_open() warn: possible memory leak of 'priv_data'

git remote add arm git://git.armlinux.org.uk/~rmk/linux-arm.git
git remote update arm
git checkout 00d36fa7e9c860aae5034c5f52acd91e6fb4ab4b
vim +/priv_data +88 drivers/bus/fsl-mc/fsl-mc-uapi.c

00d36fa7e9c860 Russell King 2019-09-12  45  static int fsl_mc_uapi_dev_open(struct inode *inode, struct file *filep)
00d36fa7e9c860 Russell King 2019-09-12  46  {
00d36fa7e9c860 Russell King 2019-09-12  47  	struct fsl_mc_device *root_mc_device;
00d36fa7e9c860 Russell King 2019-09-12  48  	struct uapi_priv_data *priv_data;
00d36fa7e9c860 Russell King 2019-09-12  49  	struct fsl_mc_io *dynamic_mc_io;
00d36fa7e9c860 Russell King 2019-09-12  50  	struct fsl_mc_uapi *mc_uapi;
00d36fa7e9c860 Russell King 2019-09-12  51  	struct fsl_mc_bus *mc_bus;
00d36fa7e9c860 Russell King 2019-09-12  52  	int error;
00d36fa7e9c860 Russell King 2019-09-12  53  
00d36fa7e9c860 Russell King 2019-09-12  54  	priv_data = kzalloc(sizeof(*priv_data), GFP_KERNEL);
                                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Can we use devm_ here?

00d36fa7e9c860 Russell King 2019-09-12  55  	if (!priv_data)
00d36fa7e9c860 Russell King 2019-09-12  56  		return -ENOMEM;
00d36fa7e9c860 Russell King 2019-09-12  57  
00d36fa7e9c860 Russell King 2019-09-12  58  	mc_uapi = container_of(filep->private_data, struct fsl_mc_uapi, misc);
00d36fa7e9c860 Russell King 2019-09-12  59  	mc_bus = container_of(mc_uapi, struct fsl_mc_bus, uapi_misc);
00d36fa7e9c860 Russell King 2019-09-12  60  	root_mc_device = &mc_bus->mc_dev;
00d36fa7e9c860 Russell King 2019-09-12  61  
00d36fa7e9c860 Russell King 2019-09-12  62  	mutex_lock(&mc_uapi->mutex);
00d36fa7e9c860 Russell King 2019-09-12  63  
00d36fa7e9c860 Russell King 2019-09-12  64  	if (!mc_uapi->local_instance_in_use) {
00d36fa7e9c860 Russell King 2019-09-12  65  		priv_data->mc_io = mc_uapi->static_mc_io;
00d36fa7e9c860 Russell King 2019-09-12  66  		mc_uapi->local_instance_in_use = 1;
00d36fa7e9c860 Russell King 2019-09-12  67  	} else {
00d36fa7e9c860 Russell King 2019-09-12  68  		error = fsl_mc_portal_allocate(root_mc_device, 0,
00d36fa7e9c860 Russell King 2019-09-12  69  					       &dynamic_mc_io);
00d36fa7e9c860 Russell King 2019-09-12  70  		if (error) {
00d36fa7e9c860 Russell King 2019-09-12  71  			dev_dbg(&root_mc_device->dev,
00d36fa7e9c860 Russell King 2019-09-12  72  				"Could not allocate MC portal\n");
00d36fa7e9c860 Russell King 2019-09-12  73  			goto error_portal_allocate;
                                                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^
00d36fa7e9c860 Russell King 2019-09-12  74  		}
00d36fa7e9c860 Russell King 2019-09-12  75  
00d36fa7e9c860 Russell King 2019-09-12  76  		priv_data->mc_io = dynamic_mc_io;
00d36fa7e9c860 Russell King 2019-09-12  77  	}
00d36fa7e9c860 Russell King 2019-09-12  78  	priv_data->uapi = mc_uapi;
00d36fa7e9c860 Russell King 2019-09-12  79  	filep->private_data = priv_data;
00d36fa7e9c860 Russell King 2019-09-12  80  
00d36fa7e9c860 Russell King 2019-09-12  81  	mutex_unlock(&mc_uapi->mutex);
00d36fa7e9c860 Russell King 2019-09-12  82  
00d36fa7e9c860 Russell King 2019-09-12  83  	return 0;
00d36fa7e9c860 Russell King 2019-09-12  84  
00d36fa7e9c860 Russell King 2019-09-12  85  error_portal_allocate:
00d36fa7e9c860 Russell King 2019-09-12  86  	mutex_unlock(&mc_uapi->mutex);
00d36fa7e9c860 Russell King 2019-09-12  87  
00d36fa7e9c860 Russell King 2019-09-12 @88  	return error;
00d36fa7e9c860 Russell King 2019-09-12  89  }

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
