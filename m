Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992F4F8A1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:05:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iFCGqfWV6yWgeWkbual0knFFaIwskAttOyxstSyRj9I=; b=QVdLEAf0xuvurBdwbbfxIIlHc
	l71skJct/uwO1sqbC5zRuTQBzMwiOOUI2K0tA0O2snxbHM0JVqu8HHqYCT54dHjjGmxoczrII2s02
	K20JVnpYZ6Mqnx2KeuKe3tXRTO7Gi4nEzk4i1nXMbUZhLtFVHOG4+AeSAdOcQWaplPA0OxxUG38uq
	hHbwVjCDNOeHkL7KPIVcHofmzWWrW/gcqjEproK24P9DoTc27SeTJucH+qBEtlc/ASDOsOmzprfMA
	cBRZchogcnq6i95KKcvBtsDfJ8mh5ejlApxt8AdRvxOeddVA/CwP9iHgcSMHQ70xfd3ghSj1PTy5N
	4XzRG8sEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURB5-0004nC-KB; Tue, 12 Nov 2019 08:05:31 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURAv-0004m8-8h; Tue, 12 Nov 2019 08:05:23 +0000
Received: from localhost (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 4ACCB3F3;
 Tue, 12 Nov 2019 16:05:07 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P28956T140214521083648S1573545889847809_; 
 Tue, 12 Nov 2019 16:05:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a1e7a1b6f9fa5cb3f53851fe515b3e1c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-kernel@vger.kernel.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
To: Soeren Moch <smoch@web.de>, heiko@sntech.de
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
 <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
Date: Tue, 12 Nov 2019 16:04:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_000521_625885_FF2BC3B9 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>,
 linux-kernel@vger.kernel.org, Alexis Ballier <aballier@gentoo.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Hugh Cole-Baker <sigmaris@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>,
 Andy Yan <andyshrk@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Vicente Bergas <vicencb@gmail.com>, Oskari Lemmela <oskari@lemmela.net>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Vivek Unune <npcomplete13@gmail.com>,
 Akash Gajjar <akash@openedev.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTEvMTEg5LiL5Y2INDo0MiwgU29lcmVuIE1vY2ggd3JvdGU6Cj4gT24gMTEuMTEu
MTkgMDE6NTEsIEtldmVyIFlhbmcgd3JvdGU6Cj4+IFNpbmNlIHRoZXJlIGlzIG5vIGRldmZyZXEg
dXNlZCBmb3IgdmRkX2xvZywgc28gdGhlIHZkZF9sb2cocHdtIHJlZ3VsYXRvcikKPj4gd2lsbCBi
ZSAnZW5hYmxlJyB3aXRoIHRoZSBkdHMgbm9kZSBhdCBhIGRlZmF1bHQgUFdNIHN0YXRlIHdpdGgg
aGlnaCBvciBsb3cKPj4gb3V0cHV0LiBCb3RoIHRvbyBoaWdoIG9yIHRvbyBsb3cgZm9yIHZkZF9s
b2cgaXMgbm90IGdvb2QgZm9yIHRoZSBib2FyZCwKPj4gYWRkIGluaXQgdm9sdGFnZSBmb3IgZHJp
dmVyIHRvIG1ha2UgdGhlIHJlZ3VsYXRvciBnZXQgaW50byBhIGtub3cgb3V0cHV0Lgo+Pgo+PiBO
b3RlIHRoYXQgdGhpcyB3aWxsIGJlIHVzZWQgYnkgVS1Cb290IGZvciBpbml0IHZvbHRhZ2Ugb3V0
cHV0LCBhbmQgdGhpcwo+PiBpcyB2ZXJ5IGltcG9ydGFudCBmb3IgaXQgbWF5IGdldCBzeXN0ZW0g
aGFuZyBzb21ld2hlcmUgZHVyaW5nIHN5c3RlbQo+PiBib290IHVwIHdpdGggcmVndWxhdG9yIGVu
YWJsZSBhbmQgd2l0aG91dCB0aGlzIGluaXQgdmFsdWUuCj4gSSB0aGluayBpdCdzIGEgZ29vZCBp
ZGVhIHRvIGluY2x1ZGUgdGhpcyBzZXR0aW5nIGluIHRoZSBtYWluIGR0cyBmb3IgdGhlCj4gYm9h
cmRzIChub3QgaW4gdS1ib290IHNwZWNpZmljIGFkZGl0aW9ucyBhcyBpcyBkb25lIG5vdykuIEJ1
dCB0aGVyZSBpcwo+IChmb3Igc29tZSByZWFzb24/KSBubyBkb2N1bWVudGVkIGJpbmRpbmcgZm9y
IHJlZ3VsYXRvci1pbml0LW1pY3Jvdm9sdCBpbgo+IGxpbnV4LgoKCk9oaCwgSSBmb3Jnb3QgdGhl
IGtlcm5lbCBkcml2ZXIgZG9lcyBub3Qgc3VwcG9ydCB0aGlzIHByb3BlcnR5LgoKQEhlaWtvLCBj
YW4gd2UgYWRkIHRoaXMgJ3JlZ3VsYXRvci1pbml0LW1pY3Jvdm9sdCcgd2l0aG91dCBkcml2ZXIg
CnN1cHBvcnQgYnV0IGFkZGluZyBkb2N1bWVudCBmb3IKCml0IGF0IGR0LWJpbmRpbmc/CgoKVGhh
bmtzLAoKLSBLZXZlcgoKPgo+IFJlZ2FyZHMsCj4gU29lcmVuCj4+IENDOiBFbGFpbmUgWmhhbmcg
PHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNvbT4KPj4gQ0M6IFBldGVyIFJvYmluc29uIDxwYnJvYmlu
c29uQGdtYWlsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0By
b2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+Cj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktZXZiLmR0cyAgICAgICAgICB8IDEgKwo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LWZpcmVmbHkuZHRzICAgICAgfCAxICsKPj4gICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1odWdzdW4teDk5LmR0cyAgIHwgMSArCj4+ICAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta2hhZGFzLWVkZ2UuZHRzaSB8IDEgKwo+PiAg
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWxlZXotcDcxMC5kdHMgICAgfCAx
ICsKPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1vcmFuZ2VwaS5kdHMg
ICAgIHwgMSArCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBj
LmR0cyAgICAgICB8IDEgKwo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LXJvY2twcm82NC5kdHMgICAgfCAxICsKPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1zYXBwaGlyZS5kdHNpICAgIHwgMSArCj4+ICAgOSBmaWxlcyBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LWV2Yi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1l
dmIuZHRzCj4+IGluZGV4IDc3MDA4ZGNhNDViYy4uZmEyNDFhZWIxMWIwIDEwMDY0NAo+PiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ldmIuZHRzCj4+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWV2Yi5kdHMKPj4gQEAgLTY1LDYgKzY1
LDcgQEAKPj4gICAJCXJlZ3VsYXRvci1uYW1lID0gInZkZF9jZW50ZXIiOwo+PiAgIAkJcmVndWxh
dG9yLW1pbi1taWNyb3ZvbHQgPSA8ODAwMDAwPjsKPj4gICAJCXJlZ3VsYXRvci1tYXgtbWljcm92
b2x0ID0gPDE0MDAwMDA+Owo+PiArCQlyZWd1bGF0b3ItaW5pdC1taWNyb3ZvbHQgPSA8OTUwMDAw
PjsKPj4gICAJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+ICAgCQlyZWd1bGF0b3ItYm9vdC1vbjsK
Pj4gICAJCXN0YXR1cyA9ICJva2F5IjsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LWZpcmVmbHkuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktZmlyZWZseS5kdHMKPj4gaW5kZXggOTJkZTgzZGQ0ZGJjLi40ZTQ1MjY5ZmNk
ZmYgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWZp
cmVmbHkuZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWZp
cmVmbHkuZHRzCj4+IEBAIC0yMDgsNiArMjA4LDcgQEAKPj4gICAJCXJlZ3VsYXRvci1ib290LW9u
Owo+PiAgIAkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NDMwMDAwPjsKPj4gICAJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDE0MDAwMDA+Owo+PiArCQlyZWd1bGF0b3ItaW5pdC1taWNy
b3ZvbHQgPSA8OTUwMDAwPjsKPj4gICAJCXZpbi1zdXBwbHkgPSA8JnZjY19zeXM+Owo+PiAgIAl9
Owo+PiAgIH07Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1odWdzdW4teDk5LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LWh1Z3N1bi14OTkuZHRzCj4+IGluZGV4IGMxMzNlOGQ2NGIyYS4uNjkyZjMxNTRlZGMzIDEwMDY0
NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1odWdzdW4teDk5
LmR0cwo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1odWdzdW4t
eDk5LmR0cwo+PiBAQCAtMTAwLDYgKzEwMCw3IEBACj4+ICAgCQlyZWd1bGF0b3ItbmFtZSA9ICJ2
ZGRfbG9nIjsKPj4gICAJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDgwMDAwMD47Cj4+ICAg
CQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxNDAwMDAwPjsKPj4gKwkJcmVndWxhdG9yLWlu
aXQtbWljcm92b2x0ID0gPDk1MDAwMD47Cj4+ICAgCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+PiAg
IAkJcmVndWxhdG9yLWJvb3Qtb247Cj4+ICAgCX07Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1raGFkYXMtZWRnZS5kdHNpIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTkta2hhZGFzLWVkZ2UuZHRzaQo+PiBpbmRleCA0OTQ0ZDc4
YTBhMWMuLmMyYWM4MGQ5OTMwMSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTkta2hhZGFzLWVkZ2UuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1raGFkYXMtZWRnZS5kdHNpCj4+IEBAIC03OSw2ICs3OSw3IEBA
Cj4+ICAgCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4gICAJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDgwMDAwMD47Cj4+ICAgCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxNDAwMDAwPjsK
Pj4gKwkJcmVndWxhdG9yLWluaXQtbWljcm92b2x0ID0gPDk1MDAwMD47Cj4+ICAgCQl2aW4tc3Vw
cGx5ID0gPCZ2c3lzXzN2Mz47Cj4+ICAgCX07Cj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1sZWV6LXA3MTAuZHRzIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktbGVlei1wNzEwLmR0cwo+PiBpbmRleCA3M2JlMzhhNTM3OTYu
LmMzMmFiY2M0ZGRjMSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktbGVlei1wNzEwLmR0cwo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1sZWV6LXA3MTAuZHRzCj4+IEBAIC0xMDEsNiArMTAxLDcgQEAKPj4gICAJCXJl
Z3VsYXRvci1ib290LW9uOwo+PiAgIAkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8ODAwMDAw
PjsKPj4gICAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE0MDAwMDA+Owo+PiArCQlyZWd1
bGF0b3ItaW5pdC1taWNyb3ZvbHQgPSA8OTUwMDAwPjsKPj4gICAJCXZpbi1zdXBwbHkgPSA8JnZj
YzV2MF9zeXM+Owo+PiAgIAl9Owo+PiAgIH07Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1vcmFuZ2VwaS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1vcmFuZ2VwaS5kdHMKPj4gaW5kZXggMDU0MWRmY2U5MjRkLi45ZDY3
NGM1MWYwMjUgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mzk5LW9yYW5nZXBpLmR0cwo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1vcmFuZ2VwaS5kdHMKPj4gQEAgLTE2NCw2ICsxNjQsNyBAQAo+PiAgIAkJcmVndWxhdG9y
LWJvb3Qtb247Cj4+ICAgCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MDAwMDA+Owo+PiAg
IAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTQwMDAwMD47Cj4+ICsJCXJlZ3VsYXRvci1p
bml0LW1pY3Jvdm9sdCA9IDw5NTAwMDA+Owo+PiAgIAkJdmluLXN1cHBseSA9IDwmdmNjX3N5cz47
Cj4+ICAgCX07Cj4+ICAgfTsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXJvYy1wYy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2MtcGMuZHRzCj4+IGluZGV4IDE5Zjc3MzJkNzI4Yy4uN2Q4NTZjZTFkMTU2IDEwMDY0
NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRz
Cj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHMK
Pj4gQEAgLTEyOSw2ICsxMjksNyBAQAo+PiAgIAkJcmVndWxhdG9yLWJvb3Qtb247Cj4+ICAgCQly
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MDAwMDA+Owo+PiAgIAkJcmVndWxhdG9yLW1heC1t
aWNyb3ZvbHQgPSA8MTQwMDAwMD47Cj4+ICsJCXJlZ3VsYXRvci1pbml0LW1pY3Jvdm9sdCA9IDw5
NTAwMDA+Owo+PiAgIAkJdmluLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4+ICAgCX07Cj4+ICAg
fTsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Y2twcm82NC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJv
NjQuZHRzCj4+IGluZGV4IGU1NDRkZWI2MWQyOC4uOGZiY2NiYzhiZjQ3IDEwMDY0NAo+PiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMKPj4g
QEAgLTE3NCw2ICsxNzQsNyBAQAo+PiAgIAkJcmVndWxhdG9yLWJvb3Qtb247Cj4+ICAgCQlyZWd1
bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MDAwMDA+Owo+PiAgIAkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MTcwMDAwMD47Cj4+ICsJCXJlZ3VsYXRvci1pbml0LW1pY3Jvdm9sdCA9IDw5NTAw
MDA+Owo+PiAgIAkJdmluLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4+ICAgCX07Cj4+ICAgfTsK
Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXNhcHBo
aXJlLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1zYXBwaGlyZS5k
dHNpCj4+IGluZGV4IDFiYzE1Nzk2NzRlNS4uZjhlMmNiOGMwNjI0IDEwMDY0NAo+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1zYXBwaGlyZS5kdHNpCj4+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXNhcHBoaXJlLmR0c2kKPj4gQEAg
LTEzMyw2ICsxMzMsNyBAQAo+PiAgIAkJcmVndWxhdG9yLWJvb3Qtb247Cj4+ICAgCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDw4MDAwMDA+Owo+PiAgIAkJcmVndWxhdG9yLW1heC1taWNyb3Zv
bHQgPSA8MTQwMDAwMD47Cj4+ICsJCXJlZ3VsYXRvci1pbml0LW1pY3Jvdm9sdCA9IDw5NTAwMDA+
Owo+PiAgIAkJdmluLXN1cHBseSA9IDwmdmNjX3N5cz47Cj4+ICAgCX07Cj4+ICAgfTsKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
