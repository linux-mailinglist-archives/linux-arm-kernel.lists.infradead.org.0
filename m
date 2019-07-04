Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026625FC35
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 19:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgPnbZglhW9xrGwpND2WSjNLhXIIUxaZkglTcgx2XJ8=; b=kkllDBTZix+F9g
	uKz9CJGe1geblMR141IQhigLQZp3WjgsHG+g0pKay+lKaTh8/XkQNbeSR6oOmKFdOQ1SG1E5SsIbM
	id4gCApHMc0LhqnBx9oZznsmnX6njeCORvGAjHtFofYpVWf5wmOoe6U4Vc/bkR5r8M5ybFpxLfpnt
	hDZEklraLpfdkhGv72eryQcwOi0l57sQf2Shl9HFU8a/OqyUrnqkZL49b/lriowU0aEbxT+OokL36
	VviNCqt9/xYMQBy+4U6HYhX1fxk6nnVdH8QSkZ+nBSZpY/mR2E/QW6PMFj2R+VC0Id8DLDDSowo6A
	SJyKh8c/U2Jz2PUJz5Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj5B2-0006SR-Ig; Thu, 04 Jul 2019 17:05:44 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj5AB-0004z8-B0; Thu, 04 Jul 2019 17:04:53 +0000
Received: from [IPv6:2804:431:c7f5:f63c:d711:794d:1c68:5ed3] (unknown
 [IPv6:2804:431:c7f5:f63c:d711:794d:1c68:5ed3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: tonyk)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B79B728B0E7;
 Thu,  4 Jul 2019 18:04:43 +0100 (BST)
Subject: Re: [PATCH v7 11/14] dt-bindings: Document the Rockchip MIPI RX D-PHY
 bindings
To: Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
References: <20190703190910.32633-1-helen.koike@collabora.com>
 <20190703190910.32633-12-helen.koike@collabora.com>
From: =?UTF-8?Q?Andr=c3=a9_Almeida?= <andrealmeid@collabora.com>
Message-ID: <e9102ab5-3e79-bda5-fefc-0541958c215f@collabora.com>
Date: Thu, 4 Jul 2019 14:04:00 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703190910.32633-12-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_100451_518104_8D55D507 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 eddie.cai.linux@gmail.com, kernel@collabora.com, heiko@sntech.de,
 Rob Herring <robh@kernel.org>, jacob2.chen@rock-chips.com,
 jeffy.chen@rock-chips.com, zyc@rock-chips.com, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, Rob Herring <robh+dt@kernel.org>, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gSGVsZW4sCgpPbiA3LzMvMTkgNDowOSBQTSwgSGVsZW4gS29pa2Ugd3JvdGU6Cj4gRnJv
bTogSmFjb2IgQ2hlbiA8amFjb2IyLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4KPiBBZGQgRFQgYmlu
ZGluZ3MgZG9jdW1lbnRhdGlvbiBmb3IgUm9ja2NoaXAgTUlQSSBELVBIWSBSWAo+Cj4gU2lnbmVk
LW9mZi1ieTogSmFjb2IgQ2hlbiA8amFjb2IyLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gUmV2aWV3
ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gW3VwZGF0ZSBmb3IgdXBzdHJl
YW1dCj4gU2lnbmVkLW9mZi1ieTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5j
b20+Cj4KPiAtLS0KPgo+IENoYW5nZXMgaW4gdjc6Cj4gLSB1cGRhdGVkIGRvYyB3aXRoIG5ldyBk
ZXNpZ24gYW5kIHRlc3RlZCBleGFtcGxlCj4KPiAgLi4uL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlw
LW1pcGktZHBoeS50eHQgICAgIHwgMzggKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hh
bmdlZCwgMzggaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLW1pcGktZHBoeS50eHQKPgo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2No
aXAtbWlwaS1kcGh5LnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9yb2NrY2hpcC1taXBpLWRwaHkudHh0Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAw
MDAwMDAwMDAwMDAuLjIzMDVkNDRkOTJkYgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtbWlwaS1kcGh5LnR4dAo+
IEBAIC0wLDAgKzEsMzggQEAKPiArUm9ja2NoaXAgU29DIE1JUEkgUlggRC1QSFkKPiArLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpI
ZXJlIEkgd291bGQgYWxzbyByZW1vdmUgdGhvc2UgZXh0cmEgYC0tLWAuCgpUaGFua3MsCsKgwqDC
oCBBbmRyw6kKPiArCj4gK1JlcXVpcmVkIHByb3BlcnRpZXM6Cj4gKy0gY29tcGF0aWJsZTogdmFs
dWUgc2hvdWxkIGJlIG9uZSBvZiB0aGUgZm9sbG93aW5nCj4gKwkicm9ja2NoaXAscmszMjg4LW1p
cGktZHBoeSIKPiArCSJyb2NrY2hpcCxyazMzOTktbWlwaS1kcGh5Igo+ICstIGNsb2NrcyA6IGxp
c3Qgb2YgY2xvY2sgc3BlY2lmaWVycywgY29ycmVzcG9uZGluZyB0byBlbnRyaWVzIGluCj4gKwlj
bG9jay1uYW1lcyBwcm9wZXJ0eTsKPiArLSBjbG9jay1uYW1lczogcmVxdWlyZWQgY2xvY2sgbmFt
ZS4KPiArLSAjcGh5LWNlbGxzOiBOdW1iZXIgb2YgY2VsbHMgaW4gYSBQSFkgc3BlY2lmaWVyOyBT
aG91bGQgYmUgMC4KPiArCj4gK01JUEkgUlggRC1QSFkgdXNlIHJlZ2lzdGVycyBpbiAiZ2VuZXJh
bCByZWdpc3RlciBmaWxlcyIsIGl0Cj4gK3Nob3VsZCBiZSBhIGNoaWxkIG9mIHRoZSBHUkYuCj4g
Kwo+ICtPcHRpb25hbCBwcm9wZXJ0aWVzOgo+ICstIHJlZzogb2Zmc2V0IGFuZCBsZW5ndGggb2Yg
dGhlIHJlZ2lzdGVyIHNldCBmb3IgdGhlIGRldmljZS4KPiArLSByb2NrY2hpcCxncmY6IE1JUEkg
VFgxUlgxIEQtUEhZIG5vdCBvbmx5IGhhcyBpdHMgb3duIHJlZ2lzdGVyIGJ1dCBhbHNvCj4gKwkJ
dGhlIEdSRiwgc28gaXQgaXMgb25seSBuZWNlc3NhcnkgZm9yIE1JUEkgVFgxUlgxIEQtUEhZLgo+
ICsKPiArRGV2aWNlIG5vZGUgZXhhbXBsZQo+ICstLS0tLS0tLS0tLS0tLS0tLS0tCj4gKwo+ICtn
cmY6IHN5c2NvbkBmZjc3MDAwMCB7Cj4gKwljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1n
cmYiLCAic3lzY29uIiwgInNpbXBsZS1tZmQiOwo+ICsKPiArLi4uCj4gKwo+ICsJZHBoeTogbWlw
aS1kcGh5IHsKPiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1taXBpLWRwaHkiOwo+
ICsJCWNsb2NrcyA9IDwmY3J1IFNDTEtfTUlQSURQSFlfUkVGPiwKPiArCQkJPCZjcnUgU0NMS19E
UEhZX1JYMF9DRkc+LAo+ICsJCQk8JmNydSBQQ0xLX1ZJT19HUkY+Owo+ICsJCWNsb2NrLW5hbWVz
ID0gImRwaHktcmVmIiwgImRwaHktY2ZnIiwgImdyZiI7Cj4gKwkJcG93ZXItZG9tYWlucyA9IDwm
cG93ZXIgUkszMzk5X1BEX1ZJTz47Cj4gKwkJI3BoeS1jZWxscyA9IDwwPjsKPiArCX07Cj4gK307
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
