Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D69F874CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfRQ7xG26pmRqr/5bEvSBKOiQoEKtDIGFTApUerncX8=; b=jWzrBCa7sv2TlP
	j7t1LlDDlsxNkEm9Iz+BnRq/NhdUkSiKaNQ4/JEEm/hlVY4ld2geNTIrsdX9lasLV8Nt1q858EY2g
	iBIVg3oE4iqVsl/s3+jNCPIFe3gFIy0ty3+Vv5sdgTqul2acSPJt2KvI24pch4R3EusYVogXbQg22
	l5hQUjpxXGxwy389HsCLif/O/S8jlesYUdR4Nz4L00S0EKxoIb9etq+atdbN/wAREUMadwomW27Xz
	hDbupOO+67I6COKtP2La7UR9Str6FVw1iptYo9FXGcmHtCSlFgARJb53Rw0B20AOSRwMl+YStWjbn
	cJO/68gMlr5tiYe33KmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0pV-0000QI-IJ; Fri, 09 Aug 2019 09:04:57 +0000
Received: from mail-eopbgr720085.outbound.protection.outlook.com
 ([40.107.72.85] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0ow-0000DJ-AQ
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:04:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QXggORMKIr80aWEuZ94cvYFGi3Hn+oNc6JAiYppBtkMt749o6XuTirbB7b3bhfKU5O5cVy5gnBgcgnOV2rAOAS9j6ldB95xhb9N7fa5+kj3Q0mA6qVAAmq1XM/TqxLX69V7mCtdwluDLFRa+iQuM6kmq1lS8HrvolOkyOQrowrCn9bmeENgS0am9QZi1abCWUvLtQWtkgW9WKETuy1JGnbMqi3qQ41kMJVf64opYmyqr0j2+jwyFAy+f+Lw7RV4JtKUgLwvWuhGcAZ0UV3fzkWt5DYCfCqw+++R7MFD6QNKpfttkHDwYacjQr9p9zgdeoFYx89JFQy2rZYYcgRZWlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQAP/SDA0hrCdFFN/OSAbPmd6HS1MZ2U4EyWGxSqDWg=;
 b=Z1CTr1jNKIiKHMRVV70A4lqdzgb9k7Ug1KIuz7CzZCQM8FTQtpV9CCztDZ5fmdgteXlkuK8T0cf0LAjwH5FJNyjSK0C2U25i38BI9wkYRHOnaSGmDw7AQucp9NxezZk/M+p/27OvQFk0iXUK63hGcpl1DkEHaE0qLmbaABPdZpfAR8//gN43c5r2Ik2VuRcdzOP+37tCqsw/pj19qWrdze3K4ZnDfhNqYbuzsgeK3z1ENfZBnP7E7C2lJxfEOxA7eBiEdqxfawsT6qORVTQf020f6bt5d+dgyt2DYzDCHlXWFCwXaptL/6/0unwYDJDNIgl9ki5tpvXEa2RVoh0dfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQAP/SDA0hrCdFFN/OSAbPmd6HS1MZ2U4EyWGxSqDWg=;
 b=qusBTjOweSBrjUQeMhPJMsd/1RLjmI8o19Cw8jN5tP/W3nDmRtrgcHnUqHc3sNpb/lz2iXhY9k5BQIAvqsWMwDOtXWlm5i0vuiCpWzagj8WC9eIjNua7RnNiRvF0NAjgY8/PUlEjIrJEekIO9nEfz0gHsJEs657jAyfch9ud6Ns=
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB1628.namprd12.prod.outlook.com (10.172.35.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Fri, 9 Aug 2019 09:04:17 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::fc5f:ce01:e8c8:db89]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::fc5f:ce01:e8c8:db89%12]) with mapi id 15.20.2157.015; Fri, 9 Aug 2019
 09:04:17 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Alex Deucher <alexdeucher@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Subject: Re: drm/amdgpu: replace readq/writeq with atomic64 operations
Thread-Topic: drm/amdgpu: replace readq/writeq with atomic64 operations
Thread-Index: AQHVTh8PPQiA6WyOtEaKxVHgstz4oabxpAOAgADijgA=
Date: Fri, 9 Aug 2019 09:04:17 +0000
Message-ID: <28a12fc0-7766-e5eb-7676-dba9e62c9c7b@amd.com>
References: <20190807025640.682-1-tao.zhou1@amd.com>
 <20190808192535.GA18697@roeck-us.net>
 <CADnq5_ONGvL0yMybsXCyYJO6zKRAi4aEPo8LwEwQjSP3aVbdJQ@mail.gmail.com>
In-Reply-To: <CADnq5_ONGvL0yMybsXCyYJO6zKRAi4aEPo8LwEwQjSP3aVbdJQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: PR0P264CA0156.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1b::24) To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0270b92-3fc1-46be-fdf2-08d71ca88e8f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB1628; 
x-ms-traffictypediagnostic: DM5PR12MB1628:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR12MB1628C513A59B191FFBA11B3083D60@DM5PR12MB1628.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(396003)(366004)(199004)(189003)(6306002)(8936002)(486006)(6512007)(2616005)(65826007)(476003)(46003)(316002)(58126008)(65956001)(2906002)(6436002)(99286004)(110136005)(446003)(11346002)(54906003)(966005)(25786009)(6246003)(6486002)(14454004)(53936002)(6116002)(86362001)(7736002)(305945005)(31696002)(81156014)(81166006)(229853002)(256004)(14444005)(8676002)(478600001)(102836004)(66446008)(65806001)(5660300002)(4326008)(66946007)(64126003)(66476007)(64756008)(36756003)(66556008)(53546011)(6506007)(386003)(31686004)(76176011)(52116002)(71190400001)(71200400001)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB1628;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fiHGVvGhUdxoTpE4UnYBiVR75PQFn5hOXTRQOhuymZnihhH37cYPo2H0ZIi2qP+nF/t5zH9m7yBiimg+caH7Mly+/BKpWRDt5KGYi2f+G18rPMGiayTDZTfVXY7Fz824DYPK7/LyeAIFoh9O9HlYSerjta2x60lbF3deCK7yvLMyzaiscBC5PKSLvVgk3zdiw0y8gCvLRcI5lr8oRUsRJ5OXT1Cvy3vxgud7NOIjLEWzU4uVj3+7XfgdC8zDNXM/HlfC/KEj5QVfnNw9STNtv68DBtv5Ppvu8y0JE3PbYHJVVfqsgPUZAiI4qZowJAQJASRVRf1wIHa3bnKyGS7z1W9RhBrUPDZ65IfNHEYwi8s0z5MOoIGq+R7dMzZiq3x1AlwMRVsAtRjlcY0L7cBiTF7boh60PS1rF4crvJY9CBw=
Content-ID: <6DB45AD23A7767428F25D2E9B1F94CB3@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0270b92-3fc1-46be-fdf2-08d71ca88e8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 09:04:17.1397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 41cjhcpOiaUJr5SXouSIH0KF+0F7O9O/EVCe0vXe0h5KSHjQxl5WeSxnZQjAIsm5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1628
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_020422_422631_301C92C8 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "kernel-build-reports@lists.linaro.org"
 <kernel-build-reports@lists.linaro.org>, Mark Brown <broonie@kernel.org>,
 "Zhou1, Tao" <Tao.Zhou1@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>, "Li, 
 Dennis" <Dennis.Li@amd.com>, "Deucher, Alexander" <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "Zhang,
 Hawking" <Hawking.Zhang@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDguMDguMTkgdW0gMjE6MzMgc2NocmllYiBBbGV4IERldWNoZXI6DQo+IE9uIFRodSwgQXVn
IDgsIDIwMTkgYXQgMzozMSBQTSBHdWVudGVyIFJvZWNrIDxsaW51eEByb2Vjay11cy5uZXQ+IHdy
b3RlOg0KPj4gT24gV2VkLCBBdWcgMDcsIDIwMTkgYXQgMTA6NTY6NDBBTSArMDgwMCwgVGFvIFpo
b3Ugd3JvdGU6DQo+Pj4gcmVhZHEvd3JpdGVxIGFyZSBub3Qgc3VwcG9ydGVkIG9uIGFsbCBhcmNo
aXRlY3R1cmVzDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBUYW8gWmhvdSA8dGFvLnpob3UxQGFt
ZC5jb20+DQo+Pj4gUmV2aWV3ZWQtYnk6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJA
YW1kLmNvbT4NCj4+IFJlZ2FyZGluZyB0aGUgY2xhaW0gdGhhdCB0aGlzIHdvdWxkIHdvcmsgZm9y
IDMyLWJpdCB4ODYgYnVpbGRzOg0KPiBJIHdhc24ndCB0YWxraW5nIGFib3V0IHJlYWRxL3dyaXRl
cSwgSSB3YXMgdGFsa2luZyBhYm91dCB0aGUgYXRvbWljNjQNCj4gaW50ZXJmYWNlcy4NCg0KT24g
cXVpdGUgYSBidW5jaCBvZiBhcmNoaXRlY3R1cmVzIGF0b21pYzY0IG9wZXJhdGlvbnMgYXJlIGFj
dHVhbGx5IA0KaW1wbGVtZW50ZWQgd2l0aCBzcGlubG9ja3Mgb3Igb3RoZXIgYXJjaGl0ZWN0dXJl
IGRlcGVuZGVkIHNwZWNpYWwgaGFuZGxpbmcuDQoNClNvIHRoZSBhcHByb2FjaCBvZiBjYXN0aW5n
IGFuIGlvbWVtIHBvaW50ZXIgdG8gYW4gYXRvbWljNjQgYW5kIHRoZW4gaG9wZSANCmZvciB0aGUg
YmVzdCBpcyBhY3R1YWxseSBjb21wbGV0ZWx5IG5vbnNlbnNlLg0KDQpJZiB0aGUgaGFyZHdhcmUg
cmVhbGx5IG5lZWRzIGEgc2luZ2xlIDY0Yml0IHdyaXRlIGZvciBkb29yYmVsbHMgb3IgDQpyZWdp
c3RlcnMsIHRoZW4gd2UgYWJzb2x1dGVseSBuZWVkIHRvIGxpbWl0IHRoZSBkcml2ZXIgdG8gNjRi
aXQgDQphcmNoaXRlY3R1cmVzLg0KDQpJZiB0aGUgaGFyZHdhcmUgZG9lc24ndCBuZWVkIDY0Yml0
IHdyaXRlcyB3ZSBzaG91bGQgYWN0dWFsbHkgYWx3YXlzIHVzZSANCnR3byAzMmJpdCB3cml0ZXMg
dG8gbm90IHJ1biBpbnRvIHJhbmRvbSBhbmQgaGFyZCB0byBkZWJ1ZyBwcm9ibGVtcyANCmJlY2F1
c2Ugb2YgdGhpcy4NCg0KQ2hyaXN0aWFuLg0KDQo+DQo+IEFsZXgNCj4NCj4+IG1ha2UgQVJDSD1p
Mzg2IGFsbG1vZGNvbmZpZw0KPj4gbWFrZSBBUkNIPWkzODYgZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2RldmljZS5vDQo+Pg0KPj4gcmVzdWx0cyBpbjoNCj4+DQo+PiAgICAuLi4N
Cj4+ICAgIENDIFtNXSAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5v
DQo+PiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmM6IEluIGZ1bmN0
aW9uIOKAmGFtZGdwdV9tbV9ycmVnNjTigJk6DQo+PiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZGV2aWNlLmM6Mjc5Ojk6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBm
dW5jdGlvbiDigJhyZWFkceKAmTsNCj4+DQo+PiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZGV2aWNlLmM6IEluIGZ1bmN0aW9uIOKAmGFtZGdwdV9tbV93cmVnNjTigJk6DQo+PiBk
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmM6Mjk4OjM6IGVycm9yOiBp
bXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJh3cml0ZXHigJkNCj4+DQo+PiBUaGlz
IGlzIHdpdGggbmV4dC0yMDE5MDgwOC4NCj4+DQo+PiBHdWVudGVyDQo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gYW1kLWdmeCBtYWlsaW5nIGxp
c3QNCj4+IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+PiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2FtZC1nZngNCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
