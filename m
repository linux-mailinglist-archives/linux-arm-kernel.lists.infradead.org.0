Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9885E356
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 13:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/sqkgP3zv146rs+hX2EbBJr516Thiub4U6EhW2n6ZW4=; b=ab8Ab4rcGrCzhS
	r15K6Pk1PAiAC2SfQHQZ8+O+6BX2ubEKLrLCyzYV/9V3lCxHzvUXUg++kfdEQI5MBC5tw89NW5iB8
	oZj2ZI7bjqjZGXUn+4rY16aTa150c7lL+NUqXWhiUV5siK7pSJeRMazpLIIzHtCQQ8P4kT+3YzVOM
	X52YABbY03FVjTGNivnlHkmAvTuroM94oi+s3Kk35/XbFsz0yfU+MGFPOMje5pEC/2KurGrkuXA+Q
	s1K6F6EBSlrfA1kYMwhsofTXz6AqJ+phJReFcLg/557zzcf0QwBoJa6ALEaU2GFnj2z/8F8iSt02k
	YpA2NoJJ2ZKJD3CNV9Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiduH-0008AG-Ee; Wed, 03 Jul 2019 11:58:37 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hidu4-000894-5I
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 11:58:26 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x63Bt4Qd026767
 for <linux-arm-kernel@lists.infradead.org>; Wed, 3 Jul 2019 04:58:21 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=7Fv0VG5SSm+s3bd+HZk4c05+u0Iyu4jTk/vjl0mx7mM=;
 b=rn6eFXEXLlVkIVJnkg80OsE+B6TU2mGDvpRAoW7ChzNC3SFyu/4Ze8/crF83cATFvoSM
 9kzoUw/ook0K0iI3XxMkGwBokxAZ5SCg0asyNRm5GRPu+qvXnDMRKGDpiGNnca95HUjm
 ZuEQOdzs9Miip36Nywk4bnI5FwYBIgH38hSCOfxJ0uNVzpYHvJspr+RY29EOwPADc9hd
 /2dKIgek408H1iDozUYq5HvKlXmZ22z5/aJJRr6nUk8QRM+Z4g1te60Oq1JXRYzFLH0w
 ePM0qXZONomXDM9191711HPDB9uyGIEnqk8SzEFUTj/no1zaeVO6u8JMpxUYMhXO0Sem Ag== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2tgrv18qhy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 03 Jul 2019 04:58:21 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 3 Jul
 2019 04:58:20 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (104.47.34.53) by
 SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Wed, 3 Jul 2019 04:58:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Fv0VG5SSm+s3bd+HZk4c05+u0Iyu4jTk/vjl0mx7mM=;
 b=TNL0PfG+LXf5r0UvNBxU49fc3FnwLguCIUHDqyIEJmnqHEDqRZxXXWpG3K3nT3k2UasY+S3rH1kS4sJ+MFdGhBDDf78lJ1i2K9zQc44EUM9oKRCDr9HhhjyjyNXIS7EjKeULotWr+KcHHXbrLB4iErmOaKIQ/LWkBrJy6klUCFM=
Received: from BL0PR18MB2339.namprd18.prod.outlook.com (52.132.30.139) by
 BL0PR18MB2258.namprd18.prod.outlook.com (52.132.30.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.18; Wed, 3 Jul 2019 11:57:48 +0000
Received: from BL0PR18MB2339.namprd18.prod.outlook.com
 ([fe80::430:a80b:100e:f333]) by BL0PR18MB2339.namprd18.prod.outlook.com
 ([fe80::430:a80b:100e:f333%3]) with mapi id 15.20.2032.019; Wed, 3 Jul 2019
 11:57:48 +0000
From: Jan Glauber <jglauber@marvell.com>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v2 0/5] Add NUMA-awareness to qspinlock
Thread-Topic: [PATCH v2 0/5] Add NUMA-awareness to qspinlock
Thread-Index: AQHVMZV8Ybm4k+/XekihBdJkMbnADw==
Date: Wed, 3 Jul 2019 11:57:48 +0000
Message-ID: <CAEiAFz238Ywgn6iDAz9gM_3PgPhs-YuAVDptehUBv7MRRPx8Cw@mail.gmail.com>
References: <20190329152006.110370-1-alex.kogan@oracle.com>
In-Reply-To: <20190329152006.110370-1-alex.kogan@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0802CA0017.eurprd08.prod.outlook.com
 (2603:10a6:3:bd::27) To BL0PR18MB2339.namprd18.prod.outlook.com
 (2603:10b6:207:44::11)
x-ms-exchange-messagesentrepresentingtype: 1
x-gm-message-state: APjAAAW+HP4d5oJWVFMV0XuGiDbMxOLoQxUMbdrejUziPP30yVjh0pAb
 aTngZEfJAphxOBbaZadENajZuQSdhlu+Y7TvxXY=
x-google-smtp-source: APXvYqyuwkmwHuWs/zk31Xg3Lr0aqtta+9e2gekCu7t9V2nQEduDWodzih6Lza+B9cu85LLSsIR5XwAVjLA2VYgrUQs=
x-received: by 2002:ac2:5212:: with SMTP id a18mr17620705lfl.50.1562154631397; 
 Wed, 03 Jul 2019 04:50:31 -0700 (PDT)
x-gmail-original-message-id: <CAEiAFz238Ywgn6iDAz9gM_3PgPhs-YuAVDptehUBv7MRRPx8Cw@mail.gmail.com>
x-originating-ip: [209.85.167.53]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c6cf992e-f2df-4a09-9ad0-08d6ffadaacf
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR18MB2258; 
x-ms-traffictypediagnostic: BL0PR18MB2258:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR18MB22587A01C4AA1C1E85AE08FAD8FB0@BL0PR18MB2258.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 00872B689F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(199004)(189003)(14454004)(305945005)(61266001)(6486002)(446003)(3846002)(26005)(476003)(66066001)(6116002)(81156014)(81166006)(68736007)(6306002)(316002)(61726006)(52116002)(229853002)(498394004)(54906003)(6436002)(102836004)(386003)(6506007)(53936002)(99286004)(9686003)(6512007)(11346002)(95326003)(966005)(86362001)(76176011)(6246003)(7736002)(486006)(2906002)(8676002)(14444005)(5660300002)(478600001)(256004)(66574012)(66476007)(107886003)(73956011)(25786009)(66446008)(64756008)(66556008)(4326008)(6862004)(66946007)(71190400001)(71200400001)(186003)(8936002)(55446002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR18MB2258;
 H:BL0PR18MB2339.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0mQQQj5QctFCrfbZ3NnF+ZYo2VlzVCu5aVc/oHMbCArMYNMzLJDBjcsOlggaXf50F4w2dYKwLPKDbqNRJ+IKHsm6Z9uPXlVX0XXZtOgqA3I9h9pG+QhaWbeUHhB08lglcp8YFfsuJzu1ul0hPKPNyd9gf90MdclRkPXIxdkDcHC2RPZh5CLz2qsNIMXjX9+CvbJGtWulUwE2keBqc0V7H+0lBI4rJQQMavBcU67JYfwljgLBz8WW3lQSCjIwkUMiaMYHKJFsBym+GtARYv+m1ljVZ6DXo89HbC4t7HNqJP0Dx2AtOZxK8qjV+vVLLUwYX8loWRMNYgQpkxA5mWs2LlLwfvgNh0SEtem6iFOtzptNXw/mSIMb4gx8fObDi+Wy1UxZfmQ3EVnqIGJs8lItsKlTM0rlDfWae7UcBmy3tww=
Content-ID: <D37F522C8E9B3A40A57834CC0A76C169@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c6cf992e-f2df-4a09-9ad0-08d6ffadaacf
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2019 11:57:48.2149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jglauber@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR18MB2258
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-03_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_045824_325872_08E6136F 
X-CRM114-Status: GOOD (  28.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 "dave.dice@oracle.com" <dave.dice@oracle.com>,
 "x86@kernel.org" <x86@kernel.org>, Will Deacon <will.deacon@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "steven.sistare@oracle.com" <steven.sistare@oracle.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rahul.x.yadav@oracle.com" <rahul.x.yadav@oracle.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "hpa@zytor.com" <hpa@zytor.com>, "longman@redhat.com" <longman@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "daniel.m.jordan@oracle.com" <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxleCwNCkkndmUgdHJpZWQgdGhpcyBzZXJpZXMgb24gYXJtNjQgKFRodW5kZXJYMiB3aXRo
IHVwIHRvIFNNVD00ICBhbmQgMjI0IENQVXMpDQp3aXRoIHRoZSBib3JkZXJsaW5lIHRlc3RjYXNl
IG9mIGFjY2Vzc2luZyBhIHNpbmdsZSBmaWxlIGZyb20gYWxsDQp0aHJlYWRzLiBXaXRoIHRoYXQN
CnRlc3RjYXNlIHRoZSBxc3BpbmxvY2sgc2xvd3BhdGggaXMgdGhlIHRvcCBzcG90IGluIHRoZSBr
ZXJuZWwuDQoNClRoZSByZXN1bHRzIGxvb2sgcmVhbGx5IHByb21pc2luZzoNCg0KQ1BVcyAgICBu
b3JtYWwgICAgbnVtYS1xc3BpbmxvY2tzDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCjU2ICAgICAgICAxNDkuNDEgICAgICAgICAgNzMuOTANCjIyNCAgICAg
IDU3Ni45NSAgICAgICAgICAyOTAuMzENCg0KQWxzbyBmcm9udGVuZC1zdGFsbHMgYXJlIHJlZHVj
ZWQgdG8gNTAlIGFuZCBpbnRlcmNvbm5lY3QgdHJhZmZpYyBpcw0KZ3JlYXRseSByZWR1Y2VkLg0K
VGVzdGVkLWJ5OiBKYW4gR2xhdWJlciA8amdsYXViZXJAbWFydmVsbC5jb20+DQoNCi0tSmFuDQoN
CkFtIEZyLiwgMjkuIE3DpHJ6IDIwMTkgdW0gMTY6MjMgVWhyIHNjaHJpZWIgQWxleCBLb2dhbiA8
YWxleC5rb2dhbkBvcmFjbGUuY29tPjoNCj4NCj4gVGhpcyB2ZXJzaW9uIGFkZHJlc3NlcyBmZWVk
YmFjayBmcm9tIFBldGVyIGFuZCBXYWltYW4uIEluIHBhcnRpY3VsYXIsDQo+IHRoZSBDTkEgZnVu
Y3Rpb25hbGl0eSBoYXMgYmVlbiBtb3ZlZCB0byBhIHNlcGFyYXRlIGZpbGUsIGFuZCBpcyBjb250
cm9sbGVkDQo+IGJ5IGEgY29uZmlnIG9wdGlvbiAoZW5hYmxlZCBieSBkZWZhdWx0IGlmIE5VTUEg
aXMgZW5hYmxlZCkuDQo+IEFuIG9wdGltaXphdGlvbiBoYXMgYmVlbiBpbnRyb2R1Y2VkIHRvIHJl
ZHVjZSB0aGUgb3ZlcmhlYWQgb2Ygc2h1ZmZsaW5nDQo+IHRocmVhZHMgYmV0d2VlbiB3YWl0aW5n
IHF1ZXVlcyB3aGVuIHRoZSBsb2NrIGlzIG9ubHkgbGlnaHRseSBjb250ZW5kZWQuDQo+DQo+IFN1
bW1hcnkNCj4gLS0tLS0tLQ0KPg0KPiBMb2NrIHRocm91Z2hwdXQgY2FuIGJlIGluY3JlYXNlZCBi
eSBoYW5kaW5nIGEgbG9jayB0byBhIHdhaXRlciBvbiB0aGUNCj4gc2FtZSBOVU1BIG5vZGUgYXMg
dGhlIGxvY2sgaG9sZGVyLCBwcm92aWRlZCBjYXJlIGlzIHRha2VuIHRvIGF2b2lkDQo+IHN0YXJ2
YXRpb24gb2Ygd2FpdGVycyBvbiBvdGhlciBOVU1BIG5vZGVzLiBUaGlzIHBhdGNoIGludHJvZHVj
ZXMgQ05BDQo+IChjb21wYWN0IE5VTUEtYXdhcmUgbG9jaykgYXMgdGhlIHNsb3cgcGF0aCBmb3Ig
cXNwaW5sb2NrLiBJdCBjYW4gYmUNCj4gZW5hYmxlZCB0aHJvdWdoIGEgY29uZmlndXJhdGlvbiBv
cHRpb24gKE5VTUFfQVdBUkVfU1BJTkxPQ0tTKS4NCj4NCj4gQ05BIGlzIGEgTlVNQS1hd2FyZSB2
ZXJzaW9uIG9mIHRoZSBNQ1Mgc3Bpbi1sb2NrLiBTcGlubmluZyB0aHJlYWRzIGFyZQ0KPiBvcmdh
bml6ZWQgaW4gdHdvIHF1ZXVlcywgYSBtYWluIHF1ZXVlIGZvciB0aHJlYWRzIHJ1bm5pbmcgb24g
dGhlIHNhbWUNCj4gbm9kZSBhcyB0aGUgY3VycmVudCBsb2NrIGhvbGRlciwgYW5kIGEgc2Vjb25k
YXJ5IHF1ZXVlIGZvciB0aHJlYWRzDQo+IHJ1bm5pbmcgb24gb3RoZXIgbm9kZXMuIFRocmVhZHMg
c3RvcmUgdGhlIElEIG9mIHRoZSBub2RlIG9uIHdoaWNoDQo+IHRoZXkgYXJlIHJ1bm5pbmcgaW4g
dGhlaXIgcXVldWUgbm9kZXMuIEF0IHRoZSB1bmxvY2sgdGltZSwgdGhlIGxvY2sNCj4gaG9sZGVy
IHNjYW5zIHRoZSBtYWluIHF1ZXVlIGxvb2tpbmcgZm9yIGEgdGhyZWFkIHJ1bm5pbmcgb24gdGhl
IHNhbWUNCj4gbm9kZS4gSWYgZm91bmQgKGNhbGwgaXQgdGhyZWFkIFQpLCBhbGwgdGhyZWFkcyBp
biB0aGUgbWFpbiBxdWV1ZQ0KPiBiZXR3ZWVuIHRoZSBjdXJyZW50IGxvY2sgaG9sZGVyIGFuZCBU
IGFyZSBtb3ZlZCB0byB0aGUgZW5kIG9mIHRoZQ0KPiBzZWNvbmRhcnkgcXVldWUsIGFuZCB0aGUg
bG9jayBpcyBwYXNzZWQgdG8gVC4gSWYgc3VjaCBUIGlzIG5vdCBmb3VuZCwgdGhlDQo+IGxvY2sg
aXMgcGFzc2VkIHRvIHRoZSBmaXJzdCBub2RlIGluIHRoZSBzZWNvbmRhcnkgcXVldWUuIEZpbmFs
bHksIGlmIHRoZQ0KPiBzZWNvbmRhcnkgcXVldWUgaXMgZW1wdHksIHRoZSBsb2NrIGlzIHBhc3Nl
ZCB0byB0aGUgbmV4dCB0aHJlYWQgaW4gdGhlDQo+IG1haW4gcXVldWUuIFRvIGF2b2lkIHN0YXJ2
YXRpb24gb2YgdGhyZWFkcyBpbiB0aGUgc2Vjb25kYXJ5IHF1ZXVlLA0KPiB0aG9zZSB0aHJlYWRz
IGFyZSBtb3ZlZCBiYWNrIHRvIHRoZSBoZWFkIG9mIHRoZSBtYWluIHF1ZXVlDQo+IGFmdGVyIGEg
Y2VydGFpbiBleHBlY3RlZCBudW1iZXIgb2YgaW50cmEtbm9kZSBsb2NrIGhhbmQtb2Zmcy4NCj4N
Cj4gTW9yZSBkZXRhaWxzIGFyZSBhdmFpbGFibGUgYXQgaHR0cHM6Ly9hcnhpdi5vcmcvYWJzLzE4
MTAuMDU2MDAuDQo+DQo+IFdlIGhhdmUgZG9uZSBzb21lIHBlcmZvcm1hbmNlIGV2YWx1YXRpb24g
d2l0aCB0aGUgbG9ja3RvcnR1cmUgbW9kdWxlDQo+IGFzIHdlbGwgYXMgd2l0aCBzZXZlcmFsIGJl
bmNobWFya3MgZnJvbSB0aGUgd2lsbC1pdC1zY2FsZSByZXBvLg0KPiBUaGUgZm9sbG93aW5nIGxv
Y2t0b3J0dXJlIHJlc3VsdHMgYXJlIGZyb20gYW4gT3JhY2xlIFg1LTQgc2VydmVyDQo+IChmb3Vy
IEludGVsIFhlb24gRTctODg5NSB2MyBAIDIuNjBHSHogc29ja2V0cyB3aXRoIDE4IGh5cGVydGhy
ZWFkZWQNCj4gY29yZXMgZWFjaCkuIEVhY2ggbnVtYmVyIHJlcHJlc2VudHMgYW4gYXZlcmFnZSAo
b3ZlciAyNSBydW5zKSBvZiB0aGUNCj4gdG90YWwgbnVtYmVyIG9mIG9wcyAoeDEwXjcpIHJlcG9y
dGVkIGF0IHRoZSBlbmQgb2YgZWFjaCBydW4uIFRoZQ0KPiBzdGFuZGFyZCBkZXZpYXRpb24gaXMg
YWxzbyByZXBvcnRlZCBpbiAoKSwgYW5kIGluIGdlbmVyYWwsIHdpdGggYSBmZXcNCj4gZXhjZXB0
aW9ucywgaXMgYWJvdXQgMyUuIFRoZSAnc3RvY2snIGtlcm5lbCBpcyB2NS4wLXJjOCwNCj4gY29t
bWl0IDI4ZDQ5ZTI4MjY2NSAoImxvY2tpbmcvbG9ja2RlcDogU2hyaW5rIHN0cnVjdCBsb2NrX2Ns
YXNzX2tleSIpLA0KPiBjb21waWxlZCBpbiB0aGUgZGVmYXVsdCBjb25maWd1cmF0aW9uLiAncGF0
Y2gnIGlzIHRoZSBtb2RpZmllZA0KPiBrZXJuZWwgY29tcGlsZWQgd2l0aCBOVU1BX0FXQVJFX1NQ
SU5MT0NLUyBub3Qgc2V0OyBpdCBpcyBpbmNsdWRlZCB0byBzaG93DQo+IHRoYXQgYW55IHBlcmZv
cm1hbmNlIGNoYW5nZXMgdG8gdGhlIGV4aXN0aW5nIHFzcGlubG9jayBpbXBsZW1lbnRhdGlvbiBh
cmUNCj4gZXNzZW50aWFsbHkgbm9pc2UuICdwYXRjaC1DTkEnIGlzIHRoZSBtb2RpZmllZCBrZXJu
ZWwgd2l0aA0KPiBOVU1BX0FXQVJFX1NQSU5MT0NLUyBzZXQ7IHRoZSBzcGVlZHVwIGlzIGNhbGN1
bGF0ZWQgZGl2aWRpbmcNCj4gJ3BhdGNoLUNOQScgYnkgJ3N0b2NrJy4NCj4NCj4gI3RociAgICAg
c3RvY2sgICAgICAgICAgcGF0Y2ggICAgICAgIHBhdGNoLUNOQSAgIHNwZWVkdXAgKHBhdGNoLUNO
QS9zdG9jaykNCj4gICAxICAyLjczMSAoMC4xMDIpICAyLjczMiAoMC4wOTMpICAgMi43MTYgKDAu
MDgyKSAgMC45OTUNCj4gICAyICAzLjA3MSAoMC4xMjQpICAzLjA4NCAoMC4xMDkpICAgMy4wNzkg
KDAuMTEzKSAgMS4wMDMNCj4gICA0ICA0LjIyMSAoMC4xMzgpICA0LjIyOSAoMC4wODcpICAgNC40
MDggKDAuMTAzKSAgMS4wNDQNCj4gICA4ICA1LjM2NiAoMC4xNTQpICA1LjI3NCAoMC4wOTQpICAg
Ni45NTggKDAuMjMzKSAgMS4yOTcNCj4gIDE2ICA2LjY3MyAoMC4xNjQpICA2LjY4OSAoMC4wOTUp
ICAgOC41NDcgKDAuMTQ1KSAgMS4yODENCj4gIDMyICA3LjM2NSAoMC4xNzcpICA3LjM1MyAoMC4x
ODMpICAgOS4zMDUgKDAuMjAyKSAgMS4yNjMNCj4gIDM2ICA3LjQ3MyAoMC4xOTgpICA3LjQyMiAo
MC4xODEpICAgOS40NDEgKDAuMTk2KSAgMS4yNjMNCj4gIDcyICA2LjgwNSAoMC4xODIpICA2LjY5
OSAoMC4xNzApICAxMC4wMjAgKDAuMjE4KSAgMS40NzINCj4gMTA4ICA2LjUwOSAoMC4wODIpICA2
LjQ4MCAoMC4xMTUpICAxMC4wMjcgKDAuMTk0KSAgMS41NDANCj4gMTQyICA2LjIyMyAoMC4xMDkp
ICA2LjI5NCAoMC4xMDApICAgOS44NzQgKDAuMTgzKSAgMS41ODcNCj4NCj4gVGhlIGZvbGxvd2lu
ZyB0YWJsZXMgY29udGFpbiB0aHJvdWdocHV0IHJlc3VsdHMgKG9wcy91cykgZnJvbSB0aGUgc2Ft
ZQ0KPiBzZXR1cCBmb3Igd2lsbC1pdC1zY2FsZS9vcGVuMV90aHJlYWRzOg0KPg0KPiAjdGhyICAg
ICBzdG9jayAgICAgICAgICBwYXRjaCAgICAgICAgcGF0Y2gtQ05BICAgc3BlZWR1cCAocGF0Y2gt
Q05BL3N0b2NrKQ0KPiAgIDEgIDAuNTY1ICgwLjAwNCkgIDAuNTY3ICgwLjAwMSkgIDAuNTY1ICgw
LjAwMykgIDAuOTk5DQo+ICAgMiAgMC44OTIgKDAuMDIxKSAgMC44OTkgKDAuMDIyKSAgMC45MDAg
KDAuMDE4KSAgMS4wMDkNCj4gICA0ICAxLjUwMyAoMC4wMzEpICAxLjUyNyAoMC4wMzgpICAxLjQ4
MSAoMC4wMjUpICAwLjk4NQ0KPiAgIDggIDEuNzU1ICgwLjEwNSkgIDEuNzE0ICgwLjA3OSkgIDEu
NjgzICgwLjEwNikgIDAuOTU5DQo+ICAxNiAgMS43NDAgKDAuMDk1KSAgMS43NTIgKDAuMDg3KSAg
MS42OTMgKDAuMDk4KSAgMC45NzMNCj4gIDMyICAwLjg4NCAoMC4wODApICAwLjkwOCAoMC4wOTAp
ICAxLjY4NiAoMC4wOTIpICAxLjkwNg0KPiAgMzYgIDAuOTA3ICgwLjA5NSkgIDAuODk0ICgwLjA4
OCkgIDEuNzA5ICgwLjA4MSkgIDEuODg1DQo+ICA3MiAgMC44NTYgKDAuMDQxKSAgMC44NTggKDAu
MDQzKSAgMS43MDcgKDAuMDgyKSAgMS45OTQNCj4gMTA4ICAwLjg1OCAoMC4wMzkpICAwLjg2OSAo
MC4wMzcpICAxLjczMiAoMC4wNzYpICAyLjAyMA0KPiAxNDIgIDAuODA5ICgwLjA0NCkgIDAuODU0
ICgwLjA0NCkgIDEuNzI4ICgwLjA4MykgIDIuMTM1DQo+DQo+IGFuZCB3aWxsLWl0LXNjYWxlL2xv
Y2syX3RocmVhZHM6DQo+DQo+ICN0aHIgICAgIHN0b2NrICAgICAgICAgIHBhdGNoICAgICAgICBw
YXRjaC1DTkEgICBzcGVlZHVwIChwYXRjaC1DTkEvc3RvY2spDQo+ICAgMSAgMS43MTMgKDAuMDA0
KSAgMS43MTUgKDAuMDA0KSAgMS43MTEgKDAuMDA0KSAgMC45OTkNCj4gICAyICAyLjg4OSAoMC4w
NTcpICAyLjg2NCAoMC4wNzgpICAyLjg3NiAoMC4wNjYpICAwLjk5NQ0KPiAgIDQgIDQuNTgyICgx
LjAzMikgIDUuMDY2ICgwLjc4NykgIDQuNzI1ICgwLjk1OSkgIDEuMDMxDQo+ICAgOCAgNC4yMjcg
KDAuMTk2KSAgNC4xMDQgKDAuMjc0KSAgNC4wOTIgKDAuMzY1KSAgMC45NjgNCj4gIDE2ICA0LjEw
OCAoMC4xNDEpICA0LjA1NyAoMC4xMzgpICA0LjAxMCAoMC4xNjgpICAwLjk3Ng0KPiAgMzIgIDIu
Njc0ICgwLjEyNSkgIDIuNjI1ICgwLjE3MSkgIDMuOTU4ICgwLjE1NikgIDEuNDgwDQo+ICAzNiAg
Mi42MjIgKDAuMTA3KSAgMi41NTMgKDAuMTUwKSAgMy45NzggKDAuMTE2KSAgMS41MTcNCj4gIDcy
ICAyLjAwOSAoMC4wOTApICAxLjk5OCAoMC4wOTIpICAzLjkzMiAoMC4xMTQpICAxLjk1Nw0KPiAx
MDggIDIuMTU0ICgwLjA2OSkgIDIuMDg5ICgwLjA5MCkgIDMuODcwICgwLjA4MSkgIDEuNzk3DQo+
IDE0MiAgMS45NTMgKDAuMTA2KSAgMS45NDMgKDAuMTExKSAgMy44NTMgKDAuMTAwKSAgMS45NzMN
Cj4NCj4gRnVydGhlciBjb21tZW50cyBhcmUgd2VsY29tZSBhbmQgYXBwcmVjaWF0ZWQuDQo+DQo+
IEFsZXggS29nYW4gKDUpOg0KPiAgIGxvY2tpbmcvcXNwaW5sb2NrOiBNYWtlIGFyY2hfbWNzX3Nw
aW5fdW5sb2NrX2NvbnRlbmRlZCBtb3JlIGdlbmVyaWMNCj4gICBsb2NraW5nL3FzcGlubG9jazog
UmVmYWN0b3IgdGhlIHFzcGlubG9jayBzbG93IHBhdGgNCj4gICBsb2NraW5nL3FzcGlubG9jazog
SW50cm9kdWNlIENOQSBpbnRvIHRoZSBzbG93IHBhdGggb2YgcXNwaW5sb2NrDQo+ICAgbG9ja2lu
Zy9xc3BpbmxvY2s6IEludHJvZHVjZSBzdGFydmF0aW9uIGF2b2lkYW5jZSBpbnRvIENOQQ0KPiAg
IGxvY2tpbmcvcXNwaW5sb2NrOiBJbnRyb2R1Y2UgdGhlIHNodWZmbGUgcmVkdWN0aW9uIG9wdGlt
aXphdGlvbiBpbnRvDQo+ICAgICBDTkENCj4NCj4gIGFyY2gvYXJtL2luY2x1ZGUvYXNtL21jc19z
cGlubG9jay5oICAgfCAgIDQgKy0NCj4gIGFyY2gveDg2L0tjb25maWcgICAgICAgICAgICAgICAg
ICAgICAgfCAgMTQgKysNCj4gIGluY2x1ZGUvYXNtLWdlbmVyaWMvcXNwaW5sb2NrX3R5cGVzLmgg
fCAgMTMgKysNCj4gIGtlcm5lbC9sb2NraW5nL21jc19zcGlubG9jay5oICAgICAgICAgfCAgMTYg
KystDQo+ICBrZXJuZWwvbG9ja2luZy9xc3BpbmxvY2suYyAgICAgICAgICAgIHwgIDc3ICsrKysr
KysrKy0tDQo+ICBrZXJuZWwvbG9ja2luZy9xc3BpbmxvY2tfY25hLmggICAgICAgIHwgMjQ1ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gIDYgZmlsZXMgY2hhbmdlZCwgMzU0
IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGtl
cm5lbC9sb2NraW5nL3FzcGlubG9ja19jbmEuaA0KPg0KPiAtLQ0KPiAyLjExLjAgKEFwcGxlIEdp
dC04MSkNCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
