Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B309F6E5D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:02:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvL8uWuKzgbF1dcY79KK0Sepxe1pchnUjEiNnq85QOk=; b=Innoudb5QhzeSw
	uVlA0pqP3ZYpRWeY5+mcMTd2FvTIxRGevJXtJEr0hNIAbd952+kHvDzBUg4EY+CnQKbNrahv4Xico
	jnlzdwqOIlROX8EjDgHp7dcJ3JBXh1rJFe6wbPwML53PpezzzkL7TJ7N1iHj0zZKhWS4ScRXbjuQr
	F+Kg7umnbVPgqke/xD/dBzNW5HBHHu8R5vyuDULvAUOb/RzGujh+31iZKdFea0s93d62Ep7BgPIG6
	Ib1iel8gGzS1s+eg6MLnctzhQIrLjUk1ZTw+jDw1gMsgr0ZUFNTOXrNpXZ0SkLsyz5GHWlcf3hb62
	2k1GfN9Da8KzRFgIAubw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2mH-0006FH-UI; Mon, 11 Nov 2019 06:02:17 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2m8-0006EB-KV
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 06:02:10 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191111060204epoutp04f5c18867f6b92f016deaa6d04bd7710b~WBl7iaJTE1601116011epoutp04D
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 06:02:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191111060204epoutp04f5c18867f6b92f016deaa6d04bd7710b~WBl7iaJTE1601116011epoutp04D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573452124;
 bh=FfYn1Qx5yW2i/KhFBCMC2EhEGp8xtuAads6medw5nDc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=hSrMjraIzvrnoZ8ais9eMUnQtHVjIssYVmbEAIXEVGCbXzx4UfAtOYNgb8+S0kMRs
 ivOcESKaEUIuct08bbu0dd21ntKc9QTEXVVwW5h+GtDPP6UZZPccMUiFDEh8ysrO0G
 yzdCQPYPONlrliI4k3A2zFPvNJwYciulLwlvyAGU=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191111060204epcas1p2a0a2b877f081c1407ca2b77cf5601c2a~WBl7OuJNc2479924799epcas1p2P;
 Mon, 11 Nov 2019 06:02:04 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.152]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47BKyd4fz1zMqYm2; Mon, 11 Nov
 2019 06:02:01 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 95.C7.04135.959F8CD5; Mon, 11 Nov 2019 15:02:01 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191111060201epcas1p210cfe2d546a9b9781f690800681a0108~WBl4t6obP2480324803epcas1p2A;
 Mon, 11 Nov 2019 06:02:01 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191111060201epsmtrp123d19d115da4306f169e53826a9c6278~WBl4tMaL93242432424epsmtrp1T;
 Mon, 11 Nov 2019 06:02:01 +0000 (GMT)
X-AuditID: b6c32a36-7e3ff70000001027-02-5dc8f959f5de
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E8.24.24756.959F8CD5; Mon, 11 Nov 2019 15:02:01 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191111060201epsmtip27b2ad106b0718b34f445dc6820259624~WBl4iT3GW3029230292epsmtip2J;
 Mon, 11 Nov 2019 06:02:01 +0000 (GMT)
Subject: Re: [PATCH v2] PM / devfreq: events: Fix excessive stack usage
To: arnd@arndb.de, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
 krzk@kernel.org, kgene@kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <665c348d-a0d6-c111-65a2-db7447553b9d@samsung.com>
Date: Mon, 11 Nov 2019 15:07:49 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111060557.15650-1-cw00.choi@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAJsWRmVeSWpSXmKPExsWy7bCmnm7kzxOxBp0L1Sz+TjrGbjHxxhUW
 i/7Hr5ktzp/fwG5xtukNu8Wmx9dYLS7vmsNm8bn3CKPFjPP7mCxuN65gc+Dy+P1rEqPHplWd
 bB6bl9R79G1ZxejxeZNcAGtUtk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJe
 Ym6qrZKLT4CuW2YO0FFKCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnALLAr3ixNzi
 0rx0veT8XCtDAwMjU6DChOyM16dWsRX0iVR8e7aVuYGxXaCLkZNDQsBE4t2+i0xdjFwcQgI7
 GCXOnPwM5XxilOg7vpcZwvnGKPH5yWxmmJbTx68xgdhCAnsZJabfF4Aoes8o0fpsBmMXIweH
 sIC7xOoOFRBTRCBbYlGfNUgJs8BsRomOSU1gc9gEtCT2v7jBBmLzCyhKXP3xmBHE5hWwk1h2
 +QjYfBYBVYkLs66ygswRFYiQOP01EaJEUOLkzCcsIDangLXEo/+XwEYyC4hL3HoynwnClpfY
 /nYO2P0SAs3sEs/uPGUCmSMh4CJx6IAoxCvCEq+Ob2GHsKUkXva3QdnVEitPHmGD6O1glNiy
 /wIrRMJYYv/SyWBzmAU0Jdbv0ocIK0rs/D2XEWIvn8S7rz2sEKt4JTrahCBKlCUuP7jLBGFL
 Sixu72SbwKg0C8k3s5B8MAvJB7MQli1gZFnFKJZaUJybnlpsWGCEHNWbGMGpVctsB+Oicz6H
 GAU4GJV4eAP0T8QKsSaWFVfmHmKU4GBWEuHdUQEU4k1JrKxKLcqPLyrNSS0+xGgKDOuJzFKi
 yfnAtJ9XEm9oamRsbGxhYmhmamioJM7ruHxprJBAemJJanZqakFqEUwfEwenVANjh1d5z6IP
 N/+Y/Ajk7m75n7Jg76EDTUyP6mRS9vPEswjNsfqZsFwn/ZdkxuvcdZ9lcxcnTnln9cFi/QRt
 DreV1zNy9Ncu+Rd4mDfxKO++oNyi4ty1390Ccu+nFUt+sOaWXvEjsb/n54F4Yy3W6sINfKrH
 5t2evZlf9WuHxu7rJry863w3NLgrsRRnJBpqMRcVJwIArwfCZsMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsWy7bCSvG7kzxOxBvuXCVv8nXSM3WLijSss
 Fv2PXzNbnD+/gd3ibNMbdotNj6+xWlzeNYfN4nPvEUaLGef3MVncblzB5sDl8fvXJEaPTas6
 2Tw2L6n36NuyitHj8ya5ANYoLpuU1JzMstQifbsErozXp1axFfSJVHx7tpW5gbFdoIuRk0NC
 wETi9PFrTCC2kMBuRomtO3Qg4pIS0y4eZe5i5ACyhSUOHy7uYuQCKnnLKNHf850NJC4s4C6x
 ukMFpFxEIFvi58dD7CA1zAKzGSV+L33PCtGwk1FiwddvbCBVbAJaEvtf3ACz+QUUJa7+eMwI
 YvMK2Eksu3wE7AgWAVWJC7OusoLYogIREs+334CqEZQ4OfMJC4jNKWAt8ej/JWYQm1lAXeLP
 PBhbXOLWk/lMELa8xPa3c5gnMArPQtI+C0nLLCQts5C0LGBkWcUomVpQnJueW2xYYJiXWq5X
 nJhbXJqXrpecn7uJERxpWpo7GC8viT/EKMDBqMTD+0PnRKwQa2JZcWXuIUYJDmYlEd4dFUAh
 3pTEyqrUovz4otKc1OJDjNIcLErivE/zjkUKCaQnlqRmp6YWpBbBZJk4OKUaGLXEy9nEHjIo
 iDqy8fhrPuDZeOush4DPIeY7vsHs6g/v5FZdbGgJMJUWEJj1Vyuwc8MzrboD2kxz3S0fLf8j
 wXbtAIP395vS8lPm5C9mXhJ7/uqBRXXLfvp/2OVSomXoa9MhvUxRjlno6OFffK2MraILZxju
 by27cOhCy6tClpD3ERtmZk4MUWIpzkg01GIuKk4EAIZ3UMWwAgAA
X-CMS-MailID: 20191111060201epcas1p210cfe2d546a9b9781f690800681a0108
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191111060017epcas1p37c624e81f5421842a5a31136b4cba678
References: <20191022142703.1789898-1-arnd@arndb.de>
 <CGME20191111060017epcas1p37c624e81f5421842a5a31136b4cba678@epcas1p3.samsung.com>
 <20191111060557.15650-1-cw00.choi@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_220208_998024_5F43EC69 
X-CRM114-Status: GOOD (  27.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: chanwoo@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/11/19 3:05 PM, Chanwoo Choi wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Putting a 'struct devfreq_event_dev' object on the stack is generally
> a bad idea and here it leads to a warnig about potential stack overflow:
> 
> drivers/devfreq/event/exynos-ppmu.c:643:12: error: stack frame size of 1040 bytes in function 'exynos_ppmu_probe' [-Werror,-Wframe-larger-than=]
> 
> There is no real need for the device structure, only the string inside
> it, so add an internal helper function that simply takes the string
> as its argument and remove the device structure.
> 
> Fixes: 1dd62c66d345 ("PM / devfreq: events: extend events by type of counted data")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> [cw00.choi: Fix the issue from 'desc->name' to 'desc[j].name']
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
> Changes from v1:
> - Fix the issue from 'desc->name' to 'desc[j].name'
> 
>  drivers/devfreq/event/exynos-ppmu.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/devfreq/event/exynos-ppmu.c b/drivers/devfreq/event/exynos-ppmu.c
> index 85c7a77bf3f0..055deea42c37 100644
> --- a/drivers/devfreq/event/exynos-ppmu.c
> +++ b/drivers/devfreq/event/exynos-ppmu.c
> @@ -101,17 +101,22 @@ static struct __exynos_ppmu_events {
>  	PPMU_EVENT(dmc1_1),
>  };
>  
> -static int exynos_ppmu_find_ppmu_id(struct devfreq_event_dev *edev)
> +static int __exynos_ppmu_find_ppmu_id(const char *edev_name)
>  {
>  	int i;
>  
>  	for (i = 0; i < ARRAY_SIZE(ppmu_events); i++)
> -		if (!strcmp(edev->desc->name, ppmu_events[i].name))
> +		if (!strcmp(edev_name, ppmu_events[i].name))
>  			return ppmu_events[i].id;
>  
>  	return -EINVAL;
>  }
>  
> +static int exynos_ppmu_find_ppmu_id(struct devfreq_event_dev *edev)
> +{
> +	return __exynos_ppmu_find_ppmu_id(edev->desc->name);
> +}
> +
>  /*
>   * The devfreq-event ops structure for PPMU v1.1
>   */
> @@ -556,13 +561,11 @@ static int of_get_devfreq_events(struct device_node *np,
>  			 * use default if not.
>  			 */
>  			if (info->ppmu_type == EXYNOS_TYPE_PPMU_V2) {
> -				struct devfreq_event_dev edev;
>  				int id;
>  				/* Not all registers take the same value for
>  				 * read+write data count.
>  				 */
> -				edev.desc = &desc[j];
> -				id = exynos_ppmu_find_ppmu_id(&edev);
> +				id = __exynos_ppmu_find_ppmu_id(desc[j].name);
>  
>  				switch (id) {
>  				case PPMU_PMNCNT0:
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
