Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161046F95C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=4PE7k1ioiJCtCv35I5Nq5DLNQDuWYlzD4xAdkrHVWuM=; b=oaY8M1bs7wMQIt
	8yQ37gL07iDyhdcF52fra4MA2oJBFIbMaOH6iy8Lo371iBwDR2PUSsvw4xwIbMNHiAID1Cd6PHOXg
	j4QAuzrg/ZFvuuwDYulDVn6OaSypWdSg6PihfC0wdXhSsmntkROXytJ5haHaauSfudmLm3kTt7uCn
	7X9EBKHbYO7/DMOzrpoVAXEOkjY4gXmeYZabl0kWHJjDzofYSToE2HyAWkcnlvRhw7v3p4t0ezemt
	Y0heoosXja6Bn0bNmJDVrCJeaJT0uPDzS2uGfd3OB8nte+b7YLODCgNfSGiXuEYqaShu/upJ4tGU0
	vvmBJrT5FjC15d6AHDYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRXd-0006nN-Gc; Mon, 22 Jul 2019 06:11:21 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRXE-0006lO-IN; Mon, 22 Jul 2019 06:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563775856; x=1595311856;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=1z0fPG4ODXUuRK5B2usOH1yIwOkSIaN900JZfbTFX8M=;
 b=dYbrNlmbS5lI1/tsXSOyHJyCcVLg/MfuuBI9sKsS9lpsWW3tEtvBsgTK
 J+nbrrU3wI+YEBU82rjiHb3mGMr0KeaTSRDvZ8UhJDbcdrLQZFDEqUZkp
 Rt5cpDjOAkVP+SJbvMu+xM56D99iaqHfctMXW48BQLEfIbplECc5Sin+0
 Lnn8S0lLiSxxFFvMZzjLpb/pFU+dPl7G2+w12tocdV9wgGd44Q9xjpBcD
 dd6+KYlRHnTznwUvpRtwwaA2KFWhck/zjaADNUzNujN+3bQrg6e1RO8ai
 LLk7DyQySQnZYwpEfLGj4Kg1KJxZDJ3hXaUjfTwZkfQqRhV132T+5Z2k3 A==;
IronPort-SDR: TMsJvBfOFpSpZt+SRvrM/LIgqY8DOU1JclVoxx+It/mNjOj4iq4rBkuiwgAYAWw5R+f5ZJmBJR
 9nfTK+9o/a7Gfm8FvBkoVmZDPPtM6RSmIgt7B/YLHY4mx5+wIJGbl0UlOPD2nnfdnsw2l8BHXT
 ccJ48Wg48dnimvosiDMrMxgLPq7o0hDoWXjN1jiPdeRTasTHQGGENzF27JGIhjWOl/ZOce2CHn
 pV86FrYp6824LuZrmrxKzVnnWNUk2fOLb6R+nvhPXF14VkE3UFRGU01iL/0QM4V74wi4MLrebC
 gww=
X-IronPort-AV: E=Sophos;i="5.64,294,1559491200"; d="scan'208";a="220092472"
Received: from mail-by2nam05lp2059.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.59])
 by ob1.hgst.iphmx.com with ESMTP; 22 Jul 2019 14:10:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jWOm+ro7sYhFa8Bi2crXa/4kfvtclXGkmcWs9Zv6oa95uEzEsK0+IbvqcpMzWmXOqlIqs8ECIKhzE4yNQwCRQKcMn5BPjhY/iXkwd19QdvkwGA6zVZVVoEsbRp3PcRNNnuvml+snrZ6kZf5u7nstNcpu+XUE0U+a50a9H2err30tLLcn+5A/4iLS1AI/S/oRAEpFQyrdQzRtxxMvcVSYbeqDkN0jsKdCvCeIhxiIh+cIgzPR6rZ7QLIE8L9KwzIuJqEaQk03h7wsksAs8tPU8s0TAe3+dW8UDfcdiYun2AlW5EiTlhT1CVLzrNyCFfpD19qM4VepaDBmA7pOZM6VWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1z0fPG4ODXUuRK5B2usOH1yIwOkSIaN900JZfbTFX8M=;
 b=TxyFnGLDXzTYjWWfrUaT3ci7jG+HGzobMbgO3gzGXVpZnCGz6pSP7HIWr9J3MTyqyKD74HiyLiq1bsy/tV5kK1hovABnJWxJSFYXyyPP5e+7KTT1XFPTFMsPoW85p96rIs9n8rPs1fLtkJkK7XAZRbyYBzJ/JMt1e2liR6Gl+eD2bosbLNOYTAo18MEeIsBvuu7eFBxANkJ51kaxo+32l/lJ3FSXDO78US1HOaf/r6XzUDWlIZI2SWo1gW+HbKP3GbmulflyANgAYCUFjUKzRzt+TY7Q5/X8FbWhqSf4mkKBqHw8vHgBDUcrtT8/gYlhaLyAtP74qKkM+V8gHTsUlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1z0fPG4ODXUuRK5B2usOH1yIwOkSIaN900JZfbTFX8M=;
 b=s81HSn6NWlLlQ+eed9EckkJnhkcJJva1y/yCAIyexF5qQ+whNByqn2+PptToZOM4/lTe+6xM53qTVgDttSK5eLAIe1Ib2v4QC29N6tODFaJLNo/5pqOLR9uYKoZs92vSZ3fyXOkBV9PSqW36PMMXC+YHKaQk+YornMr9t8A28AM=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB5200.namprd04.prod.outlook.com (20.178.6.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Mon, 22 Jul 2019 06:10:25 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::a102:1701:9c05:96b3]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::a102:1701:9c05:96b3%5]) with mapi id 15.20.2094.011; Mon, 22 Jul 2019
 06:10:25 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v1 0/2] scsi: ufs: Fix broken hba->outstanding_tasks
Thread-Topic: [PATCH v1 0/2] scsi: ufs: Fix broken hba->outstanding_tasks
Thread-Index: AQHVOGx9NdHB1Jz3wEWNwY1jARxa+abVESuAgAADy1CAAR6tgA==
Date: Mon, 22 Jul 2019 06:10:25 +0000
Message-ID: <SN6PR04MB49256F66F259185F3876CCABFCC40@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
 <SN6PR04MB4925208835D4760249E82DB7FCC50@SN6PR04MB4925.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4230b482-7ea0-4486-2546-08d70e6b49db
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5200; 
x-ms-traffictypediagnostic: SN6PR04MB5200:
x-microsoft-antispam-prvs: <SN6PR04MB5200518FA375111CD6C9B3D4FCC40@SN6PR04MB5200.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(39860400002)(346002)(396003)(136003)(189003)(199004)(66066001)(64756008)(66946007)(66446008)(66476007)(66556008)(81166006)(81156014)(2201001)(76116006)(8936002)(25786009)(256004)(4326008)(7416002)(86362001)(478600001)(99286004)(14454004)(110136005)(54906003)(316002)(486006)(76176011)(476003)(26005)(5660300002)(6246003)(305945005)(7696005)(2906002)(6436002)(74316002)(229853002)(53936002)(6506007)(102836004)(52536014)(33656002)(186003)(71190400001)(71200400001)(2501003)(8676002)(9686003)(3846002)(55016002)(7736002)(6116002)(446003)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5200;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UN4gjd8vM8Y28stlW6bY/iJhHEO1YnhfYZbcaIJ8ojZmIFtM6II9CQERWsndLVBpMCww4ABXCEGYiga06eWOte2A1SoEXdKyvBdEydflCOyXu+S1vPDEyPEKQBRqucdPfrinBQmlHdDgN206+hNpXJSr1IB/km/TDhvI9Fo8z+GpNG65oixgkz+qEhSq3PS1W66b5+k8qkE0zhkT7ic35VETBX5/41aq9cz1ezf71OPiN4FiZQhGkGCGuqvLKwZklSvi+PJc9iqXXO4qqzUfK8BfdHliIztX/KaZWu3BQYQ7QIh70spqEDXif6YufyRmO3DkDhxQfPT/pYw7QvOpr9278IxfIVuTSnI3rx4EcZ4/TFimyHbHL2hRkl7UWFEutzs/h3+NCoGVGVQj+Y6bvXQ5Q8NFl990x+LsI875SYM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4230b482-7ea0-4486-2546-08d70e6b49db
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 06:10:25.7923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Avri.Altman@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_231056_729566_B9F7C12D 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiANCj4gPg0KPiA+IEhpLA0KPiA+DQo+ID4gPg0KPiA+ID4gQ3VycmVudGx5IGJpdHMgaW4gaGJh
LT5vdXRzdGFuZGluZ190YXNrcyBhcmUgY2xlYXJlZCBvbmx5IGFmdGVyIHRoZWlyDQo+ID4gPiBj
b3JyZXNwb25kaW5nIHRhc2sgbWFuYWdlbWVudCBjb21tYW5kcyBhcmUgc3VjY2Vzc2Z1bGx5IGRv
bmUgYnkNCj4gPiA+IF9fdWZzaGNkX2lzc3VlX3RtX2NtZCgpLg0KPiA+ID4NCj4gPiA+IElmIHRp
bWVvdXQgaGFwcGVucyBpbiBhIHRhc2sgbWFuYWdlbWVudCBjb21tYW5kLCBpdHMgY29ycmVzcG9u
ZGluZw0KPiA+ID4gYml0IGluIGhiYS0+b3V0c3RhbmRpbmdfdGFza3Mgd2lsbCBub3QgYmUgY2xl
YXJlZCB1bnRpbCBuZXh0IHRhc2sNCj4gPiA+IG1hbmFnZW1lbnQgY29tbWFuZCB3aXRoIHRoZSBz
YW1lIHRhZyB1c2VkIHN1Y2Nlc3NmdWxseSBmaW5pc2hlcy7igKcNCj4gPiB1ZnNoY2RfY2xlYXJf
dG1fY21kIGlzIGFsc28gY2FsbGVkIGFzIHBhcnQgb2YgdWZzaGNkX2Vycl9oYW5kbGVyLg0KPiA+
IERvZXMgdGhpcyBjaGFuZ2Ugc29tZXRoaW5nIGluIHlvdXIgYXNzdW1wdGlvbnM/DQo+IEFuZCBC
VFcgdGhlcmUgaXMgYSBzcGVjaWZpYyBfX2NsZWFyX2JpdCBpbiBfX3Vmc2hjZF9pc3N1ZV90bV9j
bWQoKSBpbiBjYXNlDQo+IG9mIGEgVE8uDQoNCkdhdmUgaXQgYW5vdGhlciBsb29rIC0gDQpJZiBp
bmRlZWQgdGhpcyBiaXQgaXNuJ3QgY2xlYXJlZCBhcyBwYXJ0IG9mIHRoZSBlcnJvciBmbG93IHRo
YXQgdGhlIHRpbWVvdXQgdHJpZ2dlcnMsDQpJIHRoaW5rIHlvdSBzaG91bGQgcmVsYXRlIHRvIHVm
c2hjZF9jbGVhcl90bV9jbWQgc3BlY2lmaWNhbGx5IGluIHlvdXIgY29tbWl0IGxvZyAtIA0KQmVj
YXVzZSB0aGlzIGlzIHRoZSBvYnZpb3VzIHBsYWNlIHdoZXJlIHRoZSBiaXQgY2xlYW51cCBzaG91
bGQgdGFrZSBwbGFjZS4NCg0KQWxzbyB0aGUgZml4IHNob3VsZCBiZSBtdWNoIG1vcmUgaW50dWl0
aXZlIElNTyAtIA0KVG9kYXkgd2UgZG8gX19jbGVhcl9iaXQoKSBvbiBzdWNjZXNzLCB1ZnNoY2Rf
Y2xlYXJfdG1fY21kKCkgb24gZXJyb3IsDQpBbmQgYWxzbyB1ZnNoY2RfcHV0X3RtX3Nsb3QoKSBl
aXRoZXIgd2F5Pw0KDQpNYXliZSB5b3UgY2FuIGNob29zZSBhIHNpbmdsZSBwbGFjZSB0byBjbGVh
ciBpdCwgd2l0aG91dCBhbnkgYWRkaXRpb25hbCBjb2RlPw0KDQpUaGFua3MsDQpBdnJpDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
