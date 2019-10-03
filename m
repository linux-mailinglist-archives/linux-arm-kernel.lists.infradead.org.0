Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB72CA4FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 18:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zXk3Y/N3lLSVlIjRiRxQ1IwLpqgLenl2Jrec3SkPU48=; b=Dk+eOXpXbYKJG/OmUf+N4xgrw
	cf1oz2nr/o8KOoPHzx7AvY9O33CzyJMCKQ8q/qid8epTSjyi3dUxCJoM/9ggupw2mqhYw4wnex2UT
	/5hKwXdsetwAvNSIDYrtehrNZ+UrozQ5cPC6o2Gme7DyaWsxPMJqUGkx6C2r2xsaFKfUXLXyUgSyi
	jznJZK2aaOigCqurDytRVwFTlCyP4aaE44W38gmw4V7uCxOyRfPzBmV3/bmsjXWLzBXrMlGBRKKzS
	IhbXOXse7B4JoPgTpJYvUVrXHKu/RAqOxcBQ+a4AJv3DdqqQC05asUWMu/POx2y8wzy6SWrnqS0DR
	xf1WPEx0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG43j-0002mb-Au; Thu, 03 Oct 2019 16:34:31 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG43a-0002jz-9R
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 16:34:24 +0000
Received: from [10.20.204.51] (unknown [216.228.112.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id B977D1C0162;
 Thu,  3 Oct 2019 10:34:20 -0600 (MDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at avon.wwwdotorg.org
Subject: Re: [PATCH 2/4] ARM: tegra: Enable PLLP bypass during Tegra124 LP1
To: Dmitry Osipenko <digetx@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>
References: <20191001211346.104400-1-swarren@wwwdotorg.org>
 <20191001211346.104400-2-swarren@wwwdotorg.org>
 <437f030b-9e20-43e5-42ce-f98430d2149b@gmail.com>
From: Stephen Warren <swarren@wwwdotorg.org>
Message-ID: <485c9828-120a-8e62-bf85-c5d8407d3513@wwwdotorg.org>
Date: Thu, 3 Oct 2019 10:34:14 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <437f030b-9e20-43e5-42ce-f98430d2149b@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_093422_417795_2B2F54B2 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-tegra@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMy8xOSA1OjI3IEFNLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMDIuMTAuMjAxOSAw
MDoxMywgU3RlcGhlbiBXYXJyZW4g0L/QuNGI0LXRgjoKPj4gRnJvbTogU3RlcGhlbiBXYXJyZW4g
PHN3YXJyZW5AbnZpZGlhLmNvbT4KPj4KPj4gRm9yIGEgbGl0dGxlIG92ZXIgYSB5ZWFyLCBVLUJv
b3QgaGFzIGNvbmZpZ3VyZWQgdGhlIGZsb3cgY29udHJvbGxlciB0bwo+PiBwZXJmb3JtIGF1dG9t
YXRpYyBSQU0gcmUtcmVwYWlyIG9uIG9mZi0+b24gcG93ZXIgdHJhbnNpdGlvbnMgb2YgdGhlIENQ
VQo+PiByYWlsMV0uIFRoaXMgaXMgbWFuZGF0b3J5IGZvciBjb3JyZWN0IG9wZXJhdGlvbiBvZiBU
ZWdyYTEyNC4gSG93ZXZlciwgUkFNCj4+IHJlLXJlcGFpciByZWxpZXMgb24gY2VydGFpbiBjbG9j
a3MsIHdoaWNoIHRoZSBrZXJuZWwgbXVzdCBlbmFibGUgYW5kCj4+IGxlYXZlIHJ1bm5pbmcuIFBM
TFAgaXMgb25lIG9mIHRob3NlIGNsb2Nrcy4gVGhpcyBjbG9jayBpcyBzaHV0IGRvd24KPj4gZHVy
aW5nIExQMSBpbiBvcmRlciB0byBzYXZlIHBvd2VyLiBFbmFibGUgYnlwYXNzICh3aGljaCBJIGJl
bGlldmUgcm91dGVzCj4+IG9zY19kaXZfY2xrLCBlc3NlbnRpYWxseSB0aGUgY3J5c3RhbCBjbG9j
aywgdG8gdGhlIFBMTCBvdXRwdXQpIHNvIHRoYXQKPj4gdGhpcyBjbG9jayBzaWduYWwgdG9nZ2xl
cyBldmVuIHRob3VnaCB0aGUgUExMIGlzIG5vdCBhY3RpdmUuIFRoaXMgaXMKPj4gcmVxdWlyZWQg
c28gdGhhdCBMUDEgcG93ZXIgbW9kZSAoc3lzdGVtIHN1c3BlbmQpIG9wZXJhdGVzIGNvcnJlY3Rs
eS4KPj4KPj4gVGhlIGJ5cGFzcyBjb25maWd1cmF0aW9uIG11c3QgdGhlbiBiZSB1bmRvbmUgd2hl
biByZXN1bWluZyBmcm9tIExQMSwgc28KPj4gdGhhdCBhbGwgcGVyaXBoZXJhbCBjbG9ja3MgcnVu
IGF0IHRoZSBleHBlY3RlZCByYXRlLiBXaXRob3V0IHRoaXMsIG1hbnkKPj4gcGVyaXBoZXJhbHMg
d29uJ3Qgd29yayBjb3JyZWN0bHk7IGZvciBleGFtcGxlLCB0aGUgVUFSVCBiYXVkIHJhdGUgd291
bGQKPj4gYmUgaW5jb3JyZWN0Lgo+Pgo+PiBOVklESUEncyBkb3duc3RyZWFtIGtlcm5lbCBjb2Rl
IG9ubHkgZG9lcyB0aGlzIGlmIG5vdCBjb21waWxlZCBmb3IKPj4gVGVncmEzMCwgc28gdGhlIGFk
ZGVkIGNvZGUgaXMgbWFkZSBjb25kaXRpb25hbCB1cG9uIHRoZSBjaGlwIElELiBOVklESUEncwo+
PiBkb3duc3RyZWFtIGNvZGUgbWFrZXMgdGhpcyBjaGFuZ2UgY29uZGl0aW9uYWwgdXBvbiB0aGUg
YWN0aXZlIENQVQo+PiBjbHVzdGVyLiBUaGUgdXBzdHJlYW0ga2VybmVsIGN1cnJlbnRseSBkb2Vz
bid0IHN1cHBvcnQgY2x1c3RlciBzd2l0Y2hpbmcsCj4+IHNvIHRoaXMgcGF0Y2ggZG9lc24ndCB0
ZXN0IHRoZSBhY3RpdmUgQ1BVIGNsdXN0ZXIgSUQuCj4+Cj4+IFsxXSAzY2M3OTQyYTRhZTUgQVJN
OiB0ZWdyYTogaW1wbGVtZW50IFJBTSByZXBhaXIKPj4KPj4gUmVwb3J0ZWQtYnk6IEpvbmF0aGFu
IEh1bnRlciA8am9uYXRoYW5oQG52aWRpYS5jb20+Cj4+IENjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnCj4+IFNpZ25lZC1vZmYtYnk6IFN0ZXBoZW4gV2FycmVuIDxzd2FycmVuQG52aWRpYS5jb20+
Cj4+IC0tLQo+PiAgIGFyY2gvYXJtL21hY2gtdGVncmEvc2xlZXAtdGVncmEzMC5TIHwgMTEgKysr
KysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC10ZWdyYS9zbGVlcC10ZWdyYTMwLlMgYi9hcmNoL2FybS9t
YWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAuUwo+PiBpbmRleCBiNDA4ZmE1NmViODkuLjY5MjJkZDhk
M2UyZCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0vbWFjaC10ZWdyYS9zbGVlcC10ZWdyYTMwLlMK
Pj4gKysrIGIvYXJjaC9hcm0vbWFjaC10ZWdyYS9zbGVlcC10ZWdyYTMwLlMKPj4gQEAgLTM3MCw2
ICszNzAsMTQgQEAgX3BsbF9tX2NfeF9kb25lOgo+PiAgIAlwbGxfbG9ja2VkIHIxLCByMCwgQ0xL
X1JFU0VUX1BMTENfQkFTRQo+PiAgIAlwbGxfbG9ja2VkIHIxLCByMCwgQ0xLX1JFU0VUX1BMTFhf
QkFTRQo+PiAgIAo+PiArCXRlZ3JhX2dldF9zb2NfaWQgVEVHUkFfQVBCX01JU0NfQkFTRSwgcjEK
Pj4gKwljbXAJcjEsICNURUdSQTMwCj4+ICsJYmVxCTFmCj4gCj4gV2hhdCBhYm91dCBUMTE0LCBv
ciBkb2VzIGl0IG5lZWQgZW5hYmxlZCBQTExQIGFzIHdlbGw/CgpJJ20gbm93aGVyZSBuZWFyIGFz
IGZhbWlsaWFyIHdpdGggVDExNCBhcyBUMTI0LCBzbyBJIGNhbid0IGJlIDEwMCUgc3VyZS4gCkhv
d2V2ZXIsIGEgdmVyeSBxdWljayBsb29rIGF0IHRoZSBDQVIgc2VjdGlvbiBpbiB0aGUgVDExNCBU
Uk0gZG9lcyBzaG93IAp0aGUgc2FtZSBnYXRlL211eCBzdHJ1Y3R1cmUgYXJvdW5kIGEgcmVzaGlm
dCBhbmQgZnVzZSBjbG9jaywgc28gSSBhc3N1bWUgCnRoZSByZXF1aXJlbWVudCBpcyBpZGVudGlj
YWwgdGhlcmUuCgpBbHNvLCBOVklESUEncyBkb3duc3RyZWFtIGtlcm5lbCBoYXMgYSBjb21waWxl
LXRpbWUgaWZkZWYgYXJvdW5kIHRoZSAKY29kZSBJJ3ZlIGFkZGVkIGhlcmUuIEl0J3Mgbm90IGNv
bXBpbGVkIGZvciBUMzAgc3BlY2lmaWNhbGx5LCBhbmQgaXMgCmNvbXBpbGVkIGZvciBhbnl0aGlu
ZyBlbHNlLCB3aGljaCBJIGJlbGlldmUgbWVhbnMgYm90aCBUMTE0IGFuZCBUMTI0LgoKSW4gcGF0
Y2ggMSBpbiB0aGlzIHNlcmllcywgSSBvbmx5IGVuYWJsZWQgdGhlIGZ1c2UgY2xvY2sgZm9yIFQx
MjQsIHNpbmNlIApJIGRvbid0IGhhdmUgYSBUMTE0IHN5c3RlbSB0byB0ZXN0IGFueSBtb3JlLiBI
b3dldmVyLCB0aGUgcmV2aXNlZCBwYXRjaCAKMSB0aGF0IFRoaWVycnkgYW5kIEkgYXJlIGRpc2N1
c3Npbmcgd291bGQgZW5hYmxlIHRoZSBmdXNlIGNsb2NrIG9uIGFsbCAKU29DcywgYW5kIGhlbmNl
IG1ha2UgdGhlIGNvZGUgd29yayBpZGVudGljYWxseSBvbiBUMTE0IGFzIGl0IGRvZXMgb24gVDEy
NC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
