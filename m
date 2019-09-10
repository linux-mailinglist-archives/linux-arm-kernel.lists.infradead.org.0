Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4DAAE269
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 04:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iS/qCCZkfnR/gZwAQtTU/6n6jd8c0b7MI5IQ6uX+PME=; b=K9Pzp2mHa8g9gNEOCFlTMMdM0
	RVjWq0XP1+DJ0w39am4ZJKSfEK5LyFH7vugAtsXhN9CJ84UkXUjJI0TJ21Vpte6igXgpm8hijUQO2
	VehHRuuid8qFEnU6FQhaarmOAEQbSpdXlOgpj40br4rF6MNyRxGin6VknrV74UAgxlnKHD3ditWwH
	e+Imgf7+CMs4r3oz04A8qPcj5ET41cZ76GgL9TZyYEh2o7VUfWfTz6rAyWBW4wyarO4uajFUCAM44
	HwC7v2pKcip/TjQIEdKsicn5J/KYsJJtM8Jbp4fA3hqXsyMKauQy6Sq2Me8czxCv3Pg5myXxoJ9hA
	BXOpq/kLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7WA2-0005Hy-0n; Tue, 10 Sep 2019 02:45:42 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7W9o-0005HB-0d; Tue, 10 Sep 2019 02:45:29 +0000
Received: from zhangzj?rock-chips.com (unknown [192.168.167.84])
 by regular1.263xmail.com (Postfix) with ESMTP id 72F88401;
 Tue, 10 Sep 2019 10:45:17 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.9.224] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P16693T140560903952128S1568083501895127_; 
 Tue, 10 Sep 2019 10:45:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9c1844bd32ab9429d9ac9fa2b5c8436b>
X-RL-SENDER: zhangzj@rock-chips.com
X-SENDER: zhangzj@rock-chips.com
X-LOGIN-NAME: zhangzj@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v1 1/1] ARM: dts: rockchip: set crypto default disabled on
 rk3288
To: Heiko Stuebner <heiko@sntech.de>
References: <20190827071439.14767-1-zhangzj@rock-chips.com>
 <4806912.UyKsYhR33o@phil>
 <3b9cbffa-291e-fc95-bce6-5b24f5fd860d@rock-chips.com>
 <3345609.Z0LLm6LDBC@phil>
From: Elon Zhang <zhangzj@rock-chips.com>
Message-ID: <192e0e32-363b-b6aa-84ed-67040c0c5f4f@rock-chips.com>
Date: Tue, 10 Sep 2019 10:45:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3345609.Z0LLm6LDBC@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_194528_398240_B37798C1 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiA5LzEvMjAxOSAwNzowNCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gSGkg
RWxvbiwKPgo+IEFtIERvbm5lcnN0YWcsIDI5LiBBdWd1c3QgMjAxOSwgMTM6MzE6MDAgQ0VTVCBz
Y2hyaWViIEVsb24gWmhhbmc6Cj4+IE9uIDgvMjcvMjAxOSAyMjoyOCwgSGVpa28gU3R1ZWJuZXIg
d3JvdGU6Cj4+PiBBbSBEaWVuc3RhZywgMjcuIEF1Z3VzdCAyMDE5LCAwOToxNDozOSBDRVNUIHNj
aHJpZWIgRWxvbiBaaGFuZzoKPj4+PiBOb3QgZXZlcnkgYm9hcmQgbmVlZHMgdG8gZW5hYmxlIGNy
eXB0byBub2RlLCBzbyB0aGUgbm9kZSBzaG91bGQKPj4+PiBiZSBzZXQgZGVmYXVsdCBkaXNhYmxl
ZCBpbiByazMyODguZHRzaSBhbmQgZW5hYmxlZCBpbiBzcGVjaWZpYwo+Pj4+IGJvYXJkIGR0cyBm
aWxlLgo+Pj4gQ2FuIHlvdSBnaXZlIGEgYml0IG1vcmUgcmF0aW9uYWxlIGhlcmU/IFRoZXJlIHdv
dWxkIG5lZWQgdG8gYmUgYSB2ZXJ5Cj4+PiBzcGVjaWZpYyByZWFzb24gYmVjYXVzZSBvZiB0aGUg
Zm9sbG93aW5nOgo+Pj4KPj4+IFRoZSBjcnlwdG8gbW9kdWxlIGlzIG5vdCB3aXJlZCB0byBzb21l
IGJvYXJkLXNwZWNpZmljIGNvbXBvbmVudHMsCj4+PiBzbyBpdHMgdXNhYmlsaXR5IGRvZXMgbm90
IGRlcGVuZCBvbiB0aGUgc3BlY2lmaWMgYm9hcmQgYXQgYWxsLgo+Pj4gSW5zdGVhZCBldmVyeSBi
b2FyZCBjYW4ganVzdCB1c2UgaXQgb3V0IG9mIHRoZSBib3ggYW5kIHRoZSBkZXZpY2V0cmVlCj4+
PiBpcyBzdXBwb3NlZCB0byBkZXNjcmliZSB0aGUgaGFyZHdhcmUgYW5kIGlzIF9ub3RfIG1lYW50
IGFzIGEgc3BhY2UKPj4+IGZvciB1c2VyIGNvbmZpZ3VyYXRpb24uCj4+IFJpZ2h0IGZvciBhbG1v
c3QgYWxsIG5vcm1hbCBoYXJkd2FyZSBtb2R1bGVzIGJ1dCB0aGUgY3J5cHRvIG1vZHVsZSB3YXMK
Pj4gZGVzaWduZWQKPj4KPj4gZm9yIHNlY3VyZSB3b3JsZC4gQXMgYSByZXN1bHQsICB0aGUgY3J5
cHRvIG1vZHVsZSB3aWxsIGJlY29tZQo+PiBpbmFjY2Vzc2libGUgZm9yIGxpbnV4IGtlcm5lbCBp
ZiBzZWN1cmUgd29ybGQgZW5hYmxlIGl0Lgo+Pgo+PiBXZSBwbGFuIHRvIGVuYWJsZSB0aGUgY3J5
cHRvIG1vZHVsZSBpbiBzZWN1cmUgd29ybGQgc28gd2Ugc2hvdWxkIHNldAo+PiBjcnlwdG8gbW9k
dWxlIGRlZmF1bHQgZGlzYWJsZWQgaW4gbGludXgga2VybmVsLgo+IG9rIC4uLiBJJ20gaGFsZndh
eSBjb252aW5jZWQgOy0pIC4KPgo+IFRoZSBiaWcgdGhpbmcgSSB3YW50IHRvIHNlZSBpcyB0aGF0
IHNlY3VyZSBzZXR0aW5nIGluIHRoZSBhY3R1YWwgZmlybXdhcmUuCj4gQWthIHJpZ2h0IG5vdyB5
b3UgcHJvYmFibHkgaGF2ZSB0aGF0IGluIHlvdXIgUm9ja2NoaXAtc3BlY2lmaWMgQVRGIGZvcmsK
PiBhbmQgSSByZWFsbHkgd2FudCB0byBzZWUgdGhlIHJlbGV2YW50IGNoYW5nZSBmb3IgcHVibGlj
IHVib290IG9yIEFURi4KPgo+IEkgZG9uJ3QgbmVjZXNzYXJpbHkgcmVxdWlyZSBpdCB0byBiZSBm
dWxseSBtZXJnZWQgYmVmb3JlIHRha2luZyB0aGlzLCBidXQKPiBJIHJlYWxseSB3YW50IHRvIHNl
ZSB0aGUgY2hhbmdlIGVpdGhlciBvbiBhIG1haWxpbmcgbGlzdCBvciBhdGYgZ2Vycml0Cj4gaW5z
dGFuY2UgW3RoYXQgbWFrZXMgdGhlIGNyeXB0byBlbmdpbmUgc2VjdXJlIG9ubHldLgo+Cj4gUmF0
aW9uYWxlIGJlaGluZCB0aGlzIGlzIHRoYXQgd2UgZG9uJ3QgY2FyZSB2ZXJ5IG11Y2ggYWJvdXQg
cHJpdmF0ZSBzdHVmZgo+IHRoYXQgdGhlIGdlbmVyYWwgZWNvc3lzdGVtIGRvZXNuJ3QgYmVuZWZp
dCBmcm9tLgoKTm93IHRoZSBjcnlwdG8gc2VjdXJpdHkgcHJvcGVydHkgc2V0dGluZyBpcyBkb25l
IGluIHRoZSByb2NrY2hpcCBwcml2YXRlIApjb2RlLCB3aGljaCBpcyBub3QKCm9wZW5zb3VyY2Uu
IFNvwqAgaWYgeW91IGRvbid0IGNhcmUgYWJvdXQgcHJpdmF0ZSBzdHVmZiBhbmQgdGhlIGNoYW5n
ZSBpbiAKcHJpdmF0ZSBzdHVmZiB3aWxsIG5vdAoKYWZmZWN0IHRoZSB1cHN0cmVhbSBrZXJuZWws
wqAgdGhlIGNyeXB0byBjYW4gYmUgZW5hYmxlZCBpbiB1cHN0cmVhbSBrZXJuZWw/Cgo+Cj4KPiBU
aGFua3MKPiBIZWlrbwo+Cj4KPj4+IFNvIGluIGZhY3QgdGhlIHN0YXR1cyBwcm9wZXJ0eSBzaG91
bGQgcHJvYmFibHkgZ28gYXdheSBjb21wbGV0ZWx5IGZyb20KPj4+IHRoZSBjcnlwdG8gbm9kZSwg
YXMgaXQncyB1c2FibGUgb3V0IG9mIHRoZSBib3ggaW4gYWxsIGNhc2VzLgo+Pj4KPj4+Cj4+PiBI
ZWlrbwo+Pj4KPj4+Cj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEVsb24gWmhhbmcgPHpoYW5nempA
cm9jay1jaGlwcy5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4
LmR0c2kgfCAyICstCj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4
LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODguZHRzaQo+Pj4+IGluZGV4IGNjODkzZTE1
NGZlNS4uZDUwOWFhMjQxNzdjIDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3Jr
MzI4OC5kdHNpCj4+Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LmR0c2kKPj4+PiBA
QCAtOTg0LDcgKzk4NCw3IEBACj4+Pj4gICAgCQljbG9jay1uYW1lcyA9ICJhY2xrIiwgImhjbGsi
LCAic2NsayIsICJhcGJfcGNsayI7Cj4+Pj4gICAgCQlyZXNldHMgPSA8JmNydSBTUlNUX0NSWVBU
Tz47Cj4+Pj4gICAgCQlyZXNldC1uYW1lcyA9ICJjcnlwdG8tcnN0IjsKPj4+PiAtCQlzdGF0dXMg
PSAib2theSI7Cj4+Pj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPj4+PiAgICAJfTsKPj4+PiAg
ICAKPj4+PiAgICAJaWVwX21tdTogaW9tbXVAZmY5MDA4MDAgewo+Pj4+Cj4+Pgo+Pj4KPj4+Cj4+
Pgo+Pj4KPj4KPj4KPgo+Cj4KPgo+Cj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
