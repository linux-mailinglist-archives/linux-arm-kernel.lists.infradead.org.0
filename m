Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984C21638A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 01:43:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vmhX532EKmXwr5PqGt3TmlEkNSDcpV21szYyWgHSSg=; b=cY+taJTiG09KUm
	PLNtKE2CxU88m8qJQvBSZiUS1KN6fFRzXZHNXYh03bxfHlKtP35y6DEbGOrpqYGqi5KndVaEB5FBQ
	pn7c3f6i0vVv9YhF8E29PT9kaXwTI+i1xzk6F2dMncWBfPrTrDM5yyJUw1joViPMqYXDIYIIwSpdL
	XntBcDRO6iaorB5El0yT3Lmca6g0h2HqDAYPu+9kBYsnvB/isewsL8QMKBIa5Jm8eaCd7WZEDKtKN
	0/d1v5jEZWPK2c1qeYjy0KAYTHZaa6sVvC/bjLE+nIDn5BPMhFeepxWNC7TJKbg9Yqa6wJOou0u4l
	msWcNPZEwXMM3ZeNnPSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4DSc-0005tw-U6; Wed, 19 Feb 2020 00:43:30 +0000
Received: from mail-eopbgr1400134.outbound.protection.outlook.com
 ([40.107.140.134] helo=JPN01-TY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4DST-0005tQ-6J
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 00:43:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BawBGhIF2XeqnQ1VEt5eZHOPV8vwCk8T2K8tsCbZ988NVObAII4Y5wmYMcwP8VXJYS5BJfm6VgNARLuibhefaU3id1qc3RmrgmRQxdnuKJIU6djzIBCvbtkwcmZTTXkGpjM3Nwmc9WzTlQ6g46iVFoMySsqbPyiAULnGAiuJaVE+eb5MK84NGyRAOQ53JxXvTEooyuIamtSa5A8okLwFeHR1CV/aKUSv/7sMG1f5cz0Ze54ZtjPPuySREpMRnACNunU4fkhJjx828lGS1roRWZERX/5enj17vqkiJH3khE7+YjzWfGQA9NYkbQEXuqWuAxzREC0ExGzN2pj20Y2Knw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oqMOXwCIA4YmSfN3xI2nBLaoNruTAwS5pdIF+xD9+y4=;
 b=iJzsWbDVavVHLv0mC/fUgtk+jAx9l1+E8tX5AgIw8JQqRkKqorXw5qzU/SZMcSr8TskKSJrgKP0wd5QuNmpHig8KBsV1D4v/qC+Bj6YjR+BPPsmHM36lkuplZ53cdpc/qGSPdxT0WOWdd0BKe0VSShfONcktXh0O0qJx3p//fcyon+dshZ/JEhDN5Nze7mt56OkevYG4guLKIeizkCRo9ai9FE7wKQw2+h5NBR5O22ybdrAjD2IYhebPf+SEnSpwxDei+H4Z10e3ZTHRhqZ7odALkJke4mljM8QO4H/36Y5x9/bYof4oUNR2WHQuQaVyKIJ5jJUCxvIgUyTCEiz2ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oqMOXwCIA4YmSfN3xI2nBLaoNruTAwS5pdIF+xD9+y4=;
 b=IPOg24m9OPKuKlzALrNP7KfNuVYm+AqOr9zSmL25wVmmRdCCcwVJA3myxV+ctPrPNezPrgr+4gsxpp2V0jiY8nQTQHfSgjTDvIMXUbOUSIdvQlErdQGZkLraBnHbSTl+2Zb3cC4v8akEEtJDC15Qq6nDYPqtyISHIUPhkHiBVAk=
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com (20.179.175.203) by
 TYAPR01MB3680.jpnprd01.prod.outlook.com (20.178.138.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 00:43:16 +0000
Received: from TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::318b:31aa:4212:bd49]) by TYAPR01MB4544.jpnprd01.prod.outlook.com
 ([fe80::318b:31aa:4212:bd49%7]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 00:43:16 +0000
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: Corentin Labbe <clabbe@baylibre.com>, "alexandre.belloni@bootlin.com"
 <alexandre.belloni@bootlin.com>, "b-liu@ti.com" <b-liu@ti.com>,
 "balbi@kernel.org" <balbi@kernel.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "ludovic.desroches@microchip.com"
 <ludovic.desroches@microchip.com>, "mathias.nyman@intel.com"
 <mathias.nyman@intel.com>, "nicolas.ferre@microchip.com"
 <nicolas.ferre@microchip.com>, "slemieux.tyco@gmail.com"
 <slemieux.tyco@gmail.com>, "stern@rowland.harvard.edu"
 <stern@rowland.harvard.edu>, "vz@mleia.com" <vz@mleia.com>
Subject: RE: [PATCH 13/20] usb: gadget: r8a66597-udc: remove useless cast for
 driver.name
Thread-Topic: [PATCH 13/20] usb: gadget: r8a66597-udc: remove useless cast for
 driver.name
Thread-Index: AQHV5pJjU9BDe4hHXUaldQK4Gp5mTaghrduQ
Date: Wed, 19 Feb 2020 00:43:16 +0000
Message-ID: <TYAPR01MB45443CE85FF10D5EEDBB110CD8100@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
 <1582054383-35760-14-git-send-email-clabbe@baylibre.com>
In-Reply-To: <1582054383-35760-14-git-send-email-clabbe@baylibre.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yoshihiro.shimoda.uh@renesas.com; 
x-originating-ip: [124.210.22.195]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9b324d4c-7f43-4315-1264-08d7b4d4b55f
x-ms-traffictypediagnostic: TYAPR01MB3680:
x-microsoft-antispam-prvs: <TYAPR01MB3680955EE29B7A57D53E9DC9D8100@TYAPR01MB3680.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(376002)(366004)(396003)(39860400002)(199004)(189003)(52536014)(66556008)(5660300002)(64756008)(186003)(26005)(2906002)(66476007)(76116006)(66446008)(66946007)(33656002)(8936002)(81156014)(8676002)(81166006)(4744005)(4326008)(55016002)(9686003)(6506007)(86362001)(7416002)(7696005)(478600001)(71200400001)(316002)(55236004)(110136005)(54906003)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB3680;
 H:TYAPR01MB4544.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TxyUmqiMmFNr+BT4mxtx+Uihy2RlW2Yg/D4UCwvP8vOOLMbQ52Z0q7FZw2WkHXgUCkf7AGne5FDU2fIMAfOhdPJPLcY9JDfB2x9z/vUkouOe2nIHHbafxSveVE5UAR81+491e1JJf+vReMz1E9nYSuCU0naySEQPFCGEtZx1BX16Frz7/PexMiZaKD5A66kA23WEUrtyHT+pTCeXvQwYCsh8gM4aNXVsUDxWGa70k9UWIYx0WTpJ4Pf7lZkN/MtaliB1COE1BamGgyeqTFMhYn46GCk3Zl3j0n1RSD77LfzR3qBsIAO8hAqjEq3OM0q2tGmNyMtRoz6zqpoElJuiiOV31sbTaR7iutkW4z/P/qem/gXzL948w+KI/SKCTRMr/4m57Qqcbhdqcgjg/CKPC5Ao1RlpABztSxZPhEHf3zZiVW/zp42qAOv74CwVTOUxdDq2BEAlFNAX0ukb52TgmGzuD5IcID3wv8YWiBXclKbrFtVFI7ePTkEOyhkdMYXz
x-ms-exchange-antispam-messagedata: L33AKNywzFZBpZwocckKsXHLgAgOgW2Jq+9uDLyu/hifpd19+1P1Cyvuq3mmSy1xT6mZUBmA9SqGQhxW6HnMEzIiOucEwSMfdT69mpDBHpdY2wSwUAwUzGV911gpySsQYvvOHJ+9xskakYXi9gb9Pw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b324d4c-7f43-4315-1264-08d7b4d4b55f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 00:43:16.3878 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zSE1wiAV7lh1TJfokmiPYEqK0RxwIOfhNRM43T9PQs+0iXZuc/K8K3TFv1P95U1FrQjo/tZhW+XdhFzhZDt158oK13ohwFHRFA7E8kb+AlqhfW1Pd6ThvqAyG9pfw5Ah
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3680
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_164321_239186_F03EA77F 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.140.134 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> From: Corentin Labbe, Sent: Wednesday, February 19, 2020 4:33 AM
> 
> device_driver name is const char pointer, so it not useful to cast
> udc_name (which is already const char).
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Thank you for the patch!

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Best regards,
Yoshihiro Shimoda


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
