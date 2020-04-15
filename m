Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166781A9A44
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hIDP4Up71o07Rr/lOx1qqCbei7LQdQiVvxCE7cwtTk=; b=djaHUBBQXx1+WE
	XBB4zVWjl9YY63Bzf11HfweEvJ/JlEZukoifvYKglVJqVBas7PyfuXuVVxBh523EKcJbZOV6hRzc2
	hAdAAFIhW04lhCfPCcW77gjN8MbT3TGW05NqMK99T2ic+CM4vPim3YoK9gHCef76mYf3KQsMs45Fl
	79BEWlx0xuVrhCnGdjF3jxb5VI0QNfZYP/b/qRJvV+YIh3AWPGKvjef+EVyCLk16d5NDpAZvxySbU
	zSXanRbqgmZ9Uue4tsrOjNorLUaC73BUVPeOMcgtDbRB2iLzqOjhhkwHyL5yp+ik8wEkZDce1w89s
	grOFfeOtVdwCF8GqTBMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOf8F-0007MW-BP; Wed, 15 Apr 2020 10:18:59 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOf7p-0007Eg-Vq
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:18:35 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200415101830euoutp02c61c50608364290f67b2d55f6d213bce~F9uXDWTET0314503145euoutp02O
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 10:18:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200415101830euoutp02c61c50608364290f67b2d55f6d213bce~F9uXDWTET0314503145euoutp02O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586945910;
 bh=Fwm50T/nZ6Q2k3MWGzt6zeBPATrNUNxyHfySoKDQwlY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=lXPF7cxnDACNCik/GROwnay4jk8bk4K5g6tynb7zIkCJu/yp3Av9f81xYtr+uETgM
 41kcOO6CUNtwyQzEuYuU+uUtdgrI0k8QdHuv8MgrwZh0ue5dKfCsT8YywPXmQhkFqY
 A8b4VZkg6uVbljSW62MRzEnu7OzYYL/zfofd4FdA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200415101830eucas1p2be6eac13c3466aa1d65852252569e21c~F9uWtYhif2165521655eucas1p2O;
 Wed, 15 Apr 2020 10:18:30 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 31.D0.61286.57FD69E5; Wed, 15
 Apr 2020 11:18:29 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200415101829eucas1p18e21324d3c39926fffc6c8b5dc52f206~F9uWKjmky2321723217eucas1p1N;
 Wed, 15 Apr 2020 10:18:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200415101829eusmtrp2613be7d6379690c8e59bf53666811072~F9uWJhCso1953519535eusmtrp2R;
 Wed, 15 Apr 2020 10:18:29 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-3c-5e96df7569df
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 67.C1.08375.57FD69E5; Wed, 15
 Apr 2020 11:18:29 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200415101828eusmtip2f5c4763ad14611bd3948c396b71632d9~F9uVHoPir2416924169eusmtip2b;
 Wed, 15 Apr 2020 10:18:28 +0000 (GMT)
Subject: Re: [RFC 7/8] thermal: of: Monitor thermal zone after enabling it
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <40316054-5e39-f1fa-81f2-bfda787d2167@samsung.com>
Date: Wed, 15 Apr 2020 12:18:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200407174926.23971-8-andrzej.p@collabora.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0wTaRTNNzOdDsWSoai9EVxjE00kUVA0+aIrakQzMWbdGGM2ZkVHnUUi
 LaYF1DXxLUpVQAzS7RJey6OFFbAQaHdZ0aq0Bq34jPiuogKxRlpEqzxsGcjy79xzz8m5J7kM
 qbDT05hkTZqg1fApKlpGNbX5XXPTX5xPjC0bWILNzmEKf3b5CVz5+jmF8wwjJC7yTceFt49R
 WF8ai90P1uFMn4HC7ssrcefhfwlc2J2BG1ynJbg630Zhm9tD46pLOQhbXj+UYP1XM4l9Z64h
 3FYyFXd0/IprWrpJfLP9rgR3ubNpPNRsoXB3oxL/d/wOiRss+eTyKM76rBxxjeZOgjN5Yzib
 8ZmUazBFc3+19BCcpTqL5p4+bKG5Dy5XgC8/yPW975JybwuuElzuRw/NXfxgJbicoVjuy733
 kp8jNsl+3CGkJGcI2pj4rbKd2d/60O4v8r2n7S+kh1BNqB6FMMAuhCdnzhF6JGMUrAnBrdYB
 Shz6EVzoO0KLgw+BafAdPW7J8j8hxUUVgotFeok4eBBct3pRUBXBrgFjzRVpEE9m48Df5JEG
 RSQ7IAX7/R4yuKDZxXD2RPWoQc7Gw/XHXiKIKXYWOIYdkiCewv4C3pdXJaImHG780UUFcQi7
 FJzOktEAklXC465iQsQzoNlTOHoesDkh0HtbLxXvToB77X9SIo6AXkfjGB8FI7ZiQjTUIhg6
 2T3mbkZQdW54rPUSeOr6GsBMIGIO1P0TI9IroLPIQAZpYMPgkSdcPCIM8poKxmg5nMxUiOrZ
 UF9ZT4/H6m1mMhepjBOqGSfUMU6oY/w/twRR1UgppOvUSYJuvkbYM0/Hq3XpmqR521PVFhT4
 7PZhh9eKPt3dZkcsg1ST5M6/8xMVEj5Dt09tR8CQqsnyOnWAku/g9/0uaFO3aNNTBJ0dRTKU
 SimPK+vZrGCT+DRhlyDsFrTjW4IJmXYIZST6jh8onLmeHdHq41InzckMz3NurzNcKJ3S1lp3
 av0Vvrw+6yh6Eyrn1nb8VPtupkYWZpa9Ki2u/PSGfxkTNejamB232R1fua6iYpHQs7x1WWu0
 dWnHlsH+fmRKS/ihd0FyrT90RuRqlUFaEJkwd3XuqooBh7K2fP+G3xyhqWX7VZRuJz8/mtTq
 +O+XxsAh1QMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHec85OztWo9PU9iJFsRJDa3pcttewFfWhQ/ewQMqyaYdpuS12
 Nsmki1BW67JWmTWGTcrSKYqb1SSL1FK7YGZkaXZZjTJqkkroKq1NC/z2e5//78/DCw+FizsE
 EVSW1sDptapsKTmJeDza8naB8d2F7XE9ZeGovHWUQENtfgxd+/iWQGcv/sFR8eBMZHt6mECm
 kjjkebEeFQxeJJDn3grUlX8bQ7beHORqOylAjsI6AtV5fCS6ftcMkPNjpwCZfpbjaPDUfYCa
 7dNRe3sqqqjvxdGTxx0C5PWcJtHILSeBemsl6M6RZzhyOQvxZTNY95urgK0t78LYsoFYts76
 Rsi6yqLZK/VfMNbpOE6yPZ31JNvX1haYXz3I9n/zCtlPRU0Ye+a7j2Rr+twYax6JY4effxNs
 CN0iS9LrjAZudqaONyyRbmVQvIxJRLL4hYkyRq7Ytjg+QRqrTNrJZWflcPpY5Q5Z5ulf/WDP
 sGjvycZ3wkOgYrIJhFCQXgiP+1/jJjCJEtOlAA6frww8qEAwA7ZU54w7ofB3p4kcd74CaKs5
 QgSDUHoVtFY0CIMcRsuh/6ZPGJRwelgIf3SX4cFATOtg3echQZBJejG0HHWAIItoJXzQPYAF
 maAjYctoy5gTTqfAJrf1nzMNPrzkHVsWQi+Bra32sWU4HQV/F3fg4yyB3d7L2DjPgrd8NvwM
 EFsn1K0TKtYJFeuEih0QDhDGGXmNWsMzMl6l4Y1atSxDp3GCwD3dbPa73KCjJrkR0BSQThG1
 VhZuFwtUOXyuphFACpeGiao1gZFopyp3H6fXpemN2RzfCBICn7PgEeEZusB1ag1pTAKjQImM
 Qq6QL0JSiegY3ZAqptUqA7eb4/Zw+v89jAqJOATmdbWbzbupjHS/BHu5Pz3Z8n5zWlMK1K4R
 js7aURxTpH7lKHJF1pbIMzYueLRsnW7u1I3ql5OJpaUHCsin55Iv5a9azUQWqEvTRBbLsSiJ
 4nbz3RP+OT1np/7ElVURucon/UT8rg+2whuPlq+13svb5Mmab7d/yTXz7LOYKnfeSinBZ6qY
 aFzPq/4COBkTEmUDAAA=
X-CMS-MailID: 20200415101829eucas1p18e21324d3c39926fffc6c8b5dc52f206
X-Msg-Generator: CA
X-RootMTR: 20200415101829eucas1p18e21324d3c39926fffc6c8b5dc52f206
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200415101829eucas1p18e21324d3c39926fffc6c8b5dc52f206
References: <20200407174926.23971-1-andrzej.p@collabora.com>
 <20200407174926.23971-8-andrzej.p@collabora.com>
 <CGME20200415101829eucas1p18e21324d3c39926fffc6c8b5dc52f206@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_031834_222568_4AED866C 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "Rafael J .
 Wysocki" <rjw@rjwysocki.net>, platform-driver-x86@vger.kernel.org,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 4/7/20 7:49 PM, Andrzej Pietrasiewicz wrote:
> thermal/of calls its own ->set_mode() method, so monitor thermal zone
> afterwards. This is needed for the DISABLED->ENABLED transition.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> ---
>  drivers/thermal/of-thermal.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/thermal/of-thermal.c b/drivers/thermal/of-thermal.c
> index b7621dfab17c..cf2c43ebcb78 100644
> --- a/drivers/thermal/of-thermal.c
> +++ b/drivers/thermal/of-thermal.c
> @@ -523,8 +523,11 @@ thermal_zone_of_sensor_register(struct device *dev, int sensor_id, void *data,
>  		if (sensor_specs.np == sensor_np && id == sensor_id) {
>  			tzd = thermal_zone_of_add_sensor(child, sensor_np,
>  							 data, ops);
> -			if (!IS_ERR(tzd))
> +			if (!IS_ERR(tzd)) {
>  				tzd->ops->set_mode(tzd, THERMAL_DEVICE_ENABLED);
> +				thermal_zone_device_update(tzd,
> +						THERMAL_EVENT_UNSPECIFIED);
> +			}
>  
>  			of_node_put(sensor_specs.np);
>  			of_node_put(child);
> 

This patch is bogus/redundant, please look at ->set_mode implementation for
thermal/of drivers:

static int of_thermal_set_mode(struct thermal_zone_device *tz,
			       enum thermal_device_mode mode)
{
	struct __thermal_zone *data = tz->devdata;

	mutex_lock(&tz->lock);

	if (mode == THERMAL_DEVICE_ENABLED) {
		tz->polling_delay = data->polling_delay;
		tz->passive_delay = data->passive_delay;
	} else {
		tz->polling_delay = 0;
		tz->passive_delay = 0;
	}

	mutex_unlock(&tz->lock);

	data->mode = mode;
	thermal_zone_device_update(tz, THERMAL_EVENT_UNSPECIFIED);

	return 0;
}

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
