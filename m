Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDCB10E418
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 02:01:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyMz7TQ9AiyK2Zc9+j1wTK6S/Jmxm9zPrwLI6WIMgK4=; b=uLH++z8iaDCmgw
	WKcckYpexL+tCuEmpmvGw0detJz6WOVKfHXGftio4M0sEYCsmPB4bsb163hcYCZvS9K/qELbki0l7
	70ngXIdE/u61WnpsPeBh0jlz/Fsmt6BWjsLBpsmP3fNHt3Z3f2oHCkBZOp0uEST+9QAFpBwd/F+AM
	eqj0WXIpMO0uEDta9lCnVlyBCEtVrdJdJ5bculXG9bld+wejZ8EAS43mhjXfyc5JOG6bxlrLIzQyf
	rwCHbd5hiIen5WRivRc7cYSk3UN+WQkgudDsckVYs57Iwb+cap5pbwfIA/kHUdMj5cherp2WgWzi6
	uQBakw2QHU9PeDgvC/jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iba5G-0008Bv-PI; Mon, 02 Dec 2019 01:01:02 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iba59-0008Ax-2P
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 01:00:57 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191202010048epoutp0433c659ad94202ce1c60562267beef952~caB4ucI-T1378013780epoutp043
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Dec 2019 01:00:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191202010048epoutp0433c659ad94202ce1c60562267beef952~caB4ucI-T1378013780epoutp043
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575248448;
 bh=5lFMFChe3Ry+ugQQRZv5k+ooAqZ6OdSiChuoscX1Dw4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=I9hsrc9uXDTtkiZLB7vVgNlPjuhpq+S18YaP39MWUR8deqxlwv0R4D5pCvvyAvIw3
 KNJuRyGhQQSiEGZ7tcUhQ4fbIGcDAluodgVh6+9/P4zGpPxClAy+GwLVaKr5gVPLQl
 sxlJRorla9J/KRxB6RwoawXATghdrvUQoXJx7rKo=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191202010047epcas1p4ef9ef9e623b05e643691a3d3a9ff0634~caB3_kdkG2267222672epcas1p4Z;
 Mon,  2 Dec 2019 01:00:47 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47R6HK3F3rzMqYkn; Mon,  2 Dec
 2019 01:00:45 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 42.75.51241.C3264ED5; Mon,  2 Dec 2019 10:00:44 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191202010043epcas1p3b05a2fc24f783e81eec4af14cc748a61~caB0Cea0n1912619126epcas1p3I;
 Mon,  2 Dec 2019 01:00:43 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191202010043epsmtrp1c673d5b4fba4e8acd7367c46527be5f7~caB0BpdSH0602506025epsmtrp1j;
 Mon,  2 Dec 2019 01:00:43 +0000 (GMT)
X-AuditID: b6c32a39-163ff7000001c829-d2-5de4623c7eee
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 96.10.06569.B3264ED5; Mon,  2 Dec 2019 10:00:43 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191202010043epsmtip2ad925c5d6baa0c471243c212409275b7~caBzzOvxa2462424624epsmtip2b;
 Mon,  2 Dec 2019 01:00:43 +0000 (GMT)
Subject: Re: [PATCH 1/5] PM / devfreq: Don't fail devfreq_dev_release if not
 in list
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <8af7ba2c-14eb-fbfa-9fdc-93210c32e65f@samsung.com>
Date: Mon, 2 Dec 2019 10:07:00 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <85684020f25ce186e3383d6bd67a15c54f930316.1573686315.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKJsWRmVeSWpSXmKPExsWy7bCmga5N0pNYgwOHZSwOHdvKbjF97yY2
 i7NNb9gtVtz9yGqx6fE1VouuXyuZLT73HmG0+LzhMaPF7cYVbBZnTl9itdj41cOB22N2w0UW
 jzvX9rB5bF5S77Hx3Q4mj4Pv9jB5bLnazuLRt2UVo8fnTXIBHFHZNhmpiSmpRQqpecn5KZl5
 6bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAdyoplCXmlAKFAhKLi5X07WyK8ktL
 UhUy8otLbJVSC1JyCiwL9IoTc4tL89L1kvNzrQwNDIxMgQoTsjPWHb3IVnBGsKJn9wW2BsYb
 fF2MnBwSAiYSUz4dZO5i5OIQEtjBKHGo4SAbSEJI4BOjxIXZ9hCJb4wSPf/eM8F0nFt+lAUi
 sZdR4u3T16wQzntGic7rn1hAqoQFwiR+TnjL3sXIwSEiECEx7bU7SA2zwBsmiW9fL7CC1LAJ
 aEnsf3EDbB2/gKLE1R+PGUFsXgE7iSUrH7KD2CwCKhITf80AqxEFmnlyWwtUjaDEyZlPWEDm
 cwrESTw+mQ8SZhYQl7j1ZD4ThC0vsf3tHLDXJASWsUusnLWQDeIDF4m+js8sELawxKvjW9gh
 bCmJl/1tUHa1xMqTR9ggmjsYJbbshzhaQsBYYv/SyUwgi5kFNCXW79KHCCtK7Pw9lxFiMZ/E
 u689rCAlEgK8Eh1tQhAlyhKXH9yFBqKkxOL2TrYJjEqzkHwzC8kLs5C8MAth2QJGllWMYqkF
 xbnpqcWGBabIkb2JEZyEtSx3MB4753OIUYCDUYmH1+DF41gh1sSy4srcQ4wSHMxKIrzXlR7G
 CvGmJFZWpRblxxeV5qQWH2I0BQb2RGYp0eR8YIbIK4k3NDUyNja2MDE0MzU0VBLn5fhxMVZI
 ID2xJDU7NbUgtQimj4mDU6qBkclPObvj51aWGXEGWRNfzqr939p/2ZuZTTbwZvSSdSE50+Rm
 Gnu6h8ZuDZlkK+yzZuGrAqbfsv2Fj7TXhWQwzN0RnnXqxa0DD5z4pQ/v8k9XSHnf5PXovvL1
 rRr7nlVF1l9Z/dim90DkycerV2o8DPmjuFJacZ1YJM8kth+T2l4JHcn2WiulpcRSnJFoqMVc
 VJwIAA4q33vYAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIIsWRmVeSWpSXmKPExsWy7bCSvK510pNYg0v9EhaHjm1lt5i+dxOb
 xdmmN+wWK+5+ZLXY9Pgaq0XXr5XMFp97jzBafN7wmNHiduMKNoszpy+xWmz86uHA7TG74SKL
 x51re9g8Ni+p99j4bgeTx8F3e5g8tlxtZ/Ho27KK0ePzJrkAjigum5TUnMyy1CJ9uwSujHVH
 L7IVnBGs6Nl9ga2B8QZfFyMnh4SAicS55UdZuhi5OIQEdjNK3GnuYoVISEpMu3iUuYuRA8gW
 ljh8uBii5i2jxPrN98FqhAXCJH5OeMsOYosIREjMmTYDbBCzwBsmidWzljNDdDxilJi8fSYT
 SBWbgJbE/hc32EBsfgFFias/HjOC2LwCdhJLVj4Em8QioCIx8dcMsBpRoA07lzxmgqgRlDg5
 8wkLyEWcAnESj0/mg4SZBdQl/sy7xAxhi0vcejKfCcKWl9j+dg7zBEbhWUi6ZyFpmYWkZRaS
 lgWMLKsYJVMLinPTc4sNC4zyUsv1ihNzi0vz0vWS83M3MYIjUktrB+OJE/GHGAU4GJV4eDte
 PY4VYk0sK67MPcQowcGsJMJ7XelhrBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXFe+fxjkUIC6Ykl
 qdmpqQWpRTBZJg5OqQbGmfk3vdqXxGT+mvhbtP+f1MK7241U1F+wrUwW8bog227+NO79ppNL
 akQfs6nd8tbQ2iEvX3nuxoY3VdbJ39/bh7/RmcowJ1wov43pP8M/7YnnfTr//lVdv2VjjyP7
 FZeo7FOpC53PT9riOP2VT86R7d+ufFmbyX3FoqF24ZaMzYFlkpvjH69dosRSnJFoqMVcVJwI
 AImToBXEAgAA
X-CMS-MailID: 20191202010043epcas1p3b05a2fc24f783e81eec4af14cc748a61
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191113232144epcas1p33ca3f51e043c4dbd1ddd5b776016335d
References: <cover.1573686315.git.leonard.crestez@nxp.com>
 <CGME20191113232144epcas1p33ca3f51e043c4dbd1ddd5b776016335d@epcas1p3.samsung.com>
 <85684020f25ce186e3383d6bd67a15c54f930316.1573686315.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_170055_540745_52621CAC 
X-CRM114-Status: GOOD (  24.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
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
> Right now devfreq_dev_release will print a warning and abort the rest of
> the cleanup if the devfreq instance is not part of the global
> devfreq_list. But this is a valid scenario, for example it can happen if
> the governor can't be found or on any other init error that happens
> after device_register.
> 
> Initialize devfreq->node to an empty list head in devfreq_add_device so
> that list_del becomes a safe noop inside devfreq_dev_release and we can
> continue the rest of the cleanup.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  drivers/devfreq/devfreq.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 94fb8e821e12..27af1b95fd23 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -635,15 +635,10 @@ static int devfreq_notifier_call(struct notifier_block *nb, unsigned long type,
>  static void devfreq_dev_release(struct device *dev)
>  {
>  	struct devfreq *devfreq = to_devfreq(dev);
>  
>  	mutex_lock(&devfreq_list_lock);
> -	if (IS_ERR(find_device_devfreq(devfreq->dev.parent))) {
> -		mutex_unlock(&devfreq_list_lock);
> -		dev_warn(&devfreq->dev, "releasing devfreq which doesn't exist\n");
> -		return;
> -	}
>  	list_del(&devfreq->node);
>  	mutex_unlock(&devfreq_list_lock);
>  
>  	if (devfreq->profile->exit)
>  		devfreq->profile->exit(devfreq->dev.parent);
> @@ -694,10 +689,11 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  	mutex_init(&devfreq->lock);
>  	mutex_lock(&devfreq->lock);
>  	devfreq->dev.parent = dev;
>  	devfreq->dev.class = devfreq_class;
>  	devfreq->dev.release = devfreq_dev_release;
> +	INIT_LIST_HEAD(&devfreq->node);
>  	devfreq->profile = profile;
>  	strncpy(devfreq->governor_name, governor_name, DEVFREQ_NAME_LEN);
>  	devfreq->previous_freq = profile->initial_freq;
>  	devfreq->last_status.current_frequency = profile->initial_freq;
>  	devfreq->data = data;
> 

Applied it.

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
