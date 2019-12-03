Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6704510FA1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 09:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A25dTnthiFMTThN9Jd5yZOWBm+NI6vzNuED8DVsdlF0=; b=KnpJrsScllKGAg
	LrKCIuecER9FlUFI/X4RH/pzGWCCNNEmA93XVeLKZGHQuEuoURJEXyK3m94ByQjXPnVmS5fu86Ehl
	EXucDCU9XrhauG17j4BbXltTQ+xhWVmA0z2i0s5uE/LLjFRikXERSUR0XEV1WZx3SjMu1jlzVEsBj
	aLhtZhHnS23dCGBs6NgtlP0WT8BZvwYk87wcKd6iP8ZeidJ4WdekMuChZs0YU0EGooFXw5tW5ulen
	EJ7RwDzmXPSc4480/hcPmdM4Ua37R13SEDJr31WXmsP0AZEO4ZQsKa6OfrRDPEj9EyJe/JfKt5gpK
	62IRd95k501jH7DgfhrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic3pK-0007To-Hr; Tue, 03 Dec 2019 08:46:34 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic3p7-0007M2-IR; Tue, 03 Dec 2019 08:46:23 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB38b1gZ002629; Tue, 3 Dec 2019 09:46:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=GXaYfGfp7teap/Hf7Wvet0f5KtPzIO9m9LH/43yJ3a8=;
 b=outvZT7N0vO8B6Uu63hrdNsIVqJrOGCgjcOV7uM/Q2769cWwf+OQ3RE9cok9wepPZdDB
 vBy6xRy08UUPoj0VRv5Tz1FWlZGFtyg0TWn1GP5l0lWQjQKKfCcBac5/i/4+3D8VL9DE
 qx5yUuK/uqiUsItqDSE/o+6nasyprikLY/tpxHIcgMAwlHEhpOGuF3p2b8md96eZRwmA
 +buHqtKhoZM7o52n7XPX/0rMgI9nXP5s3KfVLxT9wRr7MGSO3WA3ex3BUc4EQ5bAuLdN
 fM7Pnp71lAggGYF/5qHXbk3/t5pbJjNL8ZHOMF0ZKRx+S3y4cQEkQElTp1neKhuBWds0 qw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wkf2xp3pw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 Dec 2019 09:46:19 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0A690100034;
 Tue,  3 Dec 2019 09:46:18 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EA5BA2A9719;
 Tue,  3 Dec 2019 09:46:17 +0100 (CET)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 3 Dec
 2019 09:46:17 +0100
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Tue, 3 Dec 2019 09:46:17 +0100
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: Re: [RFC 2/5] hwspinlock: Add Realtek RTD1195 SB2
Thread-Topic: [RFC 2/5] hwspinlock: Add Realtek RTD1195 SB2
Thread-Index: AQHVqVywuuy8IHnT9EO7IvCmvGesz6eoCMIA
Date: Tue, 3 Dec 2019 08:46:17 +0000
Message-ID: <14b79ade-e1ae-388f-37de-07d67837de2f@st.com>
References: <20191202220535.6208-1-afaerber@suse.de>
 <20191202220535.6208-3-afaerber@suse.de>
In-Reply-To: <20191202220535.6208-3-afaerber@suse.de>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <D3B305A166CA254DB0163C30D2299C04@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-03_01:2019-11-29,2019-12-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_004622_095724_F02A5E76 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Cheng-Yu Lee <cylee12@realtek.com>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Bjorn
 Andersson <bjorn.andersson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcw0KDQoNCkZldyBjb21tZW50cyBiZWxvdy4NCg0KQlINCg0KRmFiaWVuDQoNCg0K
T24gMDIvMTIvMjAxOSAxMTowNSBQTSwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOg0KPiBJbXBsZW1l
bnQgYSBkcml2ZXIgZm9yIGhhcmR3YXJlIHNlbWFwaG9yZXMgZm91bmQgaW4gUlREMTE5NSBTb0Mu
DQo+IEl0IGFsbG93cyBmb3IgYm90aCBwZXItcmVnaXN0ZXIgaW5zdGFuY2VzIChTQjJfSERfU0VN
KSBhcyB3ZWxsIGFzDQo+IGNvbnRpZ3VvdXMgcmVnaXN0ZXIgcmFuZ2VzIChTQjJfSERfU0VNX05F
V1swLTddKS4NCj4NCj4gV2hpbGUgdGhlc2UgcmVnaXN0ZXJzIGFyZSBwYXJ0IG9mIHRoZSBTQjIg
c3lzY29uLCB0aGlzIGltcGxlbWVudGF0aW9uDQo+IGRvZXMgbm90IHVzZSBzeXNjb24sIHRvIGFs
bG93IGFzc2lnbmluZyBvbmUgYXMgU0IyIHN5c2NvbidzIGh3bG9jay4NCj4NCj4gQ2M6IENoZW5n
LVl1IExlZSA8Y3lsZWUxMkByZWFsdGVrLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBG
w6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPg0KPiAtLS0NCj4gICBkcml2ZXJzL2h3c3BpbmxvY2sv
S2NvbmZpZyAgICAgICAgICAgfCAgMTEgKysrKw0KPiAgIGRyaXZlcnMvaHdzcGlubG9jay9NYWtl
ZmlsZSAgICAgICAgICB8ICAgMSArDQo+ICAgZHJpdmVycy9od3NwaW5sb2NrL3J0ZDExOTVfc2Iy
X3NlbS5jIHwgMTAxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ICAgMyBm
aWxlcyBjaGFuZ2VkLCAxMTMgaW5zZXJ0aW9ucygrKQ0KPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2h3c3BpbmxvY2svcnRkMTE5NV9zYjJfc2VtLmMNCj4NCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvaHdzcGlubG9jay9LY29uZmlnIGIvZHJpdmVycy9od3NwaW5sb2NrL0tjb25maWcNCj4g
aW5kZXggMzc3NDBlOTkyY2ZhLi45YzI2YzQzNmQzOTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
aHdzcGlubG9jay9LY29uZmlnDQo+ICsrKyBiL2RyaXZlcnMvaHdzcGlubG9jay9LY29uZmlnDQo+
IEBAIC0yOCw2ICsyOCwxNyBAQCBjb25maWcgSFdTUElOTE9DS19RQ09NDQo+ICAgDQo+ICAgCSAg
SWYgdW5zdXJlLCBzYXkgTi4NCj4gICANCj4gK2NvbmZpZyBIV1NQSU5MT0NLX1JURDExOTVfU0Iy
DQo+ICsJdHJpc3RhdGUgIlJlYWx0ZWsgUlREMTE5NSBTQjIgSGFyZHdhcmUgU3BpbmxvY2sgZGV2
aWNlIg0KPiArCWRlcGVuZHMgb24gSFdTUElOTE9DSw0KPiArCWRlcGVuZHMgb24gQVJDSF9SRUFM
VEVLIHx8IENPTVBJTEVfVEVTVA0KPiArCWRlZmF1bHQgQVJDSF9SRUFMVEVLDQo+ICsJaGVscA0K
PiArCSAgU2F5IHkgaGVyZSB0byBzdXBwb3J0IHRoZSBSZWFsdGVrIEhhcmR3YXJlIFNlbWFwaG9y
ZSBmdW5jdGlvbmFsaXR5LA0KPiArCSAgZm91bmQgb24gdGhlIFJURDExOTUgYW5kIGxhdGVyIFNv
QyBmYW1pbGllcy4NCj4gKw0KPiArCSAgSWYgdW5zdXJlLCBzYXkgTi4NCj4gKw0KPiAgIGNvbmZp
ZyBIV1NQSU5MT0NLX1NJUkYNCj4gICAJdHJpc3RhdGUgIlNJUkYgSGFyZHdhcmUgU3BpbmxvY2sg
ZGV2aWNlIg0KPiAgIAlkZXBlbmRzIG9uIEhXU1BJTkxPQ0sNCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvaHdzcGlubG9jay9NYWtlZmlsZSBiL2RyaXZlcnMvaHdzcGlubG9jay9NYWtlZmlsZQ0KPiBp
bmRleCBlZDA1M2UzZjAyYmUuLmQ1YmQ1OTQxMjQ2OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9o
d3NwaW5sb2NrL01ha2VmaWxlDQo+ICsrKyBiL2RyaXZlcnMvaHdzcGlubG9jay9NYWtlZmlsZQ0K
PiBAQCAtNiw2ICs2LDcgQEANCj4gICBvYmotJChDT05GSUdfSFdTUElOTE9DSykJCSs9IGh3c3Bp
bmxvY2tfY29yZS5vDQo+ICAgb2JqLSQoQ09ORklHX0hXU1BJTkxPQ0tfT01BUCkJCSs9IG9tYXBf
aHdzcGlubG9jay5vDQo+ICAgb2JqLSQoQ09ORklHX0hXU1BJTkxPQ0tfUUNPTSkJCSs9IHFjb21f
aHdzcGlubG9jay5vDQo+ICtvYmotJChDT05GSUdfSFdTUElOTE9DS19SVEQxMTk1X1NCMikJKz0g
cnRkMTE5NV9zYjJfc2VtLm8NCj4gICBvYmotJChDT05GSUdfSFdTUElOTE9DS19TSVJGKQkJKz0g
c2lyZl9od3NwaW5sb2NrLm8NCj4gICBvYmotJChDT05GSUdfSFdTUElOTE9DS19TUFJEKQkJKz0g
c3ByZF9od3NwaW5sb2NrLm8NCj4gICBvYmotJChDT05GSUdfSFdTUElOTE9DS19TVE0zMikJCSs9
IHN0bTMyX2h3c3BpbmxvY2subw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9od3NwaW5sb2NrL3J0
ZDExOTVfc2IyX3NlbS5jIGIvZHJpdmVycy9od3NwaW5sb2NrL3J0ZDExOTVfc2IyX3NlbS5jDQo+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYWU5MjVkMDU3ODc0
DQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvZHJpdmVycy9od3NwaW5sb2NrL3J0ZDExOTVfc2Iy
X3NlbS5jDQo+IEBAIC0wLDAgKzEsMTAxIEBADQo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMC1vci1sYXRlcg0KPiArLyoNCj4gKyAqIFJURDExOTUgU0IyIGhhcmR3YXJlIHNl
bWFwaG9yZQ0KPiArICoNCj4gKyAqIENvcHlyaWdodCAoYykgMjAxOSBBbmRyZWFzIEbDpHJiZXIN
Cj4gKyAqLw0KPiArDQo+ICsjaW5jbHVkZSA8bGludXgvYml0b3BzLmg+DQo+ICsjaW5jbHVkZSA8
bGludXgvaHdzcGlubG9jay5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L2lkci5oPg0KPiArI2luY2x1
ZGUgPGxpbnV4L2lvLmg+DQo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+DQo+ICsjaW5jbHVk
ZSA8bGludXgvb2YuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9vZl9hZGRyZXNzLmg+DQo+ICsjaW5j
bHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+DQo+ICsNCj4gKyNpbmNsdWRlICJod3NwaW5s
b2NrX2ludGVybmFsLmgiDQo+ICsNCj4gK3N0cnVjdCBydGQxMTk1X3NiMl9zZW0gew0KPiArCXN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXY7DQo+ICsJdm9pZCBfX2lvbWVtICpiYXNlOw0KPiAr
CWludCBiYXNlX2lkOw0KVGhlIHBkZXYsIGJhc2UgYW5kIGJhc2VfaWQgbWVtYmVycyBvZiB0aGlz
IHN0cnVjdCBhcmUgc2V0IGluIC5wcm9iZSgpIA0KYnV0IG5ldmVyIHJlYWQgYW55d2hlcmU6IHlv
dSBtYXkgcmVtb3ZlIHRoZW0gYW5kIGtlZXAgb25seSBsb2NrZGV2DQo+ICsJc3RydWN0IGh3c3Bp
bmxvY2tfZGV2aWNlIGxvY2tkZXY7DQo+ICt9Ow0KPiArDQo+ICtzdGF0aWMgREVGSU5FX0lEUihy
dGQxMTk1X3NiMl9zZW1faWRyKTsNCj4gKw0KPiArc3RhdGljIGludCBydGQxMTk1X3NiMl9zZW1f
dHJ5bG9jayhzdHJ1Y3QgaHdzcGlubG9jayAqbG9jaykNCj4gK3sNCj4gKwl2b2lkIF9faW9tZW0g
KnJlZyA9ICh2b2lkIF9faW9tZW0gKilsb2NrLT5wcml2Ow0KPiArDQo+ICsJcmV0dXJuIHJlYWRs
X3JlbGF4ZWQocmVnKSAmIEJJVCgwKTsNCj4gK30NCj4gKw0KPiArc3RhdGljIHZvaWQgcnRkMTE5
NV9zYjJfc2VtX3VubG9jayhzdHJ1Y3QgaHdzcGlubG9jayAqbG9jaykNCj4gK3sNCj4gKwl2b2lk
IF9faW9tZW0gKnJlZyA9ICh2b2lkIF9faW9tZW0gKilsb2NrLT5wcml2Ow0KPiArDQo+ICsJd3Jp
dGVsX3JlbGF4ZWQoMCwgcmVnKTsNCj4gK30NCj4gKw0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBo
d3NwaW5sb2NrX29wcyBydGQxMTk1X3NiMl9zZW1faHdzcGlubG9ja19vcHMgPSB7DQo+ICsJLnRy
eWxvY2sJPSBydGQxMTk1X3NiMl9zZW1fdHJ5bG9jaywNCj4gKwkudW5sb2NrCQk9IHJ0ZDExOTVf
c2IyX3NlbV91bmxvY2ssDQo+ICt9Ow0KPiArDQo+ICtzdGF0aWMgaW50IHJ0ZDExOTVfc2IyX3Nl
bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiArew0KPiArCXN0cnVjdCBy
dGQxMTk1X3NiMl9zZW0gKnNlbTsNCj4gKwlzdHJ1Y3QgaHdzcGlubG9jayAqbG9jazsNCj4gKwlz
dHJ1Y3QgcmVzb3VyY2UgKnJlczsNCj4gKwlpbnQgaSwgbnVtOw0KPiArDQo+ICsJcmVzID0gcGxh
dGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsNCj4gKwlpZiAoIXJl
cykNCj4gKwkJcmV0dXJuIC1FTk9NRU07DQo+ICsNCj4gKwludW0gPSByZXNvdXJjZV9zaXplKHJl
cykgLyA0Ow0KPiArDQo+ICsJc2VtID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigq
c2VtKSArIG51bSAqIHNpemVvZigqbG9jayksDQo+ICsJCQkgICBHRlBfS0VSTkVMKTsNCj4gKwlp
ZiAoIXNlbSkNCj4gKwkJcmV0dXJuIC1FTk9NRU07DQo+ICsNCj4gKwlzZW0tPnBkZXYgPSBwZGV2
Ow0KPiArDQo+ICsJc2VtLT5iYXNlID0gb2ZfaW9tYXAocGRldi0+ZGV2Lm9mX25vZGUsIDApOw0K
WW91IG1heSB1c2UgZGV2bV9pb3JlbWFwX3Jlc291cmNlKCkgaGVyZS4NCj4gKwlpZiAoIXNlbS0+
YmFzZSkNCj4gKwkJcmV0dXJuIC1FTk9NRU07DQo+ICsNCj4gKwlmb3IgKGkgPSAwOyBpIDwgbnVt
OyBpKyspIHsNCj4gKwkJbG9jayA9ICZzZW0tPmxvY2tkZXYubG9ja1tpXTsNCj4gKwkJbG9jay0+
cHJpdiA9IHNlbS0+YmFzZSArIGkgKiA0Ow0KPiArCX0NCj4gKw0KPiArCXBsYXRmb3JtX3NldF9k
cnZkYXRhKHBkZXYsIHNlbSk7DQo+ICsNCj4gKwlzZW0tPmJhc2VfaWQgPSBpZHJfYWxsb2MoJnJ0
ZDExOTVfc2IyX3NlbV9pZHIsIHNlbSwgMCwgMCwgR0ZQX0tFUk5FTCk7DQo+ICsNCj4gKwlyZXR1
cm4gZGV2bV9od3NwaW5fbG9ja19yZWdpc3RlcigmcGRldi0+ZGV2LCAmc2VtLT5sb2NrZGV2LA0K
PiArCQkmcnRkMTE5NV9zYjJfc2VtX2h3c3BpbmxvY2tfb3BzLCBzZW0tPmJhc2VfaWQsIG51bSk7
DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJ0ZDExOTVf
c2IyX3NlbV9kdF9pZHNbXSA9IHsNCj4gKwl7IC5jb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTE5
NS1zYjItc2VtIiB9LA0KPiArCXsgfQ0KPiArfTsNCj4gK01PRFVMRV9ERVZJQ0VfVEFCTEUob2Ys
IHJ0ZDExOTVfc2IyX3NlbV9kdF9pZHMpOw0KPiArDQo+ICtzdGF0aWMgc3RydWN0IHBsYXRmb3Jt
X2RyaXZlciBydGQxMTk1X3NiMl9zZW1fcGxhdGZvcm1fZHJpdmVyID0gew0KPiArCS5kcml2ZXIg
PSB7DQo+ICsJCS5uYW1lID0gInJ0ZDExOTUtc2IyLXNlbSIsDQo+ICsJCS5vZl9tYXRjaF90YWJs
ZSA9IHJ0ZDExOTVfc2IyX3NlbV9kdF9pZHMsDQo+ICsJfSwNCj4gKwkucHJvYmUgPSBydGQxMTk1
X3NiMl9zZW1fcHJvYmUsDQo+ICt9Ow0KPiArbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihydGQxMTk1
X3NiMl9zZW1fcGxhdGZvcm1fZHJpdmVyKTsNCj4gKw0KPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCIp
Ow0KPiArTU9EVUxFX0RFU0NSSVBUSU9OKCJIYXJkd2FyZSBzcGlubG9jayBkcml2ZXIgZm9yIFJl
YWx0ZWsgUlREMTE5NSBTQjIiKTsNCj4gK01PRFVMRV9BVVRIT1IoIkFuZHJlYXMgRsOkcmJlciA8
YWZhZXJiZXJAc3VzZS5kZT4iKTsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
