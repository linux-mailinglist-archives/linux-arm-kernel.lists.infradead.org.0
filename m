Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 548AC193259
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 22:09:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LyUKe5Hipki85Vqa3ly1GxPbHzm9xNdsnkYkJTFT5ao=; b=hhT44SJ+CZ6R1JYpeMGyNuguf
	n4wQU81ZWkjb8kzIwjSriiXgE8riaxyqJKtDcHs3lcZloSNA2zqHdSjfOnrRqMaTSOuif6IfXI7kW
	YfUYRRlcIOfYOIZZw82jcUnM82LL3jLdsKRckZPHpuxaNMABltnvZh0BWUvD6pnWd+wK3NWGfNDM4
	CfOG9FzWh1BjZtrg9RuWH5Ul3sdv93IiESx5iJ8GkhCq8SZt7nr/TQAMsg7DpOO8a9yTpvAgnqwKq
	EMT170YMqdTmiTfRtibSOeXJAP+2k5T6bNM9Hflqp3yU+k0/KCRbTwYVaqrmG09EZun7cytr9yoEs
	fkO1v+p4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDH7-0004Nh-PJ; Wed, 25 Mar 2020 21:09:21 +0000
Received: from smtp109.ord1d.emailsrvr.com ([184.106.54.109])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDGx-0004N5-N7
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 21:09:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=softiron.com;
 s=20191119-3p77dzn5; t=1585170548;
 bh=DZa5lxBToOiGxVENeDrpTYmvyQ/rLx72PLYeWo0dYe4=;
 h=Subject:To:From:Date:From;
 b=h+c0aKcKzMD+/JrrLz0/CeJZviWgw9gS46UzFR3HZqD5fSJINbrTj/kpQmpkIY0Ys
 Dnq0Kfz9EUNV+FsXLkZY7lSoCT5ZOYJMSLo2hXGwcVhJpTlzI8M2Z0WIj0WBuyL0aj
 wcXy2rs/JB+fjAspIyEpDgYE5iHPgBKAQ30hBOII=
X-Auth-ID: alan@softiron.com
Received: by smtp14.relay.ord1d.emailsrvr.com (Authenticated sender:
 alan-AT-softiron.com) with ESMTPSA id 12BE3400F6; 
 Wed, 25 Mar 2020 17:09:07 -0400 (EDT)
X-Sender-Id: alan@softiron.com
Received: from [10.1.1.115] (99-117-187-177.lightspeed.dybhfl.sbcglobal.net
 [99.117.187.177]) (using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
 by 0.0.0.0:465 (trex/5.7.12); Wed, 25 Mar 2020 17:09:08 -0400
Subject: Re: pinctrl states vs pinmux vs gpio (i2c bus recovery)
To: Ludovic.Desroches@microchip.com, linux@armlinux.org.uk,
 linus.walleij@linaro.org
References: <20191206173343.GX25745@shell.armlinux.org.uk>
 <CACRpkdZv2rzA8AbFZKq0XVBaXNJR8c5tsb+1KTZ7fNuWjm5cbQ@mail.gmail.com>
 <20191213002010.GO25745@shell.armlinux.org.uk>
 <1ca5d81d-5aa9-8f8d-8731-4d34de9c6bfa@softiron.com>
 <4f9bb480-ba8d-b70e-961b-d6032232d250@softiron.com>
 <edb09f97-7748-f7d0-cad6-e79db7950b0d@microchip.com>
From: Alan Ott <alan@softiron.com>
Message-ID: <c193dd83-4cdc-9f3f-560e-828cf6e8a8db@softiron.com>
Date: Wed, 25 Mar 2020 17:09:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <edb09f97-7748-f7d0-cad6-e79db7950b0d@microchip.com>
Content-Language: en-US
X-Classification-ID: 6d67751f-e8cd-4b91-a995-d4b80ee8fecd-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_140912_004408_5777F8DA 
X-CRM114-Status: GOOD (  31.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [184.106.54.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kamel.bouhara@bootlin.com, linux-gpio@vger.kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org,
 wsa@the-dreams.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yNS8yMCA0OjA2IFBNLCBMdWRvdmljLkRlc3JvY2hlc0BtaWNyb2NoaXAuY29tIHdyb3Rl
Ogo+IE9uIDMvMjUvMjAyMCAxOjQyIFBNLCBBbGFuIE90dCB3cm90ZToKPj4gRVhURVJOQUwgRU1B
SUw6IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25v
dwo+PiB0aGUgY29udGVudCBpcyBzYWZlCj4+Cj4+IE9uIDIvMjcvMjAgMTE6NDcgQU0sIEFsYW4g
T3R0IHdyb3RlOgo+Pj4gT24gMTIvMTIvMTkgNzoyMCBQTSwgUnVzc2VsbCBLaW5nIC0gQVJNIExp
bnV4IGFkbWluIHdyb3RlOgo+Pj4+IE9uIE1vbiwgRGVjIDA5LCAyMDE5IGF0IDAxOjIwOjE1QU0g
KzAxMDAsIExpbnVzIFdhbGxlaWogd3JvdGU6Cj4+Pj4+IEhpIFJ1c3NlbGwsCj4+Pj4+Cj4+Pj4+
IHZlcnkgbmljZSBkZXNjcmlwdGlvbiBvZiB0aGlzIGR1YWwtbW9kZSBwcm9ibGVtLgo+Pj4+Pgo+
Pj4+PiBJIHdpc2ggSSBoYWQgYSBzaW1wbGUgYW5kIGVsZWdhbnQgd2F5IHdlIGNvdWxkIG1ha2Ug
aXQKPj4+Pj4gdW5hbWJpZ3VvdXMgYW5kIHNpbXBsZSB0byB1c2UgLi4uIGJ1dCBpdCBiZWF0cyBt
ZSByaWdodAo+Pj4+PiBub3cuCj4+Pj4+Cj4+Pj4+IE9uIEZyaSwgRGVjIDYsIDIwMTkgYXQgNjoz
MyBQTSBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4KPj4+Pj4gPGxpbnV4QGFybWxpbnV4
Lm9yZy51az4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+PiBPbmUgbWF5IGV4cGVjdDoKPj4+Pj4+Cj4+Pj4+
PiAgwqDCoMKgwqDCoMKgwqDCoCBwaW5jdHJsX3NlbGVjdF9zdGF0ZShpMmNfaW14LT5waW5jdHJs
LAo+Pj4+Pj4gaTJjX2lteC0+cGluY3RybF9waW5zX2RlZmF1bHQpOwo+Pj4+Pj4KPj4+Pj4+IHRv
IGNoYW5nZSB0aGVtIGJhY2sgdG8gdGhlIGRlZmF1bHQgc3RhdGUsIGJ1dCB0aGF0IHdvdWxkIGJl
IGluY29ycmVjdC4KPj4+Pj4+IFRoZSBmaXJzdCB0aGluZyB0aGF0IHBpbmN0cmxfc2VsZWN0X3N0
YXRlKCkgZG9lcyBpcyBjaGVjayB3aGV0aGVyCj4+Pj4+Pgo+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKg
wqAgcC0+c3RhdGUgPT0gc3RhdGUKPj4+Pj4+Cj4+Pj4+PiB3aGljaCBpdCB3aWxsIGRvLCBhcyB0
aGUgcGluY3RybCBsYXllciBoYXNuJ3QgYmVlbiBpbmZvcm1lZCBvZiB0aGUKPj4+Pj4+IGNoYW5n
ZSB0aGF0IGhhcyBoYXBwZW5lZCBiZWhpbmQgaXRzIGJhY2sgYXQgdGhlIHBpbm11eCBsZXZlbC4K
Pj4+Pj4gU29tZSBwaW4gY29udHJvbGxlcnMgaGF2ZSB0aGUgLnN0cmljdCBwcm9wZXJ0eSBzZXQK
Pj4+Pj4gaW4gdGhlaXIgc3RydWN0IHBpbm11eF9vcHM6Cj4+Pj4+Cj4+Pj4+ICogQHN0cmljdDog
ZG8gbm90IGFsbG93IHNpbXVsdGFuZW91cyB1c2Ugb2YgdGhlIHNhbWUgcGluIGZvciBHUElPIGFu
ZAo+Pj4+PiBhbm90aGVyCj4+Pj4+ICrCoMKgwqDCoMKgIGZ1bmN0aW9uLiBDaGVjayBib3RoIGdw
aW9fb3duZXIgYW5kIG11eF9vd25lciBzdHJpY3RseSBiZWZvcmUKPj4+Pj4gYXBwcm92aW5nCj4+
Pj4+ICrCoMKgwqDCoMKgIHRoZSBwaW4gcmVxdWVzdC4KPj4+Pj4KPj4+Pj4gVGhlIG5vbi1zdHJp
Y3QgcGluIGNvbnRyb2xsZXJzIGFyZSB0aG9zZSB0aGF0IGFjdHVhbGx5IGFsbG93IEdQSU8KPj4+
Pj4gYW5kIGRldmljZSBmdW5jdGlvbnMgdG8gYmUgdXNlZCBvbiB0aGUgc2FtZSBwaHlzaWNhbCBs
aW5lIGF0IHRoZQo+Pj4+PiBzYW1lIHRpbWUuIEluIHRoaXMgY2FzZSB0aGVyZSBpcyBub3Qgc3Bl
Y2lhbCBHUElPIG1vZGUgZm9yIHRoZQo+Pj4+PiBsaW5lIGluIHNvbWUgbXV4aW5nIHJlZ2lzdGVy
cywgdGhleSBhcmUganVzdCBwaHlzaWNhbGx5IGNvbm5lY3RlZAo+Pj4+PiBzb21laG93Lgo+Pj4+
Pgo+Pj4+PiBPbmUgdXNlY2FzZSBpcyBzb3J0IG9mIGxpa2UgaG93IHRjcGR1bXAgd29yayBmb3IK
Pj4+Pj4gZXRoZXJuZXQgaW50ZXJmYWNlczogYSBHUElPIHJlZ2lzdGVyIGNhbiAic25vb3AiIG9u
IGEgcGluIHdoaWxlCj4+Pj4+IGluIHVzZWQgYnkgYW5vdGhlciBkZXZpY2UuCj4+Pj4+Cj4+Pj4+
IEJ1dCBpdCB3b3VsZCBub3RhYmx5IGFsc28gYWxsb3cgeW91IHRvIGRyaXZlIHRoZSBsaW5lIGFu
ZCBpbnRlcmZlcmUKPj4+Pj4gd2l0aCB0aGUgZGV2aWNlLiBXaGljaCBpcyBleGFjdGx5IHdoYXQg
dGhpcyBJMkMgcmVjb3ZlcnkgbWVjaGFuaXNtCj4+Pj4+IGRvZXMsIGp1c3QgdGhhdCBpdHMgcGlu
IGNvbnRyb2xsZXIgaXMgYWN0dWFsbHkgc3RyaWN0LCB3aWxsIG5vdCBhbGxvdwo+Pj4+PiB0aGUg
c2FtZSBsaW5lIHRvIGJlIHVzZWQgZm9yIEdQSU8gYW5kIHNvbWUgb3RoZXIgZnVuY3Rpb24gYXQg
dGhlCj4+Pj4+IHNhbWUgdGltZSwgc28gSSBzdXBwb3NlIGkuTVggc2hvdWxkIHByb2JhYmx5IGV4
cGxvcmUgdGhlCj4+Pj4+IHN0cmljdCBtb2RlLgo+Pj4+Pgo+Pj4+PiBFbmFibGluZyB0aGF0IHdp
bGwgc2FkbHkgbWFrZSB0aGUgcHJvYmxlbSBNT1JFIGNvbXBsZXgKPj4+Pj4gZm9yIHRoaXMgSTJD
IHJlY292ZXJ5LCByZXF1aXJpbmcgYSBjeWNsZSBvZgo+Pj4+PiBncGlvZF9wdXQoKS9ncGlvZF9n
ZXQoKSB0byBnZXQgaXQgcmVsZWFzZWQgZnJvbSBHUElPIG1vZGUsIGkuZS4KPj4+Pj4gd2Ugd291
bGQgbmVlZCB0byBqdXN0IGdldCB0aGUgR1BJTyB3aGVuIHRoaXMgaXMgc3RyaWN0bHkgbmVlZGVk
Lgo+Pj4+PiBVc2luZyBkZXZtX2dwaW9kX2dldCgpIGFuZCBrZWVwaW5nIGEgcmVmZXJlbmNlIGRl
c2NyaXB0b3IKPj4+Pj4gYXJvdW5kIHdvdWxkIG5vdCB3b3JrIGFsbCBvZiBhIHN1ZGRlbi4KPj4+
Pj4KPj4+Pj4gSSBhbSB0aGlua2luZyB3aGV0aGVyIHdlIGNhbiBoYW5kbGUgdGhlIG5vbi1zdHJp
Y3QgY29udHJvbGxlcnMKPj4+Pj4gaW4gYSBtb3JlIGVsZWdhbnQgd2F5LCBvciBhZGQgc29tZSBB
UEkgdG8gZXhwbGljaXRseSBoYW5kIG92ZXIKPj4+Pj4gYmV0d2VlbiBkZXZpY2UgZnVuY3Rpb24g
YW5kIEdQSU8gZnVuY3Rpb24uIEJ1dCBJIGNhbid0IHJlYWxseQo+Pj4+PiBzZWUgc29tZSBvYnZp
b3VzIHNvbHV0aW9uLgo+Pj4+IFdoYXQgSSdtIGN1cnJlbnRseSB0cnlpbmcgaXMgKGVycm9yIGhh
bmRsaW5nIHJlbW92ZWQgZm9yIGJyZXZpdHkpOgo+Pj4+Cj4+Pj4gIMKgwqDCoCBzdHJ1Y3QgaTJj
X2J1c19yZWNvdmVyeV9pbmZvICpicmkgPSAmaTJjLT5yZWNvdmVyeTsKPj4+Pgo+Pj4+ICDCoMKg
wqDCoMKgwqDCoMKgIGkyYy0+cGluY3RybCA9IGRldm1fcGluY3RybF9nZXQoZGV2KTsKPj4+PiAg
wqDCoMKgwqDCoMKgwqDCoCBpMmMtPnBpbmN0cmxfZGVmYXVsdCA9IHBpbmN0cmxfbG9va3VwX3N0
YXRlKGkyYy0+cGluY3RybCwKPj4+Pgo+Pj4+IFBJTkNUUkxfU1RBVEVfREVGQVVMVCk7Cj4+Pj4g
IMKgwqDCoMKgwqDCoMKgwqAgaTJjLT5waW5jdHJsX3JlY292ZXJ5ID0gcGluY3RybF9sb29rdXBf
c3RhdGUoaTJjLT5waW5jdHJsLAo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAicmVjb3ZlcnkiKTsKPj4+PiAgwqDCoMKgwqDCoMKg
wqDCoCBicmktPnNkYV9ncGlvZCA9IGRldm1fZ3Bpb2RfZ2V0KGRldiwgInNkYSIsCj4+Pj4gR1BJ
T0RfT1VUX0hJR0hfT1BFTl9EUkFJTik7Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqAgYnJpLT5zY2xf
Z3Bpb2QgPSBkZXZtX2dwaW9kX2dldChkZXYsICJzY2wiLAo+Pj4+IEdQSU9EX09VVF9ISUdIX09Q
RU5fRFJBSU4pOwo+Pj4+Cj4+Pj4gIMKgwqDCoCBwaW5jdHJsX3NlbGVjdF9zdGF0ZShpMmMtPnBp
bmN0cmwsIGkyYy0+cGluY3RybF9yZWNvdmVyeSk7Cj4+Pj4gIMKgwqDCoCByZXR1cm4gcGluY3Ry
bF9zZWxlY3Rfc3RhdGUoaTJjLT5waW5jdHJsLCBpMmMtPnBpbmN0cmxfZGVmYXVsdCk7Cj4+Pj4K
Pj4+PiB3aGljaCBzZWVtcyBnb29kIGVub3VnaCB0byBnZXQgdGhlIHBpbnMgYmFjayBpbnRvIGky
YyBtb2RlIGFmdGVyIHRoZQo+Pj4+IGdwaW9zIGFyZSBvYnRhaW5lZC7CoCBUaGVuIHdlIHN3aXRj
aCB0aGUgcGluY3RybCBzdGF0ZSBiZXR3ZWVuCj4+Pj4gcGluY3RybF9yZWNvdmVyeSBhbmQgcGlu
Y3RybF9kZWZhdWx0IGFzIHdlIGhhdmUgbmVlZCB0by4KPj4+Pgo+Pj4+IFRoZSBwcm9ibGVtIGlz
LCB0aGUgZ2VuZXJpYyBpMmMgYnVzIHJlY292ZXJ5IGNvZGUgd2FudHMgdGhlIGdwaW9kCj4+Pj4g
ZGVzY3JpcHRvcnMgdG8gYmUgc2V0dXAgYW5kIGlucGxhY2UgYnkgdGhlIHRpbWUgaTJjX2luaXRf
cmVjb3ZlcnkoKQo+Pj4+IGlzIGNhbGxlZCAod2hpY2ggaXMgY2FsbGVkIHdoZW4gdGhlIGFkYXB0
ZXIgaXMgcmVnaXN0ZXJlZCkgc28KPj4+PiBob2xkaW5nIG9mZiB1bnRpbCB3ZSBuZWVkIHRvIGRv
IHJlY292ZXJ5IGRvZXNuJ3Qgd29yay4KPj4+Pgo+Pj4+IFRoaXMgc2VlbXMgdG8gd29yayBmb3Ig
dGhpcyBTb0MgSSdtIGN1cnJlbnRseSB3b3JraW5nIHdpdGgsIGJ1dCBJCj4+Pj4gdGhpbmsgdGhl
cmUncyBtb3JlIG9uIHRoZSBob3Jpem9uIC0gSSdtIGhhdmluZyB0aGUgc2FtZSBwcm9ibGVtcwo+
Pj4+IG9uIGFub3RoZXIgU29DIHdoaWNoIGFsc28gbmVlZHMgYnVzIHJlY292ZXJ5IGltcGxlbWVu
dGVkLCBhbmQgYXMKPj4+PiB0aGUgcHJvYmxlbSBkZXZpY2UgaXMgYmVoaW5kIGFuIEkyQyBidXMg
bXV4LCB3aGVuIGl0IGxvY2tzIHRoZSBJMkMKPj4+PiBidXMsIGl0IGtpbGxzIGFsbCBJMkMgYnVz
ZXMgcm9vdGVkIGF0IHRoYXQgcGFydGljdWxhciBTb0MgSTJDCj4+Pj4gY29udHJvbGxlci7CoCBI
b3dldmVyLCB0aGVyZSdzIGEgcHJvYmxlbSAtIHRoZSBwaW5jdHJscyBmb3IgdGhhdCBTb0MKPj4+
PiBhcmUgc2V0IGJ5IFJPTSBmaXJtd2FyZSBhdCBib290IHRpbWUgYnkgcmVhZGluZyBhIHRhYmxl
IGZyb20gdGhlCj4+Pj4gYm9vdCBtZWRpYS7CoCAqVW5wcmludGFibGVzIGFib3V0IGZpcm13YXJl
IGJlaW5nIHRvbyB3YXkgbGltaXRpbmcqLiA6cAo+Pj4+Cj4+ICAgPgo+Pj4gSGkgYWxsLCB3aGF0
J3MgdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhpcz8gSSBjYW4gY29uZmlybSB0aGF0IHRoaXMgaXMK
Pj4+IGJyb2tlbiB3aXRoIHRoZSBhdDkxIGkyYyBjb250cm9sbGVyJ3MgcmVjb3ZlcnkgbW9kZVsx
XSwgd2hpY2ggaXMKPj4+IGltcGxlbWVudGVkIGV4YWN0bHkgdGhlIHNhbWUgYXMgb3RoZXIgaTJj
IG1hc3RlciByZWNvdmVyeSBtb2Rlcywgc28gSQo+Pj4gc3VzcGVjdCB0aGVtIHRvIGJlIGJyb2tl
biBhcyB3ZWxsLgo+Pj4KPj4+IEknbSB1c2luZyA1LjUuNiB3aXRoIHRoaXMgcGF0Y2ggYXBwbGll
ZCAod2hpY2ggYWRkcyB0aGUgcmVjb3ZlcnkpOgo+Pj4gIMKgwqDCoMKgIGh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvY292ZXIvMTEzMzM4ODMvCj4+Pgo+Pj4gSXQgd29ya2VkIGZpbmUgd2l0
aCA1LjIsIGJ1dCBoYXMgbm93IGJyb2tlbiwgdGhlIHdheSBSdXNzZWxsIGRlc2NyaWJlcywKPj4+
IGluIDUuNS42IGFuZCBhbHNvIG9uIHRoZSBsYXRlc3QgNS42LXJjMy4gUnVzc2VsbCdzIHN1Z2dl
c3RlZCB3b3JrYXJvdW5kCj4+PiBvZiBzZXR0aW5nIHRoZSBwaW5jdHJsIHRvIHJlY292ZXJ5IChn
cGlvKSBhbmQgdGhlbiBiYWNrIHRvIGRlZmF1bHQgZG9lcwo+Pj4gbWFrZSBpdCB3b3JrLgo+Pj4K
Pj4+IEFsYW4uCj4+Pgo+Pj4gWzFdIGN1cnJlbnRseSB0aGUgcGF0Y2ggZm9yIGkyYyByZWNvdmVy
eSBmb3IgYXQ5MSBpcyBhY2NlcHRlZCB0byBXb2xmcmFtCj4+PiBTYW5nJ3MgZm9yLW5leHQgdHJl
ZS4KPj4+Cj4+Cj4+IElzIHRoZXJlIGFueSB3b3JkIG9uIHRoaXM/Cj4+Cj4gCj4gSW50ZXJuYWxs
eSB3ZSBoYXZlIG1hbmFnZWQgaXQgaW4gdGhlIHNhbWUgd2F5IGFzIHRoZSBvbmUgc3VnZ2VzdGVk
IGJ5Cj4gUnVzc2VsbC4KPiAKPiBXZSB3b25kZXJlZCBpZiB3ZSBzaG91bGQgbWFpbmxpbmUgaXQg
b3Igbm90IGFzIGl0J3MgcmVhbGx5IHRyaWNreSB0bwo+IHByb2NlZWQgbGlrZSB0aGlzLgoKQ2Vy
dGFpbmx5IGl0IG5lZWRzIHRvIHdvcmsgaW4gbWFpbmxpbmUgdGhvdWdoLCByaWdodD8gTm90IGp1
c3QgaW4gdGhlIApsaW51eDRzYW0gdmVuZG9yIGtlcm5lbD8KCj4gCj4gSW4gdGhlIGZ1dHVyZSwg
d2UgbWF5IGRlY2xhcmUgb3VyIHBpbmN0cmwgYXMgc3RyaWN0IHdoaWNoIHNob3VsZCBjYXVzZQo+
IGFub3RoZXIgYnJlYWthZ2UuLi4gSXQncyBub3QgZG9uZSB5ZXQgYmVjYXVzZSB3aGVuIEkgdHJp
ZWQgdG8gZG8gaXQsCj4gbWF5YmUgaXQgaGFzIGNoYW5nZWQgbm93LCBJIHdhcyBub3QgYWJsZSB0
byBhcHBseSB0aGUgcGluIGNvbmZpZ3VyYXRpb24KPiB0byB0aGUgcGluIG11eGVkIGFzIGEgZ3Bp
by4KPiAKClRoZSBsYXJnZXIgcXVlc3Rpb24gSSB0aGluayBpcywgaXMgdGhpcyBhIGJyZWFrYWdl
IGluIGdwaW8/IGkyYy1hdDkxIGlzIApub3QgdGhlIG9ubHkgaTJjIGRyaXZlciB3aGljaCB1c2Vz
IGdwaW8tYmFzZWQgYnVzIHJlY292ZXJ5LCBhbmQgbWFueSBvZiAKdGhlbSB1c2UgbmVhcmx5IHRo
ZSBleGFjdCBzYW1lIGNvZGUgYXMgaTJjLWF0OTEuIEFyZSB0aGV5IGFsbCBicm9rZW4gCndpdGgg
dGhpcyBrZXJuZWwgdXBkYXRlIHRvbz8KCkFsYW4uCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
