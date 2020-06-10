Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 012D11F4BA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 04:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z0Es9DB/+jBicKOV19RW0o+qpvszDY4LXVpFhNg3vJY=; b=LqHODMWAY7dpQe
	T4cK+8py8bpCZh0XOyo+aoseZCUnCYFNQIsSeo50PDZBhJ9dDu1/32ZNDHxis0QWt7MWA32gC8vux
	T0qlaBKeNhEcMg1D+PfSsgqfqzeRJNSUhNvCvXKhojzR/3R3k8msnG3D0IRQi6eZEtZSPE7+cS2MP
	QG+lU0sPqTvkrs5Tr1uLwDCWpYbJeCIxaoVXRJoryBoqQAg/hTwyrwrcm60F54NFdpz0AJ27MI/CH
	V4qWTE8hBrzefwndQIcdvQJ8GYn+bjkjMi5Zo7MBz2dnAFAtnoDSwtLg9Elr1f9S+Qm7ESg2YBvjb
	q2FzwjJORMY0BTPsxCXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqxt-0006WG-GC; Wed, 10 Jun 2020 02:59:45 +0000
Received: from mail-am6eur05on2045.outbound.protection.outlook.com
 ([40.107.22.45] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqxi-0006Vl-Qq
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 02:59:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ITQ9HmL/WUlmwEcN5jN2eE/M5BbjoOKuA8I+rYydrLQhwyo9vUmu7XsKjjZMgtJz0jiXxOY30/mkfVpuc6cGnaAhs2JM1VWGlcZH1NF0kDTWqECclxvcQmvrbSSP0tnxqP1tVQqLqebTn5RtbTuPxTFJXTYI8TLZqlAadoLz1b+kyU0gsaEzcLqafl8xSPGHymPERasVZcXR2Ot1nb8Ap8mpn5iww3t3wuHcS6Hu9JSga153qp03IM/EyZv7bO1IXNprXmmzkUMC9okrRgsep8DfgI7r8zdOkcf6OrUwIaRFvDdHvi24jPP9LlQ/pnKJ6dWDR6V/8YVbrs2I8wHgyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0iZ0R7tBRKHSK5pQ+npJ5CP1PnUyhV2s4MDM2cOhtw=;
 b=Y/HcK46nMjoW5apgOfgYSRku4anPQ7AAtvTgdN8ALfbiHrvv2UAU8eFt6DrxBjqIH62qUosTWg8k4EXXCuo+XQ3LRm4qbBxTA+Cd89vDOGU2Js1xa/oMA67NxkciEPGKSI0cJnMRsCYbQ7r3a5rW15PwPTlC7ICMnFVUIWm8JTPUqNumMnVvsbXq0gwDvbSI7mmPrz9YiiR9G1a3sVMh61oz0ZqV/ay3aygXzc8ySWH6zMZGF+krQHqozJzvFSaNaBj4SzJ+VJRgRHPa3BIw7+ndJRqNDqw8akAjYedNVS0oczpv59DiU+95R3kgxAF5RFiyqizxx8b06uZgCLuqeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0iZ0R7tBRKHSK5pQ+npJ5CP1PnUyhV2s4MDM2cOhtw=;
 b=fEMOqmhZ4CMqbARgPI/8AraS8QYGFSZDBLIDoKSSFqZEyk2lCfs3FsUZuXzkehsXgSkoT/ng4V+5kU/te7tB0lpCpZi7WOnN+/Do9WN2wpFIQkPrdpzLSTXtTQoZyeUN15e5oljprBdh6nhnq5G8NPZA6mIdjY6OFG332OjQSdM=
Received: from AM7PR04MB7157.eurprd04.prod.outlook.com (2603:10a6:20b:118::20)
 by AM7PR04MB6902.eurprd04.prod.outlook.com (2603:10a6:20b:107::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Wed, 10 Jun
 2020 02:59:31 +0000
Received: from AM7PR04MB7157.eurprd04.prod.outlook.com
 ([fe80::1101:adaa:ee89:af2a]) by AM7PR04MB7157.eurprd04.prod.outlook.com
 ([fe80::1101:adaa:ee89:af2a%3]) with mapi id 15.20.3066.023; Wed, 10 Jun 2020
 02:59:31 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Jun Li <jun.li@nxp.com>
Subject: Re: [PATCH 3/6] usb: dwc3: add imx8mp dwc3 glue layer driver
Thread-Topic: [PATCH 3/6] usb: dwc3: add imx8mp dwc3 glue layer driver
Thread-Index: AQHWPlBwDlZnp5FCu0C2CdxzSYo1bajRKc6A
Date: Wed, 10 Jun 2020 02:59:31 +0000
Message-ID: <20200610025955.GB18494@b29397-desktop>
References: <1591701165-12872-1-git-send-email-jun.li@nxp.com>
 <1591701165-12872-4-git-send-email-jun.li@nxp.com>
In-Reply-To: <1591701165-12872-4-git-send-email-jun.li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f93c21f7-3464-4284-93fc-08d80cea4c38
x-ms-traffictypediagnostic: AM7PR04MB6902:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB690208BF612DA4753CE672D28B830@AM7PR04MB6902.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:293;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ocf5WJUOaUtb0J9lLJQaepo81GDcXAMIUNUvZ4SR7bnf9NEsfzgu/q3p5Teq8Bko7hbPdES4i0/3mfky/sy6+MrIkCDMyn7Q+aPYlfv6JX4MjQY6b7s1ZfSce+4dgcgH9QqYv04SEUpABn2IcDW43sEbNT5vZufXfVw+L4x9kr2UvXJZ3xKyZc//+vNEHxuJY8AXaYtXUJZORfa0nseoU7k2VFzw+4OhkXWeRkZLha4/JliEZMQU/TXm5Ph9Sf3dVyc6wkz07zzLbKIVDwmzfTwuL2Yhbq5cRmdce6oFHfx5QGkFf7nOxwnUeFtZYwBwzCh85pj8GkgE3f8pv/yWBnmzX0f/okcIIWNbE0NBj2mA5A2e8LJYNX6vXokRUk9x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7157.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(7916004)(39860400002)(346002)(136003)(376002)(396003)(366004)(53546011)(66446008)(83380400001)(6506007)(8676002)(478600001)(86362001)(5660300002)(6862004)(71200400001)(186003)(33716001)(4326008)(26005)(2906002)(8936002)(91956017)(316002)(66556008)(66476007)(44832011)(33656002)(54906003)(76116006)(64756008)(6636002)(1076003)(6486002)(9686003)(66946007)(6512007)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Dal9GyaALls8TBlBEtg7EuVxyz/xduoh4q2eG1XNi6+6i+LQxQC4tHMlsGmJDoakyVIzjnxN0gJKDmqJaX3QOEe1hqVA1Mm3cDK3JEBXLH8uyJVT2MrGsVPa3/EmYoK8SrFBX4R+58Ef8F3jMdp74mu5RdG9/3lL+H5XkrXsfu3RFjvCNJfcfOwGUAspY5Wx5PYmM4XcWlN42G6ZLDfDCe9Ac/5dFkWFZIzzKDD2jc2W/3X6jQ9qT0Nfu7K9xN1LfUvV2dDn9vjvOYzQ3p665QnJXq6frT3P62eGdxm/9LThHhX5HHh7vif/UHXXAZ+FHD5KCEUPXS93Cvg+sRUVdrklXWh6rto/fGLH9jx/c/hRp+HTypNnxENK880ragy+F5Yuq6lJK1U445/gcuaEj7AebF0vXFT+1Dq0Xws68xOKfkj3VyWkiT9QoHw9qduquCYitgzDW9zA+C8sVLDcDeOKE+8GbWgV8H3Ef1zH3+Dq4W0Lc3rOCrbOjjXRFBMy
Content-ID: <04DD6A9A3F4FE24EB270BB05863C0D6B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f93c21f7-3464-4284-93fc-08d80cea4c38
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 02:59:31.2407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T2CpMX4vUmOOwN5xE44dsGoNGR5qNLd63YejJUE8F9b1h2ToXkCVingcXtXVD2USdC31xfG8NAWJil/x2yrfPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6902
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_195934_872895_A677F9B3 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.45 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "balbi@kernel.org" <balbi@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-06-09 19:12:42, Li Jun wrote:
> +
> +	pm_runtime_set_active(dev);
> +	pm_runtime_enable(dev);
> +	err = pm_runtime_get_sync(dev);
> +	if (err < 0)
> +		goto disable_rpm;
> +
> +	dwc3_np = of_get_child_by_name(node, "dwc3");
> +	if (!dwc3_np) {
> +		dev_err(dev, "failed to find dwc3 core child\n");
> +		goto disable_rpm;
> +	}

You may call of_node_put() for dwc3_np after using.

> +
> +	err = of_platform_populate(node, NULL, NULL, dev);
> +	if (err) {
> +		dev_err(&pdev->dev, "failed to create dwc3 core\n");
> +		goto disable_rpm;
> +	}
> +
> +	dwc3_imx->dwc3 = of_find_device_by_node(dwc3_np);
> +	if (!dwc3_imx->dwc3) {
> +		dev_err(dev, "failed to get dwc3 platform device\n");
> +		err = -ENODEV;
> +		goto depopulate;
> +	}
> +
> +	device_set_wakeup_capable(dev, true);
> +	pm_runtime_put(dev);
> +
> +	return 0;
> +
> +depopulate:
> +	of_platform_depopulate(dev);
> +disable_rpm:
> +	pm_runtime_disable(dev);
> +	pm_runtime_put_noidle(dev);
> +disable_clks:
> +	clk_disable_unprepare(dwc3_imx->clks[dwc3_imx->num_clks-1].clk);
> +disable_bulk_clk:
> +	clk_bulk_disable_unprepare(dwc3_imx->num_clks, dwc3_imx->clks);
> +
> +	return err;
> +}
> +
> +static int dwc3_imx8mp_remove(struct platform_device *pdev)
> +{
> +	struct dwc3_imx8mp *dwc3_imx = platform_get_drvdata(pdev);
> +	struct device *dev = &pdev->dev;
> +
> +	pm_runtime_get_sync(dev);
> +	of_platform_depopulate(dev);
> +
> +	clk_bulk_disable_unprepare(dwc3_imx->num_clks, dwc3_imx->clks);
> +	clk_disable_unprepare(dwc3_imx->clks[dwc3_imx->num_clks-1].clk);
> +
> +	pm_runtime_disable(dev);
> +	pm_runtime_put_noidle(dev);
> +	platform_set_drvdata(pdev, NULL);
> +
> +	return 0;
> +}
> +
> +static int dwc3_imx8mp_suspend(struct dwc3_imx8mp *dwc3_imx, pm_message_t msg)
> +{
> +	if (dwc3_imx->pm_suspended)
> +		return 0;
> +
> +	/* Wakeup enable */
> +	if (PMSG_IS_AUTO(msg) || device_may_wakeup(dwc3_imx->dev))
> +		dwc3_imx8mp_wakeup_enable(dwc3_imx);
> +
> +	clk_bulk_disable_unprepare(dwc3_imx->num_clks, dwc3_imx->clks);
> +	dwc3_imx->pm_suspended = true;
> +
> +	return 0;
> +}
> +
> +static int dwc3_imx8mp_resume(struct dwc3_imx8mp *dwc3_imx, pm_message_t msg)
> +{
> +	struct dwc3	*dwc = platform_get_drvdata(dwc3_imx->dwc3);
> +	int ret = 0;
> +
> +	if (!dwc3_imx->pm_suspended)
> +		return 0;
> +
> +	ret = clk_bulk_prepare_enable(dwc3_imx->num_clks, dwc3_imx->clks);
> +	if (ret)
> +		return ret;
> +
> +	/* Wakeup disable */
> +	dwc3_imx8mp_wakeup_disable(dwc3_imx);
> +	dwc3_imx->pm_suspended = false;
> +
> +	if (dwc3_imx->wakeup_pending) {
> +		dwc3_imx->wakeup_pending = false;
> +		if (dwc->current_dr_role == DWC3_GCTL_PRTCAP_DEVICE) {
> +			pm_runtime_mark_last_busy(dwc->dev);
> +			pm_runtime_put_autosuspend(dwc->dev);
> +		} else {
> +			/*
> +			 * Add wait for xhci switch from suspend
> +			 * clock to normal clock to detect connection.
> +			 */
> +			usleep_range(9000, 10000);
> +		}
> +		enable_irq(dwc3_imx->irq);
> +	}
> +
> +	return ret;
> +}
> +

You may need to add __maybe_unused for above two functions.

Peter

> +static int __maybe_unused dwc3_imx8mp_pm_suspend(struct device *dev)
> +{
> +	struct dwc3_imx8mp *dwc3_imx = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = dwc3_imx8mp_suspend(dwc3_imx, PMSG_SUSPEND);
> +
> +	if (device_may_wakeup(dwc3_imx->dev))
> +		enable_irq_wake(dwc3_imx->irq);
> +
> +	dev_dbg(dev, "dwc3 imx8mp pm suspend.\n");
> +
> +	return ret;
> +}
> +
> +static int __maybe_unused dwc3_imx8mp_pm_resume(struct device *dev)
> +{
> +	struct dwc3_imx8mp *dwc3_imx = dev_get_drvdata(dev);
> +	int ret;
> +
> +	if (device_may_wakeup(dwc3_imx->dev))
> +		disable_irq_wake(dwc3_imx->irq);
> +
> +	ret = dwc3_imx8mp_resume(dwc3_imx, PMSG_RESUME);
> +
> +	pm_runtime_disable(dev);
> +	pm_runtime_set_active(dev);
> +	pm_runtime_enable(dev);
> +
> +	dev_dbg(dev, "dwc3 imx8mp pm resume.\n");
> +
> +	return ret;
> +}
> +
> +static int __maybe_unused dwc3_imx8mp_runtime_suspend(struct device *dev)
> +{
> +	struct dwc3_imx8mp *dwc3_imx = dev_get_drvdata(dev);
> +
> +	dev_dbg(dev, "dwc3 imx8mp runtime suspend.\n");
> +
> +	return dwc3_imx8mp_suspend(dwc3_imx, PMSG_AUTO_SUSPEND);
> +}
> +
> +static int __maybe_unused dwc3_imx8mp_runtime_resume(struct device *dev)
> +{
> +	struct dwc3_imx8mp *dwc3_imx = dev_get_drvdata(dev);
> +
> +	dev_dbg(dev, "dwc3 imx8mp runtime resume.\n");
> +
> +	return dwc3_imx8mp_resume(dwc3_imx, PMSG_AUTO_RESUME);
> +}
> +
> +static const struct dev_pm_ops dwc3_imx8mp_dev_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(dwc3_imx8mp_pm_suspend, dwc3_imx8mp_pm_resume)
> +	SET_RUNTIME_PM_OPS(dwc3_imx8mp_runtime_suspend,
> +			   dwc3_imx8mp_runtime_resume, NULL)
> +};
> +
> +static const struct of_device_id dwc3_imx8mp_of_match[] = {
> +	{ .compatible = "fsl,imx8mp-dwc3", },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, dwc3_imx8mp_of_match);
> +
> +static struct platform_driver dwc3_imx8mp_driver = {
> +	.probe		= dwc3_imx8mp_probe,
> +	.remove		= dwc3_imx8mp_remove,
> +	.driver		= {
> +		.name	= "imx8mp-dwc3",
> +		.pm	= &dwc3_imx8mp_dev_pm_ops,
> +		.of_match_table	= dwc3_imx8mp_of_match,
> +	},
> +};
> +
> +module_platform_driver(dwc3_imx8mp_driver);
> +
> +MODULE_ALIAS("platform:imx8mp-dwc3");
> +MODULE_AUTHOR("jun.li@nxp.com");
> +MODULE_LICENSE("GPL v2");
> +MODULE_DESCRIPTION("DesignWare USB3 imx8mp Glue Layer");
> -- 
> 2.7.4
> 

-- 

Thanks,
Peter Chen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
