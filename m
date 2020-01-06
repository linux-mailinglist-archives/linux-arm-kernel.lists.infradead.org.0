Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E326130BDD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 02:44:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNuv8ELwVKC+iU5HmwRiJg2Iw3dZoUQnhnbFGqecjMQ=; b=Ymel4p1SjuEZLz
	pt0aogeiirvBfYhJcA6ocDYnl7+mBKfQSLQoLivtYqDHfznLEDFQ4inJ/5Km+Urfjk994lSU5nZLA
	gEs/PygMowhjV5hEZo+13NB1PYvYK2IDn5McuZcHkIAzG6lcMt0kDdcPGvstAMT+EsbeKc9IxIOJc
	Es5XkCUbFVf5iFS8wKlOwG1IajbUJL0oKyktnXsE8ujx8gCFMk9SBN57e2DZU62XMEOnAoW2jnCVX
	++Z7LoADJ8ij4qZ65Qx0ZgDEDdhZlUQhfC8GUD4VCghHh63XwajjxODv0+vlSp5md3B0JfLehkm7Y
	DeUJqsUYxa1E5BU2UNFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioHR2-0001NR-9m; Mon, 06 Jan 2020 01:44:00 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioHQu-0001Mq-UT
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 01:43:54 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200106014349epoutp015644c1100abf68a415a70e8e325b385e~nKMcEFdvO0044700447epoutp019
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Jan 2020 01:43:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200106014349epoutp015644c1100abf68a415a70e8e325b385e~nKMcEFdvO0044700447epoutp019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1578275029;
 bh=0KV/81+8NYUZoOd09j3uz5rKNhVd4P0bKNs9BXXZU2I=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=n0VtdPXMRxGvT7wxI2H+AxNGxqpjRlbuxU8SnJiSdoU2gFXoKGPMRZJi3PAjLPpXZ
 0QH9O7yiqz7xKAEmsxrsOAQg8jTAYAzcQSZXHTDN+Enp+5d8ueDyhoVbQZ7lKmysHS
 AF5IWftjTgA7FXFiTdTjiMPTScp/y/+31/rOZ7Dc=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20200106014349epcas1p3a9be5b37643dbb8d9972653f191c6625~nKMbpE_tg2455124551epcas1p3R;
 Mon,  6 Jan 2020 01:43:49 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.154]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47rdZp0WjzzMqYl2; Mon,  6 Jan
 2020 01:43:46 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 4D.F5.48019.1D0921E5; Mon,  6 Jan 2020 10:43:45 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200106014345epcas1p220efaa80993b31c09359f5dee6931ca7~nKMYQqFAN1612316123epcas1p2C;
 Mon,  6 Jan 2020 01:43:45 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200106014345epsmtrp1183fb04c0de0a96ce0f254aaa9992ea1~nKMYP7ENE3013530135epsmtrp1v;
 Mon,  6 Jan 2020 01:43:45 +0000 (GMT)
X-AuditID: b6c32a38-257ff7000001bb93-dc-5e1290d1a74d
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2E.F8.10238.1D0921E5; Mon,  6 Jan 2020 10:43:45 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200106014345epsmtip2a827f50c8e9b1af55046c58e7ab473be~nKMYApXxr0734807348epsmtip2O;
 Mon,  6 Jan 2020 01:43:45 +0000 (GMT)
Subject: Re: [PATCH v2 13/20] devfreq: exynos: Rename Exynos to lowercase
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <c3c083b4-a7f4-946b-aea0-d91940e5ba56@samsung.com>
Date: Mon, 6 Jan 2020 10:50:51 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20200104152107.11407-14-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMJsWRmVeSWpSXmKPExsWy7bCmru7FCUJxBkvXWlv0P37NbHH+/AZ2
 i7NNb9gtNj2+xmpxedccNovPvUcYLWac38dkcbtxBZsDh8emVZ1sHpuX1Hv0bVnF6PF5k1wA
 S1S2TUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7QFUoK
 ZYk5pUChgMTiYiV9O5ui/NKSVIWM/OISW6XUgpScAssCveLE3OLSvHS95PxcK0MDAyNToMKE
 7Izf/d0sBX+UK3bMzGtgfCzbxcjJISFgIvGoZzNzFyMXh5DADkaJbduOs4IkhAQ+MUo0XtKA
 sL8xSuw5Fg/TMOvCOSaIhr2MErtewDjvGSUefPzLDlIlLOApsXXWYzBbRMBdYsH/NWwgRcwC
 9xgleuYtYAZJsAloSex/cYMNxOYXUJS4+uMxI4jNK2An8fzme7BmFgEViaPt08DqRQXCJE5u
 a4GqEZQ4OfMJC4jNKWAm0f3wBdgcZgFxiVtP5jNB2PIS29/OAftNQuAzm8TiPZdYIX5wkdi4
 diMbhC0s8er4FnYIW0riZX8blF0tsfLkETaI5g5GiS37L0A1G0vsXzoZaAMH0AZNifW79CHC
 ihI7f89lhFjMJ/Huaw8rSImEAK9ER5sQRImyxOUHd5kgbEmJxe2dbBMYlWYheWcWkhdmIXlh
 FsKyBYwsqxjFUguKc9NTiw0LTJAjexMjOIFqWexg3HPO5xCjAAejEg8vQ7BQnBBrYllxZe4h
 RgkOZiUR3kY3wTgh3pTEyqrUovz4otKc1OJDjKbA0J7ILCWanA9M7nkl8YamRsbGxhYmhmam
 hoZK4rwcPy7GCgmkJ5akZqemFqQWwfQxcXBKNTBKymrlTpjo0b4iJlb0379HzO3Mu7b2bnsv
 IDO9rmjilTL973v3n9RZ09bJLbXir0jxszXb7RU8Hk6W/rrv+8krF/ZMWevv7SJ5pSQxcsUG
 U/P7a/gkxf2kP0gtNvgyf1FV396IlZMK5/q5LNFmCNJpWPTpbeSF1Tv5KkRzNs+8pcbGdopP
 JPWUEktxRqKhFnNRcSIAui4TpLYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnkeLIzCtJLcpLzFFi42LZdlhJXvfiBKE4g9ZfMhb9j18zW5w/v4Hd
 4mzTG3aLTY+vsVpc3jWHzeJz7xFGixnn9zFZ3G5cwebA4bFpVSebx+Yl9R59W1YxenzeJBfA
 EsVlk5Kak1mWWqRvl8CV8bu/m6Xgj3LFjpl5DYyPZbsYOTkkBEwkZl04x9TFyMUhJLCbUWJj
 90xGiISkxLSLR5m7GDmAbGGJw4eLIWreMkpMfPiPDaRGWMBTYuusx+wgtoiAu8SC/2vYQIqY
 Be4xSjT/WAQ1dQujRP/B/0wgVWwCWhL7X9wA6+YXUJS4+uMx2DZeATuJ5zffg01iEVCRONo+
 jRnEFhUIk9i55DETRI2gxMmZT1hAbE4BM4nuhy/A5jALqEv8mXeJGcIWl7j1ZD4ThC0vsf3t
 HOYJjMKzkLTPQtIyC0nLLCQtCxhZVjFKphYU56bnFhsWGOallusVJ+YWl+al6yXn525iBEeT
 luYOxstL4g8xCnAwKvHwrggQihNiTSwrrsw9xCjBwawkwtvoJhgnxJuSWFmVWpQfX1Sak1p8
 iFGag0VJnPdp3rFIIYH0xJLU7NTUgtQimCwTB6dUA6Omnt5Kww2Zp49W7nr2d1HptfUaXEmv
 LlrVTt2xat3+pu2/pyz5MWGOyj0/bnX1dx4SYXzpllZpc4+naYZL37bZdIJP4jIHRwSLdM+N
 mwytDZf+xqosXuaxXIupOHxlzOFLOjZxU3gcJ14XEJ4XPIPJWM5vwUrnuqkHeQ/PmF0THtG7
 +YaAx2clluKMREMt5qLiRAAyrMe9ogIAAA==
X-CMS-MailID: 20200106014345epcas1p220efaa80993b31c09359f5dee6931ca7
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200104152251epcas4p2904c6be67570b1c0fd1cc43711f24b42
References: <20200104152107.11407-1-krzk@kernel.org>
 <CGME20200104152251epcas4p2904c6be67570b1c0fd1cc43711f24b42@epcas4p2.samsung.com>
 <20200104152107.11407-14-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_174353_224067_80932A02 
X-CRM114-Status: GOOD (  24.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/5/20 12:21 AM, Krzysztof Kozlowski wrote:
> Fix up inconsistent usage of upper and lowercase letters in "Exynos"
> name.
> 
> "EXYNOS" is not an abbreviation but a regular trademarked name.
> Therefore it should be written with lowercase letters starting with
> capital letter.
> 
> The lowercase "Exynos" name is promoted by its manufacturer Samsung
> Electronics Co., Ltd., in advertisement materials and on website.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  drivers/devfreq/Kconfig             | 2 +-
>  drivers/devfreq/event/Kconfig       | 4 ++--
>  drivers/devfreq/event/exynos-nocp.c | 2 +-
>  drivers/devfreq/event/exynos-nocp.h | 2 +-
>  drivers/devfreq/event/exynos-ppmu.c | 2 +-
>  drivers/devfreq/event/exynos-ppmu.h | 2 +-
>  6 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
> index 1526f758daeb..0b1df12e0f21 100644
> --- a/drivers/devfreq/Kconfig
> +++ b/drivers/devfreq/Kconfig
> @@ -77,7 +77,7 @@ config DEVFREQ_GOV_PASSIVE
>  comment "DEVFREQ Drivers"
>  
>  config ARM_EXYNOS_BUS_DEVFREQ
> -	tristate "ARM EXYNOS Generic Memory Bus DEVFREQ Driver"
> +	tristate "ARM Exynos Generic Memory Bus DEVFREQ Driver"
>  	depends on ARCH_EXYNOS || COMPILE_TEST
>  	select DEVFREQ_GOV_SIMPLE_ONDEMAND
>  	select DEVFREQ_GOV_PASSIVE
> diff --git a/drivers/devfreq/event/Kconfig b/drivers/devfreq/event/Kconfig
> index a53e0a6ffdfe..878825372f6f 100644
> --- a/drivers/devfreq/event/Kconfig
> +++ b/drivers/devfreq/event/Kconfig
> @@ -15,7 +15,7 @@ menuconfig PM_DEVFREQ_EVENT
>  if PM_DEVFREQ_EVENT
>  
>  config DEVFREQ_EVENT_EXYNOS_NOCP
> -	tristate "EXYNOS NoC (Network On Chip) Probe DEVFREQ event Driver"
> +	tristate "Exynos NoC (Network On Chip) Probe DEVFREQ event Driver"
>  	depends on ARCH_EXYNOS || COMPILE_TEST
>  	select PM_OPP
>  	select REGMAP_MMIO
> @@ -24,7 +24,7 @@ config DEVFREQ_EVENT_EXYNOS_NOCP
>  	  (Network on Chip) Probe counters to measure the bandwidth of AXI bus.
>  
>  config DEVFREQ_EVENT_EXYNOS_PPMU
> -	tristate "EXYNOS PPMU (Platform Performance Monitoring Unit) DEVFREQ event Driver"
> +	tristate "Exynos PPMU (Platform Performance Monitoring Unit) DEVFREQ event Driver"
>  	depends on ARCH_EXYNOS || COMPILE_TEST
>  	select PM_OPP
>  	help
> diff --git a/drivers/devfreq/event/exynos-nocp.c b/drivers/devfreq/event/exynos-nocp.c
> index 1c565926db9f..ccc531ee6938 100644
> --- a/drivers/devfreq/event/exynos-nocp.c
> +++ b/drivers/devfreq/event/exynos-nocp.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
> - * exynos-nocp.c - EXYNOS NoC (Network On Chip) Probe support
> + * exynos-nocp.c - Exynos NoC (Network On Chip) Probe support
>   *
>   * Copyright (c) 2016 Samsung Electronics Co., Ltd.
>   * Author : Chanwoo Choi <cw00.choi@samsung.com>
> diff --git a/drivers/devfreq/event/exynos-nocp.h b/drivers/devfreq/event/exynos-nocp.h
> index 55cc96284a36..2d6f08cfd0c5 100644
> --- a/drivers/devfreq/event/exynos-nocp.h
> +++ b/drivers/devfreq/event/exynos-nocp.h
> @@ -1,6 +1,6 @@
>  /* SPDX-License-Identifier: GPL-2.0-only */
>  /*
> - * exynos-nocp.h - EXYNOS NoC (Network on Chip) Probe header file
> + * exynos-nocp.h - Exynos NoC (Network on Chip) Probe header file
>   *
>   * Copyright (c) 2016 Samsung Electronics Co., Ltd.
>   * Author : Chanwoo Choi <cw00.choi@samsung.com>
> diff --git a/drivers/devfreq/event/exynos-ppmu.c b/drivers/devfreq/event/exynos-ppmu.c
> index 055deea42c37..17ed980d9099 100644
> --- a/drivers/devfreq/event/exynos-ppmu.c
> +++ b/drivers/devfreq/event/exynos-ppmu.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
> - * exynos_ppmu.c - EXYNOS PPMU (Platform Performance Monitoring Unit) support
> + * exynos_ppmu.c - Exynos PPMU (Platform Performance Monitoring Unit) support
>   *
>   * Copyright (c) 2014-2015 Samsung Electronics Co., Ltd.
>   * Author : Chanwoo Choi <cw00.choi@samsung.com>
> diff --git a/drivers/devfreq/event/exynos-ppmu.h b/drivers/devfreq/event/exynos-ppmu.h
> index 284420047455..97f667d0cbdd 100644
> --- a/drivers/devfreq/event/exynos-ppmu.h
> +++ b/drivers/devfreq/event/exynos-ppmu.h
> @@ -1,6 +1,6 @@
>  /* SPDX-License-Identifier: GPL-2.0-only */
>  /*
> - * exynos_ppmu.h - EXYNOS PPMU header file
> + * exynos_ppmu.h - Exynos PPMU header file
>   *
>   * Copyright (c) 2015 Samsung Electronics Co., Ltd.
>   * Author : Chanwoo Choi <cw00.choi@samsung.com>
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
