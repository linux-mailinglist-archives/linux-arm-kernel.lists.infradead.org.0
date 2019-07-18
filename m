Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD65C6CA3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 09:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l0z16VAUe1ACRJtoMKvfC4dUEFgqkuHcz21AA4CAhcs=; b=KDDLmys2WctNklZDT1rjLadc+
	UDCrAz4OEVFBU6xylXTuxFLzrtCbNl7HY+zzLgmk/RQmRtuSsDeuokeb6iZmK/CQnsbu7Ug6KCZCm
	ce8NqKbl9n5JMT5oL/JoA5xfNHfegFdhy58IQRaQFzCdBfcBXDiTnugoeK8agb0n/eBAGc/+fbvhl
	6Mj3ilyez4+Nr61QxKqokqMI+ZbpERIzXPGdZ1BDjlIM+gkpQ7JYMdL/AqLiyztZoHZKXVB8BNe8d
	o5piJf1tyHawzfuZ8LLfIwvISaZ2pkhg8wn+JG13IyJA6473EWveea1tXkFNbPoAWYkEvLKeOp4NO
	AKbhMk9bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho19l-0003ap-Ck; Thu, 18 Jul 2019 07:48:49 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho19M-0003Xb-6R
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 07:48:26 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7333AC29A2;
 Thu, 18 Jul 2019 07:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563436103; bh=QugKmvf6S8+ycrpSPe05DwVbg0VDA8Ck6/+8PQW5dIs=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=aoOgBPZcOE2XBAWbSAIB2Au/c71APjFCE0MHf5OOVG3et1eefMh3rs479cdrL8Rwg
 n7yoYdA64XCBKJA/0ZMeFpQHQ7w5Lcgkc8Ekol4Jnih1Zn32SnHA3qs5iMktL7xtFI
 zm30+GVTeuul0JyWMIswDeK2Q6rrYZfMlTWCT5S3VQpLETlVz2j0YYvAwsdgEe/Wlk
 wfzERfGhE5rbwMxvL9YJdyvKcMfK93hoQME1taSlrdEXFEbxI0OKQGGILLtENkXZaW
 ETAr7BQgqO1PJfwU2gOjhWuPt39fOEXG0csyRHZFCzlWpWivy+i/Dm5SkFrVq++IM2
 T86QtQMpSSuYw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 0C1FEA00AE;
 Thu, 18 Jul 2019 07:48:21 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 18 Jul 2019 00:48:05 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 18 Jul 2019 00:48:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GQvy0/F6+Dx2sJCORpJkW/c7T8PE5/sA65NbQyfneCydBnj7YpCnZHTmO7n/L49g+pjIJHjHqdWfnOu/IoCFPwejbyF2LvRpDu/WsdFmQcRhVMASqDyk1z9jUyb5PcNgur/WQZn4W2nmW8isjVdQ7UAcJMxCiFdPwdmPYWNRhy0GYId7PJmdqJaIgNn1JDXkoh7S4EwEm6MaSCmY+U3zlNWL5PLW5WfxJy8gciGyMjaRrDXbd8bJvKR5FZIXSubLETUSfud/vVqmhCI0vXlYkLMwJ65Brz6MYr8n9t20xJbH4Ta6LDU4JGN26ihC3Al/f4cP5yn0ZtdIJmgCCCI66g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NHEP5QXXQmd1XBmwU2qqonOpM4OdH8C8Q3hpgMVIdJM=;
 b=bgF10WUoX2YXvu3K8hvt+39GTE1t+Yw0l+mZCLpzp9HEAJZhV7rz0qtZ1pj5bvRSWyt3Is1UnBC6HtuMi90y8xDvclF0c2S5QmtAJWzAD6O1KUIUv58PHtFcoe34tyu7nJkwqUFlxdnxFp9NrKBscFc4idUj7htcSv9MDOlTKP2OfPcOBAmky/wJSajao28l3iBqjoQtDAon8yekWdYcG5LuvxtfltvqkrgH7LDYjjFx3507pFo17Oo1JFv6oAuz/dcG+1fzfQOr1j/8HQ2zloPm9HnokNFNLnS8f80XaWnOGZo7IhoQurYnjJlSAzN8t3mc49ZkVM3PkogtkjT4qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NHEP5QXXQmd1XBmwU2qqonOpM4OdH8C8Q3hpgMVIdJM=;
 b=Ttz0JbRfeOoEP1c0osxn/THKN0Dn87NyLeqzm0rBSglOW4YNaB7n30PF5wpe2kMm8gPGSxwvbOH34TaLGqQ/5L5Kp5o5SJQpzTjgcPKfn+hjhWX9g+UmfoeQkQ1xzdnqIQiuGahF0D3T2Hy1qdtKwzrPyOHyz8x+lCAzBr2N++8=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB2993.namprd12.prod.outlook.com (20.178.208.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Thu, 18 Jul 2019 07:48:04 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d%5]) with mapi id 15.20.2073.012; Thu, 18 Jul 2019
 07:48:04 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jon Hunter <jonathanh@nvidia.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abPQEOAgADTx+A=
Date: Thu, 18 Jul 2019 07:48:04 +0000
Message-ID: <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
In-Reply-To: <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b8b7985-8821-401e-eb6c-08d70b544431
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:BN8PR12MB2993; 
x-ms-traffictypediagnostic: BN8PR12MB2993:
x-microsoft-antispam-prvs: <BN8PR12MB2993192F026590B5B73A9D2ED3C80@BN8PR12MB2993.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(136003)(366004)(396003)(346002)(376002)(189003)(199004)(76116006)(6116002)(5024004)(66616009)(71200400001)(71190400001)(3846002)(66946007)(66446008)(11346002)(6506007)(7416002)(66476007)(64756008)(66556008)(99936001)(25786009)(8936002)(33656002)(102836004)(54906003)(2906002)(6246003)(486006)(6436002)(446003)(76176011)(316002)(110136005)(81166006)(2201001)(81156014)(476003)(5660300002)(7696005)(14454004)(74316002)(68736007)(53936002)(26005)(52536014)(8676002)(256004)(478600001)(7736002)(55016002)(2501003)(229853002)(305945005)(558084003)(99286004)(9686003)(186003)(66066001)(86362001)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB2993;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HeBZt9EonZX0iOCDYZKK4MWvM51cygwNwq5TGP+0cH/xlsFpw1ZMwjkjlFpTfDAPxl5rlexF+VazY7rHDG26h9i8Lg8uAwTKMcQY3Nvo7fCnAxH4JaQDGo67QdRDOfjFnbTmX6cz/GzwnlxSEERBHcbMnrlysccLPdzoWKGp2CjNq4ty6o9jf1MPJ6t5uCoh57w7kCRxQebuiHfoL5R+bLQuIQcPz90OiHu8D3jlGCbGT28h8i1TiTQlTv1uCKEqdhtoPBXBfNB/toy++gnJDQ0IV27NVcYAB6KDCCcDJhwl1CIa6A01FspBDBflVN8GuvEpFpj03imgr6146iUw8F2LpEWwcwWB6jyfyJWJ62LBWZck4IFOfheZ45SYenGA/8PF+B0Zy5LU3/dXkfVE4KqP+TRXiQ8kwkORObbUpxI=
Content-Type: multipart/mixed;
 boundary="_002_BN8PR12MB32661E919A8DEBC7095BAA12D3C80BN8PR12MB3266namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b8b7985-8821-401e-eb6c-08d70b544431
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 07:48:04.3036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB2993
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_004824_726952_31FE1F8D 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--_002_BN8PR12MB32661E919A8DEBC7095BAA12D3C80BN8PR12MB3266namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogSm9uIEh1bnRlciA8am9uYXRoYW5oQG52aWRpYS5jb20+DQpEYXRlOiBKdWwvMTcvMjAx
OSwgMTk6NTg6NTMgKFVUQyswMDowMCkNCg0KPiBMZXQgbWUga25vdyBpZiB5b3UgaGF2ZSBhbnkg
dGhvdWdodHMuDQoNCkNhbiB5b3UgdHJ5IGF0dGFjaGVkIHBhdGNoID8NCg0KLS0tDQpUaGFua3Ms
DQpKb3NlIE1pZ3VlbCBBYnJldQ0K

--_002_BN8PR12MB32661E919A8DEBC7095BAA12D3C80BN8PR12MB3266namp_
Content-Type: application/octet-stream;
	name="0001-net-stmmac-RX-Descriptors-need-to-be-clean-before-se.patch"
Content-Description: 0001-net-stmmac-RX-Descriptors-need-to-be-clean-before-se.patch
Content-Disposition: attachment;
	filename="0001-net-stmmac-RX-Descriptors-need-to-be-clean-before-se.patch";
	size=2042; creation-date="Thu, 18 Jul 2019 07:46:13 GMT";
	modification-date="Thu, 18 Jul 2019 07:46:13 GMT"
Content-Transfer-Encoding: base64

RnJvbSAwMGJmZGU2ZjU4OWU2MGJhMWEyZDA2NzFjOGJhMGZjZDA5NjRkNmU3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpNZXNzYWdlLUlkOiA8MDBiZmRlNmY1ODllNjBiYTFhMmQwNjcxYzhiYTBm
Y2QwOTY0ZDZlNy4xNTYzNDM1OTI3LmdpdC5qb2FicmV1QHN5bm9wc3lzLmNvbT4KRnJvbTogSm9z
ZSBBYnJldSA8am9hYnJldUBzeW5vcHN5cy5jb20+CkRhdGU6IFRodSwgMTggSnVsIDIwMTkgMDk6
NDI6MzEgKzAyMDAKU3ViamVjdDogW1BBVENIIG5ldF0gbmV0OiBzdG1tYWM6IFJYIERlc2NyaXB0
b3JzIG5lZWQgdG8gYmUgY2xlYW4gYmVmb3JlCiBzZXR0aW5nIGJ1ZmZlcnMKClJYIERlc2NyaXB0
b3JzIGFyZSBiZWluZyBjbGVhbmVkIGFmdGVyIHNldHRpbmcgdGhlIGJ1ZmZlcnMgd2hpY2ggbWF5
CmxlYWQgdG8gYnVmZmVyIGFkZHJlc3NlcyBiZWluZyB3aXBlZCBvdXQuCgpGaXggdGhpcyBieSBj
bGVhcmluZyBlYXJsaWVyIHRoZSBSWCBEZXNjcmlwdG9ycy4KClJlcG9ydGVkLWJ5OiBKb24gSHVu
dGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4KRml4ZXM6IDJhZjYxMDZhZTk0OSAoIm5ldDogc3Rt
bWFjOiBJbnRyb2R1Y2luZyBzdXBwb3J0IGZvciBQYWdlIFBvb2wiKQpTaWduZWQtb2ZmLWJ5OiBK
b3NlIEFicmV1IDxqb2FicmV1QHN5bm9wc3lzLmNvbT4KCi0tLQpDYzogR2l1c2VwcGUgQ2F2YWxs
YXJvIDxwZXBwZS5jYXZhbGxhcm9Ac3QuY29tPgpDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFu
ZHJlLnRvcmd1ZUBzdC5jb20+CkNjOiBKb3NlIEFicmV1IDxqb2FicmV1QHN5bm9wc3lzLmNvbT4K
Q2M6ICJEYXZpZCBTLiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxvZnQubmV0PgpDYzogTWF4aW1lIENv
cXVlbGluIDxtY29xdWVsaW4uc3RtMzJAZ21haWwuY29tPgpDYzogbmV0ZGV2QHZnZXIua2VybmVs
Lm9yZwpDYzogbGludXgtc3RtMzJAc3QtbWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbQpDYzogbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1rZXJuZWxAdmdlci5r
ZXJuZWwub3JnCi0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvc3RtbWFj
X21haW4uYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1h
Yy9zdG1tYWNfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvc3Rt
bWFjX21haW4uYwppbmRleCBjN2M5ZTVmMTYyZTYuLjVmMTI5NGNlMDIxNiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvc3RtbWFjX21haW4uYworKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfbWFpbi5jCkBAIC0xMjk1
LDYgKzEyOTUsOCBAQCBzdGF0aWMgaW50IGluaXRfZG1hX3J4X2Rlc2NfcmluZ3Moc3RydWN0IG5l
dF9kZXZpY2UgKmRldiwgZ2ZwX3QgZmxhZ3MpCiAJCQkgICIoJXMpIGRtYV9yeF9waHk9MHglMDh4
XG4iLCBfX2Z1bmNfXywKIAkJCSAgKHUzMilyeF9xLT5kbWFfcnhfcGh5KTsKIAorCQlzdG1tYWNf
Y2xlYXJfcnhfZGVzY3JpcHRvcnMocHJpdiwgcXVldWUpOworCiAJCWZvciAoaSA9IDA7IGkgPCBE
TUFfUlhfU0laRTsgaSsrKSB7CiAJCQlzdHJ1Y3QgZG1hX2Rlc2MgKnA7CiAKQEAgLTEzMTIsOCAr
MTMxNCw2IEBAIHN0YXRpYyBpbnQgaW5pdF9kbWFfcnhfZGVzY19yaW5ncyhzdHJ1Y3QgbmV0X2Rl
dmljZSAqZGV2LCBnZnBfdCBmbGFncykKIAkJcnhfcS0+Y3VyX3J4ID0gMDsKIAkJcnhfcS0+ZGly
dHlfcnggPSAodW5zaWduZWQgaW50KShpIC0gRE1BX1JYX1NJWkUpOwogCi0JCXN0bW1hY19jbGVh
cl9yeF9kZXNjcmlwdG9ycyhwcml2LCBxdWV1ZSk7Ci0KIAkJLyogU2V0dXAgdGhlIGNoYWluZWQg
ZGVzY3JpcHRvciBhZGRyZXNzZXMgKi8KIAkJaWYgKHByaXYtPm1vZGUgPT0gU1RNTUFDX0NIQUlO
X01PREUpIHsKIAkJCWlmIChwcml2LT5leHRlbmRfZGVzYykKLS0gCjIuNy40Cgo=

--_002_BN8PR12MB32661E919A8DEBC7095BAA12D3C80BN8PR12MB3266namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--_002_BN8PR12MB32661E919A8DEBC7095BAA12D3C80BN8PR12MB3266namp_--

