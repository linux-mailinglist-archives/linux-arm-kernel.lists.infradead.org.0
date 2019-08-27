Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B10849E8ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y8XmrqhgLAJrxDluTC/JzsDpf/1KaEw6aYh9qD20G8I=; b=kl+OIfXqiUJ2dE
	He7xjUIcbrab7UciajiV6kNtgw6kkXzDZLBvcsDqI8RBrsSMTAzmamXILBT5TAUaxBrsRpd6CyHbX
	+awnbmLtmSDDoF2gPfxrAEd5PElmC0JYtsuhkmrNGIxAbbzhyALz7ORVEMwx6r28YTkf3oD4ITfi5
	zbtG1ZyysT4RE5b6DbBpxe+gqGZusZowXYcErsKRBhHBb5fJELmtzbQB38hR8vqvwTxnj3LaLCMyh
	pDjHpgqUmzGzYLv7naUBSwI5u1swxB1SS6RreR7+COoYO9b3JzAduDBK+YjX4ekS86hCUCDR55SoF
	Ok5Xv4RGTd77wGZeoHiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bMq-0002Nu-OQ; Tue, 27 Aug 2019 13:18:36 +0000
Received: from mail-eopbgr50114.outbound.protection.outlook.com
 ([40.107.5.114] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMd-0002Ml-PG
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ii1glYbNlsmCnYxsMLD0imAczlLLjlbpqjwCwzdHWz5ltOAWcnQuHCUX5lblzSgUvGpaJeKUBV0qp3S5OZoh0ZqvHBhc7Nzhzz7XX6+S4Ios7vDzRd2+J+fyG8kfbORqxT3+qZMFZZeK6id+/q6LX0ahu8DYWfZEwOph2VHXWRCzJMxitfAsSLOuKmWc+RY5qqN6/5TaXR9WQAq+2GZYw/hPe6RwQ2z84LnpIxyWnp5NE8ox0S5dHG8GjpBNdhKGZM5Fpk0OAdG4U2ZBBXz1xnJYqRMXIPrDZQYDNgyUbGV2oq9Xxr+E/A9ZaV3o+7G78oYognl2nNlJT60xGm5nkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4c38jKzZzL1YLNMypixVtDvWLs5M48WiAq9DnHYbgF0=;
 b=PCUrxb3+gxvFoeqvpEKV5hU7fgm3eUCKqaaXwNfpGI//xVyN/1QhzwDqh7+fwVJj0EzYZhob2VcQji4HqKUNZswQYOgmdFnZ2CokyQkDZCkS5H3d+OG8kqcPFkD93PDNcy45k2OGYGLoyW2cW2ru3PIN+4cdpdjxC4XstqiRZ8vE/5G0Mhk2VThwbe5EzbzGmVjkY/+WKqbUWcaJAbdJgZsfdAuJzN+qV3jyexiQ+f9rc+4QL/mInEaZ7AF94ZjMijeoCe9+Xpz0XNiHadSi2Rjo2bkYOZOKSMHjUh33hVZL1kzcooFXzIpqxhTRJUsFt6brfGamfZpC0SINEZa/Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4c38jKzZzL1YLNMypixVtDvWLs5M48WiAq9DnHYbgF0=;
 b=qHFp4kZvRqmVXPNTROLOtdAmmtT/QyMPINBM4JJdGTtiHzZNEROhpFb5z1dj2J9wAGTL1J7815R7asjO12g0+MIJ4muMx1CYPQI3QHwAPhwpVzAoalW/h+OlO4JWn1aUMaNctzQzSjmeQxCbQ2EUboNAFQ5nZfBDrmWEOJYHgoc=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3872.eurprd05.prod.outlook.com (52.134.5.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 13:18:16 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 13:18:16 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan @ agner . ch" <stefan@agner.ch>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?utf-8?B?TWljaGFsIFZva8OhxI0=?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v5 00/13] Common patches from downstream development
Thread-Topic: [PATCH v5 00/13] Common patches from downstream development
Thread-Index: AQHVXNnirAUAmshgM0GrJ2yVzzun2A==
Date: Tue, 27 Aug 2019 13:18:16 +0000
Message-ID: <20190827131806.6816-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0031.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:14::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4fc8600a-51f8-4d88-7216-08d72af10555
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3872; 
x-ms-traffictypediagnostic: VI1PR0502MB3872:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB38728A19B912DF5E5DB53C61F4A00@VI1PR0502MB3872.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:619;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(346002)(39850400004)(189003)(199004)(8936002)(66946007)(2906002)(5660300002)(50226002)(54906003)(110136005)(316002)(14454004)(1076003)(561944003)(14444005)(256004)(64756008)(6506007)(386003)(7736002)(478600001)(36756003)(53936002)(66556008)(6116002)(66066001)(66446008)(3846002)(6436002)(476003)(2616005)(486006)(6512007)(26005)(305945005)(102836004)(6486002)(71200400001)(186003)(8676002)(86362001)(81166006)(4326008)(71190400001)(81156014)(66476007)(25786009)(99286004)(7416002)(52116002)(44832011)(21314003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3872;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: x2vV1BoMOXB0f49Jcumk4GwxWp2E6wKD184vmfI/rYZ9KzjMpjCSWkN7DaMmLQ5btEqzaEq60H3e6OYlg8+ZbV/sfUE46cFuMRpKaXovpQa/UZeSKvWJPBPBitGlailPtvkaruNlIQ8wyNobr5oFciU63fLLkfSqP+EuV5JH41Wh9WFSNJua/Au5jxSO+2s+oSkfjNKb4QunvxdzHw/r7lEXi7vA8GldvfoEGrxlMCcn49ej7loIA0ZWP6YM5PEabAgeS1X1jt3dPeJ1O5NWGKWy3HAnOEQzcfWOd1u7Dfx6VRHhvV3EWjyR6FXl0lX6dzWGCHV417aPpiJ+JIU2ExnaspfTbXFSj14b+K7cjoJP7HsB02Rq/kixfRwz2EMcIWwHUp0Oc68EoSWeCI7CvuC+vxOVF6W0Rb8gKYskQh4=
Content-ID: <E9D7C2CC8883B8409492F23CF1D14A42@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fc8600a-51f8-4d88-7216-08d72af10555
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 13:18:16.3434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YaiWVF6wJYk43u0xnVVMJxiA+qzAJpFAk4dVOaRPH2UYq95qv9xKHQw/ukv2WYHuOlRAhVgNv4gE3h4oKdBwrocb447Pi4e/2MKkZutQBHM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3872
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061823_854332_43E7CB68 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.114 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This patchset holds some common changes that were never upstreamed.
With latest downstream kernel upgrade, I took the aproach to select
mainline devicetrees and atomically add missing stuff for downstream.

These patches I send here are separated out with changes that also
have a benefit for mainline.

--------------------- Update version 4 and later -----------------------
Patches that got pulled in an earlier patchset version got dropped in
this patchset.
------------------------------------------------------------------------

Philippe

Changes in v5:
- changed legacy gpio-key,wakeup to wakeup-source
- Add note in commit message about disabled status
- Added Olek's reviewed-by
- change group name
- Add pinmux to iomuxc
- Adjusted commit message
- Switched to consistent naming: pinctrl_xxx: xxxgrp
- Added Olek's Reviewed-by
- Added Olek's Reviewed-by
- Added Olek's Reviewed-by
- Added Olek's Reviewd-by
- Added Olek's Reviewed-by
- Add Olek's Reviewed-by
- Added note to commit message about disabled status
- Add Olek's Reviewed-by

Changes in v4:
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Add Marcel Ziswiler's Ack
- Move can nodes to module deviceteree include imx6ull-colibri.dtsi
- Add Marcel Ziswiler's Ack

Changes in v3:
- Add new commit message from Stefan's proposal on ML
- Fix commit message
- Fix commit title to "...imx6-apalis:..."

Changes in v2:
- Deleted touchrevolution downstream stuff
- Use generic node name
- Better comment
- Changed commit title to '...imx6qdl-apalis:...'
- Deleted touchrevolution downstream stuff
- Use generic node name
- Put a better comment in there
- Commit title
- Removed f0710a
that is downstream only
- Changed to generic node name
- Better comment

Max Krummenacher (2):
  ARM: dts: imx6ull-colibri: reduce v_batt current in power off
  ARM: dts: imx6ull: improve can templates

Philippe Schenker (9):
  ARM: dts: imx7-colibri: Add touch controllers
  ARM: dts: imx6qdl-colibri: Add missing pin declaration in iomuxc
  ARM: dts: imx6qdl-apalis: Add sleep state to can interfaces
  ARM: dts: imx6-apalis: Add touchscreens used on Toradex eval boards
  ARM: dts: imx6-colibri: Add missing pinmuxing to Toradex eval board
  ARM: dts: imx6ull-colibri: Add sleep mode to fec
  ARM: dts: imx6ull-colibri: Add watchdog
  ARM: dts: imx6ull-colibri: Add general wakeup key used on Colibri
  ARM: dts: imx6ull-colibri: Add touchscreen used with Eval Board

Stefan Agner (2):
  ARM: dts: imx7-colibri: add GPIO wakeup key
  ARM: dts: imx7-colibri: fix 1.8V/UHS support

 arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  | 39 +++++++++++
 arch/arm/boot/dts/imx6q-apalis-eval.dts       | 13 ++++
 arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts | 13 ++++
 arch/arm/boot/dts/imx6q-apalis-ixora.dts      | 13 ++++
 arch/arm/boot/dts/imx6qdl-apalis.dtsi         | 27 ++++++--
 arch/arm/boot/dts/imx6qdl-colibri.dtsi        | 17 +++++
 .../arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 38 +++++++++++
 .../arm/boot/dts/imx6ull-colibri-nonwifi.dtsi |  2 +-
 arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi   |  2 +-
 arch/arm/boot/dts/imx6ull-colibri.dtsi        | 64 +++++++++++++++++--
 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi   | 38 +++++++++++
 arch/arm/boot/dts/imx7-colibri.dtsi           | 30 ++++++++-
 12 files changed, 280 insertions(+), 16 deletions(-)

-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
