Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BD01626C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=9FVCHosAf1jO57rZz1bxKgK96icKialH2hVgfLBFhqk=; b=KCI70RsM7Hixlg
	A2D7gajtVwfvvQADCX3/yTPkQQsdFx6XCjaACBz2CAyHZszopvvtNsQo+mt6MbYqJ6EnPSDdWWUJN
	iWC0xCtuWetq3CHTvrzxyqiDxwwDFkuXedLjBK5IighdFLtLSmvAHftOYowjo6sk0lS80iGAOzenq
	1OGZRC+FfYTRk7jwpdA/zI/JwaxkW9h9fpYTleUNjhbtHc+i4nWZVEaV6EPqDw+F7WIoB36zKIFhC
	n2IFoIdYYj8bXjccVJsTU30eus/XjmmrPq3RCX6XB770xiquEzNXF+Kn0pYJ+25NW42bDE5nvaMYh
	cEdqGuJSO8JVvyswQN+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42aI-0002i3-MO; Tue, 18 Feb 2020 13:06:42 +0000
Received: from mail-eopbgr20084.outbound.protection.outlook.com ([40.107.2.84]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42a4-0002bc-MU
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:06:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hzNBcfve8DSqSIWCkOGveZQQpP+VWGJbeXwbTlIFKY1SoA7RIKSz7C6GeDmV6RVtz+XxfBI55eltqDz3+7gMVvCrB8HPsDDEBexQwMeCA+nvgI0CuTLQ1xeF44F41ejCn7B9b3jS85RVmvSSFd51hNupE4n5bpGzhM/h2ITn8ALEHVLFcxfyF3HQ6K4Fm3RE1tx9jl4IFLw+MipD4o5RYfps5Y8yMSIS8JiYafQCozPi0/meLJOthUqcPCGyJnXgKg7VilGiUS+I8n4C/o0nQ14nsGcEEc8zK2dcUB/5EM2rEiEEqnE5O+rPZlZv/5YD6DXhz+/GZ5LgxpbqIfdavQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fu8dC6DOeU9euHYlur3IlTmlHhyOweRdh2s1FFjrZKI=;
 b=RhhVLLY87GZhG5TiCNf8LYe3xc43zDns1m7/OKJDIOl65KVpRtzu+LNYACbPyHQZC2luIwKcwWvstOrx7pVCdV8AByvcarKFtjet2e/ealF9ZtNuj/jTdA4nutoqSXLckw7F6jMmXQZ9Jalci2uKf/1aYdy1bUTmTs1Of8tShIfeEXovCyIX8FIn9DbfUmQtp0rIwCkwTmHBbdBX93ps/KCGvoj4muvcJyBVfBElwoDC3jcKBTCopLnQIb/OkUgYmbi/NsrsszPFAJDiyz5gqTO4HOOqHVm88fFxrL2PvjkB55mY9sLgM2jQZFxZSnCz6JU00MwUb2sQFZWWkJlV2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fu8dC6DOeU9euHYlur3IlTmlHhyOweRdh2s1FFjrZKI=;
 b=o8A05sNN17ooCs4Q0kaUQ3+OiQS4BEMaYQS8SvOpGFEwvi5FnTEARzJYtl+7i08IEASxMHCu5IffxgdqVR4rzM9Tv9msRFSuRMpt3AFd8O/335XhN724P+qOvZUSjDmWhzZsFj2OtFXYVW+4oxp4suxVUKDegwD8n4AaeuGDxJQ=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5023.eurprd04.prod.outlook.com (20.177.50.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Tue, 18 Feb 2020 13:06:25 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 13:06:25 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Andy Duan <fugang.duan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [PATCH] arm64: dts: imx8qxp-mek: Remove unexisting Ethernet PHY
Thread-Topic: [PATCH] arm64: dts: imx8qxp-mek: Remove unexisting Ethernet PHY
Thread-Index: AQHV5caiMKKkq2Vf80m7IxXHefTKlQ==
Date: Tue, 18 Feb 2020 13:06:25 +0000
Message-ID: <VI1PR04MB702369A696CBED19C59B2D8DEE110@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20200217191503.31444-1-festevam@gmail.com>
 <VI1PR04MB702395CCF71A85209077F9F1EE160@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <VI1PR0402MB36000C70DAD9B755D4678F1EFF110@VI1PR0402MB3600.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 10d9cc4b-c036-40e1-95e6-08d7b4735be0
x-ms-traffictypediagnostic: VI1PR04MB5023:|VI1PR04MB5023:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5023E9A134BD30B87F6D1BBAEE110@VI1PR04MB5023.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(199004)(189003)(8676002)(33656002)(54906003)(8936002)(110136005)(316002)(66556008)(186003)(52536014)(81166006)(81156014)(26005)(44832011)(66446008)(5660300002)(6506007)(64756008)(53546011)(91956017)(76116006)(66946007)(66476007)(4326008)(9686003)(7696005)(55016002)(2906002)(478600001)(71200400001)(86362001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5023;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FFpPM6qjExOCxtryHSvdfk18YtdU4xIhYhdFvrjj4DpV+WgW1NThzrELQ1Nkv0/xJNLXEaTYrosiQs22rFhbY2sNOGvq8/eNQ1dv4iozwRokvhSWyFB6q5oatD5DvAfyMhhQOwGRniM0CBAduJnLEttcgov8NksuXx3ipEa9VRJjG5VXLohKGVZDm2NwLKulWwCkMgNflNFUL/OZZ3A3RLZHqhBCANdrL9IK9PB4rYq4uYQCP2MIb+bXaRHQtGxJVpprSRV9PhXMSTJdqA1GO6NrhvP0Io2Y/VoXaBn5IJDzytlNornm/jCjzK7rhSj6fRlU5kuPJwRpcBaywUm/dkEK82luPF5gDTC+l/h/febbi4z928OBXV3glJPPyDo/tk/vcBl9iXBHEqtwXeLL3+P7XuMal2iB8zcU+MRFqy7hXUUupG+xhTj5r48juehSuDvO7PQ5wPbdYEirporzVf+k96JJsnXemOM5UjdFitXIqxXzbLZiqvpZVipgGk0j
x-ms-exchange-antispam-messagedata: 0xouCnhhCdLAlhbNbCzrHrZ4XLAdegb4coDMgIfu5yivKHZfc0ASGvrVTux3/NYMeM4Mr/RWFZKNgM95OjgIb/vTgfK6PeW9ROg6HeBUfcj9CG0N3YX3SKeFgec8j6XWI26y4H2r4paDrCGJzDPcdA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10d9cc4b-c036-40e1-95e6-08d7b4735be0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 13:06:25.0813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q0oN0vd28OUVOEJlEOB2eaQrYY3Pl5/v4TNKfWMvLGJCBobN78Fc79+s3aRUleSf6pgOhOxFlX78wLjcB0K3KA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_050628_822481_245D68A2 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "robh@kernel.org" <robh@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18.02.2020 06:55, Andy Duan wrote:
> From: Leonard Crestez <leonard.crestez@nxp.com> Sent: Tuesday, February 18, 2020 4:10 AM
>> On 17.02.2020 21:15, Fabio Estevam wrote:
>>> There is only on Ethernet port and one Ethernet PHY on imx8qxp-mek.
>>>
>>> Remove the unexisting ethphy1 port.
>>>
>>> This fixes a run-time warning:
>>>
>>> mdio_bus 5b040000.ethernet-1: MDIO device at address 1 is missing.
>>>
>>> Fixes: fdea904e85e1 ("arm64: dts: imx: add imx8qxp mek support")
>>> Signed-off-by: Fabio Estevam <festevam@gmail.com>
>>
>> +Andy
>>
>> I remember that it's possible to get a second ethernet port through a
>> baseboard on imx8qxp. It's not a default option but it's real.
>>
>> Unless I'm missing something?
> 
> Yes, the phy is attached to second net device that is on baseboard.
> Because there have pin conflict with esai0, there have another extra
> dts file for it.

Then it would be reasonable to remove ethphy1 from main dts and add it 
back in -enet2.dts (which is not yet in upstream)

So Fabio's patch is correct.

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

>>> ---
>>>    arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 5 -----
>>>    1 file changed, 5 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
>>> b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
>>> index d3d26cca7d52..13460a360c6a 100644
>>> --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
>>> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
>>> @@ -52,11 +52,6 @@
>>>    			compatible = "ethernet-phy-ieee802.3-c22";
>>>    			reg = <0>;
>>>    		};
>>> -
>>> -		ethphy1: ethernet-phy@1 {
>>> -			compatible = "ethernet-phy-ieee802.3-c22";
>>> -			reg = <1>;
>>> -		};
>>>    	};
>>>    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
