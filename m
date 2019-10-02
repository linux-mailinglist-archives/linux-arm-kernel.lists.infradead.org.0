Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E8BC898C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 15:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+YPsnPlGk4pSVVB1sqTu+slxXnP+b8aW7N7xN67MLs=; b=Y9AmIW6lcnxBG8
	bzNBk/zW8gz1zPXwE0n6CTtd2XBRC3FaKeIF2dRm/NWMbDAL8cJZMGd/lKZ4K01+zs94/rZnp2AMz
	H8494sfyJYB+iSCftJNHEtXUKtFwfwQMMMlyPk7e4G2WWBtdgw22/kW/8ScSBQpia8mdafqhzoT/t
	qMZs9IvUNplIAbgg9i9vvtGrN7oV7y7qFizwEAMIZL/uvd3Y41m5UFvLnHkOsSL6bd+Y99NooCb6c
	JOzA4ppdqX1IOrllK/MA0qaKBYhdnUe7OsfyZGdLQajNWZ03eLwIiGdWlfDZ2SEjbyIbOb+ia8iAp
	ww/z6K32pNr5SI1ks7yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFedM-0006sb-TR; Wed, 02 Oct 2019 13:25:36 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFedD-0006rs-RZ
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 13:25:29 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x92DJRAr183582;
 Wed, 2 Oct 2019 13:25:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=fnaqluJS7+jNKo+sOB2hvdoik1MKiOaiznVs/0wd7Co=;
 b=MXs6npPDLQui/GxD0IyNFtJQw1xdpRdorriOxmnfZPln/9faBkAjU5tSe4XwbkSFDpDm
 mnZfpnly6zTxdayCH60d/TW9sSAkf1ZZDhtjcmUjh768ocm4Mvk54erB+troAq90TNDL
 uH6FJI/uiOt4rQ7jMQPErTU12pUwOPAX9vw7umISTSPMOnjiRUXfMLfKMfAiPUcJRtui
 sh/JxhHT2fnDC+BbFicsthFyqBBP8gbpQw5cpdz30wHHy4Fup3H8gOPzlswKMfHCgn/z
 nUaHOngUxJxZQPQKaCS+SGLv20voNty3EN06YCEBFO4aavaqHowN+wTdDfMkmFWo4UZT Aw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2v9yfqcvx8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 02 Oct 2019 13:25:20 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x92DMmFk184316;
 Wed, 2 Oct 2019 13:25:20 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2vbsm3utr0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 02 Oct 2019 13:25:20 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x92DPIJJ025995;
 Wed, 2 Oct 2019 13:25:18 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 02 Oct 2019 06:25:18 -0700
Date: Wed, 2 Oct 2019 16:25:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] pwm: sun4i: redundant assignment to variable pval
Message-ID: <20191002132506.GO22609@kadam>
References: <20191002100844.10490-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002100844.10490-1-colin.king@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910020128
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910020128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_062527_988626_D2C78232 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
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
Cc: linux-pwm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 11:08:44AM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Variable pval is being assigned a value that is never read. The
> assignment is redundant and hence can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 6f5840a1a82d..53970d4ba695 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -156,7 +156,6 @@ static int sun4i_pwm_calculate(struct sun4i_pwm_chip *sun4i_pwm,
>  	if (sun4i_pwm->data->has_prescaler_bypass) {
>  		/* First, test without any prescaler when available */
>  		prescaler = PWM_PRESCAL_MASK;
> -		pval = 1;
>  		/*
>  		 * When not using any prescaler, the clock period in nanoseconds
>  		 * is not an integer so round it half up instead of

Are you sure?  It looks used to me.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
