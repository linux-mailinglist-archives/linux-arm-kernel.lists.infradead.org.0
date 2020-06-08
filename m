Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3853E1F11B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 05:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UibobA57FspAu4LfcKRobjDbIu8IMzI3Fj3e+eM49KU=; b=dsl3tYF4I+GjBZ
	o3bkBr+XXscms+QBc5ezJHdy0H09QsX/Z4V7qWsiiBfMx//Acb2s4ySoXy6Y4Tqyvsr2cSUsKJYtL
	jsGllZr0lfEtBitstjAB+DFdvclle0vHJTu9dnrv/aib0oJA0xo7KWTOws9DwvqCrg2SwqPUizNKx
	SOvKudYk25dqHp1EwOppOs3vZOWBFMdVM5arETWJDhXHFvLX+K3aHanz1a5Ms6txZE2KpvJyF6NPh
	pa+dtY9m9GgGd754nl2CxXtLmCXK+ovkw+hqxcID3Iv9dnjn7QNZqsCG7upxrSZV+xEA0/4JluBaF
	b04cIX2oeeWEC84U+bBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji8T4-00024G-PU; Mon, 08 Jun 2020 03:28:58 +0000
Received: from mail-eopbgr30060.outbound.protection.outlook.com ([40.107.3.60]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji8Sv-00023P-DU
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 03:28:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fw7XzgKUIx/f+SDVokvdFYrtxi8UksWa6JogNWyAfFhWdCC9wdgufMvekprMfurcKMbRXfEaZVFOf/ieb/ZqQzS2R2E+tKRmb4WYygnK3U+p0433tOr6nEQFbFHAwg/70Tmog7laknzqphRiXs15qSGRGJuw/GVD5kTTUzIuSrr/RufvC3Rdbdi4lYOiIjqVdtERBkoxUl7Xe0ZWxB7MqisI6vkj0Vl+idB5SccdLixZeUoUVTIiBDD4j414T3lb031UBMbN9STpDhwznoLHHXHCVFCbc/VJKqGuBrdjCMbJW9crax0JmzOKFQS8wosRAyo6XfqTZpgzoHSGY+F+ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f2kVeEfT/fg1bl89HyE2OaZfQLPD3ojt+m5dUArUkwU=;
 b=jTFiEeIzHrbdFI5wdOA8AOB1NNZBofcWk7iAtNw/YOSVzQdyBgKVB/7N9rTH/1imYyns46zpa2ppOAG28ztfQaDi5V51YqpA24bTvEcqgp6BLxRBBHJthXNUgp7x0PXWmQ00cNAS6FuedxD+5EFV+oNGhe4MlAgIZf0Se7/R+zragTX+3ZGhCR44RCJGaLIul1GpTnsd89EcIjas5Niy6h31InNxjH/OzGWANAgr+YeMCwoT8UWCtuo0LAC0gag7uDXorlHxi6XbyAV4YS0+DKDVhQL67sg1NF6xfgejD3Pu/l2s+0FG3W8nFG94oLvkQXmnUn+XUxRlWucU8CEk2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f2kVeEfT/fg1bl89HyE2OaZfQLPD3ojt+m5dUArUkwU=;
 b=WxWNHCmAWQhoAGCy8MkRJYWfs9iDkCYL5sT8dhj1jbY/SwC1YYWlHPWGEij8ns8JPmwm4rt8EVsLVPYaGVTGLBfmIl8r4GpZxvJhOuG8t5JMXP2EzG5LuaAHo6WSGtoFLAbM+iDY2jukNAyRHZu2QPZ6DYAjFQCnSag4N3nxdKY=
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com (2603:10a6:20b:10d::24)
 by AM7PR04MB7191.eurprd04.prod.outlook.com (2603:10a6:20b:11c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Mon, 8 Jun
 2020 03:28:39 +0000
Received: from AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b]) by AM7PR04MB6885.eurprd04.prod.outlook.com
 ([fe80::fdc0:9eff:2931:d11b%7]) with mapi id 15.20.3066.023; Mon, 8 Jun 2020
 03:28:39 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Topic: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Thread-Index: AQHWL9lT6NzBjMxkeEyGUwX2yrM6W6jOKfFQ
Date: Mon, 8 Jun 2020 03:28:38 +0000
Message-ID: <AM7PR04MB6885DBD5BA2E4004C451F0B5F8850@AM7PR04MB6885.eurprd04.prod.outlook.com>
References: <20200522013052.2838-1-yangbo.lu@nxp.com>
In-Reply-To: <20200522013052.2838-1-yangbo.lu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 34a1e145-1a27-4bec-5c2a-08d80b5c0920
x-ms-traffictypediagnostic: AM7PR04MB7191:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB71915F856F424BBA165E6DB3F8850@AM7PR04MB7191.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:324;
x-forefront-prvs: 042857DBB5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g5LI4NXCpUlVDrzEXMRT/5NTxgnPEd7FswgCC+FrScOlSrLjb38iyyucjp+Oh/6kqJTbSwaBkeMjNqiRMlOEB0oQdQvi/kknepmuZUlJa37+nWG8HGPfmFvC2Tti0AMgRWgwXkyb0IjH3r8j/TQ2tx2p5P4QudtVmLHYbjFhAyUBc/x3ctVamNqcNCl+EhlgGD1Z8fpQ9rLeANOAmTUYpn57zQJOeu4/oH3HHeM3p0q8pzVQiqx71uTVD/d0rfd4OKMgm2Q2aLtBbAb34Ebd49KsDu6dioJF39eF6edVkWwB1gGuA7w/PR19VaIWjM2vzXo8UBH2RBQqSabyx0UAUQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB6885.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(366004)(136003)(376002)(346002)(76116006)(66476007)(66946007)(66556008)(83380400001)(478600001)(64756008)(86362001)(8936002)(8676002)(55016002)(66446008)(9686003)(2906002)(4326008)(33656002)(53546011)(52536014)(186003)(26005)(6506007)(5660300002)(110136005)(7696005)(316002)(71200400001)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: wOsXiOHAVvkGCOqTUl2ybrOrMiasnLEp+AgU3JAtp9++7rVYBzF46mYUtyUsme2FbDUAH2cWFAuNDzOq06ED28DsmawPozNvjk6EFYG4SMZnwFsfQ5B7dHKHCKqszG6gsI3sGQjK6CRKQbQLAXO+VVNBavXFXMdOgmTVDNzVSsEesvJWuTlLtqvhBgQWtqjxhxhzXj9KQIDfbti2z4z74pbzWzKzBHspb6rMmnOn5pi7q7UbvMcVMgQW3r3bv1FZCEW0kim5lgoXX/xIrBtG+1q26CTLKwNC7SxH3I8/K/xFK8sNJQzAx41q5h38nQJkdMptZEwqBE5F9lqznqZ3Vx6+mnY1jFTrbcTGoXboRupBt96HM3l8tqLeMP3IEJYpbwt4YXSR1kJt54Jlep+aDUdigqswW+1ILujMGp2oQp1OzRGd5tN052GQkC/pqzFe9/r/85w3zsxvjHL0QKB9VsTgenLwRG9wF2dmJWgSTu4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34a1e145-1a27-4bec-5c2a-08d80b5c0920
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2020 03:28:38.9673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f1KfMli8UhZ4ePapYcfvQe6DvF9XPnDuHIzG/ZngNnD1+IK+5x3yswv7d4vQ9xDLLY/epuZk5di+9gKuNKz5IA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7191
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_202849_551282_D61E9B75 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.60 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.60 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Richard Cochran <richardcochran@gmail.com>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

Will you help to merge the patch?
Thanks.

Best regards,
Yangbo Lu

> -----Original Message-----
> From: Yangbo Lu <yangbo.lu@nxp.com>
> Sent: Friday, May 22, 2020 9:31 AM
> To: linux-arm-kernel@lists.infradead.org
> Cc: Y.b. Lu <yangbo.lu@nxp.com>; Shawn Guo <shawnguo@kernel.org>; Leo Li
> <leoyang.li@nxp.com>; Richard Cochran <richardcochran@gmail.com>
> Subject: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
> 
> The timer fixed interval period pulse generator register
> is used to generate periodic pulses. The down count
> register loads the value programmed in the fixed period
> interval (FIPER). At every tick of the timer accumulator
> overflow, the counter decrements by the value of
> TMR_CTRL[TCLK_PERIOD]. It generates a pulse when the down
> counter value reaches zero. It reloads the down counter
> in the cycle following a pulse.
> 
> To use the TMR_FIPER register to generate desired periodic
> pulses. The value should programmed is,
> desired_period - tclk_period
> 
> Current tmr-fiper2 value is to generate 100us periodic pulses.
> (But the value should have been 99995, not 99990. The tclk_period is 5.)
> This patch is to generate 1 second periodic pulses with value
> 999999995 programmed which is more desired by user.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> ---
> Changes for v2:
> 	- Added more discription in commit message.
> Changes for v3:
> 	- Mentioned effect of the change in commit message.
> ---
>  arch/arm/boot/dts/ls1021a.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
> index 760a68c..b2ff27a 100644
> --- a/arch/arm/boot/dts/ls1021a.dtsi
> +++ b/arch/arm/boot/dts/ls1021a.dtsi
> @@ -772,7 +772,7 @@
>  			fsl,tmr-prsc    = <2>;
>  			fsl,tmr-add     = <0xaaaaaaab>;
>  			fsl,tmr-fiper1  = <999999995>;
> -			fsl,tmr-fiper2  = <99990>;
> +			fsl,tmr-fiper2  = <999999995>;
>  			fsl,max-adj     = <499999999>;
>  			fsl,extts-fifo;
>  		};
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
