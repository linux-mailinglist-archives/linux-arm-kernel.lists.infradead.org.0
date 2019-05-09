Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE6A1864F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 09:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfEnCMO1UrTFlMVWB4KrtLsSTeKpvBRjNtGio1758tE=; b=j4WQOHTCtX9o+k
	fEHj1mnZ7OVG3HO4fP8BFjANDj4MGLylIyQCfC9H9MvxkVCyWDNy4eT8Eu8DQsVCVIAJwpbodjQcG
	mRT23Fcj9IWRp+Ta2KktEspDuOSrn1D1sQ4e8GHQAEou/gCPgTom1fI+vZELQqD8w162OD4rPprTl
	etniXzqcynyjD+/a/XJCs8MBqVe0/GXjtQy8xLQYHwSUbiOBVkxuI9qWlyErXUmXGhHnYLEJJnhsU
	y7Vp3ehNajpmPZKjE3s72Gjj0FHrkT5paWQNq02fzDGLXs5MLSvZdheRLKuRVihTeJ1RULnnX0qdA
	705Up1NfFBYeNYSMn2nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOdgq-0005Kd-8z; Thu, 09 May 2019 07:42:04 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOdgc-0005JK-2h
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 07:41:51 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x497W7il022468; Thu, 9 May 2019 09:41:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=wG0Xfxv+jPDjeJvGNsddWLb0baeLwqwmAheX1cvn5mo=;
 b=xroSGT35wM+MwOSVuCcNBYuVxd6Nx9HlzVvuAMPDwtR1JgRWNSaMTeJ8wC21yy52qZdq
 OZwIlLpfX9uPZLo+cSR5YHYiVQf/TYM9PPsyThkvcQCfH70etUzG0u+mE5hQJn9cY69B
 DdLwGnf7tqaOZJrZ25KauCaVJnH1mYMUmD0OCCa1JnWCZwsUcaS76ZXswjtqEe/N+SFk
 GjRHlNg4DoS21qlQUIyIAuUnadLQMnnUmPRpxKgIMLPI1A3JlXdbub3WWIgb5Qm8Eb9I
 4RWgfsh0T/G8WYVSz6i14Or2W7JD5NtXNq9wMyLlZsE24Kw3Y0brFIDST/tHpvgq2o0c gA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sc9s49sr4-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 09 May 2019 09:41:31 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0422642;
 Thu,  9 May 2019 07:41:28 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B6AE413C2;
 Thu,  9 May 2019 07:41:28 +0000 (GMT)
Received: from SFHDAG3NODE1.st.com (10.75.127.7) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 May
 2019 09:41:28 +0200
Received: from SFHDAG3NODE1.st.com ([fe80::1166:1abb:aad4:5f86]) by
 SFHDAG3NODE1.st.com ([fe80::1166:1abb:aad4:5f86%20]) with mapi id
 15.00.1347.000; Thu, 9 May 2019 09:41:28 +0200
From: Erwan LE RAY <erwan.leray@st.com>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, "Kevin
 Hilman" <khilman@baylibre.com>
Subject: Re: [PATCH] ARM: debug: stm32: add UART early console configuration
Thread-Topic: [PATCH] ARM: debug: stm32: add UART early console configuration
Thread-Index: AQHU73OP100nvdfkikCtYg1KY+YHZqY1DV8AgC1naoA=
Date: Thu, 9 May 2019 07:41:28 +0000
Message-ID: <deebc332-277b-76b9-421f-7f67c6bdacc8@st.com>
References: <1554883239-12051-1-git-send-email-erwan.leray@st.com>
 <CAJiuCcd9884Kn2MAtLMzZpdSa-=xpCDKRLQSVC6NmRNC+YFtaA@mail.gmail.com>
In-Reply-To: <CAJiuCcd9884Kn2MAtLMzZpdSa-=xpCDKRLQSVC6NmRNC+YFtaA@mail.gmail.com>
Accept-Language: en-US, fr-FR
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <7E58E97697490E4C89F88A875D7CF662@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_004150_411713_8787ED4C 
X-CRM114-Status: GOOD (  25.31  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Fabrice
 GASNIER <fabrice.gasnier@st.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Clement Peron <clement.peron@devialet.com>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Gerald
 BAEZA <gerald.baeza@st.com>, Simon Horman <horms+renesas@verge.net.au>,
 Bich HEMON <bich.hemon@st.com>, Biju Das <biju.das@bp.renesas.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT2xvZiwgQXJuZCBhbmQgS2V2aW4sDQoNCkNhbiB5b3UgcGxlYXNlIHByb3ZpZGUgbWUgeW91
ciBmZWVkYmFjayBhYm91dCB0aGUgcGF0Y2gsIGFuZCBhYm91dCANCkNsZW1lbnQgY2hhbmdlcyBw
cm9wb3NhbC4NCg0KSSB3b3VsZCBsaWtlIHRvIGtub3cgaWYgeW91IGV4cGVjdCBhIFYyIChiYXNl
ZCBvbiBDbGVtZW50IGNvbW1lbnRzKSwgb3IgDQppZiB0aGUgVjEgaWYgT0sgZm9yIHlvdXIuDQoN
CkJlc3QgcmVnYXJkcywgRXJ3YW4uDQoNCg0KT24gNC8xMC8xOSAxMjoxOSBQTSwgQ2zDqW1lbnQg
UMOpcm9uIHdyb3RlOg0KPiBIaSwNCj4NCj4gT24gV2VkLCAxMCBBcHIgMjAxOSBhdCAxMDowMywg
RXJ3YW4gTGUgUmF5IDxlcndhbi5sZXJheUBzdC5jb20+IHdyb3RlOg0KPj4gLSBUaGlzIHBhdGNo
IGFsbG93cyB0byBjb25maWd1cmUgVUFSVCBpbnN0YW5jZSBmb3IgZWFybHkgY29uc29sZSBieSBz
ZXR0aW5nDQo+PiBwaHlzaWNhbCBhbmQgdmlydHVhbCBiYXNlIGFkZHJlc3Nlcy4NCj4+IC0gVGhp
cyBwYXRjaCBhZGRzIFVBUlQgZWFybHkgY29uc29sZSBzdXBwb3J0IGZvciBzdG0zMmg3IGFuZCBz
dG0zMm1wMTU3Yy4NCj4gKk5ld2JpZSBrZXJuZWwgc3BlYWtpbmcqDQo+DQo+IEkgdGhpbmsgdGhp
cyBwYXRjaCBpbnRyb2R1Y2UgYXQgbGVhc3QgMiwgSSB3aWxsIGdvIGZvciAzIG1vZGlmaWNhdGlv
bnM6DQo+IC1BZGRpbmcgSDcgRGVidWcNCj4gLUFkZGluZyBNUDEgZGVidWcNCj4gLShGaXhpbmcg
ZGVwZW5kZW5jaWVzIEY0L0Y3KQ0KPg0KPiBXaXRoIG15IGxpdHRsZSBrbm93bGVkZ2UsIEkgd2ls
bCBzZXBhcmF0ZSB0aGlzIHBhdGNoIGluIDMuDQo+IEFsc28gdHJ5IHRvIGhhdmUgYSBjb21taXQg
bG9nIGxpa2UgdGhpcyA6DQo+IDEpIEV4cGxhaW4gV2hhdCdzIHdyb25nIG9yIGlzIG5vdCBwcmVz
ZW50DQo+IDIpIEV4cGxhaW4gd2hhdCB5b3UgZG8gaW4gdGhlIHBhdGNoDQo+DQo+IGhlcmUgeW91
IGRvbid0IGV4cGxhaW4gYSBsb3Qgd2hhdCB0aGUgaXNzdWVzIGFyZS4NCj4NCj4gTXkgMmN0cyBv
biB5b3VyIHBhdGNoLCBhZ2FpbiBuZXdiaWUgdXNlciBoZXJlIGFuZCBJIGhhdmUgcG9zdCBvbmx5
IGZldw0KPiBwYXRjaGVzIGJ1dCB0aGlzIGlzIG15IHNoYXJpbmcuDQo+DQo+IFRoYW5rcywNCj4g
Q2xlbWVudA0KPg0KPj4gU2lnbmVkLW9mZi1ieTogRXJ3YW4gTGUgUmF5IDxlcndhbi5sZXJheUBz
dC5jb20+DQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL0tjb25maWcuZGVidWcgYi9hcmNo
L2FybS9LY29uZmlnLmRlYnVnDQo+PiBpbmRleCA2ZDZlMDMzLi40ZWEzZTE3IDEwMDY0NA0KPj4g
LS0tIGEvYXJjaC9hcm0vS2NvbmZpZy5kZWJ1Zw0KPj4gKysrIGIvYXJjaC9hcm0vS2NvbmZpZy5k
ZWJ1Zw0KPj4gQEAgLTEyMDEsMjMgKzEyMDEsNDkgQEAgY2hvaWNlDQo+Pg0KPj4gICAgICAgICAg
Y29uZmlnIFNUTTMyRjRfREVCVUdfVUFSVA0KPj4gICAgICAgICAgICAgICAgICBib29sICJVc2Ug
U1RNMzJGNCBVQVJUIGZvciBsb3ctbGV2ZWwgZGVidWciDQo+PiAtICAgICAgICAgICAgICAgZGVw
ZW5kcyBvbiBBUkNIX1NUTTMyDQo+PiArICAgICAgICAgICAgICAgZGVwZW5kcyBvbiBNQUNIX1NU
TTMyRjQyOSB8fCBNQUNIX1NUTTMyRjQ2OQ0KPj4gICAgICAgICAgICAgICAgICBzZWxlY3QgREVC
VUdfU1RNMzJfVUFSVA0KPj4gICAgICAgICAgICAgICAgICBoZWxwDQo+PiAgICAgICAgICAgICAg
ICAgICAgU2F5IFkgaGVyZSBpZiB5b3Ugd2FudCBrZXJuZWwgbG93LWxldmVsIGRlYnVnZ2luZyBz
dXBwb3J0DQo+PiAgICAgICAgICAgICAgICAgICAgb24gU1RNMzJGNCBiYXNlZCBwbGF0Zm9ybXMs
IHdoaWNoIGRlZmF1bHQgVUFSVCBpcyB3aXJlZCBvbg0KPj4gLSAgICAgICAgICAgICAgICAgVVNB
UlQxLg0KPj4gKyAgICAgICAgICAgICAgICAgVVNBUlQxLCBidXQgYW5vdGhlciBVQVJUIGluc3Rh
bmNlIGNhbiBiZSBzZWxlY3RlZCBieSBtb2RpZnlpbmcNCj4+ICsgICAgICAgICAgICAgICAgIENP
TkZJR19ERUJVR19VQVJUX1BIWVMuDQo+Pg0KPj4gICAgICAgICAgICAgICAgICAgIElmIHVuc3Vy
ZSwgc2F5IE4uDQo+Pg0KPj4gICAgICAgICAgY29uZmlnIFNUTTMyRjdfREVCVUdfVUFSVA0KPj4g
ICAgICAgICAgICAgICAgICBib29sICJVc2UgU1RNMzJGNyBVQVJUIGZvciBsb3ctbGV2ZWwgZGVi
dWciDQo+PiAtICAgICAgICAgICAgICAgZGVwZW5kcyBvbiBBUkNIX1NUTTMyDQo+PiArICAgICAg
ICAgICAgICAgZGVwZW5kcyBvbiBNQUNIX1NUTTMyRjc0NiB8fCBNQUNIX1NUTTMyRjc2OQ0KPj4g
ICAgICAgICAgICAgICAgICBzZWxlY3QgREVCVUdfU1RNMzJfVUFSVA0KPj4gICAgICAgICAgICAg
ICAgICBoZWxwDQo+PiAgICAgICAgICAgICAgICAgICAgU2F5IFkgaGVyZSBpZiB5b3Ugd2FudCBr
ZXJuZWwgbG93LWxldmVsIGRlYnVnZ2luZyBzdXBwb3J0DQo+PiAgICAgICAgICAgICAgICAgICAg
b24gU1RNMzJGNyBiYXNlZCBwbGF0Zm9ybXMsIHdoaWNoIGRlZmF1bHQgVUFSVCBpcyB3aXJlZCBv
bg0KPj4gLSAgICAgICAgICAgICAgICAgVVNBUlQxLg0KPj4gKyAgICAgICAgICAgICAgICAgVVNB
UlQxLCBidXQgYW5vdGhlciBVQVJUIGluc3RhbmNlIGNhbiBiZSBzZWxlY3RlZCBieSBtb2RpZnlp
bmcNCj4+ICsgICAgICAgICAgICAgICAgIENPTkZJR19ERUJVR19VQVJUX1BIWVMuDQo+PiArDQo+
PiArICAgICAgICAgICAgICAgICBJZiB1bnN1cmUsIHNheSBOLg0KPj4gKw0KPj4gKyAgICAgICBj
b25maWcgU1RNMzJIN19ERUJVR19VQVJUDQo+PiArICAgICAgICAgICAgICAgYm9vbCAiVXNlIFNU
TTMySDcgVUFSVCBmb3IgbG93LWxldmVsIGRlYnVnIg0KPj4gKyAgICAgICAgICAgICAgIGRlcGVu
ZHMgb24gTUFDSF9TVE0zMkg3NDMNCj4+ICsgICAgICAgICAgICAgICBzZWxlY3QgREVCVUdfU1RN
MzJfVUFSVA0KPj4gKyAgICAgICAgICAgICAgIGhlbHANCj4+ICsgICAgICAgICAgICAgICAgIFNh
eSBZIGhlcmUgaWYgeW91IHdhbnQga2VybmVsIGxvdy1sZXZlbCBkZWJ1Z2dpbmcgc3VwcG9ydA0K
Pj4gKyAgICAgICAgICAgICAgICAgb24gU1RNMzJINyBiYXNlZCBwbGF0Zm9ybXMsIHdoaWNoIGRl
ZmF1bHQgVUFSVCBpcyB3aXJlZCBvbg0KPj4gKyAgICAgICAgICAgICAgICAgVVNBUlQxLCBidXQg
YW5vdGhlciBVQVJUIGluc3RhbmNlIGNhbiBiZSBzZWxlY3RlZCBieSBtb2RpZnlpbmcNCj4+ICsg
ICAgICAgICAgICAgICAgIENPTkZJR19ERUJVR19VQVJUX1BIWVMuDQo+PiArDQo+PiArICAgICAg
ICAgICAgICAgICBJZiB1bnN1cmUsIHNheSBOLg0KPj4gKw0KPj4gKyAgICAgICBjb25maWcgU1RN
MzJNUDFfREVCVUdfVUFSVA0KPj4gKyAgICAgICAgICAgICAgIGJvb2wgIlVzZSBTVE0zMk1QMSBV
QVJUIGZvciBsb3ctbGV2ZWwgZGVidWciDQo+PiArICAgICAgICAgICAgICAgZGVwZW5kcyBvbiBN
QUNIX1NUTTMyTVAxNTcNCj4+ICsgICAgICAgICAgICAgICBzZWxlY3QgREVCVUdfU1RNMzJfVUFS
VA0KPj4gKyAgICAgICAgICAgICAgIGhlbHANCj4+ICsgICAgICAgICAgICAgICAgIFNheSBZIGhl
cmUgaWYgeW91IHdhbnQga2VybmVsIGxvdy1sZXZlbCBkZWJ1Z2dpbmcgc3VwcG9ydA0KPj4gKyAg
ICAgICAgICAgICAgICAgb24gU1RNMzJNUDEgYmFzZWQgcGxhdGZvcm1zLCB3aWNoIGRlZmF1bHQg
VUFSVCBpcyB3aXJlZCBvbg0KPj4gKyAgICAgICAgICAgICAgICAgVUFSVDQsIGJ1dCBhbm90aGVy
IFVBUlQgaW5zdGFuY2UgY2FuIGJlIHNlbGVjdGVkIGJ5IG1vZGlmeWluZw0KPj4gKyAgICAgICAg
ICAgICAgICAgQ09ORklHX0RFQlVHX1VBUlRfUEhZUyBhbmQgQ09ORklHX0RFQlVHX1VBUlRfVklS
VC4NCj4+DQo+PiAgICAgICAgICAgICAgICAgICAgSWYgdW5zdXJlLCBzYXkgTi4NCj4+DQo+PiBA
QCAtMTYyMiw2ICsxNjQ4LDkgQEAgY29uZmlnIERFQlVHX1VBUlRfUEhZUw0KPj4gICAgICAgICAg
ZGVmYXVsdCAweDNlMDAwMDAwIGlmIERFQlVHX0JDTV9LT05BX1VBUlQNCj4+ICAgICAgICAgIGRl
ZmF1bHQgMHgzZjIwMTAwMCBpZiBERUJVR19CQ00yODM2DQo+PiAgICAgICAgICBkZWZhdWx0IDB4
NDAwMGU0MDAgaWYgREVCVUdfTExfVUFSVF9FRk0zMg0KPj4gKyAgICAgICBkZWZhdWx0IDB4NDAw
MTAwMDAgaWYgU1RNMzJNUDFfREVCVUdfVUFSVA0KPj4gKyAgICAgICBkZWZhdWx0IDB4NDAwMTEw
MDAgaWYgU1RNMzJGNF9ERUJVR19VQVJUIHx8IFNUTTMyRjdfREVCVUdfVUFSVCB8fCBcDQo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNUTTMySDdfREVCVUdfVUFSVA0KPj4gICAg
ICAgICAgZGVmYXVsdCAweDQwMDI4MDAwIGlmIERFQlVHX0FUOTFfU0FNVjdfVVNBUlQxDQo+PiAg
ICAgICAgICBkZWZhdWx0IDB4NDAwODEwMDAgaWYgREVCVUdfTFBDMThYWF9VQVJUMA0KPj4gICAg
ICAgICAgZGVmYXVsdCAweDQwMDkwMDAwIGlmIERFQlVHX0xQQzMyWFgNCj4+IEBAIC0xNzE2LDcg
KzE3NDUsNyBAQCBjb25maWcgREVCVUdfVUFSVF9QSFlTDQo+PiAgICAgICAgICAgICAgICAgIERF
QlVHX1MzQzY0WFhfVUFSVCB8fCBcDQo+PiAgICAgICAgICAgICAgICAgIERFQlVHX0JDTTYzWFhf
VUFSVCB8fCBERUJVR19BU005MjYwX1VBUlQgfHwgXA0KPj4gICAgICAgICAgICAgICAgICBERUJV
R19TSVJGU09DX1VBUlQgfHwgREVCVUdfRElHSUNPTE9SX1VBMCB8fCBcDQo+PiAtICAgICAgICAg
ICAgICAgREVCVUdfQVQ5MV9VQVJUDQo+PiArICAgICAgICAgICAgICAgREVCVUdfQVQ5MV9VQVJU
IHx8IERFQlVHX1NUTTMyX1VBUlQNCj4+DQo+PiAgIGNvbmZpZyBERUJVR19VQVJUX1ZJUlQNCj4+
ICAgICAgICAgIGhleCAiVmlydHVhbCBiYXNlIGFkZHJlc3Mgb2YgZGVidWcgVUFSVCINCj4+IEBA
IC0xNzg0LDYgKzE4MTMsNyBAQCBjb25maWcgREVCVUdfVUFSVF9WSVJUDQo+PiAgICAgICAgICBk
ZWZhdWx0IDB4ZmQwMTIwMDAgaWYgREVCVUdfTVZFQlVfVUFSVDBfQUxURVJOQVRFICYmIEFSQ0hf
TVY3OFhYMA0KPj4gICAgICAgICAgZGVmYXVsdCAweGZkODgzMDAwIGlmIERFQlVHX0FMUElORV9V
QVJUMA0KPj4gICAgICAgICAgZGVmYXVsdCAweGZkZTEyMDAwIGlmIERFQlVHX01WRUJVX1VBUlQw
X0FMVEVSTkFURSAmJiBBUkNIX0RPVkUNCj4+ICsgICAgICAgZGVmYXVsdCAweGZlMDEwMDAwIGlm
IFNUTTMyTVAxX0RFQlVHX1VBUlQNCj4+ICAgICAgICAgIGRlZmF1bHQgMHhmZTAxMjAwMCBpZiBE
RUJVR19NVkVCVV9VQVJUMF9BTFRFUk5BVEUgJiYgQVJDSF9PUklPTjVYDQo+PiAgICAgICAgICBk
ZWZhdWx0IDB4ZmUwMTcwMDAgaWYgREVCVUdfTU1QX1VBUlQyDQo+PiAgICAgICAgICBkZWZhdWx0
IDB4ZmUwMTgwMDAgaWYgREVCVUdfTU1QX1VBUlQzDQo+PiBAQCAtMTgzMiw3ICsxODYyLDcgQEAg
Y29uZmlnIERFQlVHX1VBUlRfVklSVA0KPj4gICAgICAgICAgICAgICAgICBERUJVR19TM0M2NFhY
X1VBUlQgfHwgXA0KPj4gICAgICAgICAgICAgICAgICBERUJVR19CQ002M1hYX1VBUlQgfHwgREVC
VUdfQVNNOTI2MF9VQVJUIHx8IFwNCj4+ICAgICAgICAgICAgICAgICAgREVCVUdfU0lSRlNPQ19V
QVJUIHx8IERFQlVHX0RJR0lDT0xPUl9VQTAgfHwgXA0KPj4gLSAgICAgICAgICAgICAgIERFQlVH
X0FUOTFfVUFSVA0KPj4gKyAgICAgICAgICAgICAgIERFQlVHX0FUOTFfVUFSVCB8fCBERUJVR19T
VE0zMl9VQVJUDQo+Pg0KPj4gICBjb25maWcgREVCVUdfVUFSVF84MjUwX1NISUZUDQo+PiAgICAg
ICAgICBpbnQgIlJlZ2lzdGVyIG9mZnNldCBzaGlmdCBmb3IgdGhlIDgyNTAgZGVidWcgVUFSVCIN
Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2RlYnVnL3N0bTMyLlMgYi9hcmNoL2Fy
bS9pbmNsdWRlL2RlYnVnL3N0bTMyLlMNCj4+IGluZGV4IDFhYmIzMmYuLjY0NDZlNDYgMTAwNjQ0
DQo+PiAtLS0gYS9hcmNoL2FybS9pbmNsdWRlL2RlYnVnL3N0bTMyLlMNCj4+ICsrKyBiL2FyY2gv
YXJtL2luY2x1ZGUvZGVidWcvc3RtMzIuUw0KPj4gQEAgLTQsMTQgKzQsMTMgQEANCj4+ICAgICog
QXV0aG9yOiAgIEdlcmFsZCBCYWV6YSA8Z2VyYWxkLmJhZXphQHN0LmNvbT4gZm9yIFNUTWljcm9l
bGVjdHJvbmljcy4NCj4+ICAgICovDQo+Pg0KPj4gLSNkZWZpbmUgU1RNMzJfVUFSVF9CQVNFICAg
ICAgICAgICAgICAgICAgICAgICAgMHg0MDAxMTAwMCAgICAgIC8qIFVTQVJUMSAqLw0KPj4gLQ0K
Pj4gICAjaWZkZWYgQ09ORklHX1NUTTMyRjRfREVCVUdfVUFSVA0KPj4gICAjZGVmaW5lIFNUTTMy
X1VTQVJUX1NSX09GRiAgICAgICAgICAgICAweDAwDQo+PiAgICNkZWZpbmUgU1RNMzJfVVNBUlRf
VERSX09GRiAgICAgICAgICAgIDB4MDQNCj4+ICAgI2VuZGlmDQo+Pg0KPj4gLSNpZmRlZiBDT05G
SUdfU1RNMzJGN19ERUJVR19VQVJUDQo+PiArI2lmIGRlZmluZWQoQ09ORklHX1NUTTMyRjdfREVC
VUdfVUFSVCkgfHwgKENPTkZJR19TVE0zMkg3X0RFQlVHX1VBUlQpIHx8IFwNCj4+ICsgICAgICAg
ZGVmaW5lZChDT05GSUdfU1RNMzJNUDFfREVCVUdfVUFSVCkNCj4+ICAgI2RlZmluZSBTVE0zMl9V
U0FSVF9TUl9PRkYgICAgICAgICAgICAgMHgxQw0KPj4gICAjZGVmaW5lIFNUTTMyX1VTQVJUX1RE
Ul9PRkYgICAgICAgICAgICAweDI4DQo+PiAgICNlbmRpZg0KPj4gQEAgLTIwLDggKzE5LDggQEAN
Cj4+ICAgI2RlZmluZSBTVE0zMl9VU0FSVF9UWEUgICAgICAgICAgICAgICAgICAgICAgICAoMSA8
PCA3KSAgICAgICAgLyogVHggZGF0YSByZWcgZW1wdHkgKi8NCj4+DQo+PiAgIC5tYWNybyBhZGRy
dWFydCwgcnAsIHJ2LCB0bXANCj4+IC0gICAgICAgbGRyICAgICBccnAsICAgICAgPVNUTTMyX1VB
UlRfQkFTRSAgICAgIEAgcGh5c2ljYWwgYmFzZQ0KPj4gLSAgICAgICBsZHIgICAgIFxydiwgICAg
ICA9U1RNMzJfVUFSVF9CQVNFICAgICAgQCB2aXJ0IGJhc2UgLyogTm9NTVUgKi8NCj4+ICsgICAg
ICAgbGRyICAgICBccnAsID1DT05GSUdfREVCVUdfVUFSVF9QSFlTIEAgcGh5c2ljYWwgYmFzZQ0K
Pj4gKyAgICAgICBsZHIgICAgIFxydiwgPUNPTkZJR19ERUJVR19VQVJUX1ZJUlQgQCB2aXJ0IGJh
c2UNCj4+ICAgLmVuZG0NCj4+DQo+PiAgIC5tYWNybyAgc2VuZHVhcnQscmQscngNCj4+IC0tDQo+
PiAxLjkuMQ0KPj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
