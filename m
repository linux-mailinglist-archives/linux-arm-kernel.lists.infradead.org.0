Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3602412907F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 01:41:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmK5tzCV8mjS+KoeCersAthCt4ZvPJJqE9LSbCTf84Q=; b=J4Xz5i1gh79sMv
	LXBo3z4EGwaC+AXQf7vcFMdgT6wwZ4QL7CzljcOSB0IbLvr+zqn+wK9BySqQin95d05S8AYmKU8rp
	ieVoYDbKv1kIHwhtH21X6aDV/2Jw5dds+k35SozxDm7uWfUgLJp9ec9Em9Q4p/8Srtw8epqRxs38M
	wkWQL8CNsvxPq44lKMUO+YaDijPZARzvv7WhTI/YytHkg8YJzecKIoVbJaZFxMYEB3ZbEmoBg3lxB
	zpKxKp0K1sHat0dU+VRlX/H4GmsUCuYCc0OG8zQ0uZZH3oDKsAC1k0m4zPrUKOD+GH/EB+48L+QuH
	gtMLsKFji52XP1038SXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijBms-00035g-5I; Mon, 23 Dec 2019 00:41:30 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijBmj-000343-Ki
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 00:41:23 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191223004116epoutp012aa9c6a064e5ddcd0f31b129e231a83a~i2T0iVfNE0367103671epoutp01S
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 00:41:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191223004116epoutp012aa9c6a064e5ddcd0f31b129e231a83a~i2T0iVfNE0367103671epoutp01S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1577061676;
 bh=hfxb9FOBtElm++yJSXU9+y6s3nokJd85p/wnbCA7/UA=;
 h=Subject:To:From:Date:In-Reply-To:References:From;
 b=BeqgRthAn7xyDHJ+pPZLn35WtaFt/iMDgIesKzs+8MI/e8/udTJ/tUQp33nwzI9//
 KaHGXHh04vhttZ+8Y2jlMJf1sdVt0jhkz+VWR+1QloKtVCKxTmlo/UQiW1y6/rWZHs
 TDLAdkbjQHl8KTOgpyW1VIAiAFBVBGmruqKDd5tQ=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191223004115epcas1p3d0e18be02c3650b125600ae0d77531ab~i2T0LFzS61722617226epcas1p3x;
 Mon, 23 Dec 2019 00:41:15 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.158]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47h0rw1WQ6zMqYkb; Mon, 23 Dec
 2019 00:41:04 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 C2.4A.48498.A1D000E5; Mon, 23 Dec 2019 09:40:58 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191223004058epcas1p21cbd51d53345b21a8737fc6e08feac24~i2Tjqqr_c2954529545epcas1p2L;
 Mon, 23 Dec 2019 00:40:58 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191223004057epsmtrp15671f4ce27c4b03c7e6491f7c725de16~i2Tjp36AA3041230412epsmtrp1p;
 Mon, 23 Dec 2019 00:40:57 +0000 (GMT)
X-AuditID: b6c32a36-a3dff7000001bd72-de-5e000d1aad2f
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 09.5E.06569.91D000E5; Mon, 23 Dec 2019 09:40:57 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191223004057epsmtip1bc50f03921a346acf8352a324b94b2f3~i2Tjek2bG2788127881epsmtip1m;
 Mon, 23 Dec 2019 00:40:57 +0000 (GMT)
Subject: Re: [PATCH v2 2/2] PM / devfreq: exynos-bus: Disable devfreq-event
 device when fails
To: Yangtao Li <tiny.windzz@gmail.com>, myungjoo.ham@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, krzk@kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <ca7f5eb8-d549-a170-f952-90e5882b233d@samsung.com>
Date: Mon, 23 Dec 2019 09:47:43 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20191222174132.3701-2-tiny.windzz@gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHJsWRmVeSWpSXmKPExsWy7bCmrq4UL0OcwfznvBb9j18zW5w/v4Hd
 4mzTG3aLTY+vsVpc3jWHzeJz7xFGixnn9zFZ3G5cwWYx9/cENgdOj52z7rJ7bFrVyeaxeUm9
 R9+WVYwenzfJBbBGZdtkpCampBYppOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynkJeam2iq5
 +AToumXmAN2jpFCWmFMKFApILC5W0rezKcovLUlVyMgvLrFVSi1IySmwLNArTswtLs1L10vO
 z7UyNDAwMgUqTMjOWH/yFWPBE86Kj439TA2Mb9m7GDk5JARMJDb/38/cxcjFISSwg1Hi4+RT
 UM4nRom3U/awQDjfgJyGB6wwLd8v9bJDJPYySrz79Q6q5T2jxP1GkBZODmGBeInm7zPA2kUE
 Wpkk1m+ZAJZgE9CS2P/iBhuIzS+gKHH1x2PGLkYODl4BO4mmdcYgYRYBVYn5K6cyg9iiAmES
 J7e1MILYvAKCEidnPgEbwylgJdHUdRjsImYBcYlbT+YzQdjyEtvfzgE7SELgM5vEsicTmEDm
 Swi4SLxaHQbxgbDEq+NboAEgJfGyvw3KrpZYefIIG0RvB6PElv0XoF42lti/dDLYHGYBTYn1
 u/QhwooSO3/PZYTYyyfx7msPK8QqXomONiGIEmWJyw/uMkHYkhKL2zvZIGwPiU+f29kmMCrO
 QvLZLCTfzELyzSyExQsYWVYxiqUWFOempxYbFhghx/YmRnBa1TLbwbjonM8hRgEORiUeXo5Z
 /2OFWBPLiitzDzFKcDArifDurv0bK8SbklhZlVqUH19UmpNafIjRFBjwE5mlRJPzgSk/ryTe
 0NTI2NjYwsTQzNTQUEmcl+PHxVghgfTEktTs1NSC1CKYPiYOTqkGxp0/3t1b+vPqI64fUn/e
 Xf+e3ZYvyM62P2Amk1hu6f8zOlPYZ2r8uR2lcPXpyt3Lfc8vb338kknsRg238CO2Z3JBfDJt
 ThdYfz0K3JATbRqwKmrC1zrjpXPly+fsvdTv037pzF2Wb+c/Hbdv1u3Kzdykderg11drzvNu
 SX5zXpB9ecWDdfFdWwqVWIozEg21mIuKEwG+DUovwQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplkeLIzCtJLcpLzFFi42LZdlhJTleSlyHOYOZSC4v+x6+ZLc6f38Bu
 cbbpDbvFpsfXWC0u75rDZvG59wijxYzz+5gsbjeuYLOY+3sCmwOnx85Zd9k9Nq3qZPPYvKTe
 o2/LKkaPz5vkAlijuGxSUnMyy1KL9O0SuDLWn3zFWPCEs+JjYz9TA+Nb9i5GTg4JAROJ75d6
 gWwuDiGB3YwSLxp3MEMkJCWmXTwKZHMA2cIShw8XQ9S8ZZT4NGsJWI2wQLxE8/cZLCAJEYFW
 JomFN+awQlTtZZR49LefFaSKTUBLYv+LG2wgNr+AosTVH48ZQabyCthJNK0zBgmzCKhKzF85
 FWyoqECYxM4lj5lAbF4BQYmTM5+wgNicAlYSTV2HwUYyC6hL/Jl3iRnCFpe49WQ+E4QtL7H9
 7RzmCYxCs5C0z0LSMgtJyywkLQsYWVYxSqYWFOem5xYbFhjlpZbrFSfmFpfmpesl5+duYgRH
 kpbWDsYTJ+IPMQpwMCrx8HLM+h8rxJpYVlyZe4hRgoNZSYR3d+3fWCHelMTKqtSi/Pii0pzU
 4kOM0hwsSuK88vnHIoUE0hNLUrNTUwtSi2CyTBycUg2M7hXb5pVENRj8P66avz61WPnas9i9
 ra5nZ0sk6Qa9DXtzzWLDao5TXKdlnbnZbG6E8ohumMo5vehhh+Mr/kjLIrlZslW5Ta80RJNa
 uBw+Per71681e6YB4y73K1LvA2QPFMx+Me/zF7kmt9DHt4PeHWA1vuh1Z9MNL7/na2Iau3yn
 2j7SOPBfiaU4I9FQi7moOBEA+RjZH6ACAAA=
X-CMS-MailID: 20191223004058epcas1p21cbd51d53345b21a8737fc6e08feac24
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191222174142epcas1p4ad50cacad72ab368b07ee0ebc680c9b3
References: <20191222174132.3701-1-tiny.windzz@gmail.com>
 <CGME20191222174142epcas1p4ad50cacad72ab368b07ee0ebc680c9b3@epcas1p4.samsung.com>
 <20191222174132.3701-2-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_164122_027292_3B4E737F 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> The exynos_bus_profile_init process may fail, but the devfreq event device
> remains enabled. Call devfreq_event_disable_edev on the error return path.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
> v2:
> -change subject
> -rename lable to err_edev
> -add return value check
> ---
>  drivers/devfreq/exynos-bus.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
> index 7f5917d59072..948e9340f91c 100644
> --- a/drivers/devfreq/exynos-bus.c
> +++ b/drivers/devfreq/exynos-bus.c
> @@ -335,10 +335,17 @@ static int exynos_bus_profile_init(struct exynos_bus *bus,
>  	ret = exynos_bus_set_event(bus);
>  	if (ret < 0) {
>  		dev_err(dev, "failed to set event to devfreq-event devices\n");
> -		return ret;
> +		goto err_edev;
>  	}
>  
>  	return 0;
> +
> +err_edev:
> +	ret = exynos_bus_disable_edev(bus);
> +	if (ret < 0)
> +		dev_warn(dev, "failed to disable the devfreq-event devices\n");
> +
> +	return ret;
>  }
>  
>  static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
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
