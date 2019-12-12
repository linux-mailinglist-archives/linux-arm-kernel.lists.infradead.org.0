Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EC011D147
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:46:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:To:Date:From:Subject:
	MIME-Version:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4IMaBvQQXzQQv+5G+lstOljBA6AESjIxHuR019ZhCM=; b=HsW9XDPFXnDVDL
	Hw+04QyWwMG5B3mIfKqxTJNvwU9Eki0n2FNJBnccjyprmAcMXPYAUjANLj/ygqCSiM7MAAby7RrTc
	BjrfKAxxXRinyjwVRauQtrxiAfHmnEFvivhSTYugF9Jp6KUhUJSXXha4KeqwtaF0EzvHM9KAM9CGw
	Kojid2i1h5e6A9pSz1WH5QgsgSKl4O9spuoBwnwK1YzmJ5xy5FuddD6+E+ImcC4+CIcx5Hl3WwHnR
	cRRJZPCWZeuiwtj9pQ+tosornz+qvUEO0AJvXYgqS7isO6IVMgSu2eQM6SaojTcuXcnypvegCrR/G
	z95fq9R26z+KGNIzCAfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQfm-0002Xg-IA; Thu, 12 Dec 2019 15:46:38 +0000
Received: from gateway32.websitewelcome.com ([192.185.145.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQfa-0002Vd-75
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:46:28 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway32.websitewelcome.com (Postfix) with ESMTP id E88B690B572
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 09:46:11 -0600 (CST)
Received: from e36.ehosts.com ([192.185.128.17]) by cmsmtp with SMTP
 id fQfLi3PL6HunhfQfLiKYyJ; Thu, 12 Dec 2019 09:46:11 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=singleboardsolutions.com; s=default; h=Message-ID:CC:To:Date:From:Subject:
 Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UMrk7SVJBaZoF5+E4IWNlDb5JQkYTRr384MzHtkSMNA=; b=Z6F45GnZxN2pseuh0IHHkf69/s
 ZLOxtsygVBMQDpO7ull4wMLqcSmdySbPZvytspNyu2pUslfuHN/55s2KRqikKLBC5+E5gapNgaaXl
 NAknwJTUy7yBoxUao54lCEhsviPaOlUAFap8Ls3ZQ7zGD04OjmJjFdakIOnDIAgOkGblTHOpaKUT7
 GGxhZmp2azaq1Yd6hLkYjDBMnUAuljMr/tgsucpANmmnJAwdndG6GDFTNKm68bwyqQ7U/+Om0ahbG
 5/4QYPZzmFm75kkCvNBRN3X/3NRJvQnmkWKmlccw/oAe1JruqtpbPQdf2pErpAlMCdRfUTE3lSC2T
 vkLtKQHA==;
Received: from [172.58.138.77] (port=57064
 helo=[IPV6:2607:fb90:1784:5f4e:a5d4:b11d:2550:9cec])
 by e36.ehosts.com with esmtpa (Exim 4.92)
 (envelope-from <tmckahan@singleboardsolutions.com>)
 id 1ifQfL-001viD-Fm; Thu, 12 Dec 2019 08:46:11 -0700
In-Reply-To: <678df227-38be-47af-7ee3-741a391a196c@fivetechno.de>
References: <678df227-38be-47af-7ee3-741a391a196c@fivetechno.de>
X-Referenced-Uid: 55
Thread-Topic: [PATCH 2/3] arm64: dts: rockchip: Enable PD for USB-C-Port on
 rk3399-roc-pc.
X-Is-Generated-Message-Id: true
X-Blue-Identity: !l=635&o=43&fo=3004&pl=525&po=0&qs=PREFIX&f=HTML&n=Thomas%20McKahan&e=tmckahan%40singleboardsolutions.com&m=!%3ANDg0ODA5OGEtZmVjOS00NjIyLTkwMTUtZGI5MTM5OGY1ZGU3%3ASU5CT1g%3D%3ANTU%3D%3AANSWERED&p=491&q=SHOW
User-Agent: Android
MIME-Version: 1.0
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Enable PD for USB-C-Port on
 rk3399-roc-pc.
From: Thomas McKahan <tmckahan@singleboardsolutions.com>
Date: Thu, 12 Dec 2019 10:46:09 -0500
To: Markus Reichl <m.reichl@fivetechno.de>
Message-ID: <84920a36-230f-42a6-a960-a71e685be99f@singleboardsolutions.com>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - e36.ehosts.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - singleboardsolutions.com
X-BWhitelist: no
X-Source-IP: 172.58.138.77
X-Source-L: No
X-Exim-ID: 1ifQfL-001viD-Fm
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([IPV6:2607:fb90:1784:5f4e:a5d4:b11d:2550:9cec])
 [172.58.138.77]:57064
X-Source-Auth: tmckahan@singleboardsolutions.com
X-Email-Count: 4
X-Source-Cap: ZWxlY3RyaTk7ZWxlY3RyaTk7ZTM2LmVob3N0cy5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_074626_335678_3AD68DA9 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.145.107 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Heiko Stuebner <heiko@sntech.de>, narmstrong@baylibre.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gTWFya3VzLAoKwqDCoMKgIEkgaGF2ZSBiZWVuIHdvcmtpbmcgd2l0aCB0aGlzIGFzIHdl
bGwsIGNhbWUgYWNyb3NzIGl0IG9uIEFybWJpYW4uIEkgd2FzIGFsc28gdHJ5aW5nIHRvIGVsaW1p
bmF0ZSB0aGUgd2FybmluZyBjb25jZXJuaW5nIHRoZSBsYWNrIG9mIHBvcnQgd2l0aCBsaW1pdGVk
IHN1Y2Nlc3MuwqAgSSBhbHNvIG1pc3NlZCB0aGUgaW50ZXJydXB0IHBpbiBkZWZpbml0aW9uIEkg
c2VlLsKgIEkgd2lsbCB0ZXN0IHRoaXMgbGF0ZXIgdG9kYXkuwqAgCgrCoMKgIEkndmUgYWRkZWQg
TmVpbCBBcm1zdHJvbmcgZm9yIGluZm9ybWF0aW9uIGluIGNhc2UgYW55IGJvYXJkcyBvbiB0aGUg
QW1sb2dpYyBzaWRlIGFyZSBzaW1pbGFybHkgY29uZmlndXJlZCwgSSB0aGluayBhIGZldyBvdGhl
ciBSb2NrY2hpcCBvbmVzIGF0IGxlYXN0IGFyZSBtaXNzaW5nIGNvbm5lY3RvciBub2RlcywgaXQg
YXBwZWFycyB0byBiZSBhIGNvbnNpc3RlbnQgaXNzdWUgcHJlc3VtYWJseSBkdWUgdG8gZHJpdmVy
IGNoYW5nZXMuCgotVG9ueQoKCuKBowoKT24gRGVjIDEwLCAyMDE5LCA3OjQ1IEFNLCBhdCA3OjQ1
IEFNLCBNYXJrdXMgUmVpY2hsIDxtLnJlaWNobEBmaXZldGVjaG5vLmRlPiB3cm90ZToKPlVTQi1D
LVBvcnQgMCBvbiByazMzOTktcm9jLXBjIGlzIGRlc2lnbmVkIHRvIHN1cHBseSB0aGUgYm9hcmQu
Cj5UbyBtZWV0IHRoZSBwb3dlciByZXF1aXJlbWVudHMgb2YgdXAgdG8gNDVXIGEgcG93ZXIgZGVs
aXZlcnkgKFBEKQo+Y29tcGF0aWJsZSBzdXBwbHkgaXMgbmVlZGVkLiBUbyBjb25maWd1cmUgdGhl
IFBEIHRoZSBub2RlIG9mIHRoZQo+ZnVzYjMwMiBuZWVkcyBhIGNvbm5lY3RvciBwcm9wZXJ0eSB3
aXRoIGRlc2lyZWQgUEQgZGVzY3JpcHRpb24uCj4KPlNpZ25lZC1vZmYtYnk6IE1hcmt1cyBSZWlj
aGwgPG0ucmVpY2hsQGZpdmV0ZWNobm8uZGU+Cj4tLS0KPlByZXNlbnRseSB0aGUgYm9hcmQgaW4g
bWFpbmxpbmUgaGFzIHRvIGJlIHBvd2VyZWQgZnJvbSBhIDEyViBzdXBwbHksCj5jb25uZWN0ZWQg
dG8gdHdvIHBpbnMgb24gdGhlIGV4cGFuc2lvbiBoZWFkZXIgYXMgdGhlIHN0YW5kYXJkIDVWCj5k
ZWxpdmVyZWQgYnkgdGhlIHVuY29uZmlndXJlZCBVU0ItQyBwbHVnIGlzIG5vdCBlbm91Z2ggZm9y
IGhpZ2hlcgo+bG9hZHMgb3IgcGVyaXBoZXJhbHMgb24gVVNCIG9yIE0uMi4KPgo+V2l0aCB0aGlz
IHBhdGNoIHRoZSBib2FyZCByZXF1ZXN0cyAxNVYgZnJvbSB0aGUgUEQgYW5kIHJ1bnMgZmluZQo+
b24gaGlnaCBsb2FkcyB3aXRoIE5WTUUgU1NELCBFdGhlcm5ldCwgU0RJTyBXTEFOIGFuZCBVU0Ig
cGVyaXBoZXJhbHMuCj5EdXJpbmcgYm9vdCB0aGUgMTJWIHN1cHBseSBpcyBzdGlsbCBuZWVkZWQg
Zm9yIHNvbWUgc2Vjb25kcywKPmFzIHRoZSBmdXNiMzAyIHNodXRzIGRvd24gb3IgcmVzZXRzIHRo
ZSBQRCBzaG9ydGx5IHdoZW4gaW5pdGlhbGl6aW5nCj4oQlVHPykuCj4KPlRoZSBib2FyZCdzIDEy
ViBsaW5lIGlzIHJ1bm5pbmcgcHJlc2VudGx5IG9uIDVWLCB0aGUgZGVmYXVsdCBvdXRwdXQKPnZv
bHRhZ2Ugb2YgdGhlIE1QODg1OSBvbiBJMkMtNywgZm9yIHdpY2ggbm8gbWFpbmxpbmUga2VybmVs
IGRyaXZlcgo+ZXhpc3RzIHlldC4KPi0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1yb2MtcGMuZHRzaSB8IDE2ICsrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDE0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaQo+Yi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaQo+aW5kZXggOGUwMWIwNDE0NGI3
Li45MDc4M2IyYjFkMWYgMTAwNjQ0Cj4tLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1yb2MtcGMuZHRzaQo+KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcm9jLXBjLmR0c2kKPkBAIC02LDYgKzYsNyBAQAo+ICAvZHRzLXYxLzsKPiAgI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2xpbnV4LWV2ZW50LWNvZGVzLmg+Cj4gICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9wd20vcHdtLmg+Cj4rI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3VzYi9wZC5oPgo+
ICAjaW5jbHVkZSAicmszMzk5LmR0c2kiCj4gICNpbmNsdWRlICJyazMzOTktb3BwLmR0c2kiCj4g
IAo+QEAgLTU0MCwxMSArNTQxLDIyIEBAIGZ1c2IwOiB1c2ItdHlwZWNAMjIgewo+ICAJCWNvbXBh
dGlibGUgPSAiZmNzLGZ1c2IzMDIiOwo+ICAJCXJlZyA9IDwweDIyPjsKPiAgCQlpbnRlcnJ1cHQt
cGFyZW50ID0gPCZncGlvMT47Cj4tCQlpbnRlcnJ1cHRzID0gPDIgSVJRX1RZUEVfTEVWRUxfTE9X
PjsKPisJCWludGVycnVwdHMgPSA8UktfUEEyIElSUV9UWVBFX0xFVkVMX0xPVz47Cj4gIAkJcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgCQlwaW5jdHJsLTAgPSA8JmZ1c2IwX2ludD47Cj4g
IAkJdmJ1cy1zdXBwbHkgPSA8JnZjY192YnVzX3R5cGVjMD47Cj4tCQlzdGF0dXMgPSAib2theSI7
Cj4rCj4rCQl1c2JfY29uOiBjb25uZWN0b3Igewo+KwkJCWNvbXBhdGlibGUgPSAidXNiLWMtY29u
bmVjdG9yIjsKPisJCQlsYWJlbCA9ICJVU0ItQy0wIjsKPisJCQlwb3dlci1yb2xlID0gImR1YWwi
Owo+KwkJCXRyeS1wb3dlci1yb2xlID0gInNpbmsiOwo+KwkJCXNvdXJjZS1wZG9zID0gPFBET19G
SVhFRCg1MDAwLCAzMDAwLCBQRE9fRklYRURfVVNCX0NPTU0pPjsKPisJCQlzaW5rLXBkb3MgPSA8
UERPX0ZJWEVEKDUwMDAsIDMwMDAsIFBET19GSVhFRF9VU0JfQ09NTSkKPisJCQkJICAgICBQRE9f
VkFSKDUwMDAsIDE1MDAwLCAzMDAwKQo+KwkJCQkgICAgIFBET19QUFNfQVBETyg1MDAwLCAxNTAw
MCwgMzAwMCk+Owo+KwkJCW9wLXNpbmstbWljcm93YXR0ID0gPDQ1MDAwMDAwPjsKPisJCX07Cj4g
IAl9Owo+ICB9Owo+ICAKPi0tIAo+Mi4yNC4wCj4KPgo+X19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+TGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+aHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
