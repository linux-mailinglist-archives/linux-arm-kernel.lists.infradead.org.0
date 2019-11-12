Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDBDF8A2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:10:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xPboRuyG09RK9oUinwfZ57IpoMd6BKQBY0i6eHdBdlI=; b=s47s4amnpEcuJyXA31HoA/6a0
	JL2l1jtd1AgE/qF+0ub9yilxjibABRvylmLkk4MhJd+gIHzSTBu0YzMMIPDERf4Wv/G8uEwEbH2hL
	k4ebCf3LziS4dmQ6SmwigTYuHyZGSfNFAMNNOrbxCYkyUE2hpO3qoe1IVNVeIpd4U/YHZexJJ2kTL
	dHd7B6MrhlHlD3DHkMNMtFULIBIVLzgQXGXBNRmNdrvF6MrOJvmkGGv/0z3T9VcFn0kx94LPFTf/h
	YHJeVEtYLi7XhMY4CKgTV8hOaAB8gn+bQ0zzl9TNLTUzMzr6+N8AeSDKpi7PQIPgr+9Zaq2TwRmn0
	GOsnj/FYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURG9-0007kF-69; Tue, 12 Nov 2019 08:10:45 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURFy-0007jU-Ty; Tue, 12 Nov 2019 08:10:36 +0000
Received: from localhost (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 19ABB3F8;
 Tue, 12 Nov 2019 16:10:32 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P28956T140214120982272S1573546217072329_; 
 Tue, 12 Nov 2019 16:10:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <2dae6d66972adefe869be260d0fd7220>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-kernel@vger.kernel.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 2/3] arm64: dts: rk3399-rock960: add vdd_log
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-2-kever.yang@rock-chips.com>
 <20191111052232.GA2842@Mani-XPS-13-9360>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <3d129826-7705-819e-e68b-cc9080eb6c95@rock-chips.com>
Date: Tue, 12 Nov 2019 16:10:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111052232.GA2842@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_001035_130048_86632DE5 
X-CRM114-Status: GOOD (  14.17  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTEvMTEg5LiL5Y2IMToyMiwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+
IEhpIEtldmVyLAo+Cj4gT24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMDg6NTE6NTdBTSArMDgwMCwg
S2V2ZXIgWWFuZyB3cm90ZToKPj4gQWRkIHZkZF9sb2cgbm9kZSBhY2NvcmRpbmcgdG8gcm9jazk2
MCBzY2hlbWF0aWMgVjEzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55
YW5nQHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj4KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1yb2NrOTYwLmR0c2kgfCAxMiArKysrKysrKysrKysKPj4gICAxIGZpbGUg
Y2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jazk2MC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktcm9jazk2MC5kdHNpCj4+IGluZGV4IGM3ZDQ4ZDQxZTE4NC4uNzNh
ZmVlMjU3MTE1IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2NrOTYwLmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcm9jazk2MC5kdHNpCj4+IEBAIC03Niw2ICs3NiwxOCBAQAo+PiAgIAkJcmVndWxhdG9y
LWFsd2F5cy1vbjsKPj4gICAJCXZpbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+PiAgIAl9Owo+
PiArCj4+ICsJdmRkX2xvZzogdmRkLWxvZyB7Cj4+ICsJCWNvbXBhdGlibGUgPSAicHdtLXJlZ3Vs
YXRvciI7Cj4+ICsJCXB3bXMgPSA8JnB3bTIgMCAyNTAwMCAxPjsKPj4gKwkJcmVndWxhdG9yLW5h
bWUgPSAidmRkX2xvZyI7Cj4+ICsJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+ICsJCXJlZ3VsYXRv
ci1ib290LW9uOwo+PiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MDAwMDA+Owo+PiAr
CQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxNDAwMDAwPjsKPj4gKwkJcmVndWxhdG9yLWlu
aXQtbWljcm92b2x0ID0gPDk1MDAwMD47Cj4gVGhlIGRlZmF1bHQgdmFsdWUgc2VlbXMgdG8gYmUg
MC45diBhcyBwZXIgYm90aCBSb2NrOTYwIGFuZCBGaWN1cyBzY2hlbWF0aWNzLgoKClRoZSBkZWZh
dWx0IHZhbHVlIGlzIDAuOVYgd2hlbiBwd20tcmVndWxhdG9yIGlzIG5vdCBlbmFibGVkLCBhbmQg
dGhpcyAKJ2luaXQtbWljcm92b2x0JyBzdXBwb3NlIHRvIHNldCB0aGUKCmluaXQgdmFsdWUgd2hl
biBwd20tcmVndWxhdG9yIGlzIGVuYWJsZWQuIEkgc2V0IHRoaXMgdG8gOTUwbVYgYmVjYXVzZSAK
UGV0ZXIgcmVwb3J0IHRoYXQgaGUgZXhwZXJpZW5jZQoKdGhlIHN5c3RlbSBoYW5nIGR1cmluZyBG
ZWRvcmEgYm9vdMKgIHVwLCBhbmQgdXBkYXRlIHRoZSB2ZGRfbG9nIHRvIDk1MG1WIApjYW4gZml4
IHRoZSBpc3N1ZSBkdWUgdG8KCmVuZ2luZWVyIG1lYXN1cmUgb24gYW5vdGhlciByazMzOTkgYm9h
cmQgcHVtYS1RNy4KCgpUaGFua3MsCgotIEtldmVyCgo+Cj4gT3RoZXIgdGhhbiB0aGF0LAo+IEFj
a2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5h
cm8ub3JnPgo+Cj4gVGhhbmtzLAo+IE1hbmkKPgo+PiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lz
PjsKPj4gKwl9Owo+PiAgIH07Cj4+ICAgCj4+ICAgJmNwdV9sMCB7Cj4+IC0tIAo+PiAyLjE3LjEK
Pj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
