Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E1BF3323
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:32:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEdgG/kppTPNxRxjcY/lsVabySgnuKBUv6YHHyD5y9g=; b=MB2CjD/EjDpywp
	uVPQJ71Xkx1qpiRVjZ5UvxHI4K2Cz5xAN9u970HBIzdqVD82s5nju9qvDVKU1A6oeDimD8V/AfBH7
	kS7qEWHvuOwwf4dh4EWjlfvJuT/EwpM9ZXcOKZ70Er++UJgzuwWwdqFYAJLQvELncdE0wrm4jszhO
	M4DPNk5xZ6K9xmi/8NmuzFtWZH5aKSCMNBjYN9Ugk1+S0nLsBtyurFrtgGS5B07VEiUlD1qvTekBs
	o+KDXpcpZsHAdMWwt/Hq6pRanexL7fqCMhU1JlHKBMPs2uQikWkCeeLZjNon13N8BwMhiXe65rJQ8
	Q0pgbwwbQ9KhaxASJBEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjlh-0000Z6-Lj; Thu, 07 Nov 2019 15:32:17 +0000
Received: from mx1.unisoc.com ([222.66.158.135] helo=SHSQR01.spreadtrum.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjlU-0000XW-56
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:32:09 +0000
Received: from ig2.spreadtrum.com (bjmbx01.spreadtrum.com [10.0.64.7])
 by SHSQR01.spreadtrum.com with ESMTPS id xA7FUKWd066645
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=NO);
 Thu, 7 Nov 2019 23:30:20 +0800 (CST)
 (envelope-from lvqiang.huang@unisoc.com)
Received: from BJMBX01.spreadtrum.com (10.0.64.7) by BJMBX01.spreadtrum.com
 (10.0.64.7) with Microsoft SMTP Server (TLS) id 15.0.847.32; Thu, 7 Nov 2019
 23:30:27 +0800
Received: from BJMBX01.spreadtrum.com ([fe80::54e:9a:129d:fac7]) by
 BJMBX01.spreadtrum.com ([fe80::54e:9a:129d:fac7%16]) with mapi id
 15.00.0847.030; Thu, 7 Nov 2019 23:30:14 +0800
From: =?gb2312?B?u8bCwMe/IChMdnFpYW5nIEh1YW5nKQ==?= <lvqiang.huang@unisoc.com>
To: "'Russell King - ARM Linux admin'" <linux@armlinux.org.uk>
Subject: RE: [PATCH] ARM: check __ex_table in do_bad()
Thread-Topic: [PATCH] ARM: check __ex_table in do_bad()
Thread-Index: AQHVlT9LZv+9LX02T0yFglLQtX/ntKd+6ZYAgADnuyA=
Date: Thu, 7 Nov 2019 15:30:14 +0000
Message-ID: <cbf0ce049a04418999ff9fcbdcf38620@BJMBX01.spreadtrum.com>
References: <1573112713-10115-1-git-send-email-Lvqiang.Huang@unisoc.com>
 <20191107092404.GV25745@shell.armlinux.org.uk>
In-Reply-To: <20191107092404.GV25745@shell.armlinux.org.uk>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.64.20]
MIME-Version: 1.0
X-MAIL: SHSQR01.spreadtrum.com xA7FUKWd066645
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_073204_898884_1CEEFEA0 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ebiederm@xmission.com" <ebiederm@xmission.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "will@kernel.org" <will@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbCwNClRoYW5rcyBhIGxvdCBmb3IgdGhlIHJlcGx5IQ0KDQpVTiBtZWFucyBUQVNL
X0lOVEVSUlVQVElCTEUuIA0KDQpUYXNrIEEgZm91bmQgdGhlIFRhc2sgQiB3YXMgaW4gVEFTS19J
TlRFUlJVUFRJQkxFLiANCkJ1dCBqdXN0IGR1cmluZyB0cnkgdG8gZ2V0IHRoZSBiYWNrdHJhY2Ug
b2YgVGFzayBCLCB0aGUgVGFzayBCIGNoYW5nZWQgdG8gVEFTS19SVU5OSU5HDQoNClRhc2sgQiBw
dXNoIGFuZCBwb3AgdG8gaXQgc3RhY2sgZHVyaW5nIGV4ZWN1dGluZywgc28gdGhlIHN0YWNrIGNv
bnRleHQgb2YgdGFzayBCIGNoYW5nZWQgYSBsb3QuIA0KQnV0IFRhc2sgQSBjYWxjdWxhdGVkIGFu
ZCBwb3AgYSB2YWx1ZSBhcyBzdl9mcCBvZiBUYXNrIEIuIA0KMTAwMjoJCWxkcglzdl9mcCwgW2Zy
YW1lLCAjLTEyXQlAIGdldCBzYXZlZCBmcA0KDQpCdXQsIHRoZSB0YXNrIEIgaGFkIGJlZW4gVEFT
S19SVU5OSU5HLCBzdl9mcCBUYXNrIEEgZ2V0IGNhbiBiZSBhbnkgdmFsdWUgY2hhbmVkIGJ5IHRo
ZSBleGVjdXRpbmcgb2YgVGFzayBCLiANCkl0IGNhbiBiZSBhbiBhY2Nlc3NpYmxlIHVzZXItc3Bh
Y2UgYWRkcmVzcyBvZiBUYXNrIEEncyBhZGRyZXNzIHNwYWNlLiANCg0KSWYgd2UgZW5hYmxlIHRo
ZSBDT05GSUdfQVJNX1VOV0lORCwgdGhlIGNyYXNoIGlzIGdvbmUuIA0KDQotLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KRnJvbTogUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIFttYWls
dG86bGludXhAYXJtbGludXgub3JnLnVrXSANClNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAwNywg
MjAxOSA1OjI0IFBNDQpUbzogu8bCwMe/IChMdnFpYW5nIEh1YW5nKQ0KQ2M6IGViaWVkZXJtQHht
aXNzaW9uLmNvbTsgZGF2ZS5oYW5zZW5AbGludXguaW50ZWwuY29tOyBhbnNodW1hbi5raGFuZHVh
bEBhcm0uY29tOyBha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnOyBmLmZhaW5lbGxpQGdtYWlsLmNv
bTsgd2lsbEBrZXJuZWwub3JnOyB0Z2x4QGxpbnV0cm9uaXguZGU7IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KU3ViamVj
dDogUmU6IFtQQVRDSF0gQVJNOiBjaGVjayBfX2V4X3RhYmxlIGluIGRvX2JhZCgpDQoNCk9uIFRo
dSwgTm92IDA3LCAyMDE5IGF0IDAzOjQ1OjEzUE0gKzA4MDAsIEx2cWlhbmcgd3JvdGU6DQo+IA0K
PiBXZSBnb3QgbWFueSBjcmFzaHMgaW4gZm9yX2VhY2hfZnJhbWUrMHgxOCBhcmNoL2FybS9saWIv
YmFja3RyYWNlLlMNCj4gICAgIDEwMDM6IGxkciByMiwgW3N2X3BjLCAjLTRdDQo+IA0KPiBUaGUg
YmFja3RyYWNlIGlzDQo+ICAgICBkdW1wX2JhY2t0cmFjZQ0KPiAgICAgc2hvd19zdGFjaw0KPiAg
ICAgc2NoZWRfc2hvd190YXNrDQo+ICAgICBzaG93X3N0YXRlX2ZpbHRlcg0KPiAgICAgc3lzcnFf
aGFuZGxlX3Nob3dzdGF0ZV9ibG9ja2VkDQo+ICAgICBfX2hhbmRsZV9zeXNycQ0KPiAgICAgd3Jp
dGVfc3lzcnFfdHJpZ2dlcg0KPiAgICAgcHJvY19yZWdfd3JpdGUNCj4gICAgIF9fdmZzX3dyaXRl
DQo+ICAgICB2ZnNfd3JpdGUNCj4gICAgIHN5c193cml0ZQ0KPiANCj4gUmVsYXRlZCBLZXJuZWwg
Y29uZmlnDQo+ICAgICBDT05GSUdfQ1BVX1NXX0RPTUFJTl9QQU49eQ0KPiAgICAgIyBDT05GSUdf
QVJNX1VOV0lORCBpcyBub3Qgc2V0DQo+ICAgICBDT05GSUdfRlJBTUVfUE9JTlRFUj15DQo+IA0K
PiBUaGUgdGFzayBBIHdhcyBkdW1waW5nIHRoZSBzdGFjayBvZiBhbiBVTiB0YXNrIEIuIEhvd2V2
ZXIsIHRoZSB0YXNrIEINCg0KV2hhdCBpcyAiYW4gVU4gdGFzayBCIj8NCg0KPiBzY2hlZHVsZWQg
dG8gcnVuIG9uIGFub3RoZXIgQ1BVLCB3aGljaCBjYXVzZSBpdCBzdGFjayBjb250ZW50IGNoYW5n
ZWQuDQo+IFRoZW4sIHRhc2sgQSBtYXkgaGl0IGEgcGFnZSBkb21haW4gZmF1bHQgYW5kIGRpZSgp
Lg0KPiAgICAgWzUyMC42NjEzMTRdIFVuaGFuZGxlZCBmYXVsdDogcGFnZSBkb21haW4gZmF1bHQg
KDB4MDFiKSBhdCANCj4gMHgzMjg0OGMwMg0KDQpTbywgdGhlIGJhY2t0cmFjZSBjb2RlIGlzIHRy
eWluZyB0byBhY2Nlc3MgdXNlcnNwYWNlLiAgSXQgaXNuJ3Qgc3VwcG9zZWQgdG8gYmUgYWNjZXNz
aW5nIHVzZXJzcGFjZSAtIHRoZXJlIGFyZSBubyBndWFyYW50ZWVzIHRoYXQgdXNlcnNwYWNlIHdp
bGwgYmUgdXNpbmcgZnJhbWUgcG9pbnRlcnMuICBUaGF0IGlzIHRoZSBidWcuDQoNCi0tDQpSTUsn
cyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0
Y2hlcy8NCkZUVEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMg
YXQgMTIuMU1icHMgZG93biA2MjJrYnBzIHVwIEFjY29yZGluZyB0byBzcGVlZHRlc3QubmV0OiAx
MS45TWJwcyBkb3duIDUwMGticHMgdXANCg0KDQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQpUaGlzIGVt
YWlsIChpbmNsdWRpbmcgaXRzIGF0dGFjaG1lbnRzKSBpcyBpbnRlbmRlZCBvbmx5IGZvciB0aGUg
cGVyc29uIG9yIGVudGl0eSB0byB3aGljaCBpdCBpcyBhZGRyZXNzZWQgYW5kIG1heSBjb250YWlu
IGluZm9ybWF0aW9uIHRoYXQgaXMgcHJpdmlsZWdlZCwgY29uZmlkZW50aWFsIG9yIG90aGVyd2lz
ZSBwcm90ZWN0ZWQgZnJvbSBkaXNjbG9zdXJlLiBVbmF1dGhvcml6ZWQgdXNlLCBkaXNzZW1pbmF0
aW9uLCBkaXN0cmlidXRpb24gb3IgY29weWluZyBvZiB0aGlzIGVtYWlsIG9yIHRoZSBpbmZvcm1h
dGlvbiBoZXJlaW4gb3IgdGFraW5nIGFueSBhY3Rpb24gaW4gcmVsaWFuY2Ugb24gdGhlIGNvbnRl
bnRzIG9mIHRoaXMgZW1haWwgb3IgdGhlIGluZm9ybWF0aW9uIGhlcmVpbiwgYnkgYW55b25lIG90
aGVyIHRoYW4gdGhlIGludGVuZGVkIHJlY2lwaWVudCwgb3IgYW4gZW1wbG95ZWUgb3IgYWdlbnQg
cmVzcG9uc2libGUgZm9yIGRlbGl2ZXJpbmcgdGhlIG1lc3NhZ2UgdG8gdGhlIGludGVuZGVkIHJl
Y2lwaWVudCwgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGFyZSBub3QgdGhlIGludGVu
ZGVkIHJlY2lwaWVudCwgcGxlYXNlIGRvIG5vdCByZWFkLCBjb3B5LCB1c2Ugb3IgZGlzY2xvc2Ug
YW55IHBhcnQgb2YgdGhpcyBlLW1haWwgdG8gb3RoZXJzLiBQbGVhc2Ugbm90aWZ5IHRoZSBzZW5k
ZXIgaW1tZWRpYXRlbHkgYW5kIHBlcm1hbmVudGx5IGRlbGV0ZSB0aGlzIGUtbWFpbCBhbmQgYW55
IGF0dGFjaG1lbnRzIGlmIHlvdSByZWNlaXZlZCBpdCBpbiBlcnJvci4gSW50ZXJuZXQgY29tbXVu
aWNhdGlvbnMgY2Fubm90IGJlIGd1YXJhbnRlZWQgdG8gYmUgdGltZWx5LCBzZWN1cmUsIGVycm9y
LWZyZWUgb3IgdmlydXMtZnJlZS4gVGhlIHNlbmRlciBkb2VzIG5vdCBhY2NlcHQgbGlhYmlsaXR5
IGZvciBhbnkgZXJyb3JzIG9yIG9taXNzaW9ucy4gDQqxvtPKvP68sMbkuL28/r7f09Cxo8Pc0NTW
yqOsyty3qMLJsaO7pLK7tcPQucK2o6y99reiy824+LG+08q8/sv51rjM2LaoytW8/sjLoaPRz737
t8e+rcrayKjKudPDoaLQ+7SroaK3orK8u/K4tNbGsb7Tyrz+u/LG5MTayN2ho8j0t8e4w8zYtqjK
1bz+yMujrMfrzvDUxLbBoaK4tNbGoaIgyrnTw7vyxfvCtrG+08q8/rXEyM66zsTayN2ho8j0zvPK
1bG+08q8/qOsx+u008+1zbPW0NPAvsPQ1Mm+s/2xvtPKvP68sMv509C4vbz+o6yyotLUu9i4tNPK
vP61xLe9yr28tL/MuObWqreivP7Iy6Gjzt63qLGj1qS7pcGqzfjNqNDFvLDKsaGisLLIq6Gizt7O
87vyt8C2vqGjt6K8/sjLttTIzrrOtO3Cqb75sruz0LWj1PDIzqGjDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
