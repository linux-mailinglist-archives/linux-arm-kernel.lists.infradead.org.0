Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56C0173DB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFE+JpDsOhb+WJCxCwDe9A3xPq7E/vJpOS5z56IwjFw=; b=HmpCCMmVotUdoL
	TBZUO1GQIHg/xNAepOVmGWjx5XaUK9JUT5yHxvkig8pt79THrSNBWQfySBFdga/EYPfmkyB1vX6Bt
	BQwLYgG2oML9vw/lyPCpjEwIDO/3zLJB9ew1jTjARzdC4PW+WR/KCjBBJXwmbBh3MscBIjuXJrA5l
	NsbdhTxeNh1QLHo3NwtZuTq8HQaoy5kH5GVcrrVrNcnuyKctGu54dkMF3X0RFrR37VICEc/vxLUGU
	SB45n6to7s//Z4X+TuNcNRhPq5pLfp5AsVx5TqpTUc2sQAZP6RmoAmMCq5Et+FGQzPERsT7r2dRx3
	SxqelvTKUheMZhl/L8uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7iv8-0004y8-Tg; Fri, 28 Feb 2020 16:55:26 +0000
Received: from mail-vi1eur05on2132.outbound.protection.outlook.com
 ([40.107.21.132] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7iuz-0004wl-VP
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 16:55:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jamKoMxzo1/+8oU29mC2Dz1DJxy5YEWMMNoZizPMyYU9nkz6WUyk5JwxtCdcFg3XzJWzL2rxlcowgJwrGukLermyLu2Nr0ICEc6LN3erP+ISiOQIHgHAmnofCXcQvA6wWelBircbN4x8zrafEDWhF+QcqtInTp6ph6kWpldVW6bgPoO72jWLLzDGgAkBlrMTeLSX6JD7WF2wEmvoYK3rxibcRT5BvALBx3+Ka4hmB0RUWvZaeN0xr1l8elLtl5xzHcLPmyD7fNHE6aaxMB3HwwI3+NZBQCV82xQAWZd3cuzWlZ7czORz82rot/E+NH6hz7hEU01ZuNDzIFNdNmWiaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M4d71Obl06XQbfQRE3DWlIYF6n75RT+P73/3960kppU=;
 b=AmkFj1udg+yD4xhsTL1zL5pLUpSB6Il2Ph6bJvmhpbnOtKf83YkZc4pW9XLzyG9Aezy8nE/6op2rSME4yTCWLo1JgzRvFC218k0Z6VoywAk+T4VeBsHCez86+WFXA8CgUeMHF/iVBqVcVaCEgMrDU6ll1VD16I3NigwbY7yaRNlQVad69VHKcq5+rZn+MgS+KODgTwRJlHgQiVs8aGBr8nYqlwvnUdnr7cBIra2oIXfRqXvhQDojrhY1CsYfN2MYfl5odpXxB9JAL9z68lqvGAre58CTn5C2y4o4SoSW+Kilold48a0Cc/FI/YiO9KMZVneJm/G8kWjeBDArUyaD2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M4d71Obl06XQbfQRE3DWlIYF6n75RT+P73/3960kppU=;
 b=GDZKy5wCQHmDt7y50u0r9WxRjJ9KlkXa7qW8stuOg1KXCJJAwypMmE5HaouCJVYWHaFmB1hOlbQcdAAb+rosQNO5Aigr6acjjX9Gmh0okwpemhSE8b9FpAmDrtQN8QiU9CTwP0ylawTLnxxErVSiXwpvoI+md+Yv1OsV0T+jLlg=
Received: from VI1PR05MB6845.eurprd05.prod.outlook.com (10.186.163.80) by
 VI1PR05MB5886.eurprd05.prod.outlook.com (20.178.127.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Fri, 28 Feb 2020 16:55:12 +0000
Received: from VI1PR05MB6845.eurprd05.prod.outlook.com
 ([fe80::c13:1d07:fa02:6eeb]) by VI1PR05MB6845.eurprd05.prod.outlook.com
 ([fe80::c13:1d07:fa02:6eeb%7]) with mapi id 15.20.2772.018; Fri, 28 Feb 2020
 16:55:12 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "igor.opaniuk@gmail.com"
 <igor.opaniuk@gmail.com>
Subject: Re: [PATCH v1 5/5] arm: dts: vf: toradex: re-license GPL-2.0+ to
 GPL-2.0
Thread-Topic: [PATCH v1 5/5] arm: dts: vf: toradex: re-license GPL-2.0+ to
 GPL-2.0
Thread-Index: AQHV6zhumDbfzaMjgUuB9n2COTwjlqgw2TyA
Date: Fri, 28 Feb 2020 16:55:12 +0000
Message-ID: <8a775c784ed587617db8829e1a3532a028e202bd.camel@toradex.com>
References: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
 <1582565548-20627-5-git-send-email-igor.opaniuk@gmail.com>
In-Reply-To: <1582565548-20627-5-git-send-email-igor.opaniuk@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [81.221.74.212]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9f8cc08-dfe4-4aa9-44c0-08d7bc6ef9f2
x-ms-traffictypediagnostic: VI1PR05MB5886:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB5886B7A26ABE3D1BFA187742FBE80@VI1PR05MB5886.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(366004)(396003)(376002)(346002)(136003)(189003)(199004)(91956017)(7416002)(81166006)(26005)(186003)(8676002)(5660300002)(8936002)(4744005)(66556008)(478600001)(2906002)(54906003)(66446008)(6486002)(110136005)(316002)(6512007)(71200400001)(6506007)(81156014)(4326008)(66946007)(66476007)(64756008)(86362001)(76116006)(44832011)(36756003)(2616005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5886;
 H:VI1PR05MB6845.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZkpwCu/fiKkQ8+d5NEKUbELJZOLbDc/yfaJf4J+1eR3nU7yW/Zb/MKAp5iFYqNxVpmpVZHTpBylJkwPdfYczv/JmjJ2w089azPJj4FSmvR+dL6vPRnIqOs0lZe5j+IzcIE79zT1F2/1p5O84ZhNQuo+0Ka46Kf13lfIxTNSLw/6APXXchk3uThweBme7pBkWYYg2VXp8xewgEUKJChiIGMWHELbsu/RQfdE7jHcTSIlyQKmmLcct+vvHn3qDCPT6ZfoOB4Uw8JeSAumXIXFZYeHVijyuKmlPhbgP09qGIJlPQbUC2d1NO7oz1dSYPUtaP+74eTn7mNSuAZSZmX3BCRoCUiV+hRptH799M1sq/se9nxQphrpaUHiiVbah3D/9EYtWPDpcQZyy22SOadDA4v4thlIuB/KzwqBVKVod/GSj0t0KKaqUUlSvK7VXOVvv
x-ms-exchange-antispam-messagedata: MwgZR5oBRRg/KkjwYX6TU8Vw/43I9pXolS3td3rYSYiRRpZESwkDyqgNzbjmsfEOtyE5i5LlYRxI+LBUv6F7FsJKeR1SpiVKkhzHnlPaLye/05Aoja2OsEmFi5dfQgmaRx9pbPjS958XS67/thVmIA==
Content-ID: <6331F9AE5937AB4F9B3FBCCD1A362453@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9f8cc08-dfe4-4aa9-44c0-08d7bc6ef9f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 16:55:12.0410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NNGeFQ0PQafn/5ng6JeKec02eiysO5x/w+CC62MuPODzImIoltzt07OIiPvKiW9EuWAmJZVuwbF7vtdxOfqrXGV/TSXcraZTvqa0HPjynGM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5886
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_085518_013593_27E40BA5 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.132 listed in list.dnswl.org]
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Stefan Agner <stefan.agner@toradex.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Igor

On Mon, 2020-02-24 at 19:32 +0200, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Specify explicitly that GPL-2.0 license can be used and not
> GPL-2.0+ (which also includes next less permissive versions of GPL)
> in Toradex Vybrid-based SoM device trees.

NAK, as stated before.

Thanks!

Cheers

Marcel
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
