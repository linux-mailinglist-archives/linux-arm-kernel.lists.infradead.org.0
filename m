Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B8A10FB1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 10:50:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9WnjI5rhPdA/xlEBCHNz6sDnLUqzKz+jAnL6OERazY=; b=cehRJZ8hMx85D9
	ZHeAlViftuAAz0We6NaeZLE5Mr+4fOKgTIYnqOb4NY7FFOO4KG2SdOKcupApzI1fEsmFwRcOKzFcL
	Bc35KczuyOsu9YxdyKMRGJBCsma6n8to3ZVxE3PhlpiuPt5Yp6skCMSdTPQCga3q8k0VQbAxckMH4
	YPDvPKy8vRYhZu01VFEb6lsBgTf9aM/NDmH0zf01XFU6ukoIxq5pQ1affzbFqAI9hh8gs9DqUmnNZ
	/TPQI9o/sSJte1SAAv0Wb0/RwGFa7ZrgcUAja5ugz1Rqo72SI2lM0idw4vhAkaIs1885PiD5suJDt
	unin3A+9e2VkmoU04XAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic4pM-0007Xz-Fc; Tue, 03 Dec 2019 09:50:40 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic4or-00072E-Dk; Tue, 03 Dec 2019 09:50:11 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB39ko1o026776; Tue, 3 Dec 2019 10:50:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=hCZ+HxacikHNyHIoqiuMQAMSYzFUkfVGv9TtUX8I5C4=;
 b=YPp58u5aZ/xK8IQPzEQdYvSlZj9FrbcPRdUMRaUiPhnkFCrK8jimcfLNWi8zvm6zckbx
 yAFjBVB4nuFD9dNr5l1kpsrG7pmJpmbBjf8JRugQnZeCC4Apnl1PmujJJz6cVOJnAm1a
 1tkfWcR1TTS/O6tliy+pvWSNrx7ttH2hIcuuZlopkdTXK6tDIJGgbEjL8nheCBuRb1ls
 Cxy++oG5NsXss4V6DNBDhDP4ENMC/CmTDrkziOLCjSlx5OfM347By9uY8zdC/q9QECAO
 U2MSx+pc6I/U8Z82bc3vqwOskuoqK+xXv3sUs+Qn6kmoMggvT5kfCm70wTiATE6g1RoH 9Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wkee9xrv0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 Dec 2019 10:50:07 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BF078100034;
 Tue,  3 Dec 2019 10:50:01 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id AB1652AE14B;
 Tue,  3 Dec 2019 10:50:01 +0100 (CET)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 3 Dec
 2019 10:50:01 +0100
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Tue, 3 Dec 2019 10:50:01 +0100
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: Re: [RFC 2/5] hwspinlock: Add Realtek RTD1195 SB2
Thread-Topic: [RFC 2/5] hwspinlock: Add Realtek RTD1195 SB2
Thread-Index: AQHVqVywuuy8IHnT9EO7IvCmvGesz6eoCMIAgAADdoCAAA5ZAA==
Date: Tue, 3 Dec 2019 09:50:01 +0000
Message-ID: <78d19596-2f10-2403-25fd-a2be4b5dd0f4@st.com>
References: <20191202220535.6208-1-afaerber@suse.de>
 <20191202220535.6208-3-afaerber@suse.de>
 <14b79ade-e1ae-388f-37de-07d67837de2f@st.com>
 <037384de-90b4-a4b0-d761-ffb3353cdbae@suse.de>
In-Reply-To: <037384de-90b4-a4b0-d761-ffb3353cdbae@suse.de>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <9970BDDB70657C479CDB64055A66B1E9@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-03_01:2019-11-29,2019-12-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_015009_832370_6FE77428 
X-CRM114-Status: GOOD (  30.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Bjorn
 Andersson <bjorn.andersson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcw0KDQoNCk9uIDAzLzEyLzIwMTkgOTo1OCBBTSwgQW5kcmVhcyBGw6RyYmVyIHdy
b3RlOg0KPiBIaSBGYWJpZW4sDQo+DQo+IEFtIDAzLjEyLjE5IHVtIDA5OjQ2IHNjaHJpZWIgRmFi
aWVuIERFU1NFTk5FOg0KPj4gT24gMDIvMTIvMjAxOSAxMTowNSBQTSwgQW5kcmVhcyBGw6RyYmVy
IHdyb3RlOg0KPj4+IEltcGxlbWVudCBhIGRyaXZlciBmb3IgaGFyZHdhcmUgc2VtYXBob3JlcyBm
b3VuZCBpbiBSVEQxMTk1IFNvQy4NCj4+PiBJdCBhbGxvd3MgZm9yIGJvdGggcGVyLXJlZ2lzdGVy
IGluc3RhbmNlcyAoU0IyX0hEX1NFTSkgYXMgd2VsbCBhcw0KPj4+IGNvbnRpZ3VvdXMgcmVnaXN0
ZXIgcmFuZ2VzIChTQjJfSERfU0VNX05FV1swLTddKS4NCj4+Pg0KPj4+IFdoaWxlIHRoZXNlIHJl
Z2lzdGVycyBhcmUgcGFydCBvZiB0aGUgU0IyIHN5c2NvbiwgdGhpcyBpbXBsZW1lbnRhdGlvbg0K
Pj4+IGRvZXMgbm90IHVzZSBzeXNjb24sIHRvIGFsbG93IGFzc2lnbmluZyBvbmUgYXMgU0IyIHN5
c2NvbidzIGh3bG9jay4NCj4+Pg0KPj4+IENjOiBDaGVuZy1ZdSBMZWUgPGN5bGVlMTJAcmVhbHRl
ay5jb20+DQo+Pj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNl
LmRlPg0KPj4+IC0tLQ0KPj4+ICAgIGRyaXZlcnMvaHdzcGlubG9jay9LY29uZmlnICAgICAgICAg
ICB8ICAxMSArKysrDQo+Pj4gICAgZHJpdmVycy9od3NwaW5sb2NrL01ha2VmaWxlICAgICAgICAg
IHwgICAxICsNCj4+PiAgICBkcml2ZXJzL2h3c3BpbmxvY2svcnRkMTE5NV9zYjJfc2VtLmMgfCAx
MDEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+PiAgICAzIGZpbGVzIGNo
YW5nZWQsIDExMyBpbnNlcnRpb25zKCspDQo+Pj4gICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvaHdzcGlubG9jay9ydGQxMTk1X3NiMl9zZW0uYw0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvaHdzcGlubG9jay9LY29uZmlnIGIvZHJpdmVycy9od3NwaW5sb2NrL0tjb25maWcNCj4+
PiBpbmRleCAzNzc0MGU5OTJjZmEuLjljMjZjNDM2ZDM5OSAxMDA2NDQNCj4+PiAtLS0gYS9kcml2
ZXJzL2h3c3BpbmxvY2svS2NvbmZpZw0KPj4+ICsrKyBiL2RyaXZlcnMvaHdzcGlubG9jay9LY29u
ZmlnDQo+Pj4gQEAgLTI4LDYgKzI4LDE3IEBAIGNvbmZpZyBIV1NQSU5MT0NLX1FDT00NCj4+PiAg
ICANCj4+PiAgICAJICBJZiB1bnN1cmUsIHNheSBOLg0KPj4+ICAgIA0KPj4+ICtjb25maWcgSFdT
UElOTE9DS19SVEQxMTk1X1NCMg0KPj4+ICsJdHJpc3RhdGUgIlJlYWx0ZWsgUlREMTE5NSBTQjIg
SGFyZHdhcmUgU3BpbmxvY2sgZGV2aWNlIg0KPj4+ICsJZGVwZW5kcyBvbiBIV1NQSU5MT0NLDQo+
Pj4gKwlkZXBlbmRzIG9uIEFSQ0hfUkVBTFRFSyB8fCBDT01QSUxFX1RFU1QNCj4+PiArCWRlZmF1
bHQgQVJDSF9SRUFMVEVLDQo+Pj4gKwloZWxwDQo+Pj4gKwkgIFNheSB5IGhlcmUgdG8gc3VwcG9y
dCB0aGUgUmVhbHRlayBIYXJkd2FyZSBTZW1hcGhvcmUgZnVuY3Rpb25hbGl0eSwNCj4+PiArCSAg
Zm91bmQgb24gdGhlIFJURDExOTUgYW5kIGxhdGVyIFNvQyBmYW1pbGllcy4NCj4+PiArDQo+Pj4g
KwkgIElmIHVuc3VyZSwgc2F5IE4uDQo+Pj4gKw0KPj4+ICAgIGNvbmZpZyBIV1NQSU5MT0NLX1NJ
UkYNCj4+PiAgICAJdHJpc3RhdGUgIlNJUkYgSGFyZHdhcmUgU3BpbmxvY2sgZGV2aWNlIg0KPj4+
ICAgIAlkZXBlbmRzIG9uIEhXU1BJTkxPQ0sNCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9od3Nw
aW5sb2NrL01ha2VmaWxlIGIvZHJpdmVycy9od3NwaW5sb2NrL01ha2VmaWxlDQo+Pj4gaW5kZXgg
ZWQwNTNlM2YwMmJlLi5kNWJkNTk0MTI0NjggMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9od3Nw
aW5sb2NrL01ha2VmaWxlDQo+Pj4gKysrIGIvZHJpdmVycy9od3NwaW5sb2NrL01ha2VmaWxlDQo+
Pj4gQEAgLTYsNiArNiw3IEBADQo+Pj4gICAgb2JqLSQoQ09ORklHX0hXU1BJTkxPQ0spCQkrPSBo
d3NwaW5sb2NrX2NvcmUubw0KPj4+ICAgIG9iai0kKENPTkZJR19IV1NQSU5MT0NLX09NQVApCQkr
PSBvbWFwX2h3c3BpbmxvY2subw0KPj4+ICAgIG9iai0kKENPTkZJR19IV1NQSU5MT0NLX1FDT00p
CQkrPSBxY29tX2h3c3BpbmxvY2subw0KPj4+ICtvYmotJChDT05GSUdfSFdTUElOTE9DS19SVEQx
MTk1X1NCMikJKz0gcnRkMTE5NV9zYjJfc2VtLm8NCj4+PiAgICBvYmotJChDT05GSUdfSFdTUElO
TE9DS19TSVJGKQkJKz0gc2lyZl9od3NwaW5sb2NrLm8NCj4+PiAgICBvYmotJChDT05GSUdfSFdT
UElOTE9DS19TUFJEKQkJKz0gc3ByZF9od3NwaW5sb2NrLm8NCj4+PiAgICBvYmotJChDT05GSUdf
SFdTUElOTE9DS19TVE0zMikJCSs9IHN0bTMyX2h3c3BpbmxvY2subw0KPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2h3c3BpbmxvY2svcnRkMTE5NV9zYjJfc2VtLmMgYi9kcml2ZXJzL2h3c3Bpbmxv
Y2svcnRkMTE5NV9zYjJfc2VtLmMNCj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4+IGluZGV4
IDAwMDAwMDAwMDAwMC4uYWU5MjVkMDU3ODc0DQo+Pj4gLS0tIC9kZXYvbnVsbA0KPj4+ICsrKyBi
L2RyaXZlcnMvaHdzcGlubG9jay9ydGQxMTk1X3NiMl9zZW0uYw0KPj4+IEBAIC0wLDAgKzEsMTAx
IEBADQo+Pj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyDQo+
Pj4gKy8qDQo+Pj4gKyAqIFJURDExOTUgU0IyIGhhcmR3YXJlIHNlbWFwaG9yZQ0KPj4+ICsgKg0K
Pj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkgQW5kcmVhcyBGw6RyYmVyDQo+Pj4gKyAqLw0KPj4+
ICsNCj4+PiArI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPg0KPj4+ICsjaW5jbHVkZSA8bGludXgv
aHdzcGlubG9jay5oPg0KPj4+ICsjaW5jbHVkZSA8bGludXgvaWRyLmg+DQo+Pj4gKyNpbmNsdWRl
IDxsaW51eC9pby5oPg0KPj4+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+DQo+Pj4gKyNpbmNs
dWRlIDxsaW51eC9vZi5oPg0KPj4+ICsjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPg0KPj4+
ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+DQo+Pj4gKw0KPj4+ICsjaW5jbHVk
ZSAiaHdzcGlubG9ja19pbnRlcm5hbC5oIg0KPj4+ICsNCj4+PiArc3RydWN0IHJ0ZDExOTVfc2Iy
X3NlbSB7DQo+Pj4gKwlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2Ow0KPj4+ICsJdm9pZCBf
X2lvbWVtICpiYXNlOw0KPj4+ICsJaW50IGJhc2VfaWQ7DQo+PiBUaGUgcGRldiwgYmFzZSBhbmQg
YmFzZV9pZCBtZW1iZXJzIG9mIHRoaXMgc3RydWN0IGFyZSBzZXQgaW4gLnByb2JlKCkNCj4+IGJ1
dCBuZXZlciByZWFkIGFueXdoZXJlOiB5b3UgbWF5IHJlbW92ZSB0aGVtIGFuZCBrZWVwIG9ubHkg
bG9ja2Rldg0KPiBIbW0sIHRoaXMgbW9kdWxlIGRyaXZlciBpcyBzdGlsbCBtaXNzaW5nIGEgcmVt
b3ZlIGhvb2sgdGhhdCBtaWdodCBuZWVkDQo+IHRoZW0uIEkgd2FzIG9yaWdpbmFsbHkgcGxhbm5p
bmcgdG8gcGFzcyB0aGlzIHN0cnVjdCBhcyBwcml2IHRvIHRoZQ0KPiBpbml0aWFsIGxvY2tzLCBi
dXQgdGhhdCBkaWRuJ3Qgd29yayBvdXQgZm9yIG1vcmUgdGhhbiBvbmUgbG9jay4NCg0KDQpJIGRv
IG5vdCB0aGluayB0aGF0IHlvdSBuZWVkIHRvIHJlYWQgdGhlc2UgcGFyYW1ldGVycyBiYWNrIGlu
IC5yZW1vdmUoKS4NCg0KSW4gdG9wIG9mIHRoYXQsIGlmIHlvdSB1c2UgZGV2bV94eHgoKSBldmVy
eXdoZXJlIGluIC5wcm9iZSgpLCB0aGVuIA0KLnJlbW92ZSgpIHdvdWxkIHByb2JhYmx5IGJlIGVt
cHR5LiBBcGFydCBtYXliZSBhIGNhbGwgdG8gaWRyX3JlbW92ZSgpIG9yIA0KaWRyX2Rlc3Ryb3ko
KS4NCg0KDQo+DQo+IEFsc28sIGhhdmUgeW91IGV2ZXIgaGFkIHRoZSBjYXNlIHdoZXJlIGFuIGh3
c3BpbmxvY2sgZHJpdmVyIHdlcmUgdXNpbmcgYQ0KPiBzeXNjb24gaW5zdGVhZCBvZiBfX2lvbWVt
IHBvaW50ZXIsIGFuZCBwb3RlbnRpYWxseSBiZSB1c2VkIGFzIGh3bG9jayBmb3INCj4gdGhhdCBz
YW1lIHN5c2Nvbj8gSSBhc3N1bWVkIHRoYXQgd291bGQgY2F1c2UgY2lyY3VsYXIgcHJvYmluZyBw
cm9ibGVtcywNCj4gYnV0IEkgZGlkbid0IGFjdHVhbGx5IHRlc3QgaXQgYW5kIGNvbnNpZGVyZWQg
aXQgYSBiYWQgZGVzaWduIGlkZWE/IElmIGl0DQo+IGlzIHN1cHBvcnRlZCwgYSByZWdtYXAgd291
bGQgYmUgdGhlIGFsdGVybmF0aXZlIHRvIGJhc2UgYWJvdmUuDQoNCg0KSSBkbyBub3QgaGF2ZSBh
bnkgZXhwZXJpZW5jZSBvbiB0aGlzIHBhcnRpY3VsYXIgcG9pbnQuIEJ1dCBub3RlIHRoYXQgDQoi
c3lzY29uIiBkcml2ZXJzIGNhbiBkZWNsYXJlIGFuwqAgJ2h3bG9ja3MnIHByb3BlcnR5IGl0IHRo
ZWlyIERUIG5vZGUuIEluIA0KdGhhdCBjYXNlLCBldmVyeSBjYWxsIHRvIHN5c2NvbiBpcyBwcm90
ZWN0ZWQgYnkgdGhlIGh3bG9jayAoc2VlIFsxXSkuIA0KWW91IHNoYWxsIHRha2UgY2FyZSBvZiB0
aGlzIHRvby4NCg0KWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC84
NzI4MTIvDQoNCg0KPg0KPj4+ICsJc3RydWN0IGh3c3BpbmxvY2tfZGV2aWNlIGxvY2tkZXY7DQo+
Pj4gK307DQo+Pj4gKw0KPj4+ICtzdGF0aWMgREVGSU5FX0lEUihydGQxMTk1X3NiMl9zZW1faWRy
KTsNCj4+PiArDQo+Pj4gK3N0YXRpYyBpbnQgcnRkMTE5NV9zYjJfc2VtX3RyeWxvY2soc3RydWN0
IGh3c3BpbmxvY2sgKmxvY2spDQo+Pj4gK3sNCj4+PiArCXZvaWQgX19pb21lbSAqcmVnID0gKHZv
aWQgX19pb21lbSAqKWxvY2stPnByaXY7DQo+Pj4gKw0KPj4+ICsJcmV0dXJuIHJlYWRsX3JlbGF4
ZWQocmVnKSAmIEJJVCgwKTsNCj4+PiArfQ0KPj4+ICsNCj4+PiArc3RhdGljIHZvaWQgcnRkMTE5
NV9zYjJfc2VtX3VubG9jayhzdHJ1Y3QgaHdzcGlubG9jayAqbG9jaykNCj4+PiArew0KPj4+ICsJ
dm9pZCBfX2lvbWVtICpyZWcgPSAodm9pZCBfX2lvbWVtICopbG9jay0+cHJpdjsNCj4+PiArDQo+
Pj4gKwl3cml0ZWxfcmVsYXhlZCgwLCByZWcpOw0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IGh3c3BpbmxvY2tfb3BzIHJ0ZDExOTVfc2IyX3NlbV9od3NwaW5sb2NrX29w
cyA9IHsNCj4+PiArCS50cnlsb2NrCT0gcnRkMTE5NV9zYjJfc2VtX3RyeWxvY2ssDQo+Pj4gKwku
dW5sb2NrCQk9IHJ0ZDExOTVfc2IyX3NlbV91bmxvY2ssDQo+Pj4gK307DQo+Pj4gKw0KPj4+ICtz
dGF0aWMgaW50IHJ0ZDExOTVfc2IyX3NlbV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQ0KPj4+ICt7DQo+Pj4gKwlzdHJ1Y3QgcnRkMTE5NV9zYjJfc2VtICpzZW07DQo+Pj4gKwlz
dHJ1Y3QgaHdzcGlubG9jayAqbG9jazsNCj4+PiArCXN0cnVjdCByZXNvdXJjZSAqcmVzOw0KPj4+
ICsJaW50IGksIG51bTsNCj4+PiArDQo+Pj4gKwlyZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2Uo
cGRldiwgSU9SRVNPVVJDRV9NRU0sIDApOw0KPj4+ICsJaWYgKCFyZXMpDQo+Pj4gKwkJcmV0dXJu
IC1FTk9NRU07DQo+Pj4gKw0KPj4+ICsJbnVtID0gcmVzb3VyY2Vfc2l6ZShyZXMpIC8gNDsNCj4+
PiArDQo+Pj4gKwlzZW0gPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpzZW0pICsg
bnVtICogc2l6ZW9mKCpsb2NrKSwNCj4+PiArCQkJICAgR0ZQX0tFUk5FTCk7DQo+Pj4gKwlpZiAo
IXNlbSkNCj4+PiArCQlyZXR1cm4gLUVOT01FTTsNCj4+PiArDQo+Pj4gKwlzZW0tPnBkZXYgPSBw
ZGV2Ow0KPj4+ICsNCj4+PiArCXNlbS0+YmFzZSA9IG9mX2lvbWFwKHBkZXYtPmRldi5vZl9ub2Rl
LCAwKTsNCj4+IFlvdSBtYXkgdXNlIGRldm1faW9yZW1hcF9yZXNvdXJjZSgpIGhlcmUuDQo+IFdv
dWxkbid0IHRoYXQgYWxzbyByZXNlcnZlIHRoaXMgbWVtb3J5IGFuZCB0aHVzIGNhdXNlIGNvbmZs
aWN0cz8NCg0KDQpNeSBzdWdnZXN0aW9uIGNvbnNpc3RzIGluIHVzaW5nIHRoZSBkZXZtXyB2ZXJz
aW9uLiBJIGRvIG5vdCB0aGluayB0aGF0IA0KaXQgY2FuIGNhdXNlIGFueSB0cm91YmxlLg0KDQoN
Cj4NCj4gSSBoYXZlIGFub3RoZXIgdW5wb3N0ZWQgZHJpdmVyIG9uIHRoZSBzYW1lIHN5c2NvbiAo
cmVhc29uIGZvciBiYXNpbmcNCj4gdGhpcyBvbiB0aGUgc3lzY29uIHNlcmllcyBbMV0pLCB3aGlj
aCBjdXJyZW50bHkgb3ZlcmxhcHMgaXQgLSB0byBiZQ0KPiB1cGRhdGVkIHRvIHN5c2Nvbi4NCj4N
Cj4gVGhhbmtzIGZvciBpbml0aWFsIHJldmlldywNCj4gQW5kcmVhcw0KPg0KPiBbMV0gaHR0cHM6
Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTI2OTk3MS8NCj4NCj4+PiArCWlmICghc2Vt
LT5iYXNlKQ0KPj4+ICsJCXJldHVybiAtRU5PTUVNOw0KPj4+ICsNCj4+PiArCWZvciAoaSA9IDA7
IGkgPCBudW07IGkrKykgew0KPj4+ICsJCWxvY2sgPSAmc2VtLT5sb2NrZGV2LmxvY2tbaV07DQo+
Pj4gKwkJbG9jay0+cHJpdiA9IHNlbS0+YmFzZSArIGkgKiA0Ow0KPj4+ICsJfQ0KPj4+ICsNCj4+
PiArCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHNlbSk7DQo+Pj4gKw0KPj4+ICsJc2VtLT5i
YXNlX2lkID0gaWRyX2FsbG9jKCZydGQxMTk1X3NiMl9zZW1faWRyLCBzZW0sIDAsIDAsIEdGUF9L
RVJORUwpOw0KPj4+ICsNCj4+PiArCXJldHVybiBkZXZtX2h3c3Bpbl9sb2NrX3JlZ2lzdGVyKCZw
ZGV2LT5kZXYsICZzZW0tPmxvY2tkZXYsDQo+Pj4gKwkJJnJ0ZDExOTVfc2IyX3NlbV9od3NwaW5s
b2NrX29wcywgc2VtLT5iYXNlX2lkLCBudW0pOw0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBydGQxMTk1X3NiMl9zZW1fZHRfaWRzW10gPSB7DQo+
Pj4gKwl7IC5jb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTE5NS1zYjItc2VtIiB9LA0KPj4+ICsJ
eyB9DQo+Pj4gK307DQo+Pj4gK01PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHJ0ZDExOTVfc2IyX3Nl
bV9kdF9pZHMpOw0KPj4+ICsNCj4+PiArc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcnRk
MTE5NV9zYjJfc2VtX3BsYXRmb3JtX2RyaXZlciA9IHsNCj4+PiArCS5kcml2ZXIgPSB7DQo+Pj4g
KwkJLm5hbWUgPSAicnRkMTE5NS1zYjItc2VtIiwNCj4+PiArCQkub2ZfbWF0Y2hfdGFibGUgPSBy
dGQxMTk1X3NiMl9zZW1fZHRfaWRzLA0KPj4+ICsJfSwNCj4+PiArCS5wcm9iZSA9IHJ0ZDExOTVf
c2IyX3NlbV9wcm9iZSwNCj4+PiArfTsNCj4+PiArbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihydGQx
MTk1X3NiMl9zZW1fcGxhdGZvcm1fZHJpdmVyKTsNCj4+PiArDQo+Pj4gK01PRFVMRV9MSUNFTlNF
KCJHUEwiKTsNCj4+PiArTU9EVUxFX0RFU0NSSVBUSU9OKCJIYXJkd2FyZSBzcGlubG9jayBkcml2
ZXIgZm9yIFJlYWx0ZWsgUlREMTE5NSBTQjIiKTsNCj4+PiArTU9EVUxFX0FVVEhPUigiQW5kcmVh
cyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPiIpOw0KPgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
