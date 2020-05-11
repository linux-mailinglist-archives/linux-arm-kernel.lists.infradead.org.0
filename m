Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5081CD996
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3W73SXnNZzJBSMX1aKDzoyeFo7Gb64eRHxTwJWqp/U=; b=dgS7h8Xg9/w8hG
	rHSmmQVQJN69D+xvFR1jnwUL2ICtcuhKn1rNAKzRhjriZqu5xgZQTKJJRa64pakMeuFEfAgFotzps
	zq6ZhzBGnt8Xi37Zz9Ji+JlLJBViBi/yhEMJjlfX0QickshIQyAGc2NX9k6V8Mh54vuL6F406VObK
	CrkLffyUgQiIiK5FNvpIrKPSSmLSMedt0Te/noacHn8rY9KysrjXoDDB+uc+Km9HkZwa0rB5Ie5WG
	AWwq/tRKEVEExdC2QVFQJrY7aRq0KoCvtrREaKokPVsz2MfaUFq3a1zs0OOZCZQsQN8Sfa/kX4VQO
	oYniC3uoDJ83uVyv26AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7Uj-0000uM-Mo; Mon, 11 May 2020 12:25:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7UU-0008TG-F8
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 12:25:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 79A402A117C
Message-ID: <28fa96d51523448656c71656dc80177d08c481ed.camel@collabora.com>
Subject: Re: [PATCH v2 3/6] ARM: dts: zynq: add port definitions to hdmi-tx@39
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Michal Simek <michal.simek@xilinx.com>
Date: Mon, 11 May 2020 09:24:49 -0300
In-Reply-To: <20200511110611.3142-4-ricardo.canuelo@collabora.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-4-ricardo.canuelo@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_052502_678197_3D85A3B4 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 kernel@collabora.com,
 Ricardo =?ISO-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KEFkZGluZyBNaWNoYWwpCgpPbiBNb24sIDIwMjAtMDUtMTEgYXQgMTM6MDYgKzAyMDAsIFJpY2Fy
ZG8gQ2HDsXVlbG8gd3JvdGU6Cj4gRGVmaW5lIGEgJ3BvcnRzJyBub2RlIGZvciAnYWR2NzUxMTog
aGRtaS10eEAzOScgdG8gbWFrZSBpdCBjb21wbGlhbnQgd2l0aAo+IHRoZSBhZGksYWR2NzUxMSBE
VCBiaW5kaW5nLgo+IAo+IFRoaXMgZmlsbHMgdGhlIG1pbmltdW0gcmVxdWlyZW1lbnRzIHRvIG1l
ZXQgdGhlIGJpbmRpbmcgcmVxdWlyZW1lbnRzLAo+IHJlbW90ZSBlbmRwb2ludHMgYXJlIG5vdCBk
ZWZpbmVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJpY2FyZG8gQ2HDsXVlbG8gPHJpY2FyZG8uY2Fu
dWVsb0Bjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBhcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAy
LmR0cyB8IDEwICsrKysrKysrKysKPiAgYXJjaC9hcm0vYm9vdC9kdHMvenlucS16YzcwNi5kdHMg
fCAxMCArKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQo+IAo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0cyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3p5bnEtemM3MDIuZHRzCj4gaW5kZXggMjdjZDZjYjUyZjFiLi43OWZkMjM2ZWRk
ZWQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvenlucS16YzcwMi5kdHMKPiArKysg
Yi9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0cwo+IEBAIC0xMzUsNiArMTM1LDE2IEBA
Cj4gIAkJCQlhZGksaW5wdXQtY2xvY2sgPSAiMXgiOwo+ICAJCQkJYWRpLGlucHV0LXN0eWxlID0g
PDM+Owo+ICAJCQkJYWRpLGlucHV0LWp1c3RpZmljYXRpb24gPSAicmlnaHQiOwo+ICsJCQkJcG9y
dHMgewo+ICsJCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCQkJCSNzaXplLWNlbGxzID0g
PDA+Owo+ICsJCQkJCXBvcnRAMCB7Cj4gKwkJCQkJCXJlZyA9IDwwPjsKPiArCQkJCQl9Owo+ICsJ
CQkJCXBvcnRAMSB7Cj4gKwkJCQkJCXJlZyA9IDwxPjsKPiArCQkJCQl9Owo+ICsJCQkJfTsKPiAg
CQkJfTsKPiAgCQl9Owo+ICAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvenlucS16
YzcwNi5kdHMgYi9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzA2LmR0cwo+IGluZGV4IDc3OTQz
YzE2ZDMzZi4uOTlmYTUxYmE2ZTkzIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3p5
bnEtemM3MDYuZHRzCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvenlucS16YzcwNi5kdHMKPiBA
QCAtOTMsNiArOTMsMTYgQEAKPiAgCQkJCWFkaSxpbnB1dC1jbG9jayA9ICIxeCI7Cj4gIAkJCQlh
ZGksaW5wdXQtc3R5bGUgPSA8Mz47Cj4gIAkJCQlhZGksaW5wdXQtanVzdGlmaWNhdGlvbiA9ICJl
dmVubHkiOwo+ICsJCQkJcG9ydHMgewo+ICsJCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJ
CQkJCSNzaXplLWNlbGxzID0gPDA+Owo+ICsJCQkJCXBvcnRAMCB7Cj4gKwkJCQkJCXJlZyA9IDww
PjsKPiArCQkJCQl9Owo+ICsJCQkJCXBvcnRAMSB7Cj4gKwkJCQkJCXJlZyA9IDwxPjsKPiArCQkJ
CQl9Owo+ICsJCQkJfTsKPiAgCQkJfTsKPiAgCQl9Owo+ICAKPiAtLSAKPiAyLjE4LjAKPiAKPiAK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
