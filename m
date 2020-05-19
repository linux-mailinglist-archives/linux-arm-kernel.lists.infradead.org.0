Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C171D8D61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 03:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xe7/8ad3DVRle88RtCebDrwUU6kCV7pZLuxmOuXqJwU=; b=DWohk1odEnSz+o
	deIo5XfSZ4I+xCvFTvYltFyKcy2MWSQ6ofJNN2tJ7Zu3iYMA3OWG+S3q2H1TMWZ/BGgNp3I9lH6QL
	VI3Gb7PPpREoS+UF8N1mjmK/6vE/qQgFKzU0kfHmD2DFdR9/wiRnwlXahf6kz4dX0elzpxiJDOFXI
	sLaVUnkcbtGu+iWpeZlcQte8q5RKhSeyM12F1xrVyqpiUXVhnWpyCEUWGjLHIyehOKoRM4ImI3/3I
	ccPo2lIZsmZDZQu986zpWJ6IUclwqbqrCRjKJL1mI3OidC56gsV0LbH1bS0irzjK9rNcCgWHOeGzm
	5zRuKDElgAdJSqhMTEGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jarUl-0004d0-Qc; Tue, 19 May 2020 01:56:39 +0000
Received: from mail-db8eur05on2057.outbound.protection.outlook.com
 ([40.107.20.57] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jarUc-0004cV-Jm
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 01:56:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MQjygqi646macA6QN7LHavcSiwd+q3gI8PdSRSe40ApcoQCMlldO8x/MsKaVDiCK0VoEBkeQMyQ/VMX1wwtj5TCwe1ZMsbRplHOcNEjiG5lQ3E43wB5qItukly7Fsl9gCWeYdVJKtjutJtdalmKio1qtpGzlxei0uPI4kB1zgrpPGa8/u4MgQeRckODlgKbOBCe1JzgPA2hA0ec32hUSxDKI8mVbzaccdTKd1nFbGtfmWKmFOsf1GiaaegCv2MKbzjClB5qLcNWPORnMyrxKPrEbF84RrNEDdXSJffmQUcmhQqfK6UVdaCBF131ZoEaUwQdHO3Ow3T9h9/iwnw8Qpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c5f+KfOXHZonH78iHOC9Km9uKksO0EsgLQXUgHtS61c=;
 b=iZNTAX++OhT/tRZuzFi7+/ojLp6JSka/mJc0GdwLgIHlxepJlJ0IbrZHseSCNDE74nrcmZBrovrCoCCfLQNiYm9WYg/ph4NEReIeAC7JQm/s89tCD4k/jNNAXo4PmmqACtk9P9YbY3nLF4wRFv0vecDbUJY6yYCADLE0elvPCXahJlUJEgCOxRVhmIFiAWUJvbVQw3Wf2vWhmKG8498VyrlkurbZdTkRaF/rJuKLqCAfBqNznEahsBwnLtbWtlvCODquWWvgrqva/bLp+wmhgGhi6X/p5udqhyIra8nf1j+uQqNyyPzuR8BgcBRS6UgAIky9w/pPyJRyi4yGm+79Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c5f+KfOXHZonH78iHOC9Km9uKksO0EsgLQXUgHtS61c=;
 b=M0Tx1Q0dhTqFEd9REKwFcQ1U/lI4+zON4gIBoCTE8rZwYKDIote59WUHxCZZi0aG2GgveM0MMt/WobpaCk38CLTbQJO0pp9G6RlDYqvxSfqcHQNfMN8G3QL3TxhG13cVp1zKahCo7jg89FTx34+9pG0Vk0bwYLUUufa2RTnvZwU=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6486.eurprd04.prod.outlook.com (2603:10a6:20b:f9::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Tue, 19 May
 2020 01:56:27 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 01:56:27 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] ARM: dts: imx5: make src node name generic
Thread-Topic: [PATCH 2/2] ARM: dts: imx5: make src node name generic
Thread-Index: AQHWLRTOIcjwouRyDUK2ly/z+q4dVaiupxPg
Date: Tue, 19 May 2020 01:56:26 +0000
Message-ID: <AM6PR04MB4966237A7DDB05FE29EE6B0F80B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589806460-19592-1-git-send-email-Anson.Huang@nxp.com>
 <1589806460-19592-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589806460-19592-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b00decd5-c75c-4075-f2de-08d7fb97d77c
x-ms-traffictypediagnostic: AM6PR04MB6486:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6486A599C76C142D901A72C580B90@AM6PR04MB6486.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c0imm73hcAjbuefoOPswY2sgew3hXIoqMmGxgMcs4Ppe+++wCySDdtP0yviLFM/1+WwXJB8EmAO4eBRf/ww5PSCt4uBvC/JqNKn64MLYjlS+6DCplFm24HJRw5AwjGxTVHjWPe3GVcUxFHMWP3Sj9Vku/VMUzXUL8eDmGmCM8RI+jQu4TGnDN+NFYTYi8nj7cwIEcQzRwknqZOf+vy/0jwv5M+BZ59HFx6jAieetHUZxRaBBjM+pcKKQ1f6VkdJtkCmqYrh9ScttbcZBqwwbKWj5FZiyc2O5DfNTeLZGKT7x5f5eCfh5fF9ZqX9kvCBE3ZaT72ZjPs0TvP2Y7yCry4Ro5ZoUirQYtk5KgF5WEwXSbY9UuwYCzHT/6j/BTuo95yXY0fXVjvObRcXbgX0dlCmSEQe7A1Fa7aKKXSmed88gEsYIOpZ4E7xOTr+Y5E/ZPf/8a5+jcFCH5i9lQ5xC7JU+msXv8pW/sU1xIUI0V9U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(2906002)(478600001)(71200400001)(110136005)(4744005)(7696005)(86362001)(9686003)(5660300002)(186003)(8676002)(52536014)(76116006)(8936002)(66446008)(66476007)(66556008)(64756008)(44832011)(66946007)(26005)(55016002)(33656002)(316002)(4326008)(6506007)(53546011)(41533002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: NCWJdPJgyS/S4mfw2iozgW+E/RjDMqMO5aaa7NVtucE2tZ9Cgs/jS0+UJWrofVer31ngcH3kMa2QinnRlp6if95bkQV84IHjGOI/BcYlri7YP2SWv0a6QcQlMUA8rkp0vNf0Qy03pRB6JPoPvQBm0IX1YDWTvswtLcXC3Ff8IyDuCAQPn0NaiQarUVE/91JjQ1/ckASDNOnHS6383KjT5GvkwqdEAaX3wxVOHXm9+mcukf5yHHXeqhR5iS2Hwx1xQN3NJc+0izXIgmxykA9XD99mz+pUwya9XEjrrIrVZU0Hh0+r5l7KMV6ODTIXsPtqdxbBhc3faxGrbA86Cr+p85RO4wlWsU7AagbIa1qB6MaAJkapbX9H9JtFVmaRm4/Tj2JWTdbTM3a/bxk4O0PPmZ6GAz+7fksnD/6Jag3AV7/LM+tvLC7o6njSb+Cf/fAWkJf2j3hSK2RULL3CJ9Eq7nQ6o9hySN70UbTKoloJdUik2qB+WWY90hUxiSDQ8+EU
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b00decd5-c75c-4075-f2de-08d7fb97d77c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 01:56:26.8878 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pfe2xbgT0KuShH09kQwPFatuNWIfmAX2CUVJivk+bLdtBjs4zQYidI4CR0+c4JYwvsVgR8JZfjR5K1l2HWWwBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_185630_649057_7CA6542B 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.57 listed in wl.mailspike.net]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Monday, May 18, 2020 8:54 PM
> To: robh+dt@kernel.org; shawnguo@kernel.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: [PATCH 2/2] ARM: dts: imx5: make src node name generic
> 
> Node name should be generic, use "reset-controller" instead of "src" for
> i.MX5 SoCs src nodes.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
