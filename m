Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFC51638F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 14:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=aNR/XSCX6fcsGVTbUmJL1D+SGcHObhdhQlQjmBpf4EM=; b=MRIeZ918w213bh
	2gpPdkA9R6xRpaSu/wI694DBSneiRI2E8abl1GiH24UrhPboGInUwwVTKFbwQgIThNQKACWrAXvtU
	97d16cMz2Wlm20nhFxUJIvV6CpoIQWQNlldDtHGCfeRvDqTtQXbp4POe59w2vSYrqA/1jVnKdOSqn
	feRpQw37pxVS6ui0RsWYKToF3yjtif4sdFIO+Y/fs9c1SZ5sf4zOeqQGvl4gSe87HXb+1Cwp3tSVb
	PgUYYLWVmdoaTaJ44CTqwUds/aW3hDRQEOqhtROJ7hK089DqZDMjXiEJWOII8a7t+mLDbyGhl/Xau
	eWyMmgRt80lRDHo5HV6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNz02-00007N-Q6; Tue, 07 May 2019 12:15:10 +0000
Received: from mail-eopbgr30040.outbound.protection.outlook.com ([40.107.3.40]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNyzp-000054-Ks
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 12:15:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+2iVld42hbF7+tIVJxDvQSMVMYZbqDx4EQwGMQtxtrA=;
 b=BnIvsJZD1hsLhzaQPHXGvLQYlkP+CBQDM9iRW5LabBO9S99LI9TH1CyFFerm+J13rGE8YmpnXd2r9V8XyKeEvmQL7dTZRG5FXub2SqNagShnKhKXm1UwvJcQJtdtjfrK9b0S6CP1JJep5d8ZZgiNuDNX0X6Z4DYv7UyON2mGw+M=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4689.eurprd04.prod.outlook.com (20.176.214.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.14; Tue, 7 May 2019 12:14:50 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 12:14:50 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: =?Windows-1252?Q?Petr_=8Atetiar?= <ynezz@true.cz>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "David S. Miller"
 <davem@davemloft.net>
Subject: Re: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
Thread-Topic: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
Thread-Index: AQHVBFI0RuJU2cpMvEWgdGL840mRHg==
Date: Tue, 7 May 2019 12:14:50 +0000
Message-ID: <AM0PR04MB6434E06E7C43A2C95EB81F42EE310@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd066af7-f27a-4e62-3648-08d6d2e59aaf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4689; 
x-ms-traffictypediagnostic: AM0PR04MB4689:
x-microsoft-antispam-prvs: <AM0PR04MB4689F6460F9132925426F4B0EE310@AM0PR04MB4689.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(396003)(366004)(346002)(199004)(189003)(74316002)(7416002)(66066001)(99286004)(5660300002)(14454004)(66574012)(9686003)(91956017)(7736002)(305945005)(256004)(71190400001)(478600001)(6506007)(186003)(6116002)(3846002)(53546011)(6246003)(86362001)(53936002)(68736007)(2501003)(486006)(66476007)(66556008)(64756008)(66446008)(76116006)(66946007)(14444005)(446003)(73956011)(7696005)(102836004)(26005)(33656002)(55016002)(316002)(8676002)(81166006)(4326008)(8936002)(81156014)(476003)(71200400001)(2906002)(110136005)(52536014)(25786009)(54906003)(76176011)(229853002)(44832011)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4689;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AhRPnDqmD6ntyYASANAaACNjKL+k8eWc81cF/HVFoM6nZPDgZZBx3DUtUCebbSWW5bZzF47Yx3YrFF6hpZGcrtyCK2ej7hAXXzxiMiy4JRkaPRJlZx4aAO2Oyskc+wFcpw13YeyKrAXJ/InJ08cLN2zh32KXD7KY10Q4HHrSnYf1AjvV7T1U6NyspoxVr6/r/AT8mFkTSTO9KDXdUSWvsC62g3VEYACvV75qjiLKRGDrXq3JbzAjFMxK2LgbDjyZLnU6AgXEuaOxkj5z6GT6FUXZ6YxkEEzG/FBpX2KUHp/Ikmw3C9b6vaNDDmsiMiRWqJDBwIv70tAhz85M9a5GBT2/gvKmpFik6R+3CHS1uweSybtZKI2+kV1eFl4czAeUx4nd5DMWO//02Bv7iVt1VwOfkWIGzCW4PkkistZsev4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd066af7-f27a-4e62-3648-08d6d2e59aaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 12:14:50.3172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4689
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_051458_877630_4FC4EE5B 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07.05.2019 00:25, Petr =8Atetiar wrote:
> Hi,
> =

> this patch series is an attempt to fix the mess, I've somehow managed to
> introduce.
> =

> First patch in this series is defacto v5 of the previous 05/10 patch in t=
he
> series, but since the v4 of this 05/10 patch wasn't picked up by the
> patchwork for some unknown reason, this patch wasn't applied with the oth=
er
> 9 patches in the series, so I'm resending it as a separate patch of this
> fixup series again.
> =

> Second patch is a result of this rebase against net-next tree, where I was
> checking again all current users of of_get_mac_address and found out, that
> there's new one in DSA, so I've converted this user to the new ERR_PTR
> encoded error value as well.
> =

> Third patch which was sent as v5 wasn't considered for merge, but I still
> think, that we need to check for possible NULL value, thus current IS_ERR
> check isn't sufficient and we need to use IS_ERR_OR_NULL instead.
> =

> Fourth patch fixes warning reported by kbuild test robot.
> =

> Cheers,
> =

> Petr
> =

> Petr =8Atetiar (4):
>    net: ethernet: support of_get_mac_address new ERR_PTR error
>    net: dsa: support of_get_mac_address new ERR_PTR error
>    staging: octeon-ethernet: Fix of_get_mac_address ERR_PTR check
>    net: usb: smsc: fix warning reported by kbuild test robot

>   drivers/net/ethernet/freescale/fec_main.c             | 2 +-

This fixes netboot on imx (probably all of them).

Tested-by: Leonard Crestez <leonard.crestez@nxp.com>

But shouldn't "support of_get_mac_address new ERR_PTR error" somehow be =

reordered so that it's done before allowing non-null errors from =

of_get_mac_address?

Otherwise it will break bisect for many people.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
