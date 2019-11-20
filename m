Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB8A103D48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 15:30:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=M4OO6PUbf8igphXn6551T7E03yDQ+nT50iL46R4TUvY=; b=OAQkAmCo6R/UEt
	sG76r47uWaDTclpowXPyN4byPSCKkwmcKwsICxlvYFmjZCi+ITKYAtcG7uJF7j2WshXoc9jTXq9nb
	obwT+O4Ixsz9YhPvqjEUfDnzu6oxTeOfYtgRneukpuTjCIkuzx6/tSIXbiqKjrRSE4mrEvFjENIxT
	mfVoI68zfg7cx30r7S/FjIZsqdasG36pEB6rwpH8UWyWBHkvTNAubWB55v2QDivGn8yJTYDlG5653
	iVZaaczPs+6whMsKdmoMjmtjVMyVdDlAUqX55SF0gBQ6oMJE7aUbvvMyU/JCuouQi7mDcai/foui+
	PFh/PAtmUw6ZUL1XYbmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXR0E-0001Ec-BK; Wed, 20 Nov 2019 14:30:42 +0000
Received: from mail-eopbgr150052.outbound.protection.outlook.com
 ([40.107.15.52] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXR05-0001E9-Tu
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 14:30:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BaS/VmU3rKOh0JqdNvxNRuVqkon8pg43W8ta3ONRMLMpR5f9l9nb8kn6t9XkqdBBTv3C4tgVycTWMCQm8iqL5gzrAnVeAfCDAf1aEKCQGWEJesHQch7SHCogQ1AXbna5TiNLRCw7vGInToVbeLe4TP7kjv93jHXsazjd4CcJDc3PHgVvbm668yxxOlFY7rm5aCykmMfeHnPiNjrBnlCloCRD8OYYdOF2S7q2XsyJUtTLziKyvfpawBNZfQ7G9wynEGxNbo0bYlqjENO3xxh8xdH4HfSOhl7KDMYlBji8huGdJCRxm891aZ/9wyxIh+VuH+LGLc+1cELSpzr4AeAXTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R6fbpwxcECZPnKh2clpW3kRFVgUf4g0hAqWqBZG2Oz4=;
 b=l0nV7InMv5UyVUjbyWCxuX/AwccFvFNUSZYdouH1WOOoi2fuVdHHj7RKmeg47PbPYzmHe5exhzBg9Rhc1Vb3/zHa/0a8bbRoMAU8ImW8TGV1ussPuiGbe+GWQJWm2LzXoB3TfvMeJsIVIsEgvU9wrDim8Dv0grT2gvhLlUkCOjIOg1H2yBJwgqhPHZCglq3+l8pzV7g6hJjoRKQ74dwA1dBxOalXBPpA4pStkXv/UlbreiKhfttrAcE/B1YU9t99C8QYE0Jl0d4Ke0UFKmZJgGN8/mAM7Z9b3kbHvnMQzPjAh6GZqrPdfnH6bSdFFwWRvtTKbeyPAfwL2bSPzSVvvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R6fbpwxcECZPnKh2clpW3kRFVgUf4g0hAqWqBZG2Oz4=;
 b=aULmRl+/uNJyPgxO69XePj3iYwZ9b4WR4wI3YClQgb68JJcnskUFQKyv+nGm0MVa2V/j+os6GccW72vg6X08ylEXRQ6e1ntJVS2J6JvrD2Xocn3hhfy1rzEUvKoY2EsITVK9+bmdLZqRluzN/HMS2n1331GX1CZ2mQRyPbKNyQQ=
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB3344.eurprd04.prod.outlook.com (52.134.8.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Wed, 20 Nov 2019 14:30:29 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::89e1:552e:a24d:e72]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::89e1:552e:a24d:e72%3]) with mapi id 15.20.2474.018; Wed, 20 Nov 2019
 14:30:29 +0000
From: Horia Geanta <horia.geanta@nxp.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] crypto: Fix Kconfig indentation
Thread-Topic: [PATCH] crypto: Fix Kconfig indentation
Thread-Index: AQHVn6haznq8vw1WjUKSyFyRA7fljA==
Date: Wed, 20 Nov 2019 14:30:29 +0000
Message-ID: <VI1PR0402MB3485BE88F8060AF214FE56CD984F0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
References: <20191120134221.15774-1-krzk@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 87407e04-47f6-49bd-bf1b-08d76dc6313b
x-ms-traffictypediagnostic: VI1PR0402MB3344:|VI1PR0402MB3344:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB33443C0EF64296BBEA26CA0F984F0@VI1PR0402MB3344.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(346002)(376002)(39860400002)(199004)(189003)(2906002)(14454004)(476003)(53546011)(8936002)(305945005)(74316002)(7736002)(76176011)(91956017)(66946007)(25786009)(66066001)(6436002)(558084003)(6116002)(54906003)(81166006)(66446008)(64756008)(66556008)(66476007)(110136005)(3846002)(316002)(8676002)(86362001)(81156014)(52536014)(99286004)(7416002)(33656002)(2501003)(76116006)(6506007)(478600001)(7696005)(6246003)(446003)(71190400001)(71200400001)(102836004)(26005)(256004)(186003)(9686003)(55016002)(44832011)(486006)(4326008)(5660300002)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3344;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IYJI/cbKZhmJLD2KkzEqUAYtAlCXOdeeT5CfNlKgGgc6ogKalUxg/zmDu3tMw7ZABz3//x9vXdJvJbcD2zOrl5Yqbqas4uIOE3Wbx85XlmYbwXviF39bXygkeqYrWigBMzCL8DkitpNCX00BD0Q+WL5nWUIOJa552T6tctjPQ3R9ZQaHMtLC86sGUm+v2zoWG68d/6kmp43PzPMgCkHTwOO/gXc/SAgiyTi/kvPtXy7u48hIl2wnmbX2pZGDJjS6wOtiTrvCkYUg0LGVo48JoDMWDyNEV62fy63zp7xTq9CgTSFPSnbQ+6P8ScOD0l40g2MaYfKwVhbrCjKzYy8nTELwuuR/OjZf+rBYWJEg0dZwHJloDYuuPCqsmWXha9v3olJOumYmmromytal40CPVxMIO4z9MubUGlOd73N0uHF/6nuxCvSWTC6C0UigEj2x
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87407e04-47f6-49bd-bf1b-08d76dc6313b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 14:30:29.2026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pzc5eUsN7Mov9hzlv6L3SQRge0EMpabbM0dpHvc9EAJDRIXypUsAU84YltoHsHTLujRo+apmkDTTgkRhFXaQwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3344
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_063034_109336_B10B4112 
X-CRM114-Status: UNSURE (   5.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.52 listed in list.dnswl.org]
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
Cc: Aymen Sghaier <aymen.sghaier@nxp.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Atul Gupta <atul.gupta@chelsio.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/20/2019 3:42 PM, Krzysztof Kozlowski wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
> =

> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Horia Geant=E3 <horia.geanta@nxp.com>

Thanks,
Horia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
