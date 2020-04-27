Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9951BA27F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MWkjtOoVMCAz1+UJTkUiAHHF5NYOMnjrKSR9Vjsvq+w=; b=qPq2DQZpNh++/uIvnyXNX5p+R
	Fo1OKhKTM6DoIVdfXeGGg5Onl/y1j4PJ2erVDcXJF0jOgqbcsanHtVq6AtYvNhJgQ0+KLEXq6+PEM
	EGS20ToGJUFp7RU/TW8zifO5ZiKPHqMPajfgN36j7CKrDG/l7SKvLyR8OTg4p4P0cV+chVeV7VeqP
	vnCDihQPNa2h5fZgO0pMfprqSlXuWyn0hGoRJDv00L+MbAIh6x6drBYzymJmLuBotCk5JEsYyopfW
	XEpDZreqAmmTG3plQb5gB3hfu1VpPSvUeIAbE2VnGRgalRLrxesxvSaQKWq3fDi1DNWGMlG9on0XG
	P5NhvjvLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT25B-0001OK-HS; Mon, 27 Apr 2020 11:37:53 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT251-0001Nq-Nt
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 11:37:45 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03RBbebG012356;
 Mon, 27 Apr 2020 06:37:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587987460;
 bh=5QDEIBRwUNoI7dvYP0AT0ZGIXfUe6VQAiR6ihBCjn1A=;
 h=Subject:From:To:References:Date:In-Reply-To;
 b=Rg7KBMJneKFflF9BjjsRobXIHl3wXsOrehZue6ezyqGROjtpT5Uyt9E5ZTg++0YmX
 OU0CburW2v8RNRugJI8rmL6aCDEkDPlBum9JzoNqdNkPZ+6FNI6niYvQkSShsJQLKo
 Ot+yYoJL07fqlC1n3dxHbY5VCPFw+QTMfZxrBUNw=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03RBbeGq021143
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Apr 2020 06:37:40 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 27
 Apr 2020 06:37:39 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 27 Apr 2020 06:37:39 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RBbblB052342;
 Mon, 27 Apr 2020 06:37:38 -0500
Subject: Re: [PATCH 2/3] arm64: dts: ti: k3-j721e-main.dtsi: Add DSS node
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
To: Jyri Sarha <jsarha@ti.com>, Tero Kristo <t-kristo@ti.com>, Nishanth Menon
 <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200422091512.950-1-tomi.valkeinen@ti.com>
 <20200422091512.950-2-tomi.valkeinen@ti.com>
 <ade3a177-f060-bc40-bcc1-494093e3071d@ti.com>
 <47b7f858-a8d9-1c3b-4dca-2cc493f6730f@ti.com>
 <fa497e8d-7911-5f3d-cf91-347370f8edaa@ti.com>
 <217c0c14-f4fb-7321-9f57-205df0cd01fe@ti.com>
 <9a4b1d0a-c871-2280-8d22-196730e9385b@ti.com>
Message-ID: <3eb05f6d-523f-f7e5-a0e9-d47b852fe079@ti.com>
Date: Mon, 27 Apr 2020 14:37:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <9a4b1d0a-c871-2280-8d22-196730e9385b@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_043743_854054_2807AFF9 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcvMDQvMjAyMCAxNDoxNSwgVG9taSBWYWxrZWluZW4gd3JvdGU6Cj4gT24gMjcvMDQvMjAy
MCAxNDoxMCwgSnlyaSBTYXJoYSB3cm90ZToKPj4gT24gMjcvMDQvMjAyMCAxMzo1MSwgVG9taSBW
YWxrZWluZW4gd3JvdGU6Cj4+PiBPbiAyNy8wNC8yMDIwIDEzOjM3LCBKeXJpIFNhcmhhIHdyb3Rl
Ogo+Pj4+IE9uIDI3LzA0LzIwMjAgMTM6MDksIFRlcm8gS3Jpc3RvIHdyb3RlOgo+Pj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+Pj4+Cj4+Pj4+IEFnYWluLCB3aHkg
ZGlzYWJsZWQgYnkgZGVmYXVsdD8KPj4+Pj4KPj4+Pgo+Pj4+IHRpZHNzIGRldmljZSBpcyBub3Qg
ZnVuY3Rpb25hbCB3aXRob3V0IGEgZGVmaW5lZCB2aWRlby1wb3J0LiBUaGUgZHJpdmVyCj4+Pj4g
aXMgbm90IGltcGxlbWVudGVkIGluIGEgd2F5IHRoYXQgaXQgd291bGQgaGFuZGxlIGEgYnJva2Vu
IGNvbmZpZ3VyYXRpb24KPj4+PiBncmFjZWZ1bGx5Lgo+Pj4KPj4+IFRoZW4gd2UgbmVlZCB0byBm
aXggaXQuIFRoZSBkcml2ZXIgc2hvdWxkIGhhbmRsZSB0aGUgY2FzZSB3aGVyZSB0aGVyZQo+Pj4g
YXJlIG5vIHBvcnRzIGRlZmluZWQganVzdCBmaW5lLgo+Pj4KPj4KPj4gSnVzdCBieSByZWFkaW5n
IHRoZSBjb2RlLCBJIHdvdWxkIHNheSB0aGF0IGN1cnJlbnRseSB0aGUgcHJvYmUgd291bGQKPj4g
ZmFpbCB3aXRoIHJldHVybmVkIC1FTk9NRU0gYWZ0ZXIgY2FsbGluZyBkcm1fdmJsYW5rX2luaXQo
KSB3aXRoIHplcm8gQ1JUQ3MuCj4+Cj4+IFNvIHNob3VsZCB0aGUgcHJvYmUgZmFpbCBncmFjZWZ1
bGx5IGFuZCBzaWxlbnRseSwgb3Igc2hvdWxkIHdlIHRyeSB0bwo+PiByZWdpc3RlciBhIERSTSBk
ZXZpY2Ugd2l0aCBubyBDUlRDcz8gSXMgdGhhdCBldmVuIHBvc3NpYmxlPwo+IAo+IE15IGZpcnN0
IHRob3VnaHQgaXMgdGhhdCB0aGUgZHJpdmVyIHNob3VsZCBleGl0IHByb2JlIHNpbGVudGx5IHdp
dGggRU5PREVWIGlmIHRoZXJlIGFyZSBubyBvdXRwdXRzIAo+IGRlZmluZWQgKGJ1dCwgb2YgY291
cnNlLCB3aXRoIEVQUk9CRV9ERUZFUiBpZiB0aGVyZSBhcmUgb3V0cHV0cyB3aGljaCBoYXZlbid0
IGJlZW4gcHJvYmVkIHlldCkuCj4gCj4gSXQgZ2V0cyBhIGJpdCBtb3JlIGNvbXBsZXggaWYgd2Ug
ZXZlciBzdXBwb3J0IHdyaXRlYmFjaywgYXMgdGhhdCBjYW4gYmUgdXNlZCBhcyBtZW0tdG8tbWVt
IHdpdGhvdXQgCj4gYW55IGRpc3BsYXlzLCBidXQgSSB0aGluayB3ZSBjYW4gaWdub3JlIHRoYXQg
Zm9yIG5vdy4KCkluIGFueSBjYXNlLCB0aGF0J3Mgbm90IHRoZSByZWFzb24gZm9yIHN0YXR1cyA9
ICJkaXNhYmxlZCIsIHNvIHRoYXQgZGlzY3Vzc2lvbiBpcyBub3QgcmVsYXRlZCB0byAKdGhlc2Ug
cGF0Y2hlcyBhcyBzdWNoLgoKVGhlIHJlYXNvbiB0byBoYXZlIERTUyBkaXNhYmxlZCBpcyBqdXN0
IHRvIHByZXZlbnQgcG9pbnRsZXNzIGRyaXZlciBwcm9iaW5nLiBXaGVuIGEgYm9hcmQgZHRzIG9y
IGEgCkRUIG92ZXJsYXkgYWRkcyBhIGRpc3BsYXksIHRoZSBEU1MgRFQgbm9kZSBoYXMgdG8gYmUg
bW9kaWZpZWQgYW55d2F5IHRvIGFkZCB0aGUgRFQgZ3JhcGggYW5kIHRoZSAKcGFuZWwvYnJpZGdl
IGRhdGEuIFNvIG9uZSBjYW4gYXMgd2VsbCBhZGQgdGhlIHNpbmdsZSBsaW5lIG9mICJzdGF0dXMg
PSBlbmFibGVkIiB0aGVyZS4KCiAgVG9taQoKLS0gClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQg
T3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJ
RDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
