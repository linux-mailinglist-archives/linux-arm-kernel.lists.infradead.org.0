Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45E891A73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 02:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RQs5sq+G8iJM2C+zltOAxRWNRDD6uLtFTMIlqaC9rcY=; b=WnPCe84Bthy3rJGIljt0Yptqh
	KRFLwiGLXLAusBGICa7SZMOwe0mjHCVNS3Ukl+4dage9zldmAkkD06vz5XXW7hVv0K8cxzjwaSrHr
	6L7vT3lGA2zu9o6OJFQSd05k/fHqR4XzurHzwYYrsqk77uvoZp9m46sppGBaOy021vkleZMlcYZVV
	6XLuzj5s2PRccXjIar2z9zaGXVp55z1cb2eIo8Vn8fj5U0s7p7AtJWSYuJaaSmFndkWQQ0o2vJBMj
	7hZfWky1AzyLUNWVE0IlWorQR1r0s1aKe1OE0ihf4QEUXH9aYuyH1whFYt8erroEevq63l1j1Uz+m
	1Upwe2j3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzVYa-0006OW-QO; Mon, 19 Aug 2019 00:29:56 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzVYO-0006Ny-9P; Mon, 19 Aug 2019 00:29:45 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.160])
 by regular1.263xmail.com (Postfix) with ESMTP id 0BCDD265;
 Mon, 19 Aug 2019 08:29:33 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P912T139738371585792S1566174570916231_; 
 Mon, 19 Aug 2019 08:29:32 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <360de786e17596abca2fbe6c887ae0e9>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-kernel@vger.kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2] arm: dts: rockchip: fix vcc_host_5v regulator for usb3
 host
To: Heiko Stuebner <heiko@sntech.de>
References: <20190815081252.27405-1-kever.yang@rock-chips.com>
 <2932927.UJgUFA1Pmh@phil>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <208c56e1-bfe0-a982-927d-bdddc3116631@rock-chips.com>
Date: Mon, 19 Aug 2019 08:29:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2932927.UJgUFA1Pmh@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_172944_492288_8E921C21 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Tomohiro Mayama <parly-gh@iris.mystia.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiAyMDE5LzgvMTYg5LiL5Y2IODoyNCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6
Cj4gSGkgS2V2ZXIsIFRMLAo+Cj4gW2FkZGVkIFRMIExpbSBmb3IgY2xhcmlmaWNhdGlvbl0KPgo+
IEFtIERvbm5lcnN0YWcsIDE1LiBBdWd1c3QgMjAxOSwgMTA6MTI6NTIgQ0VTVCBzY2hyaWViIEtl
dmVyIFlhbmc6Cj4+IEFjY29yZGluZyB0byByb2NrNjQgc2NoZW1ldGljIFYyIGFuZCBWMywgdGhl
IFZDQ19IT1NUXzVWIG91dHB1dCBpcwo+PiBjb250cm9sbGVkIGJ5IFVTQl8yMF9IT1NUX0RSViwg
d2hpY2ggaXMgdGhlIHNhbWUgYXMgVkNDX0hPU1QxXzVWLgo+IFRoZSB2MSBzY2hlbWF0aWNzIEkg
aGF2ZSBkbyByZWZlcmVuY2UgdGhlIEdQSU8wX0EwIGFzIGNvbnRyb2xsaW5nIHRoaXMKPiBzdXBw
bHksIHNvIHRoZSBiaWcgcXVlc3Rpb24gd291bGQgYmUgaG93IHRvIGhhbmRsZSB0aGUgZGlmZmVy
ZW50IHZlcnNpb25zLgo+Cj4gQmVjYXVzZSBhZGRpbmcgdGhpcyB3b3VsZCBwcm9iYWJseSBicmVh
ayB2MSBib2FyZHMgaW4gdGhpcyBmdW5jdGlvbi4KPgo+IEBUTDogd2hlcmUgdjEgYm9hcmRzIGFs
c28gc29sZCBvciB3ZXJlIHRoZXkgb25seSB1c2VkIGR1cmluZyBkZXZlbG9wbWVudD8KCgpJIGhh
dmUgY2hlY2sgdGhpcyB3aXRoIFRMIHdoZW4gSSBtYWtlIHRoaXMgcGF0Y2gsIHRoZSBWMSBoYXJk
d2FyZSB3YXMgCm5ldmVyIHNvbGQgYW5kIG9ubHkgVjIvVjMKCmFyZSBhdmFpbGFibGUgb24gdGhl
IG1hcmtldC4KCgpUaGFua3MsCgotIEtldmVyCgo+IElmIHRoaXMgd2VyZSB0aGUgY2FzZSwgd2Ug
Y291bGQganVzdCBhcHBseSB0aGUgcGF0Y2gsIG5vdCBjYXJpbmcgYWJvdXQKPiB2MSBib2FyZHMs
IGJ1dCBpZiB2MSBib2FyZHMgd2VyZSBhbHNvIHNvbGQgdG8gY3VzdG9tZXJzIHRoZXJlIHdvdWxk
IGJlCj4gbW9yZSBvZiBhIHByb2JsZW0uCj4KPiBUaGFua3MKPiBIZWlrbwo+Cj4KPj4gU2lnbmVk
LW9mZi1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+
Cj4+IENoYW5nZXMgaW4gdjI6Cj4+IC0gcmVtb3ZlIGVuYWJsZS1hY3RpdmUtaGlnaCBwcm9wZXJ0
eQo+Pgo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvY2s2NC5kdHMg
fCAxMSArKy0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDkg
ZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMyOC1yb2NrNjQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
Mjgtcm9jazY0LmR0cwo+PiBpbmRleCA3Y2ZkNWNhNmNjODUuLjYyOTM2YjQzMmY5YSAxMDA2NDQK
Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jazY0LmR0cwo+
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2NrNjQuZHRzCj4+
IEBAIC0zNCwxMCArMzQsOSBAQAo+PiAgIAo+PiAgIAl2Y2NfaG9zdF81djogdmNjLWhvc3QtNXYt
cmVndWxhdG9yIHsKPj4gICAJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPj4gLQkJ
ZW5hYmxlLWFjdGl2ZS1oaWdoOwo+PiAtCQlncGlvID0gPCZncGlvMCBSS19QQTAgR1BJT19BQ1RJ
VkVfSElHSD47Cj4+ICsJCWdwaW8gPSA8JmdwaW8wIFJLX1BBMiBHUElPX0FDVElWRV9MT1c+Owo+
PiAgIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gLQkJcGluY3RybC0wID0gPCZ1c2Iz
MF9ob3N0X2Rydj47Cj4+ICsJCXBpbmN0cmwtMCA9IDwmdXNiMjBfaG9zdF9kcnY+Owo+PiAgIAkJ
cmVndWxhdG9yLW5hbWUgPSAidmNjX2hvc3RfNXYiOwo+PiAgIAkJcmVndWxhdG9yLWFsd2F5cy1v
bjsKPj4gICAJCXJlZ3VsYXRvci1ib290LW9uOwo+PiBAQCAtMzIwLDEyICszMTksNiBAQAo+PiAg
IAkJCXJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQTIgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9u
ZT47Cj4+ICAgCQl9Owo+PiAgIAl9Owo+PiAtCj4+IC0JdXNiMyB7Cj4+IC0JCXVzYjMwX2hvc3Rf
ZHJ2OiB1c2IzMC1ob3N0LWRydiB7Cj4+IC0JCQlyb2NrY2hpcCxwaW5zID0gPDAgUktfUEEwIFJL
X0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+PiAtCQl9Owo+PiAtCX07Cj4+ICAgfTsKPj4g
ICAKPj4gICAmc2RtbWMgewo+Pgo+Cj4KPgo+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
