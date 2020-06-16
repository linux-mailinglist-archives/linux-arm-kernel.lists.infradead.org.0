Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660E01FA693
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 05:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ijrb5E0q8SGG4O2xWPIIVrMQ4AnH10brQNpBUonZ0h0=; b=s2eIG0NDsRXYBT
	jtW5JY3Pd3kbb5EVERxUZmyWbLrO2VFXepxHDjd+mJRpLsPHP9YojTzlBE5v+wmUnvQc6Dj/yqpCm
	AMMLSKel0S/oRb6p5QreMjFy/8T/Fy8HbIAGwpTlRpsoqHghTBHry+YZVLppKrH9c7H0ldulD4+wv
	VAEY2Ic/UeNVu9lHhqzfD2BvLewuyrJhnY+H6W8lmetH5cy5kjK20oopcAgb4P1wJ4UGoiaDeh8E2
	dY9Nu5JTFMyecirf3QR2VzEQ9O15CgDopChiAUZmSuZSuaMQziRivxGZCp9blB/baupKGoGqqjnTh
	KCtd0NIJFFf+7N1GxfeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl1vL-0002Y3-By; Tue, 16 Jun 2020 03:06:07 +0000
Received: from mail-eopbgr60086.outbound.protection.outlook.com ([40.107.6.86]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl1vC-0002Ww-LR
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 03:06:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PKEHvOY72dWUJYiFyYo+Vp5HyuijfTlMHe1T9lRYYdXbNrlnKL8FqfayizoHHjJEqeTPtEBBkxZcAwG6/ZdVZ9bXquoK2IvX6oXYbLXzeR2Fxh2wOHA/iX6F7/QMWUKKt8A8beZ5skfHQIQeKRa8jw4BtuE+XcSSjV6rDbREV8Yd1sUoA6s10sx1CohypnlTZCvZUgIhxiRfKLzOs3mmZBL15KXnjh+B9qSsunkxUUcqViQflW0ga2OGJBWZBpaRakvy54GEdY+rmAC7+8d1z9jRqb/tnybPC49uFDVK3tnlwTRrjrr3tutYIbo5/MCT5oUCe/kd6vHQZh1IJPl24w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GJ8GOj68YeLjqFXpDjCGCY5SU5XB0D7N1n7cI1P0qwg=;
 b=UILEHIGCOZOyX6ykWa305i/dxQrb9FVMqBQUV/IIdu+XxJVXJE+SiwETw+WryJlmxnrkFCS3DmzHj1GYIFogDKN+oNtNyUc+k08GN7OApri/pUZXx6TSGjR8wnBbMt529iBAISYv6oPU23txYtTvvEyuUQNgEP60X/3gW0H6lTIaSv6E6QM5CutUHP3hjd0dxGP7HTlU3/smuEjh/5AWqpRyPdJiQwZU4A4og5o9us7vlzdFbPMXOX6HrAlXc+Iiu3MLzoMhV059bS6RGcSrhkJkUdgnRNdfaL55wJe5JZ6csWPjK+q1u8spulvBryk73uuDmr3U2/XbTc6vvDZONw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GJ8GOj68YeLjqFXpDjCGCY5SU5XB0D7N1n7cI1P0qwg=;
 b=M7tduMR1VKq8qXvID1e7kcu+0RLPL3bPOTsczXk5rtUOpIcT1GsZ8jSdSgDnI+i+r8f+zUchAQbKnD1cfRwGguaD1Ne5hUAn6R2o9M2FCqnrEM53buFsrY09E0ftaZofJQ+v2c3UPwUgR62+163VW9/7OmoSWbCYcb9DQ1lAjKY=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6463.eurprd04.prod.outlook.com (2603:10a6:803:11d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Tue, 16 Jun
 2020 03:05:55 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3088.028; Tue, 16 Jun 2020
 03:05:54 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Vinod Koul <vkoul@kernel.org>
Subject: RE: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Thread-Topic: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Thread-Index: AQHWP6z7CX2etPvPnk+oddH8JEW5FKjTbHIAgADDYUCAAJUwgIAACjoQgAA5dICAAOmA8IADWRSAgAAMGbCAADi4gIABAUUw
Date: Tue, 16 Jun 2020 03:05:54 +0000
Message-ID: <VE1PR04MB663857BA8997E3870B3ACB5F899D0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
 <1591880310-1813-2-git-send-email-yibin.gong@nxp.com>
 <20200611134042.GG4671@sirena.org.uk>
 <VE1PR04MB66383245FAD2AE33CFEA76F789810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612101357.GA5396@sirena.org.uk>
 <VE1PR04MB66384013797FE6B01943F2A889810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612141611.GI5396@sirena.org.uk>
 <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615071931.GK1393454@vkoul-mobl>
 <VE1PR04MB6638959679C644C76B4D3D3A899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615112549.GL1393454@vkoul-mobl>
In-Reply-To: <20200615112549.GL1393454@vkoul-mobl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 428dbafe-1d5e-4e00-c117-08d811a22f53
x-ms-traffictypediagnostic: VE1PR04MB6463:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6463AE3F1A1C2670EFB3F688899D0@VE1PR04MB6463.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5vLk+B0Uy5rDnU68S/+ARLhu8K5bCIPltDV46MxRezKesjSNzIpPIz3ZebXlOb1H2Jql0eD154ejsLBloPfSmMOxZaVz0WR5RVll4RuUUiJ5y3mvm/qKKf8fZoCzaHpOm7y/gt9gTO/WzVFqCdW9zK+2qPx8W+Cs+CKVhKpCCDii2mgGrOSXdclIyem2UH9OT5GTOU/OZr0lHxb+kgHuAY6OiM4KsKTR/QkpoZzXGT4ia8YyZJcu6bU8KUOP0RV5fh2oPAUO3sKi2TJA5aqbtpRN0aFaYlIAGHQJCnc81v59eai9WuNKj1yUaHQIRT/N7vmxRu0ujSsxvnVPqglTXA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(396003)(346002)(376002)(6916009)(66476007)(76116006)(7416002)(53546011)(6506007)(186003)(66946007)(71200400001)(52536014)(64756008)(66446008)(86362001)(5660300002)(66556008)(2906002)(55016002)(478600001)(8676002)(4326008)(33656002)(83380400001)(26005)(316002)(54906003)(9686003)(7696005)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: md3PkGuYC77YXGpCOW06kbE2oKQc7U97201QZgDh2BeMdUztQ38tfNCHX+TxIF5xzXgrEBBlYyWp9SvpOm2b/wwK913AOnnPynOMIT11+krz6S8Yugrjqvsu9nOAdHHcJNCWRjF42kQSQloJ/ZSI0xpnRqAQyzasj7TlBA7NI25fBsncjXGpydRy4d/lyo3QSYZ8OxjW3Ywkk6KUKFbBI/P+wGqb/PX0P+GXvbOnljmf1lwHpG9PDZO0VvCn16ybZksgJlS8ClNBefFS5V1xWfAGy+nvhuVJq1chd5jxJgqIkHsSRB1VSSmtQn4qpHvmVfD9l40gj4IXice/JwSCbuOqiy42pYzhPvpQWuT6DtEeYZX4lBAT7skUClXT06jojdSOrXpHk5RA+I33tmR6ZlN8KZRhujDIvnAD1zcJqXxsiqNjCJlHzGQSliD+baHJ/nqDWuz61+e1jcDpifuHzwal5InnZtewwxU4ETnkrl4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 428dbafe-1d5e-4e00-c117-08d811a22f53
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 03:05:54.7538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q2IoUYRksox7uztWhmBnOGXljpuCrGQh0rNBDhx1m3lLI5XGxEJPdrEGy9hoDsudeKTFzcv5lu0zemwLl41jOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6463
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_200558_769202_59592FA4 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.86 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.86 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/06/15 Vinod Koul <vkoul@kernel.org> wrote:
> Hi Robin,
> 
> On 15-06-20, 08:59, Robin Gong wrote:
> > Hi Vinod,
> > 	Is there any way to let the device driver to know dma controller is
> > ready (in sdma case is sdma firmware loaded or not)before prep_call?
> > Hence, spi core could map dma buffer or not. Prep_call is too late for
> > spi core since the buffers have been already mapped.
> 
> Can you use .device_alloc_chan_resources for that? This is where all the
> resource allocation for a channel should happen...
But many client driver request dma channel(device_alloc_chan_resources)
in driver probe phase instead of later transfer startup phase.

> > 	From my view, seems dmaengine_slave_config is the only one...Further,
> > sdma need direction in dmaengine_slave_config phase, because currently
> > what's the tx/rx script used on sdma channel is decided not only
> > peripheral_type but also direction. For example, spi tx dma is running
> > ram script to workaround ecspi ERR009165 while rx dma is running rom
> > script, so only spi tx dma channel depends on sdma firmware loaded(now
> > that could be detect by ' load_address < 0' in sdma_load_context() and prep_
> call finally).
> >    I knew direction is deprecated in dmaengine_slave_config, but
> > that's really very useful for sdma to check if firmware loaded and spi
> > core could get it earlier before prep_call(fallback to PIO if dma is not ready).
> 
> I think that is wrong expectation, dmaengine_slave_config should pass the
> slave_config to driver and nothing else. The relevant action should be taken in
> respective prep_ calls here, so that should be fixed as well
Got it, thanks for your clarification.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
