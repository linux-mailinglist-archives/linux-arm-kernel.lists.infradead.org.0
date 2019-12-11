Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5362D11AA9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 13:20:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=6RXCcFYWZmOtSdYCab24TeuujJMEsaknAtZVrL7yz5A=; b=SBfKJcejG1iLY4
	FXwFaT3p9OsaORMs2TDMBdDWQRwAECJaFx0D0Bv6wZnAsBIeD9vAj9zPJ9WAHbwsvyqlMxEuiX9Ne
	wZc8PxISpgQkoeWPwV87I/HQKtVSOr7+j41BW5GgIqTekYKWIAfUqGUyts+XqESmvBaDnBLbSX3ew
	M+o/J1tR0Zh3phCUzCWWFi8M7yVJn7Th91YW1Ev1+uzIiUBL1bevbMOm3ZkYn8v/J10anDtJ08bj6
	JR5AQwaIDU0s4Y0m/gR9LtNMx/gvv0It9Kn90XnR9iPactHrNnN6qpz8DJRv4w2VhCTbd/9FRW3Dm
	EwaGOVmHCQSLvRfRZFvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if0yF-0003vf-9N; Wed, 11 Dec 2019 12:19:59 +0000
Received: from mail-eopbgr30048.outbound.protection.outlook.com ([40.107.3.48]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if0y5-0003um-RC
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 12:19:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M+dS4xBZ9G+ux+hFiRUu/i9dCeCjossuD6Q9rtcjtmcoPjY7v8RQ8SOBirBHUjbnYZ9sESMgCU4pkAmkZrunm1TS5eo+LjLWKdEfPXpcawIECKmrHYSeJDY/S/l8hQomgYfHBog8GEq2/3I/oh+me146bAY/GKV/pOobNZPdKwrwvkyUanFMjHHzVTFDcUU8jfUYHyhjo+ujQ4501i08Nn5ucIz7qWbZqPcAVw9Be5fnX8FNL2PLgqHQKqbngskICIMqz6xZfAgfIodwo5z1cdZv3+eTWLr5BoHMKddsXR1IBXuDsUBbiYMpc0kyM8PSG5McvDgjwQmMQmp79uB0qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNr1sFyLpKx0Z+nretTok0U+brYjpgQWoNv466imKLA=;
 b=AMI1ff6NTGN1oYg79CCvA8Q/NXjVzd48mySbKVqgjQHtDzXTdLYBikIEZ5ORVACrMSmjb4OVd1nHhyz2uDOVXoyr5p5MJzczj/URUaFEdFB8nHI8H4GXEIGY0kA/DhCUFDVJD8WkKYA60iNbsEzg1w6ZdyZ59lgoEYEvOjyu8qklOZZR6ybP7OhdQy32HwQKo8KVp68eiEQuxqghWDBwzmI606l9+gTsH6IK9Du92Tb4qeRys7UMGqBh5/5cVulI5IKzAsKuzynqwrh4YktjAirqo8pJUOY2WowWs/ff+4YLq9Yyfhqa9TxWD7I+Cp3OSBZrGd25QnPemCKQ2oWlEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNr1sFyLpKx0Z+nretTok0U+brYjpgQWoNv466imKLA=;
 b=kUIZPxXD662Uk3UTXbl9OA/qg5nWqhGDsM/tP0L+NCLqc0Xxjbwl42r0an7MRJqqYc8N/e97FxmEiN/BfQTd40Jtua/xbQCrXzg+fBSdcNsXLgGyXBdlD0kNgRJfTP0j1zMCUPBU/Q7IbeYTDBAANpsKK4C+sRpS+II1OHcM30o=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6270.eurprd04.prod.outlook.com (20.179.26.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Wed, 11 Dec 2019 12:19:44 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2538.016; Wed, 11 Dec 2019
 12:19:44 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Christoph Niedermaier <cniedermaier@dh-electronics.com>, Fabio Estevam
 <fabio.estevam@nxp.com>
Subject: Re: [PATCH 2/2] ARM: imx: Fix ocotp_compat for 6ull/6ulz
Thread-Topic: [PATCH 2/2] ARM: imx: Fix ocotp_compat for 6ull/6ulz
Thread-Index: AQHVr6O2+f8P00oouUCHoh+JzLuWww==
Date: Wed, 11 Dec 2019 12:19:44 +0000
Message-ID: <VI1PR04MB70230D50F7E79107E3CD7BCDEE5A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1576014367.git.leonard.crestez@nxp.com>
 <e142d7f53cdc9a536939aeb9dc4e1d42af67929b.1576014367.git.leonard.crestez@nxp.com>
 <3aaaebca8b8f418ba9538ef1085a4995@dh-electronics.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5d79205a-0026-4924-94ea-08d77e34681c
x-ms-traffictypediagnostic: VI1PR04MB6270:|VI1PR04MB6270:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB627065D92681ABB53742DB5FEE5A0@VI1PR04MB6270.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(346002)(396003)(136003)(189003)(199004)(40224003)(478600001)(26005)(186003)(71200400001)(6506007)(52536014)(5660300002)(4001150100001)(33656002)(316002)(6636002)(64756008)(8676002)(44832011)(91956017)(86362001)(66556008)(9686003)(66476007)(66946007)(7696005)(76116006)(53546011)(2906002)(81156014)(4326008)(54906003)(66446008)(8936002)(55016002)(81166006)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6270;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RhdQpRzYLXusSuJkBSHxxrt0aqgyCBsIuNQj0zqAIxSpcxqHu42xnY6BXC74OpGrzwKWF3NIohHvRxugexDuRkkj5/AQbmOPAwpVhF7jHHlPkGb3kHpVsXr5hXrax3r/XaQOqoV5JPRfYSsbVRPCxbBINvpjdguK2/qwvHzaeQhSPL/AtPwx5fCooruiTIKrCTjbqX4qKor+lOoqnnWw/IKXXPgPfo4md3t3TAtxN/QY+WXl9sxEgLg2xFkf9Gtl7krBZZP/eL45nLJfj+2TuKu/SMzgDOhQjO6vFInEIMJgAc8oZcI8OSCA7C50B37B6szm4LMYYIAiLz5ZcU2S1a3QRrskxGiUeYhXafcsPWQEMVfV1PEZhTFrWm42+nUlJDsdij4DUN+JEv+EHGjOekcTPdSvg3f+1uy4GSTUG95jHXO5du8AfAcWDsnZEIkUyQM3ey9QkPvk58XDMJj/wZMalrc935JxW2XrweV6YLCmOchKd3JwOiR0rc+DxOVX
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d79205a-0026-4924-94ea-08d77e34681c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 12:19:44.4843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aw54TEyy742SE2bdne/QlIdGkMCMACai51RFLCxcSckNF4rSf/xtZ3RLF6Jn46oeGbQqCi+cmroYjU5khcQuJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6270
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_041949_887091_AADB28C3 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-11 12:34 PM, Christoph Niedermaier wrote:
> From: Leonard Crestez <leonard.crestez@nxp.com>
> Sent: Tuesday, December 10, 2019 10:49 PM
>> The ocotp compatible string on imx6ull and imx6ulz is currently
>> "fsl,imx6ull-ocotp" but the imx_soc_device_init function attempts to
>> lookup for "fsl,imx6ul-ocotp" (single L).
>>
>> Fix the constant and make cat /sys/devices/soc0/serial_number print
>> useful information instead of all-zeros.
>>
>> Fixes: 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   arch/arm/mach-imx/cpu.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
>> index 484bf6cdb363..06f8d64b65af 100644
>> --- a/arch/arm/mach-imx/cpu.c
>> +++ b/arch/arm/mach-imx/cpu.c
>> @@ -151,15 +151,15 @@ struct device * __init imx_soc_device_init(void)
>>   	case MXC_CPU_IMX6UL:
>>   		ocotp_compat = "fsl,imx6ul-ocotp";
>>   		soc_id = "i.MX6UL";
>>   		break;
>>   	case MXC_CPU_IMX6ULL:
>> -		ocotp_compat = "fsl,imx6ul-ocotp";
>> +		ocotp_compat = "fsl,imx6ull-ocotp";
>>   		soc_id = "i.MX6ULL";
>>   		break;
>>   	case MXC_CPU_IMX6ULZ:
>> -		ocotp_compat = "fsl,imx6ul-ocotp";
>> +		ocotp_compat = "fsl,imx6ull-ocotp";
>>   		soc_id = "i.MX6ULZ";
>>   		break;
>>   	case MXC_CPU_IMX6SLL:
>>   		ocotp_compat = "fsl,imx6sll-ocotp";
>>   		soc_id = "i.MX6SLL";
>>
> 
> I also had this problem and therefore already submitted a patch
> ("ARM: imx: Correct ocotp id for serial number support of i.MX6ULL/ULZ SoCs").
> I hope this isn't a problem.

No problem; I should have noticed your patch.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
