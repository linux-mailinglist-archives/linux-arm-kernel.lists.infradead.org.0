Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFAE180EA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 04:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rk6g92AvWO1pwbq2xUXxn6izDyqd37vS9SH1m3rSKWk=; b=rKJwkr1nozVtyX
	KYgTRC13X6sfO7tYdN1RDAqM+QJ7gdjrMg4sjB5STazgXiD344eQ8W6yvqowD43zz7j4ODBIFEgVu
	h863uBXaOx93oAEoqPWOYCutvYiQn0NcDNLreBh7g3xAHNbZb9BDGphgUeOhfHMdq3DW3Zl4RiNqF
	MYU7krfFyTUF0XCPeZDXC/r8+kEHD+bZIr/7sJuF9n+Q9EJORoBzY7WwJ24PYpnqxzGjVv4Kk0UWT
	mGu0Qa45bTQyQY/Q7UXeJ31t7KVGnEptZEDgwlvGuHP/uqzIVAs14dm52bziZeGt55MaT9idIuFeP
	hO2fw42mjsH/7aF0YzlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBsBm-000285-Iz; Wed, 11 Mar 2020 03:37:46 +0000
Received: from mail-vi1eur04on0621.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::621]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBsBe-00027a-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 03:37:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FQNlL3ZxzYgOATAHY6dc5/UJoXd7ftF8BZdKA488BHY19dQR+P7TyWRQgTfZUWVcuyj4nkANMKbTY3Zm//71E6DU5fnf1OLGjLArjz85G6+lT0PXpfYjoDuYBB46mKaEGxKPl255VpdQzP8F0aG9W8/nMHuxqHaa2qh0p1HsxMAOzPXTALtimQvBE6e4KSMi/Ohzbh10K9vkchnW8cS3Osg6MyM6yxrg63PAX+kD3KptnfKbVnTJ4QT6MX69t4rrYFAWsNKYeJxaNyd7YfTy6ICMSkPW46ovlvjvks5jqN7xOMoXZ6NMxNFU4YKBzb6yfysWypzg5YDbyXz82QS9CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Je2YVo1kUJNHFYL0EYH5Nir7tjrKjvEMQHdvfBU23T8=;
 b=Aw85tMl8VKU/cr4VB2w/bL8S+iiXmH5M3LHStSqtWU8Auc1ZSYIJTu3W6METp7A8y+GZGoNvVBbGD7Pe3wGO75veA5cNIns0RlR8PyAPyjDnVBVbAkmhg969JGPIdSVyus7nXVxvMYckeoD55xNxIggVNvu3W0NBV6mPf/aaQQ/GuveRWzKVY37uM6ihU+9L2Y8gtsoN9fUtyqPufayk3qzhfgfBb89Fd1axIw0d/TwTXeRYTqVwTvWEwEcAR+MLkc5R9YtSaCLgMvtWmqV2WgIVoUejG5VJUMkdRVNgbPdENygeH4mHaNehSuIBZs0JVNXDq0J6E/0BKLxQ51yIeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Je2YVo1kUJNHFYL0EYH5Nir7tjrKjvEMQHdvfBU23T8=;
 b=rVXx1Hw9ozNoxwVkH1wiR6pGiWTi6z0FIAdEWf5fHUaJBIMZA4VpXxNfy4LCbpzBe7cJdU8+BS/bg/hcibiPoxAy2LZQ5l3UeSzMB8Xvad3Na8CzMSger9QSU98Dp8rESoDkKvv1hJs4drOYi8v7sqOsqfEdhnoLV497EE+7tJ8=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6735.eurprd04.prod.outlook.com (20.179.234.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.11; Wed, 11 Mar 2020 03:22:33 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Wed, 11 Mar 2020
 03:22:33 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [RESEND v6  08/13] spi: imx: add new i.mx6ul compatible name in
 binding doc
Thread-Topic: [RESEND v6 08/13] spi: imx: add new i.mx6ul compatible name in
 binding doc
Thread-Index: AQHV9oxfw7CsQoETxUioWYNmo+gC4ahCKc6AgACQhpA=
Date: Wed, 11 Mar 2020 03:22:33 +0000
Message-ID: <VE1PR04MB6638FF9C3ED1A93FD5A6C2C289FC0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
 <1583839922-22699-9-git-send-email-yibin.gong@nxp.com>
 <20200310184103.GA2192@bogus>
In-Reply-To: <20200310184103.GA2192@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d933de75-8e82-4930-6acc-08d7c56b70a7
x-ms-traffictypediagnostic: VE1PR04MB6735:|VE1PR04MB6735:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6735BBB1F617FFD91A1FD91D89FC0@VE1PR04MB6735.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(376002)(39860400002)(396003)(366004)(199004)(66556008)(7696005)(54906003)(66946007)(64756008)(66446008)(52536014)(33656002)(5660300002)(478600001)(76116006)(4326008)(66476007)(86362001)(316002)(9686003)(55016002)(71200400001)(2906002)(81166006)(8936002)(81156014)(8676002)(4744005)(186003)(6506007)(6916009)(7416002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6735;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ny4Hh7E36twGFm9BQBpTW96RTok6vMqJ69xILpeBWWCe5i3zYCSpgjw8NvCeXjpHw3Y8/79hqFhYDxpzXiHYaoO1zLQmhDum1/lfM4oubDltD8hTkyS1XPFyfK3UPk4IXDclci0c7jBpsOiCE57IqZC6tGCH6wzShqVjWawynSvkcWVTVV8BecZlhEpCMv0pxugeLCVT4uS6d2PoznS/BjQ0IuKw9JxvCG+y5HMWe+Plpf/3MgOBvGh/nvdjsPTp9ux2pRyntfRhR/1nDIqX9cCgbzwyk2fY0cMIS2gbrrZOyjosP03vgq04XmT3TcMhtgbtzGxsAthSBBvtVnVPdvF+8yQJgEahInPM2UXXlDdBrcPGszaXoBDirNHbsVjgjA20b9ciiQHSQC5F0ixqo7SYjVPMrp1hEXJrdNf0CWK9Shp8WNCQBSQjU02jEOnl
x-ms-exchange-antispam-messagedata: 1i2/kg39UMNcvHR8w6zcd4K8qMm2fWo7h6bNhqogRsYoNPBWzgT9tUp8KxfqyHKZblgulmRMPKOHZuLWOT7LlIqamkvcSzucLA1n0ouTcc2DLNsOtyiVv3tqdRtLAllKaXX8CyX2THEscAr0slOViA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d933de75-8e82-4930-6acc-08d7c56b70a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 03:22:33.6428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ChaF6tWiTMb3S8P8VbiuOH1uiuCa4z09MrnqWI48OpFbpWfKxU5kNkQkBlYB0eUQfuP7KmP3QnQlLJxJacmQww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6735
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_203739_077109_7BD86B03 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:621 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/03/11 Rob Herring <robh@kernel.org> wrote:
> On Tue, 10 Mar 2020 19:31:57 +0800, Robin Gong wrote:
> > ERR009165 fixed from i.mx6ul, add its compatible name in binding doc.
> >
> > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > Acked-by: Mark Brown <broonie@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.
Sorry, Rob, I forgot to add your reviewed tag on v5, will add it back incidentally in v7.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
