Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B9C921ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkUByE1IU+izqYYnLyDIkfWF0F5hcqJdMGBA/WKJdwk=; b=DFXekz28lXfkna
	0MSYuMm8EqZvThEo4XNJ4eJDAnMQ1lioEMQhPC1gwuEUeombyVNrFmlILe+5QoFoc/tauimHOsdh/
	3HqEHmHxd+AG7LnsBK1nXqpQ1hr+K5KOEvpnf/C3/19VFa64hGhYv/NYD+VjVWKHD7w6rCdsOWN3j
	TTxrh3wPSedGVf0RQQVKdE4ZrXPhF89IvRctadJ1TIecghaoKSBGoe/IEZ189KxAoB1+PLWspZAbH
	wwIdZBWtZPU/S32Be3R7gNAgFCAnChbcj+o6YeU29CEylEIUXJXkCpXbz6eUWUTiwPCU+hDeC84EV
	KaGydl6ToHxSLJbX46WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfeT-0008Cx-LM; Mon, 19 Aug 2019 11:16:41 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfeE-00082R-HJ
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:16:31 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190819111623euoutp016def02ea873f923f29b7c6d52f9bbd03~8TsYnxbv21765317653euoutp01Q
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 11:16:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190819111623euoutp016def02ea873f923f29b7c6d52f9bbd03~8TsYnxbv21765317653euoutp01Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566213383;
 bh=mHohkKnMT8xmCVz946S2fj/VooESKL2x2tfzA/bLGQM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=U1c/AyGSOon12WTp1/ca/JxxkZdGezvL7jktcoYNefWjGNSwwFhOlMQnj6HaRUTDz
 2TvPzcFepYBcXRgG8/xKlAwWxhOR87MlnvwiTXONDx3AL8ySAGBMNs3kD12KAN1pHE
 0eevu23Kh9DyjgDZ0TlkSw+aOINIYxbQs8FQzEl0=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190819111622eucas1p2eb5126314a1c1630ca616a5b40279764~8TsX2Yyqt3179931799eucas1p2l;
 Mon, 19 Aug 2019 11:16:22 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 7D.DD.04469.6058A5D5; Mon, 19
 Aug 2019 12:16:22 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190819111621eucas1p228cea8b1ed16b8a065983af9ea28c3db~8TsW-QSK_3187131871eucas1p2r;
 Mon, 19 Aug 2019 11:16:21 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190819111621eusmtrp29c9e075d164c5e486878d581bd782150~8TsW_nkFW1063410634eusmtrp2u;
 Mon, 19 Aug 2019 11:16:21 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-74-5d5a8506bee6
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 98.9D.04117.5058A5D5; Mon, 19
 Aug 2019 12:16:21 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190819111621eusmtip1f1c967c1212ba46b9976063d06632464~8TsWZtvTM1525215252eusmtip1N;
 Mon, 19 Aug 2019 11:16:20 +0000 (GMT)
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
To: Viresh Kumar <viresh.kumar@linaro.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <b831d7c5-c830-fd65-20cf-02e209889c28@samsung.com>
Date: Mon, 19 Aug 2019 13:16:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819090928.pke6cov52n4exlbp@vireshk-i7>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0iTYRjt3XfVmrxOzSeLkpFBA28Q8YUhmSULCbIbYljN/FqSNzYvaZSW
 GKV5KUhtKooXUjHMVWZLy3TOwswyCyXvrkxtEblRJmjOT8l/55znPM97DrwsIWmnXNiI6Dhe
 Fa2IlNK2ZINh9q07nR4S6tVcbcfVF9RRXIn+LcXljE8TXHf3A4bTjn+iuA+6IpqbydIjrqD7
 uYi7rx9kuLLHZoZLb9YzXL1Fzj0cMdB7xHJtzQ1aPvCpiZY/rEiRZz+qQfIZ7eZDVIjt7nA+
 MiKBV3n6nrY99+JnHx3bQl8YyptGqUhDZSAbFvAO+Dbwg8xAtqwEVyGYK69cJmYEPzrHCIHM
 IHhjqKBXVsy6+yJhcA9B8YMuRiAmBF+Mf5YOO+C90DRnWdxgWUcsg8l+3ioT+KMIdJYlTGNv
 yGrPRlaLGPvC74ltVkhiN7jTrbQ6nHAw/BppWzooxvbw+q6RtGIbvAua5gcI4aIzXDVXUwLe
 Ak9MRUuZAQ8x8LXKsJx5H7y89Xe5sgNMdTxiBLwJFp6WiISFNAQ3n31mBJKLYLijFAkuH2jr
 eE9Z0xF4O9TpPAXZD7J79SKrDNgO+kz2Qgg7uN2QTwiyGK5fkwjurTBXky8SsAtkGhfIXCTV
 rKqmWVVHs6qO5v+7pYisQc58vDpKyau9o/lED7UiSh0frfQ4ExOlRYufq3O+41cjsvSEtSLM
 Iuk68Su3kFAJpUhQJ0W1ImAJqaM42ys4VCIOVyQl86qYU6r4SF7dijaypNRZfHHNyAkJViri
 +PM8H8urVqYi1sYlFSX/Tsks75k8WygLDEhsfpWl9fTRX9ZsbZzaMezWWxrj5KUzetQp1x48
 2lKYMH7Z1ZAS3C/FoyangLDUA+4bXEVBvU2zfe+OZ/juLGsJlNV/DIo3FI8x5Wy/9J5/FZlu
 Drx0eH1O7feEK/vTeg8fq81rnPDzz7TP7Rk9crKyb3CqS0qqzym8ZYRKrfgHenLCP1gDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrOIsWRmVeSWpSXmKPExsVy+t/xu7qsrVGxBhsWK1lsnLGe1WL+kXOs
 Fv2PXzNbnD+/gd1i0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdYtPULu0Xr3iPsFhu/elhs
 fnCMzYHXY9OqTjaPO9f2sHlsXlLv0bdlFaPH501yAaxRejZF+aUlqQoZ+cUltkrRhhZGeoaW
 FnpGJpZ6hsbmsVZGpkr6djYpqTmZZalF+nYJehn7P9xgKzjAVnFv2mvGBsZZrF2MnBwSAiYS
 X3atZepi5OIQEljKKPH49EOgBAdQQkpifosSRI2wxJ9rXWwQNa8ZJRq3fGIESQgLOEns+f2V
 DaReREBL4uXNVJAaZoGrTBKL91xigWhoY5Y48boDrIFNwFCi92gfI0gDr4CdxPfnaiAmi4Cq
 xNTz6SAVogIREod3zAKr5hUQlDg58wkLiM0pYCmx598dZhCbWUBd4s+8S1C2uETTl5WsELa8
 xPa3c5gnMArNQtI+C0nLLCQts5C0LGBkWcUoklpanJueW2ykV5yYW1yal66XnJ+7iREYqduO
 /dyyg7HrXfAhRgEORiUe3hOqUbFCrIllxZW5hxglOJiVRHj7DCJihXhTEiurUovy44tKc1KL
 DzGaAv02kVlKNDkfmETySuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFw
 SjUwXj6qMvmZ8e8Dmzwd76Ul8/W90n3Kmb5W9pWaUPZ5UzsxcXHLH8snqj0pVee+aHfyeIn4
 /9+Hez+xesz3rPT0sl/08Qrny2PbrzDcltfUW7hH46mpn+9NK7PMN0I+Xj9lDNq+X5Vo5qsS
 n2jJZtAhy/iL/833XJVtiafP3P7S3XXlGmvZW3s2JZbijERDLeai4kQAgtWqOeoCAAA=
X-CMS-MailID: 20190819111621eucas1p228cea8b1ed16b8a065983af9ea28c3db
X-Msg-Generator: CA
X-RootMTR: 20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1
References: <CGME20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
 <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
 <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
 <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
 <20190819090928.pke6cov52n4exlbp@vireshk-i7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_041630_160223_9A77ACBA 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, pankaj.dubey@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/19/19 11:09, Viresh Kumar wrote:
> Will something like this help ?
> 
> https://lore.kernel.org/lkml/1442623929-4507-3-git-send-email-sboyd@codeaurora.org/
> 
> This never got merged but the idea was AVS only.

It's quite interesting work, it seems to be for a more advanced use case 
where OPP voltage is being adjusted at runtime.

We could use it instead of removing an OPP and then adding with updated 
voltage. On Exynos there is there is just a need to update OPPs once at boot 
time, so it is more "static". However the requirements could presumably 
change in future.

If that's your preference I could switch to that notifier approach.
AFAICS the API would still need to be extended to support multiple voltages,
when in future we add support for the Body Bias regulator. 

-- 
Thanks,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
