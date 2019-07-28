Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF71F7818C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 22:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTos/KDn4WQ+ayygO1hJt64Ebj/q7fmFSA6p4rG+Li0=; b=Z+qBvdzcWohe3d
	4S65tT1yjHSLl1sLuMbeYkggwKGig9OuLG8QlNichZ2nb/1LIOxf27ZRvna/QnQRqydmTbRNeD0HS
	fMmhn2A4/1wLXwFpcZhTHkT5oWk2/ZdUe9VNUoK52wMysHAKIJgmtnkaQIrxo88aHicJJdjP+N6ZY
	d+wjWNWFKTXvjqVN6W8y2uZAVZnf1PnmweAv6+gUVevERAbrGGWOvlJDk2Db1KpAHFPyHycH08kE/
	dwapUW1XuFgKoyESKKxtl5cW2w+9mSYddGgLZZcBbiEiXBEXEN+655hCDjA7xuhc6kTJVI24fbE1l
	OFr7Vq7W7Y0PsIklNWEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrprM-0004tG-Bl; Sun, 28 Jul 2019 20:33:36 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrpr2-0004rD-I1
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 20:33:18 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id B0981806CB;
 Mon, 29 Jul 2019 08:33:04 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1564345984;
 bh=E0biQ+0m4VEh6duf/uRWckBUO5MNN03zyLmL+pngf0o=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=O9BBgdkvLs0DOfDMQIP+6dxYOMAD54G/WNPnI3MH1ky2alWaYLNz7eZTDJzLuJBbw
 l7LHJXFoHfJIW4t2l/Zxmo9AnExE4VCtm5r9O4q652Eeywi6UP20AYdb1SZObl1JX3
 0e+Wr+/ZAfaZWCszoEVAYC3N/0G8lHSGpMLvO0F6rSvOrnE3i5bE8x27Xgx39DzW2E
 YziSq5rcC+e9XPzoPTTRfmjSguJaTu/1Avsh2/NrMI5zPelZkGzNz1SyajkLIWnsnw
 +hNYnAxEaXj5nV3v/+DxkVQovZFsI43BKQJxeC58E7C1j82WrU7U9v+I9+W39e/URS
 fzRX5Mx7rJLbA==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d3e06800000>; Mon, 29 Jul 2019 08:33:04 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Mon, 29 Jul 2019 08:33:04 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Mon, 29 Jul 2019 08:33:04 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "james.morse@arm.com" <james.morse@arm.com>
Subject: Re: [PATCH v9 0/8] EDAC drivers for Armada XP L2 and DDR
Thread-Topic: [PATCH v9 0/8] EDAC drivers for Armada XP L2 and DDR
Thread-Index: AQHVOGTGE5n98W5t/EG62Bvvhz+yG6bcSbyAgAODnoA=
Date: Sun, 28 Jul 2019 20:33:03 +0000
Message-ID: <1564345983.9737.9.camel@alliedtelesis.co.nz>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
 <d1dfe8ec-66e8-e2c8-5421-a18d7e7fc8fc@arm.com>
In-Reply-To: <d1dfe8ec-66e8-e2c8-5421-a18d7e7fc8fc@arm.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.18.5.2-0ubuntu3.2 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:3a2c:4aff:fe70:2b02]
Content-ID: <D7D656BF95F90C47AFC63125E32B5778@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_133316_976648_4BD114FB 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jlu@pengutronix.de" <jlu@pengutronix.de>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "bp@alien8.de" <bp@alien8.de>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "patches@armlinux.org.uk" <patches@armlinux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTA3LTI2IGF0IDE1OjUzICswMTAwLCBKYW1lcyBNb3JzZSB3cm90ZToNCj4g
SGkgQ2hyaXMsDQo+IA0KPiBPbiAxMi8wNy8yMDE5IDA0OjQ4LCBDaHJpcyBQYWNraGFtIHdyb3Rl
Og0KPiA+IA0KPiA+IEkgc3RpbGwgc2VlbSB0byBiZSBzdHJ1Z2dsaW5nIHRvIGdldCB0aGlzIG9u
IGFueW9uZSdzIHJhZGFyLg0KPiBXaG9zZSByYWRhciBkb2VzIGl0IG5lZWQgdG8gY3Jvc3M/DQo+
IA0KDQpUaGF0J3MgYSBnb29kIHF1ZXN0aW9uLiBUaGUgbGFzdCBzb2xpZCBndWlkYW5jZSBJIGhh
ZCB3YXMgdGhhdCB0aGlzDQpzZXJpZXMgd2FzIGdvaW5nIGluIHZpYSB0aGUgQVJNIHRyZWUuIEJ1
dCBhcyB5b3Ugc2F5IGJlbG93IHRoYXQgd2FzIHR3bw0KeWVhcnMgYWdvLg0KDQpJIG9ubHkgcmVh
bGlzZWQgcmVjZW50bHkgdGhhdCB0aGUgQVJNIGNvcmUgc2VlbXMgdG8gaGF2ZSBhIGRpZmZlcmVu
dA0Kd29ya2Zsb3cgdG8gb3RoZXIga2VybmVsIHN1YnN5c3RlbXMuDQoNCj4gDQo+ID4gDQo+ID4g
VGhlIFJldmlld3MvQWNrcyBoYXZlIGJlZW4gZ2l2ZW4gc28gdGhpcyBzaG91bGQgYmUgZ29vZCB0
byBnbyBpbg0KPiA+IHZpYSB0aGUgQVJNDQo+ID4gdHJlZSBhcyBwbGFubmVkLg0KPiA+IA0KPiA+
IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51eC1hcm0ta2VybmVsLzIw
MTctQXVndXN0LzUNCj4gPiAyNTU2MS5odG1sDQo+IEZvciB5b3VyIHY4IEkgdG9vayB0aGlzIHRv
IG1lYW4gdGhpcyBzZXJpZXMgd2FzIGRvbmUhDQo+IA0KPiBJZiBub3RoaW5nIGhhcyBjaGFuZ2Vk
IHdpdGggQm9yaXMgYW5kIFJ1c3NlbGwncyBkZWNpc2lvbiAoaXQgd2FzIHR3bw0KPiB5ZWFycyBh
Z28uLi4uKSwNCj4gZGV0YWlscyBvZiB0aGUgcGF0Y2ggc3lzdGVtIGFyZSBoZXJlOg0KPiANCj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC8yMDE5MDYyNDE0MjM0Ni5w
eGxqdjNtNG5wYXRkDQo+IGl5a0BzaGVsbC5hcm1saW51eC5vcmcudWsvDQo+IA0KDQpUaGFua3Mg
Zm9yIHRoZSBsaW5rLiBJIHdvdWxkIGhhdmUgbmV2ZXIgZm91bmQgdGhhdC4gSSBkaWQgdHJ5IHRv
IGZvbGxvdw0Kd2hhdCBJIGNvdWxkIGZpbmQgb27CoGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51
ay9kZXZlbG9wZXIvwqBidXQgYSBsb3QNCm9mIHRoYXQgc2VlbXMgdG8gYmUgb3V0IG9mIGRhdGUu
DQoNCkkgZGlkIG1hbmFnZSB0byBzdWJtaXQgdjkgwqB0byB0aGUgQVJNIHBhdGNoIHRyYWNrZXIg
YnV0IG5hdHVyYWxseSBJDQptZXNzZWQgaXQgdXAgdGhlIGZpcnN0IHRpbWXCoGh0dHBzOi8vd3d3
LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2gNCmVzL3ZpZXdwYXRjaC5waHA/aWQ9ODg3
Ny8xwqBhbmQgSSdtIG5vdCBzdXJlIEkgZ290IHRoZSBzZWNvbmQgYXR0ZW1wdA0KcmlnaHQgZWl0
aGVywqBodHRwczovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvdmlld3Bh
dGNoLnBoDQpwP2lkPTg4ODUvMQ0KDQoNCj4gVGhhbmtzLA0KPiANCj4gSmFtZXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
