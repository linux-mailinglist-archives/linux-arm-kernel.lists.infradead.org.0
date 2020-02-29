Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B511749F0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 00:07:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVPxke3tIUYTJjvXSpO1okVf/Zwdkonvfq+fsrKpi+U=; b=MomrYiTrcnMwnG
	V09geT8qHF75omOBj5jOxkl4bFGeK7MJmiZPfc2vFky3oXB2H85LAy1/6LZK9/prI2TowNl8jp8xp
	ZW9DUenWutX5C0/3MDTiJK5GPnYp+zBOJs94y+0XA1otf0Jzk1aKY9kix2ogP2NKsZHSQWEG4SBHc
	FVrgLxRIuxMOBzxpx2psoiDADL7ePmuLKTxrcldl+jatrY/JZZP3DaVvC3s5JQ95vAjJ1s7AWdfMH
	1P/RCEJxva10F0ksXwWKJg6u2l27fD9n6tTlY1lx24T/w41/+QKRpXEvzxFqsj5rSZT+FPqGQCfH9
	CBoSLrHE54LKY5Ba2U7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8BCS-0001Vk-Oc; Sat, 29 Feb 2020 23:07:12 +0000
Received: from mail-eopbgr40101.outbound.protection.outlook.com
 ([40.107.4.101] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8BCJ-0001Ul-F7
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 23:07:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X8eL591JVQ4zd0yjpTe3d7fWxcKQVA+z+vdOSwoktSkgZjLFN3imPYrkqQPvf7d55EZUuDhu7AtCCiy2EKf+139qU6gJas7vzmtnAYiSo9wJT9TvD7uydoFzd1WyJ5aaWvEkF6KZ/YEeQQa1FvwB6urw5okd10tpQMCoBeTo01eK5zfQJVjFgbpaYOBjbHZ24bZ8TB/HSlQQ0asd9mnfnYmDIsG205kfWes6fiRr7y37Se45icqGUuJwS8twP6WaZ2WMwFpCwU6wjgDOUhAxD9YcK9nMQUkVDny+OE0z8QVGcgR8SMS8nikJsCzV5pdS7frkkW9dt2Rj+CrbZvOWLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j9NwnqjzOEn7SAFnPgIMaY5+QocVdNWZcAsasBSTTd0=;
 b=RCddzQ61WpDqrQKnL4gVE7V7ZCjMF1Nim3DJ/F9TrCTU33CnXV8utnEjKABItcur50Dc9P7wvyXbKqH2IzG/DIx0OMLC3OL644VZl0feVof4mkWogRdKEOb5lWUdL2vlEZt5voicekc6I4Up2+xyjTMJpXETDf1h48ZHWCzydPiR3oRSHMrg+ZDzrjYCghRXyArbL4i9r2KLhavvcVxZC4VcHWQU6NVdwY5ytwZU1RNEdeIaBUhsd2lBnU/3fWPD27uUHLZqBJq9pxB5knszD96/LsJoJ8nmhQS7ljSvJv5aQoeg/1zbgY1bMKN/WiY4bMLCw5IK0vMc14O7QCWS2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=plvision.eu; dmarc=pass action=none header.from=plvision.eu;
 dkim=pass header.d=plvision.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=plvision.eu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j9NwnqjzOEn7SAFnPgIMaY5+QocVdNWZcAsasBSTTd0=;
 b=BEsEeRA/MUj+PL5VR5STEI52MvXc1AQxJ7cIEoHA8hRPIHHI0r32SkqJ4RezMMrganfrjajsCTjCX6Dv1ei+f5gVSGyWm4eqawKZOvbkCw0LA+LunU6SJTu30YEIDw+gTVqvhAWj020bT4ErFO7a3LDv5tgYKVW+6WD2LhATtG4=
Received: from VI1P190MB0399.EURP190.PROD.OUTLOOK.COM (10.165.195.138) by
 VI1P190MB0397.EURP190.PROD.OUTLOOK.COM (10.165.196.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Sat, 29 Feb 2020 23:06:57 +0000
Received: from VI1P190MB0399.EURP190.PROD.OUTLOOK.COM
 ([fe80::a587:f64e:cbb8:af96]) by VI1P190MB0399.EURP190.PROD.OUTLOOK.COM
 ([fe80::a587:f64e:cbb8:af96%4]) with mapi id 15.20.2772.018; Sat, 29 Feb 2020
 23:06:56 +0000
Received: from plvision.eu (217.20.186.93) by
 AM5PR0701CA0012.eurprd07.prod.outlook.com (2603:10a6:203:51::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.5 via Frontend
 Transport; Sat, 29 Feb 2020 23:06:55 +0000
From: Vadym Kochan <vadym.kochan@plvision.eu>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Gregory Clement
 <gregory.clement@bootlin.com>, Andrew Lunn <andrew@lunn.ch>, Jason Cooper
 <jason@lakedaemon.net>
Subject: Re: [PATCH] arm64: dts: marvell: fix non-existed cpu referrence in
 armada-ap806-dual.dtsi
Thread-Topic: [PATCH] arm64: dts: marvell: fix non-existed cpu referrence in
 armada-ap806-dual.dtsi
Thread-Index: AQHV347B2j3P1pYbBU6vmfM/4HtQ8Kgy6rgA
Date: Sat, 29 Feb 2020 23:06:56 +0000
Message-ID: <20200229230648.GA21220@plvision.eu>
References: <20200209212016.27062-1-vadym.kochan@plvision.eu>
In-Reply-To: <20200209212016.27062-1-vadym.kochan@plvision.eu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5PR0701CA0012.eurprd07.prod.outlook.com
 (2603:10a6:203:51::22) To VI1P190MB0399.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:35::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vadym.kochan@plvision.eu; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [217.20.186.93]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9b30180-fc95-4b6c-6bde-08d7bd6c128e
x-ms-traffictypediagnostic: VI1P190MB0397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1P190MB0397292A09918BBE7DA2D9AD95E90@VI1P190MB0397.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03283976A6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39830400003)(396003)(366004)(376002)(136003)(199004)(189003)(66446008)(66476007)(66556008)(64756008)(16526019)(508600001)(186003)(8886007)(2906002)(55016002)(7696005)(81156014)(81166006)(8676002)(52116002)(4326008)(66946007)(86362001)(8936002)(4744005)(33656002)(110136005)(26005)(36756003)(956004)(2616005)(44832011)(1076003)(71200400001)(5660300002)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P190MB0397;
 H:VI1P190MB0399.EURP190.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: plvision.eu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P2HS+krweyWQ8CRbe1o5Z4+PTMFcQuaPa+dJwlwY9LKuIVIi1rFPpt7Qbcby3xsV5jh3OU1qng2vNvWmk2aD6F3fBbSjC0ulZmhaxvSUgnidrWMNiq26LkUdzM5eO002Kzy4BtnURkaHHrG1kUlFDjV+PyS0NEyJLjJvTxzpbeCmBPuX5UmchrTC5JXuEMLLnSd35TBcmAfLXrIhbifoleF+lKWKQZp6ew4nWeEQbyucA47qtKIrCI+a+u5FFp/Y3S3SWdXbZ4LQj8yXb9wYJJAnvJDzfYHGDTndiAllKA7148I7XOuG7cfUAUkbyvvrTx4Yg+mxbB9SKhQBaHpatz+J5GnUgS18HdYBpFWkRT3kprvLpeawMEfFdPkjzo/Stc8d1czmW6PKNg5m9KtWjIWszFGj1oLdlavYTXWllI++NHwyjEwNQG9xsIsRv1W2
x-ms-exchange-antispam-messagedata: WSH3fv+ZwPPnMU5akZXuHueLJlqbNZnoycg8pu9tx7AmZsl6gdyf09IlCdz+4idiVvBdVVtdglMSxcg/QGw4yCw0dx9+gB1hIjdyhtrZeXpyhvR9bIKsUy99NaO/Mpf4Z3OiVSo4J6krPSP3zjyD/w==
Content-ID: <1462DB9A36CE444384035ADE6DB1B14A@EURP190.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: plvision.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: f9b30180-fc95-4b6c-6bde-08d7bd6c128e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Feb 2020 23:06:56.5143 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 03707b74-30f3-46b6-a0e0-ff0a7438c9c4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R3IscuNb/pV1mazkPCPRnlB3lxIPo7JG1m3S4xqbUNLIIGoejIcKH49dqLbmh/bYr34wm8SfCugS+/YUF8j9HFjFbmUrG46WF6mdDtqIuqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P190MB0397
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_150703_586487_60CCF699 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.101 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Just softly ping if I sent it to the right direction.

On Sun, Feb 09, 2020 at 11:20:30PM +0200, Vadym Kochan wrote:
> armada-ap806-dual.dtsi includes armada-ap806.dtsi which describes
> thermal zones for 4 cpus but only cpu0 and cpu1 only exists for dual
> configuration, this makes dtb compilation fail. Fix it by removing
> thermal zone nodes for non-existed cpus for dual configuration.
> 
> Signed-off-by: Vadym Kochan <vadym.kochan@plvision.eu>
> ---
>  arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
> index 09849558a776..fcab5173fe67 100644
> --- a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
> @@ -53,4 +53,9 @@
>  			cache-sets = <512>;
>  		};
>  	};
> +
> +	thermal-zones {
> +		/delete-node/ ap-thermal-cpu2;
> +		/delete-node/ ap-thermal-cpu3;
> +	};
>  };
> -- 
> 2.17.1
> 

Regards,
Vadym Kochan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
