Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E8219A22E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 01:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0spXylHaKK7OzqYpowV4fnMj77hwR8qc6VXrZg12alU=; b=pCGhpHL5q2SE8V
	O91yBuUiQB+toJAbxVXsyLfBSIWDShHCGBN4ZWQL6K1G0s77kuncKslNDP2WcAgl/q34TRISB5wP3
	i+AY0vKHGzpGMM+Luq/kjqndL7AEdNlocpaN6HqQ7GP+LmcJvl6G5/FJKlixiP9BWzjCrA7YywUdE
	zBNyEg4ps8U72UCI1ak+NlMilIzUkorFP09ty9uhlWJ5eO/bHkTG6OgmQOWuHg+5NtCed74LVL/Mb
	2TOwSyVsGtXC8VTjVq1WHGrBHBmVTCV/Hd9uxC4yrArLWV2FJWoYE12wI7cU5XCurMriJ8H3XKcSd
	iyFaWrFjapbYAwZ5vXhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJPro-0002EX-Gk; Tue, 31 Mar 2020 23:00:20 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJPrS-0002DY-Q3
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 23:00:00 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200331225955epoutp0482fc545086f038640d5539caa338b07d~Bhb45qk0Y0901109011epoutp04L
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 22:59:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200331225955epoutp0482fc545086f038640d5539caa338b07d~Bhb45qk0Y0901109011epoutp04L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585695595;
 bh=cp03SGTakGmVgzpFFw5xpcGW130Uflqr7VsMCqzjjwM=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=MYDO9BI0BycZIbNatlJWjAKTTRGGuf2c284SfDHFbbIs13cLX5V6W4czjdJ4X8NAP
 P12bza+eaL5IPS/nrsr3TV8RcbYrgeHYBd0OqJNHL3ttzheCo+mWIndKg8r0qrSpLW
 c3xrKHgLiiodJBwR+Fgt9w5+935RgSb2Yq5ngN/8=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20200331225955epcas1p45ffea529fc50f8bb9cf6f3f5cba37916~Bhb4SdLIu2949529495epcas1p4K;
 Tue, 31 Mar 2020 22:59:55 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.157]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 48sPt03fFDzMqYlm; Tue, 31 Mar
 2020 22:59:52 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 D4.FF.04145.86BC38E5; Wed,  1 Apr 2020 07:59:52 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20200331225951epcas1p40ae4eff7ebbf4e21821f38628af4b2df~Bhb1Qr3EA0452704527epcas1p4b;
 Tue, 31 Mar 2020 22:59:51 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200331225951epsmtrp1cbb2b7775d09fe76497f21a1cb079089~Bhb1PcNMv1348113481epsmtrp1Z;
 Tue, 31 Mar 2020 22:59:51 +0000 (GMT)
X-AuditID: b6c32a35-28dff70000001031-a1-5e83cb681aa6
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F4.D4.04158.76BC38E5; Wed,  1 Apr 2020 07:59:51 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200331225951epsmtip1590e75b13b20f717d6aa4364f5f4e865~Bhb01H2sJ2062120621epsmtip1-;
 Tue, 31 Mar 2020 22:59:51 +0000 (GMT)
Subject: Re: [PATCH 3/8] PM / devfreq: imx: Register interconnect device
To: Leonard Crestez <leonard.crestez@nxp.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>, Martin
 Kepplinger <martink@posteo.de>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <ea021693-c22b-27be-8346-011673ae0831@samsung.com>
Date: Wed, 1 Apr 2020 08:08:57 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <f4553b6aacc88a91ed407eb709097e2cd1bf1a19.1585188174.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Tf0xTVxTHc/teXx/Gzrcq44Kbq2+gkQTsE8quDMzicHnLjCNZsj+WWXyj
 L5TQX+lrnW5ZVqew0ilqtHMyBYUya3GBViwFJWxY4oCIMEMl6wgVHOicGAYoc9Gtv8z473PO
 Pd9z8j03h8RklyRpZLnezJv0nJYmluG+qxsUWZqB/SpF+NnLaLyuEqCFgX6Avv+lF6B5RyeG
 JsdDALWfLEX1gUEx8lwM4ehEl5dAbkcHjm7caJWg61/+KUGusVkx8k4Gxcj+5DyG5g4FAGq6
 NSxCQddRMZprnQRouH8bCu1zEah58CcCnZ53YKiyKyBB9p6nBHoW9ODoblsKamoMYsizwL75
 CuuwuwB7oe4CYB+OVkrY76zDOHvGa2G97mqC/S14hWAvOr9gPTN+EXv4qYJ9cjWZrWlzA3bO
 u6ZY+mFFgYbn1LxJzutLDepyfVkh/e77JW+VKPMUTBazGb1Oy/Wcji+ki7YXZ71dro0shZbv
 5rSWSKqYEwR645YCk8Fi5uUag2AupHmjWmvcbMwWOJ1g0Zdllxp0+YxCsUkZKdxVoZltnhAZ
 W1bvOXIqhFvB/WQ7SCIhlQsDV77G7WAZKaP8ALZMTYviwV8A3rc+EMeDRwAuHvsGfy6pHutO
 SLoAdP4wkpA8BNDj3EfYAUmupFg4fO+NaH4V5QQwEHwcU2CUSwKrfOdirQgqE3bfHSWivIJa
 C0cWJ0GUpdQWOOscwqKMU+nwcocjlk+mPoB9vgOJmhdh38k7sT5JlArOn/tXFGWMSoG/3qlP
 8Kuw/cEpLDoYUn4S9oamJHEPRfD2j40JXgn/uNaW4DR473BVgj+D5/sCRFxsA7Cte0gcf8iB
 3U3HRFGbGLUBtnRujKfXwo5/ToP44BfgzMJBcbQEUlJoq5LFS16DN8NjojinwsavqokjgK5d
 Yqd2iYXaJRZq/x92BuBu8BJvFHRlvMAYmaX/7QWxk8lU+sHxwe09gCIBvVwqz9+vkom53cJe
 XQ+AJEavkhLvWVUyqZrb+ylvMpSYLFpe6AHKyLaPYmnJpYbIAerNJYxyU05ODspl8pQMQ6dI
 Hbe0KhlVxpn5Cp438qbnOhGZlGYFxXWrF/Zk3J74e/1Qpdvma5prVwwQzOfLZ4vGfZ2PLIv+
 5sVM0ZRrXXCUF8y9H237fd3EiW+nr3OfSMKtikNbCz5ec1yFZ1+beezOONiXaqupDx94R7/1
 bDg9fcq2M6PcMzLN9WsvYdXqfEVD6o4CPVljayjK/blhxc2xPE5trqNxQcMxmZhJ4P4DZ8sD
 ikgEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02SXUhTYQCG+XbOzo7D6eem+Knkz7CMQaVh9JG2oh84N1kXKtSFNvQwLefG
 jlpWlDo1HVYarHD+LGqWqaDOKM1M3EyskTrBJa0ynRdKWYkORcpqWuDdw/O+791LE+IGfiid
 nZvHanMVOVJKSD61ScN3Ke26tFh98T481VgGsMf+BuCH468AXjY8J7B7ygXws9oMbBoc4ePO
 LheJ7/ZZKNxi6CHx6GiHAL8t+SrAzR8X+djidvKxfu0xgZduDALc9M7Bw87mGj5e6nAD7Hhz
 HLuKmyncOjJA4YZlA4HL+gYFWG/9ReF1ZyeJ554E46YHTgJ3epjD2xiDvhkwbY1tgPk+WSZg
 6oocJHPPks9YWiop5oPzBcV0ma8xnd+6ecytX7HMmi2IufmkBTBLlvBTojPCxEw2J7uA1e6R
 nxVmLbbO8DTtYRer611kEfgSpAc+NILxqPJjP6kHQloMewFaKZvhbQYh6I7jFaEH9F+WIJuN
 2+wsADQ+30t5vQQyyDGf4K0HQjNA5umT3g4B2wSoxHyd8gZiOAPQj/tyL1NQhvrnJje8P4xC
 E6tu4GURlKNF8xjhZRJGo94ew4YPgqmox+zmbXYC0OvaWdLLPjANLT/6veEJGIN+No4TmxyM
 3s+a/vkI9GyhnqgGEuOWuXHLxLhlYtwyuQfIFhDCajiVUsXFafbmshd2cwoVl5+r3J2hVlnA
 xmlksm4wPJxuBZAGUl9R1AFdmpivKOAKVVaAaEIaKKJOFqWJRZmKwkusVp2uzc9hOSsIo0lp
 sChCPXRaDJWKPPY8y2pY7f+UR/uEFoF805W1y/yX8Tmf+bq6eE2/X167n/xEVam2bod8bD9I
 8BxMFsXW6NjMJNtQqObqdh28fWy1IinZNFwZUqMcOCe0h38yrL/vqfZMpFTNJ5YP50UXVEqF
 kXMxmStT2N9+1HNAbZ02JUlm4JGU8p2FV9UVEb5NpZwkMlVzyF0cICW5LEWcjNByij/lw9sV
 MAMAAA==
X-CMS-MailID: 20200331225951epcas1p40ae4eff7ebbf4e21821f38628af4b2df
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200326021638epcas1p1626d266c8dcfa051b7c590838e62b097
References: <cover.1585188174.git.leonard.crestez@nxp.com>
 <CGME20200326021638epcas1p1626d266c8dcfa051b7c590838e62b097@epcas1p1.samsung.com>
 <f4553b6aacc88a91ed407eb709097e2cd1bf1a19.1585188174.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_155959_195758_37E1C03F 
X-CRM114-Status: GOOD (  26.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On 3/26/20 11:16 AM, Leonard Crestez wrote:
> There is no single device which can represent the imx interconnect.
> Instead of adding a virtual one just make the main &noc act as the
> global interconnect provider.
> 
> The imx interconnect provider driver will scale the NOC and DDRC based
> on bandwidth request. More scalable nodes can be added in the future,
> for example for audio/display/vpu/gpu NICs.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/imx-bus.c | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c
> index 285e0f1ae6b1..e9b13e43bf0a 100644
> --- a/drivers/devfreq/imx-bus.c
> +++ b/drivers/devfreq/imx-bus.c
> @@ -15,10 +15,11 @@
>  struct imx_bus {
>  	struct devfreq_dev_profile profile;
>  	struct devfreq *devfreq;
>  	struct clk *clk;
>  	struct devfreq_passive_data passive_data;
> +	struct platform_device *icc_pdev;
>  };
>  
>  static int imx_bus_target(struct device *dev,
>  		unsigned long *freq, u32 flags)
>  {
> @@ -60,11 +61,42 @@ static int imx_bus_get_dev_status(struct device *dev,
>  	return 0;
>  }
>  
>  static void imx_bus_exit(struct device *dev)
>  {
> +	struct imx_bus *priv = dev_get_drvdata(dev);
> +
>  	dev_pm_opp_of_remove_table(dev);
> +	platform_device_unregister(priv->icc_pdev);
> +}
> +
> +/* imx_bus_init_icc() - register matching icc provider if required */

Better to add following comments without 'imx_bus_init_icc() -' comment.
/* Register matching icc provider if required */

> +static int imx_bus_init_icc(struct device *dev)
> +{
> +	struct imx_bus *priv = dev_get_drvdata(dev);
> +	const char *icc_driver_name;
> +
> +	if (!of_get_property(dev->of_node, "#interconnect-cells", 0))
> +		return 0;
> +	if (!IS_ENABLED(CONFIG_INTERCONNECT_IMX)) {
> +		dev_warn(dev, "imx interconnect drivers disabled\n");
> +		return 0;
> +	}
> +
> +	icc_driver_name = of_device_get_match_data(dev);
> +	if (!icc_driver_name)
> +		return 0;

Recommend to add the error or warning message.

> +
> +	priv->icc_pdev = platform_device_register_data(
> +			dev, icc_driver_name, -1, NULL, 0);
> +	if (IS_ERR(priv->icc_pdev)) {
> +		dev_err(dev, "failed to register icc provider %s: %ld\n",
> +				icc_driver_name, PTR_ERR(priv->devfreq));
> +		return PTR_ERR(priv->devfreq);
> +	}
> +
> +	return 0;
>  }
>  
>  static int imx_bus_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -112,18 +144,25 @@ static int imx_bus_probe(struct platform_device *pdev)
>  		ret = PTR_ERR(priv->devfreq);
>  		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>  		goto err;
>  	}
>  
> +	ret = imx_bus_init_icc(dev);
> +	if (ret)

Recommend to add the error message.

> +		goto err;
> +
>  	return 0;
>  
>  err:
>  	dev_pm_opp_of_remove_table(dev);
>  	return ret;
>  }
>  
>  static const struct of_device_id imx_bus_of_match[] = {
> +	{ .compatible = "fsl,imx8mq-noc", .data = "imx8mq-interconnect", },
> +	{ .compatible = "fsl,imx8mm-noc", .data = "imx8mm-interconnect", },
> +	{ .compatible = "fsl,imx8mn-noc", .data = "imx8mn-interconnect", },
>  	{ .compatible = "fsl,imx8m-noc", },
>  	{ .compatible = "fsl,imx8m-nic", },
>  	{ /* sentinel */ },
>  };
>  MODULE_DEVICE_TABLE(of, imx_bus_of_match);
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
