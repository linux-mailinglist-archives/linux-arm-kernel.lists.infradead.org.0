Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0479443401
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 10:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOeFpFkyscZy7JutfRwmqvyip4bknHwTCs2BdxZMux4=; b=j46bpJXnePMUd4
	qccj81hjC522KLHk1Sd1XlG1W4ljAuaTKo2thdmT8Y0lMuMPd1c89nRZ+RHohEacde03q6GVvTCst
	D4xrE8ywvUo0h5FxPMZIbS+pHf0E8KQ1Y7N5hylWYQUQQXzGB1fkVmRGWxZ86+GbQxda8IBEdAxoy
	kSEHWYc2k6IPfdxRH1PZOGuswtmITn6xpq3UejkrfQfZdP/7Z4ravZiJoyVe5iVEwIZLXaKe8MmbO
	/FObcM06a99ZwF1BqEtKw6NVh4feH+VrA4HAm7pf1SoBB2IXw/4rbKoB9/ckA4wbwENEwu6jQ15bS
	thST/3QnM9GGt8BSCa4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbKtD-0004jO-0g; Thu, 13 Jun 2019 08:15:19 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbKsY-0004Ud-3G
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 08:14:39 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5D8DfAM085841;
 Thu, 13 Jun 2019 08:14:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=XWdgxTdniwntkEIDG2SNziPX1t3Vu0D1U5JGNb+EuBs=;
 b=sbTI5GJvuNfhg+vQQX93BC3rr5+LeVu+HtdQCRpT6KUFsNzMYFyYfSulOJnK8BLOvIdN
 9TbbR+fhcBsihhhbl27k+jgrC4MaR7EFmJM8bRBwLq3FdelgrJBRJv9ZfgW8Ca6aK73m
 X033eS14x6vpcygJ+POCRb5yq2o0eQJsF0vZks29ygQqIK9Dio+twQvGcDHqFVgMJ744
 Q5uqJBtChxFcFkkJIcJTGKp99+9FsKrTVfadOCtPou4eiYGcCR5b4wWyWBNcbXn29oa6
 gl9+2NJUhdJXX7uko787YvsrqrJ86WuvfyTGhIHUt4QB54VT6+U8BNLuhPrMaA41kvdd 9A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2t05nqywkn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 08:14:30 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5D8DA6s066457;
 Thu, 13 Jun 2019 08:14:30 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2t1jpje2vk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 08:14:30 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5D8EStP004671;
 Thu, 13 Jun 2019 08:14:29 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 13 Jun 2019 01:14:28 -0700
Date: Thu, 13 Jun 2019 11:14:19 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH] coresight: potential uninitialized variable in probe()
Message-ID: <20190613081419.GG1893@kadam>
References: <20190613065815.GF16334@mwanda>
 <20190613074922.GB21113@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613074922.GB21113@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906130066
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906130066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_011438_351507_FB58F170 
X-CRM114-Status: GOOD (  24.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 03:49:22PM +0800, Leo Yan wrote:
> Hi Dan,
> 
> On Wed, Jun 12, 2019 at 11:58:15PM -0700, Dan Carpenter wrote:
> > The "drvdata->atclk" clock is optional, but if it gets set to an error
> > pointer then we're accidentally return an uninitialized variable instead
> > of success.
> 
> You are right, thanks a lot for pointing out.
> 
> I'd like to initialize 'ret = 0' at the head of function, so we can
> has the same fashion with other CoreSight drivers (e.g. replicator).
> 
>  static int funnel_probe(struct device *dev, struct resource *res)
>  {
> -	int ret;
> +	int ret = 0;
> 
> If you agree, could you send a new patch for this?

Obviously that's an option I considered...  The reason I didn't go with
that is that a common bug that I see is:

	int ret = 0;

	p = kmalloc();
	if (!p)
		goto free_whatever;

In my experience it's better to initialize the return as late as
possible so that you get static checker warnings when you forget to set
the error code.

Also I think my way is more readable.  I like to make the success path
as explicit as possible.  I hate when people do things like:

	if (!ret)
		return ret;

About 10% of the time when you see this it is a bug, but it's hard to
tell because it's not readable like it would be if people did:

	if (!ret)
		return 0;

Or sometimes you see things like:

	if (corner_case)
		goto free; /* success path */

Without the "/* success path */ comment explaining why we're returning
zero most readers will assume it's a mistake.

regards,
dan carpenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
