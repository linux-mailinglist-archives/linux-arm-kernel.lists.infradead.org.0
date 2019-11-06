Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94506F1197
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 09:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mck+FD6AtmQAaaGUJ8qRyTxFg0mzG2xRwRMa/pj9u3Y=; b=aWWMMLfQFdkdEZ
	z73coZxXHxlG8Kgl3aalQ7S+WBF4HCh4W3lxEcYnvoNpGze1zKvICNautLjuHvFrC82T8lui2vs8/
	NcIwanMVqhoKlCJWV8S89Cc1Xpzr6LUfI31h27JdgJ9wxeoZFnsbhXK2WJrcmjOhc3RLH9qz+uLkA
	2KqjQcmdAO4iENfVug8y8ubhSFAGqkVdHs7CKb8/S5tZ7tm3izAmIpdygw3sUJwXFTzoX4RrpQNWh
	WW55SZdoVEuWPtFCd0GfU9evmpEXAU+Mj5nViSp7pXZfzRgpj/Xps0MoWj0ueny9bt3AJ7zVHboQU
	+AHp7ViI65Kl0U63H44Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSH9K-0000gG-Gq; Wed, 06 Nov 2019 08:58:46 +0000
Received: from mail-ve1eur03on0700.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::700]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSH9B-0000ea-Fz
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 08:58:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T6ZvDjEjw9w1qf7QtBppmv3j0MwW727436goJUs2+qPZvlPnQN2xi5joRd2sUEZRUT0mBtDbnq7MwotOF5tmU0SvxEp9kSQMNNjaDnJDNUe2Vc1psTul/PI8AYqYvoN7e6WhvoOhQN6oWWlI9z7DishFUNtC+yUEIRrW3WdAS7LFsOtlzNFIuXEXZvoLDINB+rxRu8zqGvPVPgWGjHOM1r/8pe9sMLWFlKo9y6jF1Rl1AwccEqvxhbmJrREAcVtaVfb3egw/hDiFcFYu6uOUj4quqY8j+Z09vmrWzJGtkhcA9huzbuDzivZR2rXZIQCWpvsbndd2pT7YO5wxfVN2iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Too3ny17LSAqPtNW38ym6QAB7oLVKAUqAlvOEcwZDgE=;
 b=TwYQ0GR8YXAM+bfGam0Uixb2Pt4tiRnlbFSLOJGARKVpg6a1dCROtE+lizJ5fRQxDrFwy9SWmVqkDT0Yc+UlxJ8U+SFovduf6J24c4d5A6HipGV41W3dHglZMn7NuTZ5dF0Me+hsLrgWGKhPSQM1PImEpYLRMaIiRNnToY8rUu2z8FW337fKIXhes0PzsfOpgv9lR1GIbzmJPlaIarg3ioQvs+cBaH9CuUm8dBRmCOmbVsUuMchP00oDf/FBhW7MuUfLB3iwCNE11+aiXPQnr4zr3fYdBHjC5yVVEWVPepoRUft1+7QMMIQwYBGoHNfdsKBKI/cdn2wJ+zeZDNUXrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Too3ny17LSAqPtNW38ym6QAB7oLVKAUqAlvOEcwZDgE=;
 b=YLOS1Ti9qqwHUpBR7BMWlABEijJOciEa2UjGO5SfoJ1blkO3XaebHrlBc2xksG5e5MCWUTGkBWWw20x9qeNOkoyEcnEFxJrnP/EuVvz9xuke6g3jXbLscyXiZBOpb0yNhWsWsqPVl+j0uZgu9qtrCPtTgLGdzJNH3HdAGX9yejc=
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com (20.179.27.139) by
 VI1PR05MB5726.eurprd05.prod.outlook.com (20.178.121.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 6 Nov 2019 08:58:25 +0000
Received: from VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::284c:b89e:d17e:794e]) by VI1PR05MB6415.eurprd05.prod.outlook.com
 ([fe80::284c:b89e:d17e:794e%7]) with mapi id 15.20.2430.020; Wed, 6 Nov 2019
 08:58:25 +0000
From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
To: "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>, "robh@kernel.org"
 <robh@kernel.org>
Subject: Re: [PATCH v2 3/5] dt-bindings: input: tochscreen: ad7879: generic
 node names in example
Thread-Topic: [PATCH v2 3/5] dt-bindings: input: tochscreen: ad7879: generic
 node names in example
Thread-Index: AQHVi9xiBbTK4Mn9XEC/Bt3TYQb1MqdzPkqAgACY4ICAChHOAA==
Date: Wed, 6 Nov 2019 08:58:25 +0000
Message-ID: <c200444ba450d7884cd26e12163b68db6db63725.camel@toradex.com>
References: <20191026090403.3057-1-marcel@ziswiler.com>
 <20191026090403.3057-3-marcel@ziswiler.com> <20191030140455.GA4544@bogus>
 <20191030231205.GI57214@dtor-ws>
In-Reply-To: <20191030231205.GI57214@dtor-ws>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=marcel.ziswiler@toradex.com; 
x-originating-ip: [31.10.206.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba6d87a6-bae4-4e47-c848-08d762977bfe
x-ms-traffictypediagnostic: VI1PR05MB5726:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB57266BBFB9FA77D46022EF84FB790@VI1PR05MB5726.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(396003)(376002)(136003)(366004)(39850400004)(199004)(189003)(305945005)(66476007)(6436002)(66946007)(64756008)(66446008)(76116006)(91956017)(76176011)(256004)(71190400001)(71200400001)(446003)(14444005)(66556008)(6486002)(6246003)(229853002)(6512007)(4326008)(5660300002)(6116002)(3846002)(8936002)(110136005)(54906003)(36756003)(4001150100001)(99286004)(118296001)(81156014)(8676002)(81166006)(4744005)(7736002)(2906002)(2501003)(316002)(486006)(6506007)(66066001)(102836004)(86362001)(2616005)(11346002)(44832011)(476003)(478600001)(186003)(14454004)(25786009)(26005)(41533002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5726;
 H:VI1PR05MB6415.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z6Qp4CxdtTi/vbLr1xXBAST9yPtlLtHkwyaKNyzbztgqIWU8kXGoVNob0UYlRL9+wCAnVSzTW0Pw8i2n+sEMgmRK0vIV2WU1xptvjrnWkCn0+zFkZvJ1SJUju5SjDIQT+R5vhUTjxn4NHgFPEr4yb6Pa+HeCPFWRdUlqZbkjXf/ljseu1HBo1G9DeeW/GhnV/PnDm+d8rnFl1mhJCEZCU9T60o9cU01r4HYnV8T9djvL94mQjJJyc2jazKvC01WlBvx5m468XW7SnkNm5tc5K9IgfZUulvE8tE/0s0oJyX3TNTQQpwlUHDP5ZDLICDj+SxUQiDc65Z/+QeJfBcRYmiLww/yaibKEUBJaCqhK7GwlhNYYm1n5cO/RHtEdAYAW0wJkKa26eySXRsbdLGwdErh4peFKUKqkd89WSBObm/DQi6pYBLpithj9fH1Zhv10
Content-ID: <AC973709B0891240854066BF948668E0@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba6d87a6-bae4-4e47-c848-08d762977bfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 08:58:25.3544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TxzUAEeYSPRa13PsNQ0K08Njap6d6louXUi7ZZ3S6KPw8uWChbBqhvZcFOUWtdmx+n3UxLE/6O+CQcs3VAK+TOQL2dEs0DMZ1lOWKLOeoeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5726
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_005837_534966_EE0D4512 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:700 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-10-30 at 16:12 -0700, Dmitry Torokhov wrote:
> On Wed, Oct 30, 2019 at 09:04:55AM -0500, Rob Herring wrote:
> > On Sat, Oct 26, 2019 at 11:04:01AM +0200, Marcel Ziswiler wrote:
> > > From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > 
> > There's a typo in the subject.
> 
> I fixed it up file applying, thank you for noticing.

Where exactly did you apply this? As I still can't find it applied
anywhere. Thanks!

> > > Update example in ad7879 devicetree documentation to use generic
> > > touch
> > > controller node names.
> > > 
> > > Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > > 
> > > ---
> > > 
> > > Changes in v2: New patch.
> > > 
> > >  .../devicetree/bindings/input/touchscreen/ad7879.txt          |
> > > 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
