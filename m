Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B73F6E43
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 06:50:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqPAlsyeAZqWay9NqzQ/+UBXGTrZ+v25+vfvcaxxfvE=; b=IkD2UOuMT2JbVd
	9Cd/nv4R7XquC+fGHrn9UK8lDJooI4hd9vBx6/Q5mPleCx5AFtAPOBZvLRJ0cqArLHQi4An8cvFIc
	krxXae9DntmJGob8zOxs3En4t8q0r8sZqcdHUspOaZiZIyyqYFK39CihQlzpIxngGvvsV0rwzLRw6
	5ixw86yoZjr0cUEjz7zyngYUZiEg2kkIUF3uxBgbrmuzsSHShisd5KSk1SceGDmgcPqPATmhmT59V
	TeV9wdYLKM+g5oAjZGEtv3WAlXwxg7OqG94xZor0YTF19rinaw/1VKhI3EDSYnRXmLLcZUANU26TZ
	HTD1lhdqxRbzmcMhUr2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2ad-00014a-PA; Mon, 11 Nov 2019 05:50:15 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2aI-0000zH-9F
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 05:49:56 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191111054951epoutp04726067e24fa860a1e476b59933c00944~WBbQw8fPQ0512605126epoutp04d
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 05:49:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191111054951epoutp04726067e24fa860a1e476b59933c00944~WBbQw8fPQ0512605126epoutp04d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573451391;
 bh=cjjZF3aapeF/rfNmGkeUbIL4ILbnUIqNzWYtytVhAUE=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=UQTjaZVlIHIxfCj5nUr+ucRz5Sa9KGMQklrabLfPVUnz1EnV7tT5cw5SJDupsY2w3
 3c69YtM1wqT6JZqCBAV12AV25U8aj0RURJWPmU44pjavRvwucQb1smnodZjqJhCwD5
 KVn2p2EKUq58x+y6YFHqsq5ixo9q4Pf7ApsE2afA=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191111054950epcas1p39257ee1332bc944f897b2ac6800ab52b~WBbQRAZ1a0592905929epcas1p3S;
 Mon, 11 Nov 2019 05:49:50 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.154]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47BKhX4zfTzMqYls; Mon, 11 Nov
 2019 05:49:48 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 27.37.04068.976F8CD5; Mon, 11 Nov 2019 14:49:45 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191111054944epcas1p3ae73fd1ab6084fd243a50bfc69846744~WBbKq85Oq0597805978epcas1p3x;
 Mon, 11 Nov 2019 05:49:44 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191111054944epsmtrp179235b582e97204c46b0792f818ef695~WBbKqDmCW2453624536epsmtrp1c;
 Mon, 11 Nov 2019 05:49:44 +0000 (GMT)
X-AuditID: b6c32a39-f47ff70000000fe4-77-5dc8f678e266
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 B5.80.25663.876F8CD5; Mon, 11 Nov 2019 14:49:44 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191111054944epsmtip28ca45a91df82a9eadf80c27aa8ddc4e9~WBbKa7bzc1909919099epsmtip2h;
 Mon, 11 Nov 2019 05:49:44 +0000 (GMT)
Subject: Re: [PATCH v10 02/11] PM / devfreq: Set scaling_max_freq to max on
 OPP notifier error
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <f92d2b57-a629-8fe2-825e-d124ec800df3@samsung.com>
Date: Mon, 11 Nov 2019 14:55:32 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e7098a35e93f329a3044f16724a4eb504545ad61.1572556786.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrNJsWRmVeSWpSXmKPExsWy7bCmnm7ltxOxBhu+M1kcOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht1hx9yOrxabH11gtun6tZLb43HuE0eLzhseMFrcbV7BZ
 rD53kM3izOlLQNlDf9ksNn71cBDweH+jld1jdsNFFo8Fm0o9Nq3qZPO4c20Pm8fmJfUeG9/t
 YPI4+G4Pk8eWq+0sHn1bVjF6fN4kF8AdlW2TkZqYklqkkJqXnJ+SmZduq+QdHO8cb2pmYKhr
 aGlhrqSQl5ibaqvk4hOg65aZA/SOkkJZYk4pUCggsbhYSd/Opii/tCRVISO/uMRWKbUgJafA
 skCvODG3uDQvXS85P9fK0MDAyBSoMCE749H/96wFJ7krpr8Kb2A8wdnFyMkhIWAi0TvxHlMX
 IxeHkMAORomVR5exQjifGCVeX3vDCOF8Y5RY8G0FE0zLuYvboBJ7GSVOf14M5bxnlDiz9BgL
 SJWwQILEpbOHwBIiAusYJf4c7gLbwizwgFli0tTfjCBVbAJaEvtf3GADsfkFFCWu/ngMFOfg
 4BWwk9ixQxMkzCKgKjF502SwsKhAhMTpr4kgYV4BQYmTM5+wgIQ5BeIkDr+xBwkzC4hL3Hoy
 nwnClpfY/nYOM8TRt9gl/k10hbBdJFouXWaDsIUlXh3fwg5hS0m87G+DsqslVp48wgZysYRA
 B6PElv0XWCESxhL7l05mAtnLLKApsX6XPkRYUWLn77mMEHv5JN597WEFKZEQ4JXoaBOCKFGW
 uPzgLjQMJSUWt3eyTWBUmoXkmVlIPpiF5INZCMsWMLKsYhRLLSjOTU8tNiwwRY7rTYzghK5l
 uYPx2DmfQ4wCHIxKPLwB+idihVgTy4orcw8xSnAwK4nw7qgACvGmJFZWpRblxxeV5qQWH2I0
 BQb1RGYp0eR8YLbJK4k3NDUyNja2MDE0MzU0VBLndVy+NFZIID2xJDU7NbUgtQimj4mDU6qB
 cT+zZ6MX87oLBnafRITeG8Q/D/rzYIHi/E8nk7ina05/w/K878t6TbsXMxQ26FeESj6bav9i
 bfqdskqjPXrcOzO2/prBvUfEqunPgnfrPO3y1W0v7+E9kFn/t5mTf/LS4KevFYVaRcvXN1o1
 l4kvTU11eKmbX2siE9l07cah0x27Fhe9Emw7rcRSnJFoqMVcVJwIAIHDtDb+AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOIsWRmVeSWpSXmKPExsWy7bCSvG7FtxOxBj1P1SwOHdvKbvH19ClG
 i2WXjjJaTN+7ic3i/PkN7BZnm96wW6y4+5HVYtPja6wWXb9WMlt87j3CaPF5w2NGi9uNK9gs
 Vp87yGZx5vQloOyhv2wWG796OAh4vL/Ryu4xu+Eii8eCTaUem1Z1snncubaHzWPzknqPje92
 MHkcfLeHyWPL1XYWj74tqxg9Pm+SC+CO4rJJSc3JLEst0rdL4Mp49P89a8FJ7orpr8IbGE9w
 djFyckgImEicu7iNsYuRi0NIYDejxKl1L5khEpIS0y4eBbI5gGxhicOHiyFq3jJKnPl/iRWk
 RlggQeLS2UNgzSICGxglVm79ywTiMAs8YpbYdugrG0TLI0aJ5tOTGUFa2AS0JPa/uMEGYvML
 KEpc/fGYEWQFr4CdxI4dmiBhFgFVicmbIMpFBSIknm+/AWbzCghKnJz5hAWknFMgTuLwG3uQ
 MLOAusSfeZeYIWxxiVtP5jNB2PIS29/OYZ7AKDwLSfcsJC2zkLTMQtKygJFlFaNkakFxbnpu
 sWGBUV5quV5xYm5xaV66XnJ+7iZGcHRrae1gPHEi/hCjAAejEg/vD50TsUKsiWXFlbmHGCU4
 mJVEeHdUAIV4UxIrq1KL8uOLSnNSiw8xSnOwKInzyucfixQSSE8sSc1OTS1ILYLJMnFwSjUw
 5lh3s33+utVUMpN3Wez2nxa88de/rVhvdJPn6vdkUZOv//j9hCy+tSSdOH679MFBSe0/J9dx
 SpeGZyl+K8yJu5rJeCz6VVzjsjDJ1uYHn8VFJ1lNkHuR8dzJXsmXoUU5Qu66Xb3+/yDdqWfV
 fc++WtdT9igmXvGLtPUWzrCYqp99CS09gkZKLMUZiYZazEXFiQC2LNkr6gIAAA==
X-CMS-MailID: 20191111054944epcas1p3ae73fd1ab6084fd243a50bfc69846744
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191031213439epcas1p46dde8a80d72d3eff30e70b27d7b752a8
References: <cover.1572556786.git.leonard.crestez@nxp.com>
 <CGME20191031213439epcas1p46dde8a80d72d3eff30e70b27d7b752a8@epcas1p4.samsung.com>
 <e7098a35e93f329a3044f16724a4eb504545ad61.1572556786.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_214954_502780_EC0D6720 
X-CRM114-Status: GOOD (  24.12  )
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/1/19 6:34 AM, Leonard Crestez wrote:
> The devfreq_notifier_call functions will update scaling_min_freq and
> scaling_max_freq when the OPP table is updated.
> 
> If fetching the maximum frequency fails then scaling_max_freq remains
> set to zero which is confusing. Set to ULONG_MAX instead so we don't
> need special handling for this case in other places.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  drivers/devfreq/devfreq.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index b65faa1a2baa..715127f1cda5 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -557,12 +557,14 @@ static int devfreq_notifier_call(struct notifier_block *nb, unsigned long type,
>  	devfreq->scaling_min_freq = find_available_min_freq(devfreq);
>  	if (!devfreq->scaling_min_freq)
>  		goto out;
>  
>  	devfreq->scaling_max_freq = find_available_max_freq(devfreq);
> -	if (!devfreq->scaling_max_freq)
> +	if (!devfreq->scaling_max_freq) {
> +		devfreq->scaling_max_freq = ULONG_MAX;
>  		goto out;
> +	}
>  
>  	err = update_devfreq(devfreq);
>  
>  out:
>  	mutex_unlock(&devfreq->lock);
> 

Applied it because it doesn't depend on the pm_qos feature.

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
