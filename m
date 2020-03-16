Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BFD1864E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 07:01:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXrbJhXEpTbNeRaHRlNsEXzR6vydHk7MDiMUxF/BKHA=; b=eeDAPxmn5EQ5V6
	QqkLbdlTLu825aJxWlwnU9EOGWKYLEXeTRsNOxBJ7TPc/LbEQV0c25PjiJFUmq0x2JIEMGBOtcLSS
	+1UixKD3MI8BE+HDoB8Sq5I/u+HDfpg3rtdbzQqJ1MFyn7Gpdk1I4YE7KIqzS2NS66C5vALX+8/Gu
	81YA6lqfktsvuv95Nyc5MHIrGNHs6htNzaVUuLdu41f5DeMu1PrGFqYqnlmMolXuVNQ69fJRm7MUV
	/i/fiHDlZNJpd+KiZjLZs2nKwvTxCZz2M2pBVrE1ZatQeMKz2ToAr8KylwpkMiVbyCJ0ZUJGwD1Qb
	rc2wF2AM54Of6m0KIjKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDio3-00089c-Ky; Mon, 16 Mar 2020 06:00:55 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDinm-00080B-O7
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 06:00:41 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200316060034epoutp047183a21e9875908f808a26a65a6a2c53~8s2mSYisM1543515435epoutp04P
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 06:00:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200316060034epoutp047183a21e9875908f808a26a65a6a2c53~8s2mSYisM1543515435epoutp04P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584338434;
 bh=2Kv+w3PNCQWlj7hMQ3lPJvwlLeMJHkR1BiwXPydc7rw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=gLX7Y46mmWgkuMGaRwWEbpzFdX+UQ63COuhNFZLCYh8495eHlbRJKKITYbdgrTBvT
 FsjJGlTOPdBeQE9WyUI1mrXzTL5LPuM7knft8h7Mbh7R5AkFdZqVVHlQ8DvmhySNi7
 R2XdyhMUfDSu5EueoC9/iPm/e/+T48yIu20pI3Cg=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200316060033epcas1p25f9fcf0f932e4dcb8ed8d5a2639b5aa2~8s2lZHDLS0437604376epcas1p2t;
 Mon, 16 Mar 2020 06:00:33 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.152]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 48glyk4dQlzMqYlm; Mon, 16 Mar
 2020 06:00:30 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 0C.8F.04140.9F51F6E5; Mon, 16 Mar 2020 15:00:25 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200316060024epcas1p22426fb960f9d63d3e54178e0a7f7161d~8s2cemkrD0437704377epcas1p2X;
 Mon, 16 Mar 2020 06:00:24 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200316060024epsmtrp12481039a97564aae072b9d17e401300c~8s2cbFH2Y2667026670epsmtrp1j;
 Mon, 16 Mar 2020 06:00:24 +0000 (GMT)
X-AuditID: b6c32a36-412c19c00000102c-d6-5e6f15f9259a
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 4D.EB.04024.8F51F6E5; Mon, 16 Mar 2020 15:00:24 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200316060024epsmtip2997fd94dd47d0296cf99fd7f3550fd78~8s2cM7Ch32560725607epsmtip2q;
 Mon, 16 Mar 2020 06:00:24 +0000 (GMT)
Subject: Re: [PATCH v2] PM / devfreq: Fix handling dev_pm_qos_remove_request
 result
To: Leonard Crestez <leonard.crestez@nxp.com>, dAN cARPENTER
 <DAN.CARPENTER@ORACLE.COM>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <2b49cbce-7d3f-3c61-5ae8-98b5e7580553@samsung.com>
Date: Mon, 16 Mar 2020 15:09:12 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <06fc3c3d0a8bca1bce104ca9d6a7d5ff94bdf9ab.1584027085.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHJsWRmVeSWpSXmKPExsWy7bCmru5P0fw4g4tt3BZ3bp9mtnj9bzqL
 xfnzG9gtzja9YbdYcfcjq8Wmx9dYLbp+rWS2+Nx7hNHi84bHjBa3G1ewWZw5fYnVYvODY2wO
 PB6zGy6yeOycdZfdY9OqTjaPzUvqPTa+28Hk8fHpLRaPLVfbWTz6tqxi9Pi8SS6AMyrbJiM1
 MSW1SCE1Lzk/JTMv3VbJOzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwfoZCWFssScUqBQ
 QGJxsZK+nU1RfmlJqkJGfnGJrVJqQUpOgWWBXnFibnFpXrpecn6ulaGBgZEpUGFCdkbnpMyC
 P3wVd++INDBO5Oli5OSQEDCROP24kbWLkYtDSGAHo8S9B4+hnE+MEhMXfmCEcL4xSsw5f4cN
 pqXx+U12iMReRonpqw4wQzjvGSXO3TrKCFIlLBAq0bRnLguILSIQKXF+434mkCJmgTdMEnfv
 3WIGSbAJaEnsf3EDbCy/gKLE1R+PwZp5Bewk9vf8Barh4GARUJWYuiEbJCwqECZxclsLVImg
 xMmZT8DmcwrESfzsWw1mMwuIS9x6Mp8JwpaX2P52DjPE1ZvYJY5MzQQZKSHgItH4mwUiLCzx
 6vgWdghbSuJlfxuUXS2x8uQRNpCTJQQ6GCW27L/ACpEwlti/dDITyBxmAU2J9bv0IcKKEjt/
 z2WEWMsn8e5rDyvEKl6JjjYhiBJlicsP7jJB2JISi9s72SYwKs1C8swsJA/MQvLALIRlCxhZ
 VjGKpRYU56anFhsWGCFH9SZGcFrWMtvBuOiczyFGAQ5GJR5eibS8OCHWxLLiytxDjBIczEoi
 vB012XFCvCmJlVWpRfnxRaU5qcWHGE2BQT2RWUo0OR+YM/JK4g1NjYyNjS1MDM1MDQ2VxHmn
 Xs+JExJITyxJzU5NLUgtgulj4uCUamBc65f1/83aW0ELzuZNPf1xrd/FPeL6lQ8cp/31yllh
 FOj6eU5Gr3LYjotSWh9PekuemjVl8b0TTrOqj/c9iDOOLcqOiTt3sMh2FVdwQOY8YYkTc5qr
 uk2cnB6I2m20yM7I3FZZLtr/bd+WtuK/cUK5q8J39UyZ+ej2rYksxS1Ctkq2xRN37nulxFKc
 kWioxVxUnAgAkhIITuEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJIsWRmVeSWpSXmKPExsWy7bCSvO4P0fw4g0vH+S3u3D7NbPH633QW
 i/PnN7BbnG16w26x4u5HVotNj6+xWnT9Wsls8bn3CKPF5w2PGS1uN65gszhz+hKrxeYHx9gc
 eDxmN1xk8dg56y67x6ZVnWwem5fUe2x8t4PJ4+PTWyweW662s3j0bVnF6PF5k1wAZxSXTUpq
 TmZZapG+XQJXRuekzII/fBV374g0ME7k6WLk5JAQMJFofH6TvYuRi0NIYDejxLIF39khEpIS
 0y4eZe5i5ACyhSUOHy6GqHnLKNE9oZ0RpEZYIFSiac9cFhBbRCBSYvbfw8wgRcwCb5gk2va3
 M4MkhAQ2Mkp8f+wFYrMJaEnsf3GDDcTmF1CUuPrjMdggXgE7if09f8GWsQioSkzdkA0SFhUI
 k9i55DETRImgxMmZT8B2cQrESfzsWw1mMwuoS/yZd4kZwhaXuPVkPhOELS+x/e0c5gmMwrOQ
 tM9C0jILScssJC0LGFlWMUqmFhTnpucWGxYY5qWW6xUn5haX5qXrJefnbmIER6iW5g7Gy0vi
 DzEKcDAq8fBKpOXFCbEmlhVX5h5ilOBgVhLh7ajJjhPiTUmsrEotyo8vKs1JLT7EKM3BoiTO
 +zTvWKSQQHpiSWp2ampBahFMlomDU6qBMd3k9STeP2eZjoqZJplU5s/Njlc9o8vtJKbL1q+e
 s1jfceJim2P3RJa8j+Vw+um9rXmi74fafJPV5yzXG8Z3vPeIS3K868Ez5XFZ8zWGOUX73P4y
 pHDcc1L9O23J549bi7KMg869PxL24sCq+Jo9i5fP8lKoVgsKfJPA2cOqZ7dEzfGsZSKPEktx
 RqKhFnNRcSIAYOoAtMwCAAA=
X-CMS-MailID: 20200316060024epcas1p22426fb960f9d63d3e54178e0a7f7161d
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200312153613epcas1p14982cbd7b5e327f8a13a82c95b5bfce4
References: <CGME20200312153613epcas1p14982cbd7b5e327f8a13a82c95b5bfce4@epcas1p1.samsung.com>
 <06fc3c3d0a8bca1bce104ca9d6a7d5ff94bdf9ab.1584027085.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_230039_056310_89E86DE3 
X-CRM114-Status: GOOD (  22.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-pm@vger.kernel.org, Viresh Kumar <vireshk@kernel.org>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 mYUNGjOO hAM <MYUNGJOO.HAM@SAMSUNG.COM>, linux-imx@nxp.com,
 Adam Ford <aford173@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/13/20 12:36 AM, Leonard Crestez wrote:
> The dev_pm_qos_remove_request function can return 1 if
> "aggregated constraint value has changed" so only negative values should
> be reported as errors.
> 
> Fixes: 27dbc542f651 ("PM / devfreq: Use PM QoS for sysfs min/max_freq")
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Cc: stable@vger.kernel.org
> ---
>  drivers/devfreq/devfreq.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Changes since v1:
> * Add fixes and cc: stable, drop empty line in message.
> Link to v1: https://patchwork.kernel.org/patch/11433131/
> 
> I'm not sure this meet that stable kernel standard of "real bug that
> bothers people" because all this fixes is a spurious dev_warn on device
> removal. But Sasha Levin's script seem to collect a lot of low-priority
> fixes anyway.
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 5c481ad1cfc7..6fecd11dafdd 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -703,17 +703,17 @@ static void devfreq_dev_release(struct device *dev)
>  		dev_warn(dev->parent,
>  			"Failed to remove min_freq notifier: %d\n", err);
>  
>  	if (dev_pm_qos_request_active(&devfreq->user_max_freq_req)) {
>  		err = dev_pm_qos_remove_request(&devfreq->user_max_freq_req);
> -		if (err)
> +		if (err < 0)
>  			dev_warn(dev->parent,
>  				"Failed to remove max_freq request: %d\n", err);
>  	}
>  	if (dev_pm_qos_request_active(&devfreq->user_min_freq_req)) {
>  		err = dev_pm_qos_remove_request(&devfreq->user_min_freq_req);
> -		if (err)
> +		if (err < 0)
>  			dev_warn(dev->parent,
>  				"Failed to remove min_freq request: %d\n", err);
>  	}
>  
>  	if (devfreq->profile->exit)
> 

Applied it. Thanks.

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
