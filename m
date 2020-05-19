Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201C31D8C5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 02:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tic0/gTDhTtUNEi/wAfKYuABG4BbeDrQlGo7PJMNEQE=; b=fOUIDX/0f8y5D45rJ3tMBlSCy
	/jC/Vyzp/WPeL3Aw84+0LIYWnnt+m0rg3Ia8pRd4iHzXDTzFle+LHkgl7rE5QeyYPX37BIyRyMLUD
	bJmZYhb1mgydzvE5Ompa8NguNSHMZz/xcI9uoemgS+TQ6VtvkHgSgFdR/KNM71LRXv1wmNE5GX4Xi
	dvXNVfczJF8d5RQJpSZ5dKXnZlZIy1zsStsDcLugoKixDo7UeFXBfpeB3U4+glMFfXTnrEY88O11B
	iWMlLEMYGJfHHGOhnSqEPfnMxx+lWk+lwrpPdWtWYscTvXikAEE+aybXO9tlIqwjV5w424MQYPWmP
	rjbOk2zkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaqDW-0003tX-74; Tue, 19 May 2020 00:34:46 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaqDL-0003rO-Mu; Tue, 19 May 2020 00:34:39 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 444A5321;
 Tue, 19 May 2020 08:34:23 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.21.179] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P27331T140437578839808S1589848461574244_; 
 Tue, 19 May 2020 08:34:22 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <33669f1ebadf44b2994914d3681cde90>
X-RL-SENDER: wxt@rock-chips.com
X-SENDER: wxt@rock-chips.com
X-LOGIN-NAME: wxt@rock-chips.com
X-FST-TO: linux-kernel@vger.kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: rk3399: fix pd_tcpc0 and
 pd_tcpc1 node position
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, kever.yang@rock-chips.com
References: <20200428203003.3318-1-jbx6244@gmail.com>
 <20200428203003.3318-2-jbx6244@gmail.com> <2978296.PvbIKR7951@diego>
From: Caesar Wang <wxt@rock-chips.com>
Message-ID: <243ee54a-2fb8-86e3-0018-c069147a21c5@rock-chips.com>
Date: Tue, 19 May 2020 08:34:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <2978296.PvbIKR7951@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_173435_932236_6C6A2FE5 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgrU2iAyMDIwLzUvMTkgyc/O5zY6MjksIEhlaWtvIFN0qLlibmVyINC0tcA6Cj4g
SGkgS2V2ZXIsIENhZXNhciwKPgo+IGNvdWxkIHlvdSBkb3VibGUgY2hlY2sgd2hlcmUgdGhlIHR5
cGUtYyBwb3dlci1kb21haW5zIGFyZSBsb2NhdGVkCj4gaW4gdGhlIHBvd2VyLXRyZWUsIGFzIENh
ZXNhciBkaWQgYWRkIHRoZW0gdW5kZXIgcGRfdmlvIGJhY2sgaW4gMjAxNi4KCkpvaGFuJ3MgcGF0
Y2ggaXMgY29ycmVjdCwgdGhlIHBkX3RjcGMwIGFuZCBwZF90Y3BjMSBhcmUgZ3JvdXBlZCBieSBW
RERfTE9HSUMuCkkgaGF2ZSBhIHBhc3NlZCB0ZXN0IGZvciBwZF92aW8gd2l0aG91dCBwZF90Y3Bj
Ki4KCj4KPiBUaGFua3MKPiBIZWlrbwo+Cj4gQW0gRGllbnN0YWcsIDI4LiBBcHJpbCAyMDIwLCAy
MjozMDowMyBDRVNUIHNjaHJpZWIgSm9oYW4gSm9ua2VyOgo+PiBUaGUgcGRfdGNwYzAgYW5kIHBk
X3RjcGMxIG5vZGVzIGFyZSBjdXJyZW50bHkgYSBzdWIgbm9kZSBvZiBwZF92aW8uCj4+IEluIHRo
ZSByazMzOTkgVFJNIGZpZ3VyZSBvZiB0aGUgJ1Bvd2VyIERvbWFpbiBQYXJ0aXRpb24nIGFuZCBp
biB0aGUKPj4gdGFibGUgb2YgJ1Bvd2VyIERvbWFpbiBhbmQgVm9sdGFnZSBEb21haW4gU3VtbWFy
eScgdGhlc2UgcG93ZXIgZG9tYWlucwo+PiBhcmUgcG9zaXRpb25lZCBkaXJlY3RseSB1bmRlciBW
RF9MT0dJQywgc28gZml4IHRoYXQgaW4gJ3JrMzM5OS5kdHNpJy4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4KCgpSZXZpZXdlZC1ieTogQ2Flc2Fy
IFdhbmcgPHd4dEByb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKCi1DYWVzYXIKCj4+IC0tLQo+PiAg
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgfCAyMCArKysrKysrKysr
LS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxMCBkZWxl
dGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+
IGluZGV4IDM3Mjc5ZGI1My4uYTRkYzFiZjJlIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LmR0c2kKPj4gQEAgLTEwNTYsNiArMTA1NiwxNiBAQAo+PiAgIAkJCQlj
bG9ja3MgPSA8JmNydSBIQ0xLX1NESU8+Owo+PiAgIAkJCQlwbV9xb3MgPSA8JnFvc19zZGlvYXVk
aW8+Owo+PiAgIAkJCX07Cj4+ICsJCQlwZF90Y3BjMEBSSzMzOTlfUERfVENQRDAgewo+PiArCQkJ
CXJlZyA9IDxSSzMzOTlfUERfVENQRDA+Owo+PiArCQkJCWNsb2NrcyA9IDwmY3J1IFNDTEtfVVBI
WTBfVENQRENPUkU+LAo+PiArCQkJCQkgPCZjcnUgU0NMS19VUEhZMF9UQ1BEUEhZX1JFRj47Cj4+
ICsJCQl9Owo+PiArCQkJcGRfdGNwYzFAUkszMzk5X1BEX1RDUEQxIHsKPj4gKwkJCQlyZWcgPSA8
UkszMzk5X1BEX1RDUEQxPjsKPj4gKwkJCQljbG9ja3MgPSA8JmNydSBTQ0xLX1VQSFkxX1RDUERD
T1JFPiwKPj4gKwkJCQkJIDwmY3J1IFNDTEtfVVBIWTFfVENQRFBIWV9SRUY+Owo+PiArCQkJfTsK
Pj4gICAJCQlwZF91c2IzQFJLMzM5OV9QRF9VU0IzIHsKPj4gICAJCQkJcmVnID0gPFJLMzM5OV9Q
RF9VU0IzPjsKPj4gICAJCQkJY2xvY2tzID0gPCZjcnUgQUNMS19VU0IzPjsKPj4gQEAgLTEwODgs
MTYgKzEwOTgsNiBAQAo+PiAgIAkJCQkJcG1fcW9zID0gPCZxb3NfaXNwMV9tMD4sCj4+ICAgCQkJ
CQkJIDwmcW9zX2lzcDFfbTE+Owo+PiAgIAkJCQl9Owo+PiAtCQkJCXBkX3RjcGMwQFJLMzM5OV9Q
RF9UQ1BEMCB7Cj4+IC0JCQkJCXJlZyA9IDxSSzMzOTlfUERfVENQRDA+Owo+PiAtCQkJCQljbG9j
a3MgPSA8JmNydSBTQ0xLX1VQSFkwX1RDUERDT1JFPiwKPj4gLQkJCQkJCSA8JmNydSBTQ0xLX1VQ
SFkwX1RDUERQSFlfUkVGPjsKPj4gLQkJCQl9Owo+PiAtCQkJCXBkX3RjcGMxQFJLMzM5OV9QRF9U
Q1BEMSB7Cj4+IC0JCQkJCXJlZyA9IDxSSzMzOTlfUERfVENQRDE+Owo+PiAtCQkJCQljbG9ja3Mg
PSA8JmNydSBTQ0xLX1VQSFkxX1RDUERDT1JFPiwKPj4gLQkJCQkJCSA8JmNydSBTQ0xLX1VQSFkx
X1RDUERQSFlfUkVGPjsKPj4gLQkJCQl9Owo+PiAgIAkJCQlwZF92b0BSSzMzOTlfUERfVk8gewo+
PiAgIAkJCQkJcmVnID0gPFJLMzM5OV9QRF9WTz47Cj4+ICAgCQkJCQkjYWRkcmVzcy1jZWxscyA9
IDwxPjsKPj4KPgo+Cj4KPgo+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
