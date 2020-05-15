Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C19C1D5468
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qT+qgup9vNdqKb960B8RRolpxMs5MOzNzl4hkCTlB58=; b=SBEETNGzbvCSbF
	7CwYZ/+aAyXFlCpn6XidM36fs0qvtmsFhINIUKKXjwVAbDsYtjqFEmiQRz+j7UC0XvYSKHiJtF9aC
	6C0Wcjs4aZU5prGVMYvfzgaHIL3IGtNClIjVP8y14WK6JNL7QXLgn8wclCl/HFyljoQBbsF0OHOeq
	x1uO9RFhPC159Tt+woXtQ9+gUPyLwoJaiZaD6+FNDeFADSDfoyAFTmQB+fiYsvuG8DlM+8e/K5lvP
	rtPnBT8yxeczcfxdrmO/NkYPNP5RNeAxqRcYR8+INIEWvMY1h2k7MKMz5+2drhJAwyrOi3g7sZNzX
	izp9ho9TMgMUgxsfKO/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcCW-0003aV-8e; Fri, 15 May 2020 15:24:40 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcC4-0003I1-Oj
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589556252; x=1621092252;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3vJ7XfieW4UfMP3x6zCpbmqeUOMzPH6v3zai5Zr+Yyo=;
 b=yyDF3WvyuGihG7PVB/Myk1gD3DULT3YrcFZtdQW/z2M11nwTWaOFIPAX
 dFQWhlS5N0MmSVAlfy9XmdnPDCuUmgjWyXEiZ38Z/lbJtihT8+HWI6cTz
 FsJ3cBUZsR6Zz6nBXkY8tVIXIUayQnoQSALRq8M/ZS7SQLTJOicNihztN
 KsgXm6o3fzOMV40Uk46cr+tadaz2TdgK0e01HgHkBESH6zP34WXUB5pFb
 yCEn3WceuLvtK54dsaHlyaeIKLIRZVyS1VpofsFCqL1+D9N5eHepYwbpG
 mvpdfKpfwBB2eAZyn8YF3n/VKU5zzBN+GIRmLcVMGa4gMZ8/EpYDZF5p4 w==;
IronPort-SDR: 8S/64L1Njfvx2WqZeR9p2h0rwegVsomqlalCTiNjb/RSu78LW9EySXh75Jq37PE3OthKnBMjo1
 FiyMDUbFsOfikksSN0JIIbVpTsTFNirY8SYDNIEGDiS+drnx0LudPIeZYUAnWtWq80cOoX+RW1
 JAz8JkYrBRm+RkDjRERRDxqLA7udWreUPmJoJs1941PyEiujDUOfh/7G/uSozmULd/TpDAlJbp
 ATR059kXKQgLjEuMd3N/a6MblEUEZMm+B/9qpxVRnV9pH17DPJWMzZ7Mzu7zl4a3RTkkHL7ndq
 9qg=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="76818086"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 08:24:09 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 08:24:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 15 May 2020 08:24:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nWXM7092rFm67e539SLKEgDLcJK+mlqpfvLgaz8IRHLbCzORtZq4Pv0I1ggEY3tpPTN1u8vpTWj6Ez3ZTsAuX5EMtElpw1sQSCLgxvDc9cyDBC6ZFV8hd9u7yDDRX+kNqSymw72D1/Rx86bzhhDxN2wDFQ/uOWDzmXmVPIVlgR3IhO1WBk37eixekFve4B6AmSH+s5cjnuXTHw9z/Y1FspAsPrrDyF6YzCxqHTNJOnD+LaodkJ5nmsEx730omzIB3/bZNCU3tvaf8/c1uF64j8VIAWecLaZrPtgOjwZyTaWSqJ+eMGIWO+hiEW3gPYJcTLwmsGgHIUrJO5HU+I94dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3vJ7XfieW4UfMP3x6zCpbmqeUOMzPH6v3zai5Zr+Yyo=;
 b=PDP1hflQhrtyzq4Y+PmiFehQEX3trTV8IPSn64QPJr0N2HmAOutS+js40NqZpVm2doHFF9h5yK5a7MHbk9jeD4wcMn+N79BzYvevAKOF4+hM4Xg+4GHXH6q31t6o/wXPLCAK8nYIVCcyc9BpRSktW3qv0iQed7R/T9yhckm+UhHBbfiwtWOl3CKRWnmvY87VMYzgOAJU2TxxIpNwZRSCEL+458qNn2ka57Mlm5Js+1+KMm8ybkeH4rwa7s9m5f6mMCiS8A7VRdPsXO4CMJ/U5VxLBRnFxXlXTm4ALW7bf6C/dZYdWlbr/en/O8piBXkaQakH4CJLp1WIdmyHHiaw+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3vJ7XfieW4UfMP3x6zCpbmqeUOMzPH6v3zai5Zr+Yyo=;
 b=UODaP4f/UJ/7dRwrsxHj+Wbe/HnxY6jPjyrRmsrIbkj+ywDknhvynrMZ3ozn3WCrSsU8jwgVmXueKzSlm6rA7KSIVjzzR/8BSaLeYZe47BKg3tIQDfOboiOft+rUEiZLlHiM7+xPdZFHV3ufhwItXBmDKGrwsAI3ae4rEV3oHVk=
Received: from CY4PR11MB1688.namprd11.prod.outlook.com (2603:10b6:903:25::23)
 by CY4PR11MB1880.namprd11.prod.outlook.com (2603:10b6:903:120::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Fri, 15 May
 2020 15:24:08 +0000
Received: from CY4PR11MB1688.namprd11.prod.outlook.com
 ([fe80::d414:b3d8:74c7:7488]) by CY4PR11MB1688.namprd11.prod.outlook.com
 ([fe80::d414:b3d8:74c7:7488%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 15:24:08 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] ARM: dts: at91: Configure I2C SCL gpio as open drain
Thread-Topic: [PATCH] ARM: dts: at91: Configure I2C SCL gpio as open drain
Thread-Index: AQHWKsEy8Em+dk2FY0a9pR0JyO0gxqipPSuAgAAHDgA=
Date: Fri, 15 May 2020 15:24:08 +0000
Message-ID: <e99e9473-6dd2-1a27-975e-e49ad5413b02@microchip.com>
References: <20200515140001.287932-1-codrin.ciubotariu@microchip.com>
 <20200515145849.GV34497@piout.net>
In-Reply-To: <20200515145849.GV34497@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
authentication-results: bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [84.232.220.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31b11705-8939-40be-29a5-08d7f8e402ed
x-ms-traffictypediagnostic: CY4PR11MB1880:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB188062E3027EDF6149C0574DE7BD0@CY4PR11MB1880.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lNjbCu3WVq67mpeZK9yjnFgb+8wCvxo8/D43H3kbdJuefFFuc3NtFtiDpW67enXv64MIAVEob25vEMzxLz5IPvBVdoX/hh1mnO8oKl+S+6KUQGg1gorEC6H8zezEYEIcVZnGnMEZup03UdZlnsR6ajuYPd32r9YqDbHPoGUbYWC6//b2lYVZW1hUXtEgqAaZnklXmvXtZEz0JhsPKOC9uddjC0H5hpqpZIldO4bApdH8/sFxlU9d0LPG0/9Sf3SCH4PQyjviZHglovB4W2o2eTdhrS+HOd1ts78CStcoa9yM3qrPN8fznBceIldz4X8jAhh6yLe/6Dm+GeJvjWy/eqqXwONDp+uEnTfgMEYsIypcOtDDiHvwdSSg2Yn15orG/k8NCegn8wYainpAJgfbIhIpbq2R9NmtxKS4ZrrIuIMjSRlXGVnLRP44GPvs3RiHN1zws1aHJ/eIxSQNDpwpYiwOdySGVnUnahUJpR209ZkS3UAh/4HQsL/iZCrOrwPlVH7ptFwQQkVHMyOiK6gg1RxQoYPsbb8VckIi5pAGjTL9sx4vRwJsKT1SqGSfr8QxLw6Faa+RljZMWXTJYcSdbA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1688.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(346002)(366004)(376002)(39860400002)(8676002)(966005)(5660300002)(478600001)(6506007)(8936002)(6916009)(91956017)(66946007)(66476007)(64756008)(186003)(76116006)(54906003)(66556008)(26005)(53546011)(2616005)(66446008)(36756003)(316002)(6512007)(31686004)(107886003)(31696002)(2906002)(86362001)(4326008)(6486002)(71200400001)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: PEpaJ+3DhMZlx7VvBg86PRNrIoz3LE5cJr8nCnfkNXVny9DRFODtxkHo6cPAMEyUKY5gqj7t370itYsmqO5acCZRqQ0W6XCHYR8wOsArdDR5+vEWQi4WRZw4sHjKR9Pdg4tWPlCB3xWqvPRE5fBYsVG4CsJ44PgplDhVbta4OPFaWuLWMDk9TTj7yLhuIUJqF7UK4U/0pnwb0TfnRZIbnQCE2P66Jk8HE8aR7Y8M6cO5W5l4qaD84SdY0XxQ3kFYCNjUv0zFGuNW+jT8qrMZh+UwdF93La84Lw1cBP1NO+8iIRBDdyVWJyi7mZo4suWCnN7fzwnVeob0kt76H+5YFat5BZsV5PYb4hNUR9TUH6kuwlK0ILIC7xi55qKK3SIUuB0tg174dbSbF+NTzMtNINhZTo1vBVqeRgnXS7k3dxQVj9UKEA2PCIB0a2i1In5k352r4sxxxvp2wIpnstJeDEHFVmzrJq7XqjebigVtFJWDaU3Zu8cyoMCNgK2cmwO2
Content-ID: <6FA3E4CADE28CC4DBD1294FF2BD1E88B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 31b11705-8939-40be-29a5-08d7f8e402ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 15:24:08.0504 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GSlJG3PKkP9RHrOABsE9giR+kPpP0Pw2bvMMay/ogCIeHMD6LPxVJdYTuL9kp5Uxg+pDJpfC6fBDN7waWO1sYvP4+cBzVPoX7iQMzLsZDiE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1880
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_082413_047745_62161F29 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15.05.2020 17:58, Alexandre Belloni wrote:
> On 15/05/2020 17:00:01+0300, Codrin Ciubotariu wrote:
>> The SCL gpio pin used by I2C bus for recovery needs to be configured as
>> open drain.
>>
>> Fixes: 455fec938bbb ("ARM: dts: at91: sama5d2: add i2c gpio pinctrl")
>> Fixes: a4bd8da893a3 ("ARM: dts: at91: sama5d3: add i2c gpio pinctrl")
>> Fixes: 8fb82f050cf6 ("ARM: dts: at91: sama5d4: add i2c gpio pinctrl")
>> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
>> ---
>>   arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts   | 6 +++---
>>   arch/arm/boot/dts/at91-sama5d2_xplained.dts | 6 +++---
>>   arch/arm/boot/dts/sama5d3.dtsi              | 6 +++---
>>   arch/arm/boot/dts/sama5d4.dtsi              | 6 +++---
>>   4 files changed, 12 insertions(+), 12 deletions(-)
>>
> 
> Applied, thanks. There was a small conflict in the sama5d2 board dts,
> please check.

It is ok, with the exception that it should also be added for the 
scl-gpios property from the i2c2 node. I am making a patch.

> 
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
