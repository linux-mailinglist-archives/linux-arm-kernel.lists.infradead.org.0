Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B041E7D5F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 14:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFWdzUpLG6nY7QhMm18tWWY3x547QhDyO0t2SJUH+oU=; b=UmpESBwMA4wsNo
	/EHA+NTzpGDNXcvqNLrhGJO9bhWb9lSr5U+i3ocmgtt7/3YnP7FC61mdtrGNl2sDZhyge4cGQWmhB
	MmxdHMlB9+8LlurWN5GkWXyMLLppR0eMS1eqKM6TxU0nKtBKPiJprGwIZJHs04tEcdwKnpJGpggtd
	v+EiF8flgi3nmYvGwt98DLvd6ceGprDdtx3Xczwp5irJxPIXacd3/rSZ7l+QmzspAyBesLkYu9ZPP
	rV8aoTijOa3DM2NW+CPs4oiz7W2z6Gx0uveQ3hgKZcSiD6v+fYB5Qw7tDb5L4aATO5LQqazu8CHv1
	/zs7rJKv2OvHI7fG2Ipw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeeFy-00089m-QB; Fri, 29 May 2020 12:37:02 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeeFp-00088y-DX
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 12:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1590755814; x=1622291814;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=woh8X2qLrbIivKtA6+U+XPyL5ypCpHHxsWaHLUytZKA=;
 b=ZCplAcxAQ/7D7Ed+t+rRfWhTwc8wuWQEgJQBhVXuw021ebU8KzHCZljF
 pWnwdbvy54WVLxt0NX6AwPwq9+07Ge6lFCXhDyXuFW7TeIOWKPZXxB+rV
 G3sQU31Oa+yNY22eFqxQbKzJKoKsHBQuhfHAEhRKejcGS1v4SdjPtACSK I=;
IronPort-SDR: i7jAYIcp/8lJse9/Fl3P00Ar8WnP5toJeJ93ITjuwxTGsMUN0ZVc5ttZhRs/GcHkBEadvX+1aC
 SUzg+QPdoYCQ==
X-IronPort-AV: E=Sophos;i="5.73,448,1583193600"; d="scan'208";a="39186509"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1d-474bcd9f.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 29 May 2020 12:36:46 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-474bcd9f.us-east-1.amazon.com (Postfix) with ESMTPS
 id 769AAA262A; Fri, 29 May 2020 12:36:44 +0000 (UTC)
Received: from EX13D21UWB002.ant.amazon.com (10.43.161.177) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 29 May 2020 12:36:42 +0000
Received: from EX13D02UWB004.ant.amazon.com (10.43.161.11) by
 EX13D21UWB002.ant.amazon.com (10.43.161.177) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 29 May 2020 12:36:42 +0000
Received: from EX13D02UWB004.ant.amazon.com ([10.43.161.11]) by
 EX13D02UWB004.ant.amazon.com ([10.43.161.11]) with mapi id 15.00.1497.006;
 Fri, 29 May 2020 12:36:43 +0000
From: "Saidi, Ali" <alisaidi@amazon.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
Thread-Topic: [PATCH] irqchip/gic-v3-its: Don't try to move a disabled irq
Thread-Index: AQHWNbXOKigmt6yOIESl6vIJ9+Em4g==
Date: Fri, 29 May 2020 12:36:42 +0000
Message-ID: <2C4F431F-8140-4C82-B4BD-E51DE618FC08@amazon.com>
References: <20200529015501.15771-1-alisaidi@amazon.com>,
 <8c3be990888ecfb7cca9503853dc4aac@kernel.org>
In-Reply-To: <8c3be990888ecfb7cca9503853dc4aac@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_053653_498016_A41B1AE3 
X-CRM114-Status: GOOD (  27.84  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.171.184.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "Herrenschmidt, Benjamin" <benh@amazon.com>,
 Jason Cooper <jason@lakedaemon.net>, "Machulsky, Zorik" <zorik@amazon.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Zilberman,
 Zeev" <zeev@amazon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, "Woodhouse, David" <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywNCg0KPiBPbiBNYXkgMjksIDIwMjAsIGF0IDM6MzMgQU0sIE1hcmMgWnluZ2llciA8
bWF6QGtlcm5lbC5vcmc+IHdyb3RlOg0KPiANCj4gSGkgQWxpLA0KPiANCj4+IE9uIDIwMjAtMDUt
MjkgMDI6NTUsIEFsaSBTYWlkaSB3cm90ZToNCj4+IElmIGFuIGludGVycnVwdCBpcyBkaXNhYmxl
ZCB0aGUgSVRTIGRyaXZlciBoYXMgc2VudCBhIGRpc2NhcmQgcmVtb3ZpbmcNCj4+IHRoZSBEZXZp
Y2VJRCBhbmQgRXZlbnRJRCBmcm9tIHRoZSBJVFQuIEFmdGVyIHRoaXMgb2NjdXJzIGl0IGNhbid0
IGJlDQo+PiBtb3ZlZCB0byBhbm90aGVyIGNvbGxlY3Rpb24gd2l0aCBhIE1PVkkgYW5kIGEgY29t
bWFuZCBlcnJvciBvY2N1cnMgaWYNCj4+IGF0dGVtcHRlZC4gQmVmb3JlIGlzc3VpbmcgdGhlIE1P
VkkgY29tbWFuZCBtYWtlIHN1cmUgdGhhdCB0aGUgSVJRIGlzbid0DQo+PiBkaXNhYmxlZCBhbmQg
Y2hhbmdlIHRoZSBhY3RpdmF0ZSBjb2RlIHRvIHRyeSBhbmQgdXNlIHRoZSBwcmV2aW91cw0KPj4g
YWZmaW5pdHkuDQo+PiANCj4+IFNpZ25lZC1vZmYtYnk6IEFsaSBTYWlkaSA8YWxpc2FpZGlAYW1h
em9uLmNvbT4NCj4+IC0tLQ0KPj4gZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMgfCAx
OCArKysrKysrKysrKysrKystLS0NCj4+IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQ0KPj4gDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlwL2ly
cS1naWMtdjMtaXRzLmMNCj4+IGIvZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMNCj4+
IGluZGV4IDEyNDI1MWIwY2NiYS4uMTIzNWRkOWEyZmIyIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmMNCj4+ICsrKyBiL2RyaXZlcnMvaXJxY2hpcC9pcnEt
Z2ljLXYzLWl0cy5jDQo+PiBAQCAtMTU0MCw3ICsxNTQwLDExIEBAIHN0YXRpYyBpbnQgaXRzX3Nl
dF9hZmZpbml0eShzdHJ1Y3QgaXJxX2RhdGEgKmQsDQo+PiBjb25zdCBzdHJ1Y3QgY3B1bWFzayAq
bWFza192YWwsDQo+PiAgICAgIC8qIGRvbid0IHNldCB0aGUgYWZmaW5pdHkgd2hlbiB0aGUgdGFy
Z2V0IGNwdSBpcyBzYW1lIGFzIGN1cnJlbnQgb25lDQo+PiAqLw0KPj4gICAgICBpZiAoY3B1ICE9
IGl0c19kZXYtPmV2ZW50X21hcC5jb2xfbWFwW2lkXSkgew0KPj4gICAgICAgICAgICAgIHRhcmdl
dF9jb2wgPSAmaXRzX2Rldi0+aXRzLT5jb2xsZWN0aW9uc1tjcHVdOw0KPj4gLSAgICAgICAgICAg
ICBpdHNfc2VuZF9tb3ZpKGl0c19kZXYsIHRhcmdldF9jb2wsIGlkKTsNCj4+ICsNCj4+ICsgICAg
ICAgICAgICAgLyogSWYgdGhlIElSUSBpcyBkaXNhYmxlZCBhIGRpc2NhcmQgd2FzIHNlbnQgc28g
ZG9uJ3QgbW92ZSAqLw0KPj4gKyAgICAgICAgICAgICBpZiAoIWlycWRfaXJxX2Rpc2FibGVkKGQp
KQ0KPj4gKyAgICAgICAgICAgICAgICAgICAgIGl0c19zZW5kX21vdmkoaXRzX2RldiwgdGFyZ2V0
X2NvbCwgaWQpOw0KPj4gKw0KPiANCj4gVGhpcyBsb29rcyB3cm9uZy4gV2hhdCB5b3UgYXJlIHRl
c3RpbmcgaGVyZSBpcyB3aGV0aGVyIHRoZSBpbnRlcnJ1cHQNCj4gaXMgbWFza2VkLCBub3QgdGhh
dCB0aGVyZSBpc24ndCBhIHZhbGlkIHRyYW5zbGF0aW9uLg0KSeKAmW0gbm90IGV4YWN0bHkgc3Vy
ZSB0aGUgY29ycmVjdCBjb25kaXRpb24sIGJ1dCB3aGF0IEnigJltIGxvb2tpbmcgZm9yIGlzIGlu
dGVycnVwdHMgd2hpY2ggYXJlIGRlYWN0aXZhdGVkIGFuZCB3ZSBoYXZlIHRodXMgc2VudCBhIGRp
c2NhcmQuIA0KDQo+IA0KPiBJbiB0aGUgY29tbWl0IG1lc3NhZ2UsIHlvdSdyZSBzYXlpbmcgdGhh
dCB3ZSd2ZSBpc3N1ZWQgYSBkaXNjYXJkLiBUaGlzDQo+IGhpbnRzIGF0IGRvaW5nIGEgc2V0X2Fm
ZmluaXR5IG9uIGFuIGludGVycnVwdCB0aGF0IGhhcyBiZWVuIGRlYWN0aXZhdGVkDQo+IChtYXBw
aW5nIHJlbW92ZWQpLiBJcyB0aGF0IGFjdHVhbGx5IHRoZSBjYXNlPyBJZiBzbywgd2h5IHdhcyBp
dA0KPiBkZWFjdGl2YXRlZA0KPiB0aGUgZmlyc3QgcGxhY2U/DQpUaGlzIGlzIHRoZSBjYXNlLiBJ
ZiB3ZSBkb3duIGEgTklDLCB0aGF0IGludGVyZmFjZeKAmXMgTVNJcyB3aWxsIGJlIGRlYWN0aXZh
dGVkIGJ1dCByZW1haW4gYWxsb2NhdGVkIHVudGlsIHRoZSBkZXZpY2UgaXMgdW5ib3VuZCBmcm9t
IHRoZSBkcml2ZXIgb3IgdGhlIE5JQyBpcyBicm91Z2h0IHVwLiANCg0KV2hpbGUgc3RyZXNzaW5n
IGRvd24vdXAgYSBkZXZpY2UgSeKAmXZlIGZvdW5kIHRoYXQgaXJxYmFsYW5jZSBjYW4gbW92ZSBp
bnRlcnJ1cHRzIGFuZCB5b3UgZW5kIHVwIHdpdGggdGhlIHNpdHVhdGlvbiBkZXNjcmliZWQuIFRo
ZSBkZXZpY2UgaXMgZG93bmVkLCB0aGUgaW50ZXJydXB0cyBhcmUgZGVhY3RpdmF0ZWQgYnV0IHN0
aWxsIHByZXNlbnQgYW5kIHRoZW4gdHJ5aW5nIHRvIG1vdmUgb25lIHJlc3VsdHMgaW4gc2VuZGlu
ZyBhIE1PVkkgYWZ0ZXIgdGhlIERJU0NBUkQgd2hpY2ggaXMgYW4gZXJyb3IgcGVyIHRoZSBHSUMg
c3BlYy4gDQoNCj4gDQo+PiAgICAgICAgICAgICAgaXRzX2Rldi0+ZXZlbnRfbWFwLmNvbF9tYXBb
aWRdID0gY3B1Ow0KPj4gICAgICAgICAgICAgIGlycV9kYXRhX3VwZGF0ZV9lZmZlY3RpdmVfYWZm
aW5pdHkoZCwgY3B1bWFza19vZihjcHUpKTsNCj4+ICAgICAgfQ0KPj4gQEAgLTM0MzksOCArMzQ0
MywxNiBAQCBzdGF0aWMgaW50IGl0c19pcnFfZG9tYWluX2FjdGl2YXRlKHN0cnVjdA0KPj4gaXJx
X2RvbWFpbiAqZG9tYWluLA0KPj4gICAgICBpZiAoaXRzX2Rldi0+aXRzLT5udW1hX25vZGUgPj0g
MCkNCj4+ICAgICAgICAgICAgICBjcHVfbWFzayA9IGNwdW1hc2tfb2Zfbm9kZShpdHNfZGV2LT5p
dHMtPm51bWFfbm9kZSk7DQo+PiANCj4+IC0gICAgIC8qIEJpbmQgdGhlIExQSSB0byB0aGUgZmly
c3QgcG9zc2libGUgQ1BVICovDQo+PiAtICAgICBjcHUgPSBjcHVtYXNrX2ZpcnN0X2FuZChjcHVf
bWFzaywgY3B1X29ubGluZV9tYXNrKTsNCj4+ICsgICAgIC8qIElmIHRoZSBjcHUgc2V0IHRvIGEg
ZGlmZmVyZW50IENQVSB0aGF0IGlzIHN0aWxsIG9ubGluZSB1c2UgaXQgKi8NCj4+ICsgICAgIGNw
dSA9IGl0c19kZXYtPmV2ZW50X21hcC5jb2xfbWFwW2V2ZW50XTsNCj4+ICsNCj4+ICsgICAgIGNw
dW1hc2tfYW5kKGNwdV9tYXNrLCBjcHVfbWFzaywgY3B1X29ubGluZV9tYXNrKTsNCj4+ICsNCj4+
ICsgICAgIGlmICghY3B1bWFza190ZXN0X2NwdShjcHUsIGNwdV9tYXNrKSkgew0KPj4gKyAgICAg
ICAgICAgICAvKiBCaW5kIHRoZSBMUEkgdG8gdGhlIGZpcnN0IHBvc3NpYmxlIENQVSAqLw0KPj4g
KyAgICAgICAgICAgICBjcHUgPSBjcHVtYXNrX2ZpcnN0KGNwdV9tYXNrKTsNCj4+ICsgICAgIH0N
Cj4+ICsNCj4+ICAgICAgaWYgKGNwdSA+PSBucl9jcHVfaWRzKSB7DQo+PiAgICAgICAgICAgICAg
aWYgKGl0c19kZXYtPml0cy0+ZmxhZ3MgJiBJVFNfRkxBR1NfV09SS0FST1VORF9DQVZJVU1fMjMx
NDQpDQo+PiAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gDQo+IFNvIHlv
dSBkZWFjdGl2YXRlIGFuIGludGVycnVwdCwgZG8gYSBzZXRfYWZmaW5pdHkgdGhhdCBkb2Vzbid0
IGlzc3VlDQo+IGEgTU9WSSBidXQgcHJlc2VydmVzIHRoZSBhZmZpbml0eSwgdGhlbiByZWFjdGl2
YXRlIGl0IGFuZCBob3BlIHRoYXQNCj4gdGhlIG5ldyBtYXBwaW5nIHdpbGwgdGFyZ2V0IHRoZSAi
cmlnaHQiIENQVS4NCj4gDQo+IFRoYXQgc2VlbXMgYSBiaXQgbWFkLCBidXQgSSBwcmVzdW1lIHRo
aXMgaXNuJ3QgdGhlIHdob2xlIHN0b3J5Li4uDQpEb2luZyBzb21lIGV4cGVyaW1lbnRzIGl0IGFw
cGVhcnMgYXMgdGhvdWdoIG90aGVyIGludGVycnVwdHMgY29udHJvbGxlcnMgZG8gcHJlc2VydmUg
YWZmaW5pdHkgYWNyb3NzIGRlYWN0aXZhdGUvYWN0aXZhdGUsIHNvIHRoaXMgaXMgbXkgYXR0ZW1w
dCBhdCBkb2luZyB0aGUgc2FtZS4gDQoNClRoYW5rcywNCkFsaQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
