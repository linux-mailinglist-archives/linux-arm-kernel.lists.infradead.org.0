Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AC3118FE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 19:41:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9329qwV60ibF2ZJed6KikgwVcB2y0TAdTSL5na/9bk=; b=lY3qdDALJOFxxg
	wFc4D7TPuzR0NPE/eoSYG0mi066U2z2/34BaB4e0h20t1Z0o7B8/lu6Jz/2OpUKkFpgIopck+2srr
	KcBirqWrOTYJy0DYJxu73/72cH77h+DMAK4z/pAmNWbHwOke3a2wwMz2cy2kVfWcH2z2ef7adOkgi
	MdiYLWgqxPZy4eWIJKi/oKHUJKrWicHQLDCGvScCaX8ssMIkb4ANRpvQHgH6mNndAWIP9JVeenbiZ
	dlIu2kVea8xf1pb2g2/TwhJSVEE920aw8eK6Zj0IF0fDYFLz+RCjWVaJeWYqi3FeO3kINB1ns7nlB
	GscAuRShBRGCWW3PAKag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iekS7-0004LY-CV; Tue, 10 Dec 2019 18:41:43 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iekRz-0004Kf-32
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 18:41:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id x185so264945pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 10:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=wTwfKnj9eczpa2pB2PlbhOCyosSLl37njomT+ws8Zog=;
 b=RVgrOMkTunRC9OxL5bW0If9c94cX0AI3qE8o5LSXokwULZQBNlz3J+ZHFxD2aSZ+AN
 e+Q1LzgnEoidJXYohDJtMYRb9MC6Mu+DHArZuxrjH+kTm2xwOLz/hChE405Wmyl6+A6t
 yrH4qIIuMfE5MzIGCGMzHnt8Bj4ksmHwe845S9Id2ehdc0N8e8pdXa0Sn/DMVcHsNyOU
 XlWo/LNUUvy9nOJvz4FJI0UiB2c79gMHNrT1uLuhHtgLfjCb6w2YKw3D1v+hTXZmo4CW
 PjiQAjUCEz7AUqYD00+BjsAE+5HDpNCNye/JECrpwP0lL4PcBSJp4Koc6toEBKzrNg99
 4Cgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=wTwfKnj9eczpa2pB2PlbhOCyosSLl37njomT+ws8Zog=;
 b=BBEEVT41/tZBeaYcSEH+/ET3wyduC2UiUZAHGn+j1oWeJNdt3vxyPQbmQAIDb5C1kJ
 JIY+9Xw+d5R163eVVwpgnWCaTlM3sMnhuTfkR6K42xH3yDWZL0ueGjTfLbVhWHkaNqMI
 wXusJOp5aC1qyL8TGAnnGUh7X10mBVI4YbZz3VaS7ZYMfmHNiPljShtxEG57RFwiIoZN
 xZdBMXGeruhla1wZ5aQVrahe0iArvqPSXLrUzBkI25950hdkbvBzeqcaMnTWcycMNSuU
 koowZmrm/+ETHo/pSZ91vcnBu5EeSJGaCaW8eDoxS1o8V0ASiGrgEJdlFhWaIdjlqPOt
 9GTA==
X-Gm-Message-State: APjAAAWNJr9pR1txgKD5m0hJ+C3+N5RImdqT4kQHmPmyUwmVKuVnUZsz
 8Y1GPa/vbAJ2mqxGfIo5N6kTcA==
X-Google-Smtp-Source: APXvYqyU5AsS15FX5JR/4v9ywiSr7NjSeduEieNn9GzLr/P45Zt9Avb7WkbCrH/jY/mSnrUTizA8mA==
X-Received: by 2002:a63:5525:: with SMTP id j37mr25733818pgb.180.1576003293591; 
 Tue, 10 Dec 2019 10:41:33 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id d14sm3711274pjz.12.2019.12.10.10.41.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Dec 2019 10:41:29 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Xingyu Chen <xingyu.chen@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH] arm64: dts: a1: add saradc controller
In-Reply-To: <9a2ddfa3-28f3-7d15-bb25-5b84078b77c7@amlogic.com>
References: <1575358332-44866-1-git-send-email-xingyu.chen@amlogic.com>
 <7hpngxqfa7.fsf@baylibre.com>
 <9a2ddfa3-28f3-7d15-bb25-5b84078b77c7@amlogic.com>
Date: Tue, 10 Dec 2019 10:41:28 -0800
Message-ID: <7h1rtcqazr.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_104135_195767_F4F18CF9 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 Jianxin Pan <jianxin.pan@amlogic.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Jonathan Cameron <jic23@kernel.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WGluZ3l1IENoZW4gPHhpbmd5dS5jaGVuQGFtbG9naWMuY29tPiB3cml0ZXM6DQoNCj4gSGksIEtl
dmluDQo+DQo+IE9uIDIwMTkvMTIvMTAgNjo1NiwgS2V2aW4gSGlsbWFuIHdyb3RlOg0KPj4gWGlu
Z3l1IENoZW4gPHhpbmd5dS5jaGVuQGFtbG9naWMuY29tPiB3cml0ZXM6DQo+Pg0KPj4+IFRoZSBz
YXJhZGMgY29udHJvbGxlciBpbiBNZXNvbi1BMSBpcyB0aGUgc2FtZSBhcyB0aGUgTWVzb24tRzEy
IHNlcmllcyBTb0NzLA0KPj4+IHNvIHdlIHVzZSB0aGUgc2FtZSBjb21wYXRpYmxlIHN0cmluZy4N
Cj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFhpbmd5dSBDaGVuIDx4aW5neXUuY2hlbkBhbWxvZ2lj
LmNvbT4NCj4+Pg0KPj4+IC0tLQ0KPj4+IFRoaXMgcGF0Y2ggaXMgYmFzZWQgb24gQTEgY2xvY2sg
cGF0Y2hzZXQgYXQgWzBdLg0KPj4+DQo+Pj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LWFtbG9naWMvMjAxOTExMjkxNDQ2MDUuMTgyNzc0LTEtamlhbi5odUBhbWxvZ2ljLmNvbQ0K
Pj4+IC0tLQ0KPj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9hbWxvZ2ljL21lc29uLWExLmR0c2kg
fCAxNSArKysrKysrKysrKysrKysNCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbWxvZ2ljL21l
c29uLWExLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FtbG9naWMvbWVzb24tYTEuZHRzaQ0K
Pj4+IGluZGV4IDcyMTBhZDAuLmNhZDE3NTYgMTAwNjQ0DQo+Pj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9hbWxvZ2ljL21lc29uLWExLmR0c2kNCj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FtbG9naWMvbWVzb24tYTEuZHRzaQ0KPj4+IEBAIC05Myw2ICs5MywyMSBAQA0KPj4+ICAg
CQkJCWNsb2NrLW5hbWVzID0gInh0YWwiLCAicGNsayIsICJiYXVkIjsNCj4+PiAgIAkJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOw0KPj4+ICAgCQkJfTsNCj4+PiArDQo+Pj4gKwkJCXNhcmFkYzogYWRj
QDJjMDAgew0KPj4+ICsJCQkJY29tcGF0aWJsZSA9ICJhbWxvZ2ljLG1lc29uLWcxMmEtc2FyYWRj
IiwNCj4+PiArCQkJCQkgICAgICJhbWxvZ2ljLG1lc29uLXNhcmFkYyI7DQo+Pj4gKwkJCQlyZWcg
PSA8MHgwIDB4MmMwMCAweDAgMHg0OD47DQo+PiBXaHkgMHg0OCBoZXJlPyAgQVhHIHVzZXMgMHgz
OCBhbmQgeW91J3JlIG5vdCBhZGRpbmcgYW55IG1vcmUgcmVnaXN0ZXJzDQo+PiB0byB0aGlzIGRy
aXZlci4NCj4NCj4gVGhhbmtzIGZvciB5b3UgcmV2aWV3Lg0KPg0KPiBUaGUgc2FyYWRjIGludHJv
ZHVjZXMgNCBuZXcgcmVnaXN0ZXJzIChhcyBzaG93biBiZWxvdykgYmVnaW4gd2l0aCBnMTJhIA0K
PiBwbGF0Zm9ybSwgYW5kIHRoZXNlIHJlZ2lzdGVycyBhcmUgdXNlZA0KPiB0byBzYXZlIHRoZSBz
YW1wbGluZyB2YWx1ZSBvZiBjb3JyZXNwb25kaW5nIGNoYW5uZWwuIEluIG90aGVyIHdvcmRzLCB3
ZSANCj4gY2FuIGNob29zZSBmaWZvIG9yIG5ldyByZWdpc3RlcnMgdG8gc2F2ZQ0KPiBzYW1wbGlu
ZyB2YWx1ZSwgYnV0IGl0IGlzIG5vdCBzdXBwb3J0ZWQgYnkgdGhlIGN1cnJlbnQgZHJpdmVyLg0K
Pg0KPiBkb3V0IHJlZ2lzdGVywqAgfC0tLT4gZmlmbw0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwtLS0+IGNoYW5uZWwgcmVncyAtfA0KPiAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fC0tLSBjaGFubmVsLTANCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwtLS0gY2hhbm5lbC0xDQo+ICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IC4uLg0KPiAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fCAtLS0gY2hhbm5lbC03DQo+DQo+IEFPX1NBUl9BRENfQ0hOTDAx77yac2F2aW5nIHNhbXBsaW5n
IGRhdGEgb2YgY2hhbm5lbCAwLzENCj4gQU9fU0FSX0FEQ19DSE5MMjM6wqDCoCBzYXZpbmcgc2Ft
cGxpbmcgZGF0YSBvZiBjaGFubmVsIDIvMw0KPiBBT19TQVJfQURDX0NITkw0NTrCoMKgIHNhdmlu
ZyBzYW1wbGluZyBkYXRhIG9mIGNoYW5uZWwgNC81DQo+IEFPX1NBUl9BRENfQ0hOTDY3OsKgwqAg
c2F2aW5nIHNhbXBsaW5nIGRhdGEgb2YgY2hhbm5lbCA2LzcNCg0KSSB1bmRlcnN0YW5kIHRoZXJl
IGFyZSBuZXcgcmVnaXN0ZXJzIGluIHRoZSBoYXJkd2FyZSwgYnV0IEkgZG9uJ3QgdGhpbmsNCnRo
ZSBjdXJyZW50IGRyaXZlciBpcyB1c2luZyB0aG9zZS4gIFBsZWFzZSBjb3JyZWN0IG1lIGlmIEkn
bSB3cm9uZy4NCg0KPiBUaGlzIHBhdGNoIHVzZSB0aGUgMHg0OCB0byBkZXNjcmliZSB0aGUgcmVn
aXN0ZXJzIGxlbmd0aCBqdXN0IGZvbGxvdyB0aGUgDQo+IGZpbGUgbWVzb24tZzEyLWNvbW1vbi5k
dHNpLg0KDQpPSywgbXkgZmF1bHQuIEkgd2FzIGNvbXBhcmluZyB3aXRoIEFYRyBpbnN0ZWFkIG9m
IEcxMkEuICBCdXQgc3RpbGwsIGlmDQp0aGUgZHJpdmVyIGlzIG5vdCB1c2luZyB0aG9zZSByZWdp
c3RlcnMsIHRoZW4gZzEyIERUIGZpbGVzIGFyZSB3cm9uZyB0b28uDQoNClRoYXQgYmVpbmcgc2Fp
ZCwgSSdtIG5vdCBnb2luZyB0byBiZSB0b28gcGlja3kgYWJvdXQgdGhhdC4gIA0KDQo+IGFuZCBp
dCBkb2Vzbid0IGFmZmVjdCB0aGUgZHJpdmVyIGJlY2F1c2Ugb2YgdGhlIG1hcHBlZCByZWdpdGVy
IGxlbmd0aA0KPiBpcyBsaW1pdGVkIGJ5IG1heF9yZWdpc3RlciBtZW1iZXIgaW4gc3RydWN0IHJl
Z21hcF9jb25maWcuDQo+DQo+IEkgY2FuIHJlcGxhY2UgMHg0OCB3aXRoIDB4MzggaW4gbmV4dCBw
YXRjaCBpZiBuZWNlc3NhcnkuDQoNClNpbmNlIEcxMiBpcyBhbHJlYWR5IHVzaW5nIDB4NDggYW5k
IHRoaXMgZGV2aWNlIGlzIGNvbXBhdGlibGUgd2l0aCBHMTIsDQpJJ20gZmluZSBsZWF2aW5nIGl0
IGF0IDB4NDguDQoNClRoYW5rcywNCg0KS2V2aW4NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
