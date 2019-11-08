Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4055F442A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 11:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/ive2s6MmCCyBunAW8h/3HTmWdYYQ6nbn7nzBb0Sck=; b=d9ICJBIzxh33Fd
	Is08f0XJo+QjT9mjBfYzxdZf6YBjS63SPi7m9EFwBKIYmfoWN5W+KRIVb+ExSssL7z/vhX5xWvn+2
	3U6D7AxP2hgxL8AwGUAkv549ujwc+04jJeZJNlCLAuS2IXQPdJ+WhPoiYsMiaf9wkMZcUjQuQP19j
	B7aA+Kr/IkvmcZ/FLw2ORzzBKSFgI2ZYru9Z+RvV9CDYBYmuBIN97W5XB8FbquSsoV/FP77nrU6HN
	vPGn6IqAAmgAA+BW1vxQVDdyH/wundGHp9KEkzoxB8YKPUHhX+Y5WyPmHHa0os1nWABxPcc/Kmb0H
	WJ+XopFyLJ9d+6VyZNnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT19t-00017G-HL; Fri, 08 Nov 2019 10:06:25 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT19l-00016R-89
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:06:18 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA8A4x9I001795;
 Fri, 8 Nov 2019 10:05:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=lC6Rkjy3TVUxRx/UkJEpYp4pAS/Xsi+0+ID04N6qrLk=;
 b=c6h9rDXpTZeTKMt/UAHRyxcJCa3LmlwbmCwd3WfWT2FHiYjk9b1XuIHdE+Q9e+VWtEa9
 cBwQJ90CMjAzOilomMcgaXlZM2CcAhKXaFG9Nu6xmT/tGj6fBwqh1H908Lk6OwrZs7zU
 dUE9VNd2TVaBl1NGzbdqQV9MgRyaagI1EnQyq2rooCQroHr7kutic8477Jnb3E9gPOcI
 rha2gZSs2A8wjG0Uk011O0sGiWgX2KX/Y899/tCLcEcTkhmVjhqVSj4WhUMMiUqrtuZR
 s7I1Ydxoioxw7fFsMY0pYFCL1iHSK8Z0Dyz3QD3KVgQOZLnkjq/VgTk3S18UJZn8+Ao6 KA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2w41w14btb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 Nov 2019 10:05:56 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA8A4Iq9024070;
 Fri, 8 Nov 2019 10:05:55 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2w41whcqwd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 08 Nov 2019 10:05:55 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xA8A5rF7005134;
 Fri, 8 Nov 2019 10:05:54 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 08 Nov 2019 02:05:52 -0800
Date: Fri, 8 Nov 2019 13:05:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH -next] coresight: replicator: Fix missing spin_lock_init()
Message-ID: <20191108100540.GQ10409@kadam>
References: <20191106115651.113943-1-weiyongjun1@huawei.com>
 <CANLsYkxKAC9FLYkFjuehj_oFHTVyd=8_R8bAKjPxTXQyAGkwYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkxKAC9FLYkFjuehj_oFHTVyd=8_R8bAKjPxTXQyAGkwYw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911080099
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911080099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_020617_422482_6F0AE2EE 
X-CRM114-Status: GOOD (  23.29  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Yabin Cui <yabinc@google.com>, kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Wei Yongjun <weiyongjun1@huawei.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 11:47:11AM -0700, Mathieu Poirier wrote:
> On Wed, 6 Nov 2019 at 04:57, Wei Yongjun <weiyongjun1@huawei.com> wrote:
> >
> > The driver allocates the spinlock but not initialize it.
> > Use spin_lock_init() on it to initialize it correctly.
> >
> > This is detected by Coccinelle semantic patch.
> >
> > Fixes: 0093875ad129 ("coresight: Serialize enabling/disabling a link device.")
> > Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> > ---
> >  drivers/hwtracing/coresight/coresight-replicator.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> > index 43304196a1a6..e7dc1c31d20d 100644
> > --- a/drivers/hwtracing/coresight/coresight-replicator.c
> > +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> > @@ -248,6 +248,7 @@ static int replicator_probe(struct device *dev, struct resource *res)
> >         }
> >         dev->platform_data = pdata;
> >
> > +       spin_lock_init(&drvdata->spinlock);
> 
> I have applied both patches but removed the "Fixes" line since the
> commit is only visible in my local coresight next tree.
> 

Unless you rebase the tree, then the Fixes tag will still be valid.
(Probably local implies you rebase it I guess).

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
