Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE843129087
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 01:44:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LK6jueGwo4iFjW4svCjUmk0yun6tSnK3oKrgKSzBzI=; b=J83+TP+d63zkbk
	KvJdhxltl74PXOincbOUoIlMUQ8swzXEqLL0qgzJgdGxdSi6GwMYIy82fLQ1vQS7fKSLJ3fLTGYT7
	Rok/wWt5JeyRzTQSIS+SUdafJqI5BJDflEQShJZ7cfaCUdM0vmRCRCyZWyuxglXRwUEGuS6kga7ez
	hilUPObjid+5jZT1PMJlI+1iTZjgcB5LBnF9iWO7m78ZkSjUDiLnNXYfQ2rDqhMTkzJZYR/IREyAC
	8MDz8OfMBwdLHidAWb5sxKyoCN8dwghRoFbyWwxB+sfrVmm+4+m+zhFxmWUwDdM2kPhLx0UydUjqg
	pSd/dEw2IBY7cGU6GFZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijBqE-0003iw-AD; Mon, 23 Dec 2019 00:44:58 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijBq5-0003iW-BA
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 00:44:51 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191223004434epoutp016c32a7d3454286dc934f98cb71814ffd~i2WtaR3Fh0582405824epoutp01x
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 00:44:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191223004434epoutp016c32a7d3454286dc934f98cb71814ffd~i2WtaR3Fh0582405824epoutp01x
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1577061874;
 bh=BHuBcJW0x2Ri4T6AT9sZirOJKtZW0CZ3o6efcIq6ifM=;
 h=Subject:To:From:Date:In-Reply-To:References:From;
 b=POwOpAvxw7uhPzDGsMdbMHJzI7Rp29qmCsf8OUnsrHiMKRQ/PUXA3AQ8ByXleAkzE
 DHXgwshdyF6p0l5KDpq01AWKGoXJHvjBkU7ddNOn2wABEhAI0w8pABrKq0SYJbGPUs
 QxkLp7YqL9FvQaMkU/C1sBKt//6LdGSHR1Zf3EgI=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191223004433epcas1p12e864fa54a20aa26cf011f6789f1706e~i2Wst1BB61128911289epcas1p1J;
 Mon, 23 Dec 2019 00:44:33 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.158]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47h0wv4KmpzMqYkb; Mon, 23 Dec
 2019 00:44:31 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 77.09.48019.FED000E5; Mon, 23 Dec 2019 09:44:31 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191223004430epcas1p34ecd618bc5f23679d157cf4f1b7d1d1e~i2Wp52rX72842028420epcas1p30;
 Mon, 23 Dec 2019 00:44:30 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191223004430epsmtrp1542ea4324c731d9b7c0c68341a370f5c~i2Wp37v073228632286epsmtrp1y;
 Mon, 23 Dec 2019 00:44:30 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-36-5e000def3b4a
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 3B.8E.06569.EED000E5; Mon, 23 Dec 2019 09:44:30 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191223004430epsmtip2b600248e5a7d77f15c63459847550af7~i2WpsXfe-1705217052epsmtip2E;
 Mon, 23 Dec 2019 00:44:30 +0000 (GMT)
Subject: Re: [PATCH v2 1/2] PM / devfreq: rk3399_dmc: Disable devfreq-event
 device when fails
To: Yangtao Li <tiny.windzz@gmail.com>, myungjoo.ham@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, krzk@kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <1cd494d4-55e5-858b-1629-91c7945fbd9a@samsung.com>
Date: Mon, 23 Dec 2019 09:51:16 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20191222174132.3701-1-tiny.windzz@gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju29k5O4tWx6X5tqj0SJADL8c5O4VWUMSifgiFRGXrpIdNdm1n
 qyyiC5WXbkZBurQLGdUorc1MzVJMiFE5SyrJjMiIyht4S+y67Rj573mf73m/93ne7yMxZRWh
 IvOsTt5h5cw0MV1a+zg+IWFQMW1b8oX2OPZ0Ty/GBgJ3ZOzzw30y1tvzGmc7GsoJdvhkK2JL
 A48kbNehGwRb8aOEWCnX1bu7ZTqvp4jQ+SoP6E7VeJBu2LsgE99sSjfyXC7viOGtObbcPKsh
 g163Qb9Kr01LZhKYpewSOsbKWfgMevX6zIQ1eeagHzpmF2d2BalMThDopOXpDpvLyccYbYIz
 g+btuWb7UnuiwFkEl9WQmGOzLGOSk1O0QeF2k7HvxgfcPhGxx3uxAD+ISmcWIzkJVCq0j96V
 FaPppJKqQ3DpUQUuFkMIGhuPYmIxhsB367ykGJHhFn9rhMg/RFB30ScVi0EEY89HsZBoNqWH
 N+MbQ3wkdVQC1TUl0tA8glJD05dOIoRnUbHwarwHhbCCWg5/fpViISylFkFZaXNYE0Vlgb/2
 yKQmAvxln8L3yKllcKW9OsxjVDS8/XRJIuKFcL+/POwaqGECet93EWLQ1TDhvoeJeDZ8e1Ij
 E7EKvp4+Non3wU1/KyE2FyKoaWrHxQMNNF07G46PUfFQ3ZAk0rFQ/6Ni0sRMGBg9gYsbUkDh
 MaUoiYOOD90SEc+FqwVFk3Z0MDJ+UlKCYt1TormnxHFPieP+P/gyknrQHN4uWAy8wNhTp762
 F4X/qpqtQ41t61sQRSJ6hoJ0/8lW4twuId/SgoDE6EjFg/2/spWKXC5/L++w6R0uMy+0IG1w
 82cwVVSOLfjzrU49o03RaDRsKpOmZRg6WkGOv8hWUgbOyZt43s47/vVJSLnqIDLYsjp9I9GL
 rxc2M0WztPL913+qCj7i34uV/TvS2tbuZipdiRvjTPPPDZr6Sm4NpF/4fqXDVfDMqp6o0vhX
 xH8e6j4h2XobiHxpbefc+iHQKvb+1p3qOT7gKwxs+mLRlr1/OpZ2ecszo3peoNzDvnu4U/bA
 vPZdavlL3tRNenBaKhg5Ro05BO4vfexfDcEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuphkeLIzCtJLcpLzFFi42LZdlhJXvcdL0OcwcKZehb9j18zW5w/v4Hd
 4mzTG3aLTY+vsVpc3jWHzeJz7xFGixnn9zFZ3G5cwWYx9/cENgdOj52z7rJ7bFrVyeaxeUm9
 R9+WVYwenzfJBbBGcdmkpOZklqUW6dslcGW8WfGAteCXYMWmee2sDYwz+LoYOTgkBEwkTh4R
 7GLk4hAS2M0ocWj5PfYuRk6guKTEtItHmSFqhCUOHy6GqHnLKPHx9FpWkLiwQLzE9R8hIHER
 gVYmiYU35rBCFPUySkx73MIMMohNQEti/4sbbCA2v4CixNUfjxlBbF4BO4n/f2eA1bAIqErM
 nHEArEZUIExi55LHTBA1ghInZz5hAbE5BawkFl5YD9bLLKAu8WfeJWYIW1zi1pP5TBC2vMT2
 t3OYJzAKzULSPgtJyywkLbOQtCxgZFnFKJlaUJybnltsWGCUl1quV5yYW1yal66XnJ+7iREc
 R1paOxhPnIg/xCjAwajEw8sx63+sEGtiWXFl7iFGCQ5mJRHe3bV/Y4V4UxIrq1KL8uOLSnNS
 iw8xSnOwKInzyucfixQSSE8sSc1OTS1ILYLJMnFwSjUwRkaZqchPEjcIU/jZyGpgsuDQJDGJ
 xx0fnTfeKozoL3zumjnJIerafFU2JlbZO0/EdPiSntp7TJ58vHSeEOcpN55ZrVeSu3waAo4w
 7tre9eBl6IJpi4yc51983H9ESeXAss2a9wzv16ZINhQ3X/+ToPxkr+N5w/8KHwOXBx36vM1t
 Ram16dVfSizFGYmGWsxFxYkApaTO0J8CAAA=
X-CMS-MailID: 20191223004430epcas1p34ecd618bc5f23679d157cf4f1b7d1d1e
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191222174139epcas5p2019ddf01d7c2d17020733eafa173508b
References: <CGME20191222174139epcas5p2019ddf01d7c2d17020733eafa173508b@epcas5p2.samsung.com>
 <20191222174132.3701-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_164449_765972_FB644C0E 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/23/19 2:41 AM, Yangtao Li wrote:
> The probe process may fail, but the devfreq event device remains
> enabled. Call devfreq_event_disable_edev on the error return path.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
> v2:
> -change subject
> -rename lable to err_edev
> -fix error path handler
> ---
>  drivers/devfreq/rk3399_dmc.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> 
> diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
> index 2f1027c5b647..4288745304c7 100644
> --- a/drivers/devfreq/rk3399_dmc.c
> +++ b/drivers/devfreq/rk3399_dmc.c
> @@ -364,7 +364,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
>  			if (res.a0) {
>  				dev_err(dev, "Failed to set dram param: %ld\n",
>  					res.a0);
> -				return -EINVAL;
> +				ret = -EINVAL;
> +				goto err_edev;
>  			}
>  		}
>  	}
> @@ -373,8 +374,10 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
>  	if (node) {
>  		data->regmap_pmu = syscon_node_to_regmap(node);
>  		of_node_put(node);
> -		if (IS_ERR(data->regmap_pmu))
> -			return PTR_ERR(data->regmap_pmu);
> +		if (IS_ERR(data->regmap_pmu)) {
> +			ret = PTR_ERR(data->regmap_pmu);
> +			goto err_edev;
> +		}
>  	}
>  
>  	regmap_read(data->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> @@ -392,7 +395,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
>  		data->odt_dis_freq = data->timing.lpddr4_odt_dis_freq;
>  		break;
>  	default:
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto err_edev;
>  	};
>  
>  	arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, 0, 0,
> @@ -426,7 +430,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
>  	 */
>  	if (dev_pm_opp_of_add_table(dev)) {
>  		dev_err(dev, "Invalid operating-points in device tree.\n");
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto err_edev;
>  	}
>  
>  	of_property_read_u32(np, "upthreshold",
> @@ -466,6 +471,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
>  
>  err_free_opp:
>  	dev_pm_opp_of_remove_table(&pdev->dev);
> +err_edev:
> +	devfreq_event_disable_edev(data->edev);
>  	return ret;
>  }
>  
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
