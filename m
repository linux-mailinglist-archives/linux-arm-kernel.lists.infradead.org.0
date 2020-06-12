Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9708C1F7C94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 19:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvWSdx/4emiFnEkhx1cL+2L5g3LNyZcsA0ovc/eEsTA=; b=Ah7EE+61nkTiHx
	VY8pwQxU7v0Z4MVw+XCjxtZBw/OkK+aRMi8hGtCASIDtPhNyWP/nVoXY0UxQzgj9FsR4yExMhm/Iz
	Sgs53acKSkeKRJjLAXrzhFq4nHGRdL0IzucJSqu1SlkRJ3x9OFwD0EdF60G1Gp87YWbTMldzTU34Z
	ikQg/qgLmBG5Pst0kOmMnoAJVT3lGlhqN30Ru2PLnAJVBtu2fqwxlTqooD6P+RMVd1nefCkPDTBKQ
	Xk3ZRlyts2rTxRiz9ilvY7snFN5cF9DHe9uGGfCnSWkwga2j7v6AK1xKKWB3uuH3BoGtIODs9anEJ
	Y674L+R724ed+2b+Xh1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjniJ-0005Kw-5w; Fri, 12 Jun 2020 17:43:35 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjniB-0005KG-Tf
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 17:43:29 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05CHh2GJ020379;
 Fri, 12 Jun 2020 17:43:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=2HKjUnGV9l2/3QVc26ktJ2ExXTSwqCntl/WmJ1OPOAQ=;
 b=fXqC4B0F+31nHBQIiZF+Z3dZz1mibIBrsYxtQYnmOBtyhHSByIk1gtSrX49sCiOT1JCL
 Ogdcu5diqaCUuroGDBcmKJ+Hb5HjTPcD04iE0ZHByMvJ93TKgM5nWdtfWndOiWmdZ9LH
 AEUuUKs+TxMhDQQTwfl0BLWwClJhFEitOxEpqHn/JvafAwBULdaVWDW5sv92kIPhBnrh
 TBx67TII8Y6UQSEr0350crJLwIeDOtn7eDy+otQeKJ97vXJ8n+1ZR97gPi1lqk2dHK1D
 qJS1wEthJkadjfDQJUdHqfzTW34Vo9NG+YdCnu4Jo1g5Xu5+hpMSGb5BifYUAwQo3U44 Hg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 31jepp7xsr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 12 Jun 2020 17:43:18 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05CHglGs132320;
 Fri, 12 Jun 2020 17:43:17 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 31mebng3cc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Jun 2020 17:43:17 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05CHgNna012115;
 Fri, 12 Jun 2020 17:42:23 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 12 Jun 2020 10:42:22 -0700
Date: Fri, 12 Jun 2020 20:42:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH] coresight: cti: Fix error handling in probe
Message-ID: <20200612174215.GI4282@kadam>
References: <20200612121047.GF4282@kadam>
 <20200612121133.GA1139533@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612121133.GA1139533@mwanda>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9650
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 malwarescore=0
 spamscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006120128
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9650
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 malwarescore=0 mlxscore=0 cotscore=-2147483648 adultscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006120128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_104328_043762_58BACE89 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 03:11:33PM +0300, Dan Carpenter wrote:
> +static int cti_pm_setup(struct cti_drvdata *drvdata)
> +{
> +	int ret;
> +
> +	if (drvdata->ctidev.cpu == -1)
> +		return 0;
> +
> +	if (nr_cti_cpu)
> +		goto done;
> +
> +	cpus_read_lock();
        ^^^^^^^^^^^^^^^^
One thing which I do wonder is why we have locking here but not in the
cti_pm_release() function.  That was how the original code was so the
patch doesn't change anything, but I am curious.

> +	ret = cpuhp_setup_state_nocalls_cpuslocked(
> +			CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
> +			"arm/coresight_cti:starting",
> +			cti_starting_cpu, cti_dying_cpu);
> +	if (ret) {
> +		cpus_read_unlock();
> +		return ret;
> +	}
> +
> +	ret = cpu_pm_register_notifier(&cti_cpu_pm_nb);
> +	cpus_read_unlock();
> +	if (ret) {
> +		cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> +		return ret;
> +	}
> +
> +done:
> +	nr_cti_cpu++;
> +	cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
> +
> +	return 0;
> +}
> +
>  /* release PM registrations */
>  static void cti_pm_release(struct cti_drvdata *drvdata)
>  {
> -	if (drvdata->ctidev.cpu >= 0) {
> -		if (--nr_cti_cpu == 0) {
> -			cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
> +	if (drvdata->ctidev.cpu == -1)
> +		return;
>  
> -			cpuhp_remove_state_nocalls(
> -				CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> -		}
> -		cti_cpu_drvdata[drvdata->ctidev.cpu] = NULL;
> +	cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
> +	if (--nr_cti_cpu == 0) {
> +		cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
> +		cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
>  	}
>  }

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
