Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA2D9FD52
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXV3hvxj8TujXgc3K1F/4EznuuYvyuyoHsvrylreEJM=; b=ZrVEA/K+vRIwnJ
	KeQpgRdqJ1V199FXqa+KDhh/r2EhWX6UXZo4LghzhktZwuXwIV3rkYanntvGZW0sCOiP7JMFCpgmT
	+rZO76X2kySCbki0ucteuM7JU0Ee8jEkTzG0reR3PAowK7XllAe+GLPI0M+oOCVYwEp0bb6LLFahz
	PTwWNk1M8JW/rpteWGtTpLGNjq+BeIq5JoFCeoZoBnFK978+6B3td88US/W09CgOSp2mP3XJYqtF0
	9TsoD3dsaQVxXjlMrG9DmW5xm0v30RaP6Maq7q1G43tjxi+xMhJfQebg6sFHinws1EEi5Nh7q1k8I
	i6bYorz7i6TazOlqjsDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tV6-0004uQ-BL; Wed, 28 Aug 2019 08:40:20 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tUn-0004Wm-6R
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 08:40:02 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190828083955euoutp0200d32ee2e883291118c92634167f36c5~-CXWPocb10747307473euoutp027
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 08:39:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190828083955euoutp0200d32ee2e883291118c92634167f36c5~-CXWPocb10747307473euoutp027
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566981595;
 bh=nCO1CGbNKa5rvO48tD1eLJmbBQi/YQi3un/pIVM1ksQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=GyUvhO6HUlrozwZ+TG0uHeVIsHhZiuw7lkq26iTfRYh/mXQq/HVm2f0FZ4Q2Brefi
 /go/dCadcvFZSwQaJ4kn/7fqD7oQyo9qjS24MxWdthRrAkgHTAx+NJqdHM7UHBHp5L
 S0CF7Js9555sE7kx4Y1RZlliA8d1Tv4DUheaz7QA=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190828083955eucas1p2c5ef161d4b0934ff1def119ebe330278~-CXVc2gpu2348323483eucas1p2z;
 Wed, 28 Aug 2019 08:39:55 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 0A.DD.04374.ADD366D5; Wed, 28
 Aug 2019 09:39:54 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190828083954eucas1p2b8dc8e6d795b984ec607a7e49911ff2b~-CXUm5jQe2349023490eucas1p2h;
 Wed, 28 Aug 2019 08:39:54 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190828083953eusmtrp1093ab1005f1cbb6474ace28275f78049~-CXUYPHem2582525825eusmtrp1x;
 Wed, 28 Aug 2019 08:39:53 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-b1-5d663dda61d3
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D7.07.04117.9DD366D5; Wed, 28
 Aug 2019 09:39:53 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190828083953eusmtip198a24422c79bd0cf39db371dda376fb4~-CXTs6pHN0415604156eusmtip1z;
 Wed, 28 Aug 2019 08:39:53 +0000 (GMT)
Subject: Re: [PATCH v7 9/9] drm: exynos: exynos_hdmi: use
 cec_notifier_conn_(un)register
To: Dariusz Marcinkiewicz <darekm@google.com>,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 hverkuil-cisco@xs4all.nl
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <6bbfb6f8-15c2-9ad2-8857-898f4c6435a3@samsung.com>
Date: Wed, 28 Aug 2019 10:39:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814104520.6001-10-darekm@google.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+3bO2Y7D6WkavqybDfujIs2MOmVZQcSBIIIoYyW27KTSZrbT
 uhJ5AfGy6XJRuVatErR102XzVkZqDZMaUoQpa5JCqUnknGBeltuZ5H+/532f93veFz4Sk/4g
 ZGRm1hlWk6VUyYVi3P5u4uPanm0nUtZ1F8fS+o8dAtpnv4rRlY6HiP7s/S2kuypcOF3uNuD0
 z29dOF3WP4zRTmeNiP6Q90tE2/q/EPSnJrOQ1tW8IOibzhYBfdM4KNwRzrwat+CMxaZlbNYi
 IVM/3kcw7hKHgHleeYUprbMixmNbxrz3ekT7QhTircdZVeZZVhOXdFScca15lMhuCz1vnviJ
 5aAqcTEKIYHaAK6rPYJiJCalVDUCS25xUIwheGvXI154EPwqdKK5EXf+oIhvVCG4Wz8UFCMI
 XDN/cL8rglLAtOuR0N+IpIoQPNCPBwRGVWCQ224Q+F1CKh70b0sD70qoJDB+MBN+xqmVMGOb
 CNQXUYdgtK+N4D0LoaNiIJAQQm0Coy434MGoKMgbe0jwvBzqR8yYPwyoIhKG/74KLr4L7M52
 Ic8RMOSoE/G8BDqNOpwfyEega+4V8cKAwO2wBKcToc3RNRtBzkasgmdNcX4Eaif0vVDxGAbd
 Iwv5HcKg3H4D48sSKCyQ8m/EwKT1hoBnGZQM+HADkpvmXWaad41p3jWm/7EWhFtRFKvl1Oks
 l5DFnovllGpOm5Uem3ZKbUOz369zxuFtQC1Tx1oRRSJ5qKQwnE2REsqz3AV1KwISk0dKvsfM
 liTHlRcusppTqRqtiuVa0WISl0dJLi3oOyyl0pVn2JMsm81q5roCMkSWg0JtUUeTahWjntKc
 38k1BUmENe70Cvflgarke3dueauv9ywzNEq96w5M/tn7MmUqc+nmg7UmRVnbYEWe6xz96MmT
 L0OpTRunDkfXDdsOJnZz62WNr/fcr6a2xzyd7k+IeOxTR2fcbX1sUPs+NfjSCm/3Kr6uMTX9
 OJJt3r3/zZb+khw5zmUo41djGk75D83/noN6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrJIsWRmVeSWpSXmKPExsVy+t/xu7o3bdNiDV7M0bPoPXeSyeL/tonM
 FkuOr2S0uPL1PZvFxZl3WSwm3Z/AYvHi3kUWi/7Hr5ktzp/fwG5xtukNu8Wmx9dYLS7vmsNm
 0bNhK6vFjPP7mCxmTH7J5sDvsffbAhaPBZtKPTat6mTz2P7tAavH/e7jTB6bl9R79G1Zxejx
 eZOcx6mvn9kDOKP0bIryS0tSFTLyi0tslaINLYz0DC0t9IxMLPUMjc1jrYxMlfTtbFJSczLL
 Uov07RL0Mqbs/sRacJinYs7PF8wNjMu5uhg5OSQETCTuN79k72Lk4hASWMoo8fHhHcYuRg6g
 hJTE/BYliBphiT/Xutggal4zSnzfso8RJCEsECXx9+5qsISIQCejxK47t1lAHGaBmcwSu1b0
 QI3dxijxZ8kWVpAWNgFDid6jfWDtvAJ2EpPPzgGLswioSvzb9BMsLioQIXF4xyyoGkGJkzOf
 sIDYnALmEpN7GsHizALqEn/mXWKGsMUlmr6sZIWw5SW2v53DPIFRaBaS9llIWmYhaZmFpGUB
 I8sqRpHU0uLc9NxiI73ixNzi0rx0veT83E2MwGjfduznlh2MXe+CDzEKcDAq8fB28KfGCrEm
 lhVX5h5ilOBgVhLhfaQCFOJNSaysSi3Kjy8qzUktPsRoCvTcRGYp0eR8YCLKK4k3NDU0t7A0
 NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAWHk/8qHuefNNd5nnltxWXRTqWXXl
 y2nn3wfm7brHqOHCeant5InlAk7si0tEVi09KF/4ZqOfC+P5kBei//tM4j9HL0+68izsilSt
 /jzR4IYXEoeWcXqFRU75ylH0TVdjzkZ1ZptntxK0jj3dbphVotGx/j27adNijwOdrae2mmVq
 Cx+LmLwnQYmlOCPRUIu5qDgRAAkeheoMAwAA
X-CMS-MailID: 20190828083954eucas1p2b8dc8e6d795b984ec607a7e49911ff2b
X-Msg-Generator: CA
X-RootMTR: 20190814104630epcas3p44755443f37e78b2613f7dda35d71bb71
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190814104630epcas3p44755443f37e78b2613f7dda35d71bb71
References: <20190814104520.6001-1-darekm@google.com>
 <CGME20190814104630epcas3p44755443f37e78b2613f7dda35d71bb71@epcas3p4.samsung.com>
 <20190814104520.6001-10-darekm@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_014001_387210_98A9DF90 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/14/19 12:45, Dariusz Marcinkiewicz wrote:
> Use the new cec_notifier_conn_(un)register() functions to
> (un)register the notifier for the HDMI connector, and fill in
> the cec_connector_info.
> 
> Changes since v2:
> 	- removed unnecessary call to invalidate phys address before
> 	deregistering the notifier,
> 	- use cec_notifier_phys_addr_invalidate instead of setting
> 	invalid address on a notifier.
> 
> Signed-off-by: Dariusz Marcinkiewicz <darekm@google.com>
> Tested-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Reviewed-by: Sylwester Nawrocki <s.nawrocki@samsung.com>

> diff --git a/drivers/gpu/drm/exynos/exynos_hdmi.c b/drivers/gpu/drm/exynos/exynos_hdmi.c
> index bc1565f1822ab..d532b468d9af5 100644
> --- a/drivers/gpu/drm/exynos/exynos_hdmi.c
> +++ b/drivers/gpu/drm/exynos/exynos_hdmi.c

> @@ -2006,12 +2020,6 @@ static int hdmi_probe(struct platform_device *pdev)
>  		}
>  	}
>  
> -	hdata->notifier = cec_notifier_get(&pdev->dev);
> -	if (hdata->notifier == NULL) {
> -		ret = -ENOMEM;
> -		goto err_hdmiphy;
> -	}
> -
>  	pm_runtime_enable(dev);
>  
>  	audio_infoframe = &hdata->audio.infoframe;
> @@ -2023,7 +2031,7 @@ static int hdmi_probe(struct platform_device *pdev)
>  
>  	ret = hdmi_register_audio_device(hdata);
>  	if (ret)
> -		goto err_notifier_put;
> +		goto err_runtime_disable;


> -err_notifier_put:
> -	cec_notifier_put(hdata->notifier);
> +err_runtime_disable:
>  	pm_runtime_disable(dev);

nit: I think err_rpm_disable or err_pm_runtime_disable could be better 
     label names.

-- 
Thanks,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
