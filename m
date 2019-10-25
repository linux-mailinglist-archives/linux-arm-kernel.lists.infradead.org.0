Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB88FE46DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfXvue1R4UkkD5t1yoxo1wqi8iMELC/2vNVnCWBBf7E=; b=balwbxL/CGoVmf
	Okq49KVIAkkTYm8I8G/EnvHUIvlN2v+BWa/NktEJukWBFCR5XNWyAAvP0SAE4pna/ACg52ivxDXJn
	tpU3NTXjvV3laq9yUMzFz0pnbzWAKDX9//XqtwA4g8xqOopRtTr6CjVStKfjfFdnJxdPNFSUbGW7/
	OEFD6K0V01iIeyaco9UttsIkZcymRUXGtJJG1pFmQgDa1BT6rt+mLGiyVIL0i0GhjIA0CLv52p8CO
	+TYv/NydAT/z/xwfzXXsFigOFfuCfaCnt1WYIoPN5IMyLRu1O+aCMuu+3xQ0/9MBRWkFnlSxgVbP7
	TpajUMEnTP6esX+2CBXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvhc-0004mA-G8; Fri, 25 Oct 2019 09:16:12 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvhS-0004lA-Kw
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:16:03 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: sdvAHdq9lJ0R3x/39ndPE3RpPIAigq6Bp0cPyZ4I7lAhO+48tj7TkqpAIV60+h4ceBaCaGIkVI
 /kv2CM/6KKtaIE5WjlC8YezlV+o+oGVyohZRPclfKiuabrOaOr8wHGWEDfl46r/7ZE9ghGPAuL
 6MsfnfV29JGbodqdwUQf7lKt3Lm53qKUTYy9TO435CIctzuoJQCyZL1/cSe4lauwwxih6oBdBN
 l++yfIrFpnXJL+8QqzOI/NIwqV469A8iR6Ly9DlRkcIN96rzDjZIPiCivxbVjGdEfAyhi4f+Sv
 Dig=
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="51530411"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Oct 2019 02:16:00 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 25 Oct 2019 02:16:00 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 25 Oct 2019 02:16:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xx64MFV6X0TZHnnkcrcqR3lz9PBjBw8tZYt0+sSYboCet9VFpf1W13amKcQfL1k/JJgSxU0+KLyXZJkTdcUT2bTL2FNU4D++Ah2DgJLnwaZg02gVvBG9JP/QG1KUMcvsSCz3gA8GRppt/eaJzcfYI1MuxGjLq4UqWoT41zpqXcyJuGtprXynSCul4W6epTG126SmHnS2oMS1XHQ20Gy18fL0zTKBm8wwlmYpSmv9Ogs4lkCe6VnlxxIdlLoApc/5wp1cV3y7TT/hnfhDv/QEm1fjJrDGrnm5XzT502FFJI8toPn+V1GOt4dBnLn3meE43F9ygKDUIecdZurThD8nzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nqz/idQ6nlL1zH7IUT9L2wfWDmG/jbjSCde9VwuqC2w=;
 b=HHGAB/RJ6Lfu29CJ/UtILoS2ezDc4nTNH4M/IS8gcPv+lrTYKcQsznxLkG6JSunbojELAkayPaDncvNYTpTqGk45Z/K07RC+vNhsnyehQhv4jyaV+y1z/Xn/J0y6FMJXSy3WlKwkGXNQMDSDX0VMnNtPx0iFF/smukoJWGEudH6ytdNcNCXZcvhsgxMHL+DcttcL+G2MWOl6jbI/miTbpnoS48QCcoT0IrgOsHdIbmyrizm3569olHq2fsfuHdaihhg9/W/9bre0GLlNHNoJR0LZcfx9Af9ROJBVmwDM7H/okU0oieVwgdyNK4qZ7cGzww7T46ee/VsVku8uWVuLHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nqz/idQ6nlL1zH7IUT9L2wfWDmG/jbjSCde9VwuqC2w=;
 b=VWz+SmTVRigBUtiNI08Hi8PWkcsZrEIY+U5IX5/xNjzDsOLeL5nPksKIk8DYS5Midrzza52uPVaECOOb8pbGDwh2A+OBpEgYzuuxlsP46y/uKb2VJQyktcFCmBL6kMSY9TcT8/534v264e4AHfjIfnI0sLki/ROrPffCZnPXF2Q=
Received: from DM6PR11MB3225.namprd11.prod.outlook.com (20.176.120.85) by
 DM6PR11MB3355.namprd11.prod.outlook.com (20.176.122.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Fri, 25 Oct 2019 09:15:59 +0000
Received: from DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22]) by DM6PR11MB3225.namprd11.prod.outlook.com
 ([fe80::3874:9f3c:5325:d22%6]) with mapi id 15.20.2387.023; Fri, 25 Oct 2019
 09:15:59 +0000
From: <Claudiu.Beznea@microchip.com>
To: <Ludovic.Desroches@microchip.com>, <linux-arm-kernel@lists.infradead.org>, 
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH] ARM: dts: at91: sama5d4: fix pinctrl muxing
Thread-Topic: [PATCH] ARM: dts: at91: sama5d4: fix pinctrl muxing
Thread-Index: AQHVixAJLedNeuOqCEuZRlo+W7F7NqdrE3gA
Date: Fri, 25 Oct 2019 09:15:59 +0000
Message-ID: <e2d81b87-408d-b50d-3e4c-b28367e4cb00@microchip.com>
References: <20191025084210.14726-1-ludovic.desroches@microchip.com>
In-Reply-To: <20191025084210.14726-1-ludovic.desroches@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MR2P264CA0086.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:32::26) To DM6PR11MB3225.namprd11.prod.outlook.com
 (2603:10b6:5:59::21)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191025121552227
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f03b341-4197-433a-9b18-08d7592bf2fc
x-ms-traffictypediagnostic: DM6PR11MB3355:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3355E177B5A096057C01F26787650@DM6PR11MB3355.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:321;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(376002)(136003)(396003)(199004)(189003)(6486002)(102836004)(66066001)(14454004)(446003)(186003)(8936002)(76176011)(81166006)(8676002)(81156014)(3846002)(2906002)(31686004)(26005)(52116002)(99286004)(53546011)(25786009)(6506007)(11346002)(386003)(478600001)(305945005)(64756008)(66556008)(7736002)(4326008)(6246003)(66446008)(66946007)(66476007)(6436002)(6512007)(486006)(71190400001)(36756003)(6116002)(2201001)(5660300002)(54906003)(256004)(110136005)(86362001)(71200400001)(316002)(2501003)(229853002)(4744005)(2616005)(476003)(31696002)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3355;
 H:DM6PR11MB3225.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z4h0oI8E1IxRxGfqPfrABYNTmgWTJCRDt/fsN7lOGQwxrU+QlhqPnI3KWbpqfnqQATSASdgb/Lq9tesbllpx+a+IBM/IfTBvKeYMOCMoivrQaGsq+VP3w+Kndh2bEeOLz1CtsQ08p3L9zM/9JULhqTg+VVq7nvRc/YR8qRSXpI+sfrU+oG7UPG9uizOKeid8QXYF7Ah0HMy+e6wycs4DKVr7c/nJdiLEYn0dvDJbxrcQz6cV2iW3ThLa0iLJuSFnzwntlUojKXUYP4iXT8G0Kb+TPP5YodTFKIBr94aCGJI/sZZlgkOla9gUKDP4eSZ4UX6F2lGowRs73DDmCQwvD0au1NI6x+STzTUMiEzLeNK9Q5/y3JXgZSOFtrc33oybBF2Og20ECR53mYcfj095ioRPCsaUo+jHOSVtxr7XZduCIch13w0ZQm2LZ8IuS71/
Content-ID: <5DD681549F566C408235A38CB7FF4D0A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f03b341-4197-433a-9b18-08d7592bf2fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 09:15:59.2600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PfmFKE5OmUmXR8SoVCfYd/g23j1oGsy4FW9uGj2m4XCBNLsuvUniT6HMBxtYIyhd2SJH3+pMzmU7OtyNvZT7by+X+zHM1CgwFxCfqGJh3bE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3355
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_021602_722580_507DE07E 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 25.10.2019 11:42, Ludovic Desroches wrote:
> External E-Mail
> 
> 
> Fix pinctrl muxing, PD28, PD29 and PD31 can be muxed to peripheral A. It
> allows to use SCK0, SCK1 and SPI0_NPCS2 signals.
> 
> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> Fixes: 679f8d92bb01 ("ARM: at91/dt: sama5d4: add pioD pin mux mask and enable pioD")
> Cc: stable@vger.kernel.org

Reviewed-by: Claudiu Beznea <claudiu.beznea@microchip.com>

> ---
>  arch/arm/boot/dts/sama5d4.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/sama5d4.dtsi b/arch/arm/boot/dts/sama5d4.dtsi
> index 6ab27a7b388d..a4cef07c38cb 100644
> --- a/arch/arm/boot/dts/sama5d4.dtsi
> +++ b/arch/arm/boot/dts/sama5d4.dtsi
> @@ -914,7 +914,7 @@ /*   A          B          C  */
>  					0xffffffff 0x3ffcfe7c 0x1c010101	/* pioA */
>  					0x7fffffff 0xfffccc3a 0x3f00cc3a	/* pioB */
>  					0xffffffff 0x3ff83fff 0xff00ffff	/* pioC */
> -					0x0003ff00 0x8002a800 0x00000000	/* pioD */
> +					0xb003ff00 0x8002a800 0x00000000	/* pioD */
>  					0xffffffff 0x7fffffff 0x76fff1bf	/* pioE */
>  					>;
>  
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
