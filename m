Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C03174469
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 03:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhZUFj7a6DKqEoWqdtBNNgFSLsUUqmlF3G6rXUsV124=; b=u5ZO5rjs8LRZI8
	sBfLsq4MMaVlOS7cXf5TlSkJmoc+eeY4+KdN8iqKxSDOd+sh9R/QNlGer1dA4M6x4oKCoHItg3h2N
	dJ0AWjAjrM4ztiKXrensYto1RkPUKbC4QkB11isnOPEN9+S5zDhUeK4G8fMfTJzKKi0v2/UVe8xDm
	Xx7pvzdrJ2C2BtPmYxb9noESacIEMUQGXQmrHCsmmTNY73Qdy5HLIuAUYVDlnyggshcNG3DXuegXV
	wnbkgBDZmqjbaCi2mh9T0mGmrKDRT8bjTxbyZCADBbhfVPrumM/Dn7W7KzHr3Z199daagopyWwTfO
	7CDx6TxGu6PKb3xSfVDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7rXh-0007UD-P5; Sat, 29 Feb 2020 02:07:49 +0000
Received: from mail-eopbgr80087.outbound.protection.outlook.com ([40.107.8.87]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7rXV-0007Tr-CG
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 02:07:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ECCT5ZqcK96yWui2qybTloHH9Ngyzm77k3yKOYEooP2ZfVKq4KCnmy6z+GvCcd3PbslMmpD//Wp0B53wEicGxN19WwJpXdU/SKS5PNiJcmygJGBYv7ywSBn9G17yiQo95U6W4Sr1R//8qJ0/Kw9c/sdPitjNagH8+l84SlWEZtau0Rh31LkLIwTiCT+nn2PLqLu/Lv2Cdj8mLemYdeAI1dAbUeModXroQ2sZCNt5ZTFTPhe+6mUicPjluQsGMgOn4NVY2Kzmv+ooK1a7nFbSY14zfrR+uVxaCeeEsRcbgcmnF/wjWoIjKxolvXSxM5pGhl0KlsNwxTfLk2VperJ2BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RHUEF6DlaDyZLujTZEmLjLnII30tgcc/7ijd3oVMX6g=;
 b=kOP1vXpaDr/xIXqc0SoronDir1ik03vxBpu4jf91gkitmAdsFZSQzMlJNO4nJLw2tX/yS9PYTamRLFvJa/dUMQD9WxAG8268gmTH/48nG16up+V2zNVmNgtv/uADiUoxsPqrSPaOSp1ZYcApScCHBvwygmV+lIMm00ktHPh5QBGPMEtns1UFLBiSSRDE5xCIRS+Lqf8EFSPOaDTkkAZpDcRxbcaB8jaF0v7c8xf2STLLvZSijoIQ1cLMkyCSv4CCkSNIA8J8P6k5nqJeawK86g5rpOzNb5EEjmhYriRTeHt6ZWyAapeNCClUmCzD+HfcBv+1P2SdeflPp9ceOE8QkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RHUEF6DlaDyZLujTZEmLjLnII30tgcc/7ijd3oVMX6g=;
 b=izMEbqLKCavqOQwMjVZ6EvO8rs8jeLCU39X/OHib9xzGOSKGCZaw4nU4FAwQD25AcaNgr9Rc9WA4rLlvkEEdzt18argl9EoMGBYg9veqaY+XfzhgF0qLoN4fAL6PVZTQhTuqtMhUbFQxpX0nK+gp7Xy5UToQxisFu8DhUDAuzsE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5793.eurprd04.prod.outlook.com (20.178.118.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Sat, 29 Feb 2020 02:07:33 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.012; Sat, 29 Feb 2020
 02:07:32 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH V3 2/2] firmware: arm_scmi: add smc/hvc transport
Thread-Topic: [PATCH V3 2/2] firmware: arm_scmi: add smc/hvc transport
Thread-Index: AQHV7HUEw4K6S9kW+0Sj3fQlJbhvlqgwzHcAgACkEkA=
Date: Sat, 29 Feb 2020 02:07:30 +0000
Message-ID: <AM0PR04MB4481C79FD4EB32E6F111A22588E90@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582701171-26842-1-git-send-email-peng.fan@nxp.com>
 <1582701171-26842-3-git-send-email-peng.fan@nxp.com>
 <20200228161820.GA17229@bogus>
In-Reply-To: <20200228161820.GA17229@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2e30f7a3-0330-43c9-9b92-08d7bcbc22d0
x-ms-traffictypediagnostic: AM0PR04MB5793:|AM0PR04MB5793:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5793F9E67422695A58C64A9F88E90@AM0PR04MB5793.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03283976A6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(189003)(199004)(33656002)(4326008)(7416002)(26005)(9686003)(64756008)(66556008)(478600001)(66446008)(66946007)(66476007)(76116006)(6916009)(186003)(44832011)(86362001)(55016002)(81166006)(8936002)(316002)(8676002)(5660300002)(2906002)(81156014)(71200400001)(6506007)(54906003)(7696005)(4744005)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5793;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xOTWPSpmPwBPBMBGhU4oWLScvAHXB0hzVTRRAST9949+acb1Gy8g2FG1uhFjP9/rSDBgSEuIhZgOqlxiU12V7ba8SGgEveJKVIWeHREmQXrXf6I0m7JWX0IPQCQzryNGSb3UNidizVmb31xxqFOpiWgZ03mWyzRpDt0b6kOIPCTKA41IExo4bsiN0xHS2omYY3O4p6ftrRWCh923E5f7be7WDKDTZaKzaD4Z3itn8osUqkjoUfGBVo+FMlZPiBy7ujxAEIQQzr12juIX/2Xq0rxMf3HSsyuRZho4hWQM0jDqwEm/iQzsl9DiYN05TOoRVXeikYNcLM6e2+M5/XlLXafipqhDK0+/K48WS2e7PX0gK/iVbQ0YuyQ7iG1OFgWhJNU4zHSShaDOoGxsRzwybdToNMZz0LWgr7WpaABu6jdL4C+e/wD9Y7XMhtGLyI9+
x-ms-exchange-antispam-messagedata: P5saxQxq4DX1T6TiMumqP7Y3PMqlTijYDo4Zv6gUv+Gfd0PhlXJwbIQO+3cNL04GU0MyogKzwXUjcgrKcEUkhMELdPYncCJsA6nXYVw9AGIDrfYlQZIoJimy/MITbc+IwsYil3rDWaNBFQoUKiVoYw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e30f7a3-0330-43c9-9b92-08d7bcbc22d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Feb 2020 02:07:30.3274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2ux73LShVH912iE+eT2DtgvNrxiRB5LvIZMQqmxnJzjx03UIxjqJudpB0mgvipkwhh3/+e9C5lCktTQgcX0KSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5793
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_180737_492089_73E70B01 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "robh@kernel.org" <robh@kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

> Subject: Re: [PATCH V3 2/2] firmware: arm_scmi: add smc/hvc transport
> 
> On Wed, Feb 26, 2020 at 03:12:51PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Take arm,smc-id as the 1st arg, and protocol id as the 2nd arg when
> > issuing SMC/HVC. Since we need protocol id, so add this parameter
> 
> And why do we need protocol id here ? I couldn't find it out myself.
> I would like to know why/what/how is it used in the firmware(smc/hvc
> handler). I hope you are not mixing the need for multiple channel with
> protocol id ? One can find out id from the command itself, no need to pass it
> and hence asking here for more details.

When each protocol needs its own shmem area, we need let firmware
know which shmem area to parse the message from. Without protocol
id, firmware not know which shmem area should use. Hope this is clear.

Thanks,
Peng.

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
