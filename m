Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6502310E41A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 02:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KnSpzVFoZQV8ekv+6f7OLtl2HZSMIBEWIePVsIKj0Q=; b=kdlatOhYJZiQ1N
	NgvvLI2/X7d/gG48DpXk8meRIjEkovumoZP/8PugqL03MP6uMEleDNT7QkGQt3HYhiXLKv0SE4CEw
	xK5bto87KxbTV7Qh4YIgtLuheanuUTdAnwbWZFXDEJ1GLqx9jHbALh4LEdt4iO4OUBiIOD74nOowM
	QitnvB3F/4640SSwIW1YI9NibeemNAiNTCZST3VRc23KfwLec+P54Abj/fF3X5CTP4bzh32AmTMb8
	K+3IVA3yhfjjxoWeZeVc5qZhZQ62HGc344AJv9WksMb2pzrqZUO7nJgEV76J9EaKO92GrEK5boSb4
	h6kj1mDb/7qYC5wYdAFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iba6f-00007a-AG; Mon, 02 Dec 2019 01:02:29 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iba6W-00006y-SZ
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 01:02:22 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191202010218epoutp01e40c0753ad1a425c0ac450ad5581df27~caDMK3XWI0619806198epoutp01W
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Dec 2019 01:02:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191202010218epoutp01e40c0753ad1a425c0ac450ad5581df27~caDMK3XWI0619806198epoutp01W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575248538;
 bh=q8mEopoiB+4OTf7qjRCfDqSzszkUkudX2arlbtG8q5w=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Jc70yhAusSjwlke1q+HdjX+W+AdYFuGcRhwydUq7xTtFEh5eV2y63ozGZFOIXD2GQ
 zwJ5Ifmnk/UrFxdRSXs/666r9gKzUqOcHxRxnHdOUgZsYXlql5MR/RxbmyHxJwWIFu
 mTnSIa7Oel5C1Sn2cWImSjral3yYolpnzWgg2ufA=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191202010217epcas1p190bdaa99863d662873725291b12ddc0c~caDLnkX0h2177921779epcas1p1R;
 Mon,  2 Dec 2019 01:02:17 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.152]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47R6K26jZBzMqYkd; Mon,  2 Dec
 2019 01:02:14 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 DC.E2.48019.69264ED5; Mon,  2 Dec 2019 10:02:14 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191202010214epcas1p2371ad90ef305ec884462a4e750aa92e3~caDIuDw6u1524315243epcas1p22;
 Mon,  2 Dec 2019 01:02:14 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191202010214epsmtrp147e6f9c9f062641683ae20cfeda93cb9~caDItT-4a0659606596epsmtrp1y;
 Mon,  2 Dec 2019 01:02:14 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-38-5de46296f6f9
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 0E.7D.10238.69264ED5; Mon,  2 Dec 2019 10:02:14 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191202010214epsmtip2b1c38406e36a3e5fc11782e74bd38785~caDIeHvgj2514925149epsmtip2u;
 Mon,  2 Dec 2019 01:02:14 +0000 (GMT)
Subject: Re: [PATCH 2/5] PM / devfreq: Split device_register usage
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <69d37137-8c7a-ddcc-f692-09546c79ff7d@samsung.com>
Date: Mon, 2 Dec 2019 10:08:31 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <85ccf6afe5db556c610ce2b47ccc38132b6671f6.1573686315.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGJsWRmVeSWpSXmKPExsWy7bCmge60pCexBu9mmFgcOraV3WL63k1s
 Fmeb3rBbrLj7kdVi0+NrrBZdv1YyW3zuPcJo8XnDY0aL240r2CzOnL7EarHxq4cDt8fshoss
 Hneu7WHz2Lyk3mPjux1MHgff7WHy2HK1ncWjb8sqRo/Pm+QCOKKybTJSE1NSixRS85LzUzLz
 0m2VvIPjneNNzQwMdQ0tLcyVFPISc1NtlVx8AnTdMnOA7lRSKEvMKQUKBSQWFyvp29kU5ZeW
 pCpk5BeX2CqlFqTkFFgW6BUn5haX5qXrJefnWhkaGBiZAhUmZGf8WHeYqeC0cEVj02P2BsYF
 Al2MnBwSAiYS11Z1sHUxcnEICexglFjSvpIVwvnEKHHo+VJ2COcbo0TfvK2MMC3fLm5nhkjs
 ZZTY3rwNynnPKHGhewoTSJWwgJPExnfvgRIcHCICERLTXruD1DALvGGS+Pb1AitIDZuAlsT+
 FzfYQGx+AUWJqz8eg23gFbCT2Nx+lxnEZhFQkdjxcgMLiC0qECZxclsLVI2gxMmZT1hA5nMK
 xEkcvl0DEmYWEJe49WQ+E4QtL7H97Ryw2yQElrFLfOz5wwbxgYvE+xv9ULawxKvjW9ghbCmJ
 l/1tUHa1xMqTR9ggmjsYJbbshzhaQsBYYv/SyUwgi5kFNCXW79KHCCtK7Pw9lxFiMZ/Eu689
 rCAlEgK8Eh1tQhAlyhKXH9xlgrAlJRa3d7JNYFSaheSbWUhemIXkhVkIyxYwsqxiFEstKM5N
 Ty02LDBBju1NjOA0rGWxg3HPOZ9DjAIcjEo8vB2vHscKsSaWFVfmHmKU4GBWEuG9rvQwVog3
 JbGyKrUoP76oNCe1+BCjKTCwJzJLiSbnA3NEXkm8oamRsbGxhYmhmamhoZI4L8ePi7FCAumJ
 JanZqakFqUUwfUwcnFINjMKJlSmVv+acUraYEvnkVtr8S4d1ZArZs60iVk2fH1rL6+C96tX6
 H68Tvumt1Jm1ab57juX1pvK7l2SNNTr5zu3bnBSxnE1wx97QPWmB6ixbIyb+fvnDlStZObX4
 0RJZ/+4TZ+ZnJLx9myJwgDPuYfpj9S9SL32XCTcd3/BpXpTE5aDCG8kKpkosxRmJhlrMRcWJ
 AKVogZPZAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAIsWRmVeSWpSXmKPExsWy7bCSvO60pCexBuePCVkcOraV3WL63k1s
 Fmeb3rBbrLj7kdVi0+NrrBZdv1YyW3zuPcJo8XnDY0aL240r2CzOnL7EarHxq4cDt8fshoss
 Hneu7WHz2Lyk3mPjux1MHgff7WHy2HK1ncWjb8sqRo/Pm+QCOKK4bFJSczLLUov07RK4Mn6s
 O8xUcFq4orHpMXsD4wKBLkZODgkBE4lvF7czg9hCArsZJe7d1oSIS0pMu3gUKM4BZAtLHD5c
 3MXIBVTyllGi+cINsHphASeJje/eg9kiAhESc6bNYAEpYhZ4wySxetZyZoiOR4wSXdOeMoFU
 sQloSex/cYMNxOYXUJS4+uMxI4jNK2Ansbn9LtgkFgEViR0vN7CA2KICYRI7lzxmgqgRlDg5
 8wkLyEWcAnESh2/XgISZBdQl/sy7xAxhi0vcejKfCcKWl9j+dg7zBEbhWUi6ZyFpmYWkZRaS
 lgWMLKsYJVMLinPTc4sNCwzzUsv1ihNzi0vz0vWS83M3MYLjUUtzB+PlJfGHGAU4GJV4eDte
 PY4VYk0sK67MPcQowcGsJMJ7XelhrBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHep3nHIoUE0hNL
 UrNTUwtSi2CyTBycUg2MYQ6zXt6eu2SV0PHZQoFLHyw6t8ec3dnlvYX2jRBFkb9i85Xmz8nJ
 DJJqlNwc/0zq8fMPBbPy+yc1nGbcvKxCcvHTlxouk78c3LjTbcoO7Q0zqxv0lJJOP9oUaf7z
 zP9ZMl8Vnklttw1IX+QfHe3P89x9quL5rkeNqqc/22u4anLcP//6/J6/RkosxRmJhlrMRcWJ
 AH6j6j3DAgAA
X-CMS-MailID: 20191202010214epcas1p2371ad90ef305ec884462a4e750aa92e3
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191113232144epcas1p37b0c4f2d15be4686b4796c6132ef6bbe
References: <cover.1573686315.git.leonard.crestez@nxp.com>
 <CGME20191113232144epcas1p37b0c4f2d15be4686b4796c6132ef6bbe@epcas1p3.samsung.com>
 <85ccf6afe5db556c610ce2b47ccc38132b6671f6.1573686315.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_170221_101036_6C439DE3 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/14/19 8:21 AM, Leonard Crestez wrote:
> Splitting device_register into device_initialize and device_add allows
> devm-based allocations to be performed before device_add.
> 
> It also simplifies error paths in devfreq_add_device: just call
> put_device instead of duplicating parts of devfreq_dev_release.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 27af1b95fd23..b89a82382536 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -689,10 +689,11 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  	mutex_init(&devfreq->lock);
>  	mutex_lock(&devfreq->lock);
>  	devfreq->dev.parent = dev;
>  	devfreq->dev.class = devfreq_class;
>  	devfreq->dev.release = devfreq_dev_release;
> +	device_initialize(&devfreq->dev);
>  	INIT_LIST_HEAD(&devfreq->node);
>  	devfreq->profile = profile;
>  	strncpy(devfreq->governor_name, governor_name, DEVFREQ_NAME_LEN);
>  	devfreq->previous_freq = profile->initial_freq;
>  	devfreq->last_status.current_frequency = profile->initial_freq;
> @@ -726,15 +727,14 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
>  	atomic_set(&devfreq->suspend_count, 0);
>  
>  	dev_set_name(&devfreq->dev, "devfreq%d",
>  				atomic_inc_return(&devfreq_no));
> -	err = device_register(&devfreq->dev);
> +	err = device_add(&devfreq->dev);
>  	if (err) {
>  		mutex_unlock(&devfreq->lock);
> -		put_device(&devfreq->dev);
> -		goto err_out;
> +		goto err_dev;
>  	}
>  
>  	devfreq->trans_table = devm_kzalloc(&devfreq->dev,
>  			array3_size(sizeof(unsigned int),
>  				    devfreq->profile->max_state,
> @@ -789,13 +789,13 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  
>  err_init:
>  	mutex_unlock(&devfreq_list_lock);
>  err_devfreq:
>  	devfreq_remove_device(devfreq);
> -	devfreq = NULL;
> +	return ERR_PTR(err);
>  err_dev:
> -	kfree(devfreq);
> +	put_device(&devfreq->dev);
>  err_out:
>  	return ERR_PTR(err);
>  }
>  EXPORT_SYMBOL(devfreq_add_device);
>  
> 

As I previously commented, I don't prefer to split out of bodyf of device_register().
Instead, your first version is better without devm.

Regards,
Chanwoo Choi

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
