Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267C911DD1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 05:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbmVwKCFpU/eGpmkDEJWGY9LEzeRNaejY8vZpqPwkkk=; b=bkXcPjfvcxoSW8
	87lhm1zq0DqubodbbqfrHnEShMfQlFKUiVeFePjllhqBdtjBHX86Uvm9OMYAe1Ye5fi8jgudqKS8L
	QGOhlfWWm8ge2tp7IvwccU/oIEg0Cru+5lKVUNz2DyI0mEcgr2Xc57GGSyW/t8OPNtC3OGdctXk5V
	OMFp1XZb/GZqWwCcHigWLeyLpp1LsOulh1/A4VRGIqIkwSMsWtwY9GcBKYUzr4OBKgVp7GYyo65wV
	jVIqGjYLAomZSEZ4Pt8it2N9fcEI7m0k1Ucss0rWr53b1PGkSz6whtpxL+rrbTzw97fFnljRvRXNc
	omNIBvb5twurQpnPMcJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifcTZ-0007my-7H; Fri, 13 Dec 2019 04:22:49 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifcTN-0007mT-KI
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 04:22:39 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191213042232epoutp04e23857171f06f23c94151de3e813ea2f~f04J_3duZ0453404534epoutp04n
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 04:22:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191213042232epoutp04e23857171f06f23c94151de3e813ea2f~f04J_3duZ0453404534epoutp04n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576210952;
 bh=TxyKw3Ul1g+AAGrympx1fMmccHpakDh6s6Hu8YFBF/U=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=IU3xezhzSZFstu175bUEt9eUVC8whaCKN5YWmQh20iqxIyrfsxkngf7a2wOMtGbZk
 rL7wDwnJsNAa9EK+WdRL7/DFas0T+uifpl7Z7DrAIQUuUFdHjBjc1eExwZtid72cRC
 ixEsDl2nZqbGK3AzvPudQ5HbOXj7rzpJ2SIz9q1U=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20191213042231epcas1p339e826de73063a8cd62b72ffb5b80efa~f04JJHR-D2676926769epcas1p3J;
 Fri, 13 Dec 2019 04:22:31 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.157]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47YyDz6yJHzMqYkx; Fri, 13 Dec
 2019 04:22:27 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 89.68.52419.30213FD5; Fri, 13 Dec 2019 13:22:27 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191213042227epcas1p4b1e09e0001edc5da8466eb98debb6c98~f04F6-OY42197221972epcas1p4N;
 Fri, 13 Dec 2019 04:22:27 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191213042227epsmtrp1026ea16fd654083f10803ae88241378d~f04F5zMOQ2855928559epsmtrp1z;
 Fri, 13 Dec 2019 04:22:27 +0000 (GMT)
X-AuditID: b6c32a37-5b7ff7000001ccc3-cc-5df31203b494
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 40.0C.06569.30213FD5; Fri, 13 Dec 2019 13:22:27 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191213042227epsmtip1d445af99ba0f9e76c2a94067e5097fc9~f04FdkB4z1095810958epsmtip1K;
 Fri, 13 Dec 2019 04:22:27 +0000 (GMT)
Subject: Re: [PATCH RFC v6 3/9] PM / devfreq: imx: Register interconnect device
To: Leonard Crestez <leonard.crestez@nxp.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <4d45cd39-24df-1714-0a27-5019c1367063@samsung.com>
Date: Fri, 13 Dec 2019 13:28:56 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <e0e6a1685ccdad95c9d0c922801afdda8adb9f05.1573761527.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxTZxTee297e9FV7iod71g28br9sAvQWgsvizjN1N05s7CwD7OE1Ru4
 o4R+pbclcyyDMWXS6MQYYvhwuAhLW9mktWLp+LLCCE6LzKx+dEwDxOniymbFdDjZ2t6a8e85
 5zzPed5z3hwSl/VJsshKo5WzGFk9TSwT9Z5bm5eDy6KlykV/AQr8cFqC5n88D9A3P40CdL/Z
 j6OZG2GAzrSUoY6RoBi5T4VF6MiAh0Cu5j4RmpjokaCL9XclyDH1lxh5ZkJiZF9w4ih6YASg
 riuTGAo5DolRtGcGoMnzW1H4MweBTgTPEujo/WYc7R0YkSB74BGBFkNuEbrtzURdx0M4cs8z
 m55jmu0OwHR/1Q2Yuat7JUxb3aSIOeaxMR5XI8H8EuonmFOdtYw74sOYs5F+jDn4SMksnJMz
 X3pdgIl6ni9e8X7VBh3HlnOWbM5YZiqvNFYU0W+UaF/VavKVqhxVISqgs42sgSuit+woztlW
 qY9vhs6uZvW2eKqY5Xk6b+MGi8lm5bJ1Jt5aRHPmcr250JzLswbeZqzILTMZXlYples0ceKu
 Kt3D+gXCvJj1UXioCa8Dl+V2kEZCaj288Oe3mB0sI2WUD8DD3r9TwT0AI22dQAgeADg8FcQe
 S77vu4ALhQEAnR2DKdYcgNEHg6IEayX1FpxoHJUkcAZVA5su1if74tQ1CRweTSjSSIJSwKHb
 V4kETqdWw59jM8m8lNoIo9PdSbGIehG6Wq8lOXLqXTjeuyfFeQqOt8wmzdKoD2BL254kB6cy
 4fXZDkzAq+CZP9qTT4XUMAljjs54UzIebIFB33ZhnJXw9zGvRMBZ8M7BhhSugc7xEULQ7gPQ
 O3RJLBTUcKjrMJbog1Nr4Ul/npBeDfseHgWC7woYmd8vFqykcF+DTKCsgZdvTqW2+Aw8/kUj
 0QTo1iXTtC6ZoHXJBK3/mx0DIhd4mjPzhgqOV5nVS7/bA5JnoyjwgZ7gjgCgSEA/KXWw90pl
 Yraa320IAEjidIb0lU/iKWk5u/tjzmLSWmx6jg8ATXzZh/AseZkpfoRGq1alWadWq9F6Vb5G
 paIzpWRsslRGVbBWrorjzJzlsQ4j07LqgKJr7rW3l49j6Xd5eUl+Hq+9Hhv1nZTNdO/0b76R
 Xrtpzu18VqpRvO76t6H90xps+de/ndg5ffO7hpc+922PbA0re9/5B7OfXmMtvIVzzjdLtvnr
 CN2dfsr03oEr1b/e2gUvxaYd/vZVHkdzxmDj2Au16v25VZEPHQ7b7Ga1ceyJNlrE61iVArfw
 7H+4DKCtTAQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHeXfOzo7i8rhpvhopDiJYZhqJLyHWF/WgdP0QZHhZelDRTdlR
 SyvytsBhpZmZs9Rw1ppCblpqKuJ03kptRsu8EDgpwTRqGjIvpRuB3348/9//eb48JCZQc73J
 VFkWI5dJ0kWEM/6mX+RzFBNYYwO76vyQYfA1D629GwXo+aQRoNXKtxiyfJ0BqL06EdUNjHOR
 rnUGR1U9egJpKztxNDHRwkNjhT94SDP3i4v0FjMXKW0vMWS9OwBQ42cTB5k15VxkbbEAZBoN
 RzMFGgI1jfcR6OlqJYYUPQM8pDRsEWjbrMPRYpsnamwwY0i3Rp8+SFcqNYBurm0G9M8pBY+u
 yTfhdL0+m9ZrSwh61txN0K3q27RupYND9610c+j7W4G0rd+DvtemBbRV73N+X4xzaBKTnprD
 yI+FJTinbBTaiMxt7+szvWVYPvjooQROJKROwK7O95gSOJMCqgvAmr9NwBF4wUcm405A7rAQ
 9vezDmcZwBezk/iuI6QuwIkSI2+X3akbcPPbkH0RRs3x4OPSIY6jMQ+g0jrO3bUISgx7F6eI
 XXal/OCndYv9Gp8Kg9b5ZvsmnDoEtaovdseDugQ71RaOw3GDI9UL9stOVBysrim2Oxh1GG7W
 TmIO9oTTC3UcB/vC9uUnWBkQqvbUVXsqqj0V1Z5KPcC1wIvJZKXJUjYo87iMuRbASqRstiw5
 IDFDqgf23xGLO8DwcLwBUCQQufA1kt+xAq4kh82VGgAkMZE7/9TNnRE/SZKbx8gz4uXZ6Qxr
 AAdIXOTJ980YvCygkiVZTBrDZDLy/ymHdPLOB8JgrkIhTSVsIwF5Yx9G1hUwsurq2bacalRw
 MUIR/2fCz3TE9UFzVu8VXfFwWqiwNLKr6AzQnKvwCylfEoRHPJNNBxMB/ieji+LEd6LrO5cS
 XKRZoWn1RUPlQGUxWmL8axKjHl6IuZUTXsHZb1RH2TZWG9x81C4RHtbvr2pDRDibIgkSY3JW
 8g9oHmRpNwMAAA==
X-CMS-MailID: 20191213042227epcas1p4b1e09e0001edc5da8466eb98debb6c98
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191114201049epcas5p370853a1d78584bf00d8493ce20320bf9
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201049epcas5p370853a1d78584bf00d8493ce20320bf9@epcas5p3.samsung.com>
 <e0e6a1685ccdad95c9d0c922801afdda8adb9f05.1573761527.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_202238_059889_3CAEAA8A 
X-CRM114-Status: GOOD (  27.68  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/15/19 5:09 AM, Leonard Crestez wrote:
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
>  drivers/devfreq/imx-devfreq.c | 37 +++++++++++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/drivers/devfreq/imx-devfreq.c b/drivers/devfreq/imx-devfreq.c
> index 620b344e87aa..585d340c0f6e 100644
> --- a/drivers/devfreq/imx-devfreq.c
> +++ b/drivers/devfreq/imx-devfreq.c
> @@ -15,10 +15,11 @@
>  struct imx_devfreq {
>  	struct devfreq_dev_profile profile;
>  	struct devfreq *devfreq;
>  	struct clk *clk;
>  	struct devfreq_passive_data passive_data;
> +	struct platform_device *icc_pdev;
>  };
>  
>  static int imx_devfreq_target(struct device *dev,
>  			      unsigned long *freq, u32 flags)
>  {
> @@ -60,11 +61,40 @@ static int imx_devfreq_get_dev_status(struct device *dev,
>  	return 0;
>  }
>  
>  static void imx_devfreq_exit(struct device *dev)
>  {
> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
> +
>  	dev_pm_opp_of_remove_table(dev);
> +	platform_device_unregister(priv->icc_pdev);
> +}
> +
> +/* imx_devfreq_init_icc() - register matching icc provider if required */
> +static int imx_devfreq_init_icc(struct device *dev)
> +{
> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
> +	const char *icc_driver_name;
> +
> +	if (!IS_ENABLED(CONFIG_INTERCONNECT_IMX))
> +		return 0;

It is not proper to check the enable state of CONFIG_INTERCONNECT_IMX configuration
on device driver. Why don't you add the 'select CONFIG_INTERCONNECT_IMX' on Kconfig?

> +	if (!of_get_property(dev->of_node, "#interconnect-cells", 0))
> +		return 0;
> +
> +	icc_driver_name = of_device_get_match_data(dev);
> +	if (!icc_driver_name)
> +		return 0;
> +
> +	priv->icc_pdev = platform_device_register_data(
> +			dev, icc_driver_name, 0, NULL, 0);
> +	if (IS_ERR(priv->icc_pdev)) {
> +		dev_err(dev, "failed to register icc provider %s: %ld\n",
> +				icc_driver_name, PTR_ERR(priv->devfreq));
> +		return PTR_ERR(priv->devfreq);
> +	}
> +
> +	return 0;
>  }
>  
>  static int imx_devfreq_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -120,18 +150,25 @@ static int imx_devfreq_probe(struct platform_device *pdev)
>  		ret = PTR_ERR(priv->devfreq);
>  		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>  		goto err;
>  	}
>  
> +	ret = imx_devfreq_init_icc(dev);
> +	if (ret)
> +		goto err;
> +
>  	return 0;
>  
>  err:
>  	dev_pm_opp_of_remove_table(dev);
>  	return ret;
>  }
>  
>  static const struct of_device_id imx_devfreq_of_match[] = {
> +	{ .compatible = "fsl,imx8mq-noc", .data = "imx8mq-interconnect", },
> +	{ .compatible = "fsl,imx8mm-noc", .data = "imx8mm-interconnect", },
> +	{ .compatible = "fsl,imx8mn-noc", .data = "imx8mn-interconnect", },
>  	{ .compatible = "fsl,imx8m-noc", },
>  	{ .compatible = "fsl,imx8m-nic", },
>  	{ /* sentinel */ },
>  };
>  MODULE_DEVICE_TABLE(of, imx_devfreq_of_match);
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
