Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A331EB556
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 07:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hrh0lluAWuIV934B01cST2ctx7UFE5h3q8u9yZuLpBs=; b=HiElBHdjaylowZ0pNADAjrhxC
	nxhnh52QdZug7WgYwyJJWY/jAwsazrTgGh+XA9vp8HDXNMhiNsP88M3NjJ5iZKnVldL03/H1eaOo5
	yGlAERL2dDlfneg4tZkH9xlbf4CWI+E8dyVaoZIkdVZC9xeH+ko1OXTGGyLe13vBA4/MrMFLdiecb
	G1PEG4QVat1RQVpM6UML8myNN0BitORpwiRkV1FiJ2URGFS8YyEGnStKFCIR+u0fvkizN0MFpm5Ty
	DhUTDiizt0KJ9t8+0H4/bypIhNMEiP+pY8IuahMUHSzOWzJGz3LlvwJKH7+YV9bV0CG3GJs7P7Rub
	UnJjSAXww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfzZb-0000sj-TJ; Tue, 02 Jun 2020 05:34:51 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfzZU-0000rQ-Vi; Tue, 02 Jun 2020 05:34:46 +0000
Received: from [IPv6:2a01:cb19:8092:cf00:aaa1:59ff:fe08:91d5] (unknown
 [IPv6:2a01:cb19:8092:cf00:aaa1:59ff:fe08:91d5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: myjosserand)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B9CFB2A0C53;
 Tue,  2 Jun 2020 06:34:39 +0100 (BST)
Subject: Re: [PATCH v3 1/1] clk: rockchip: rk3288: Handle clock tree for
 rk3288w
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20200601151442.156184-1-mylene.josserand@collabora.com>
 <20200601151442.156184-2-mylene.josserand@collabora.com>
 <8288442.SvGebX2C5V@diego>
From: Mylene Josserand <mylene.josserand@collabora.com>
Message-ID: <f7e98a83-5c4d-6de4-f6bf-1a02d5bfe25a@collabora.com>
Date: Tue, 2 Jun 2020 07:34:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <8288442.SvGebX2C5V@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_223445_153510_2BAA5703 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 geert@linux-m68k.org, kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIHF1aWNrIHJldmlldyEKCk9u
IDYvMS8yMCAxMDowOSBQTSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgTXlsw6huZSwKPiAK
PiBBbSBNb250YWcsIDEuIEp1bmkgMjAyMCwgMTc6MTQ6NDIgQ0VTVCBzY2hyaWViIE15bMOobmUg
Sm9zc2VyYW5kOgo+PiBUaGUgcmV2aXNpb24gcmszMjg4dyBoYXMgYSBkaWZmZXJlbnQgY2xvY2sg
dHJlZSBhYm91dCAiaGNsa192aW8iCj4+IGNsb2NrLCBhY2NvcmRpbmcgdG8gdGhlIEJTUCBrZXJu
ZWwgY29kZS4KPj4KPj4gVGhpcyBwYXRjaCBoYW5kbGVzIHRoaXMgZGlmZmVyZW5jZSBieSBkZXRl
Y3Rpbmcgd2hpY2ggZGV2aWNlLXRyZWUKPj4gd2UgYXJlIHVzaW5nLiBJZiBpdCBpcyBhICJyb2Nr
Y2hpcCxyazMyODgtY3J1IiwgbGV0J3MgcmVnaXN0ZXIKPj4gdGhlIGNsb2NrIHRyZWUgYXMgaXQg
d2FzIGJlZm9yZS4gSWYgdGhlIGNvbXBhdGlibGUgaXMKPj4gInJvY2tjaGlwLHJrMzI4OHctY3J1
Iiwgd2Ugd2lsbCBhcHBseSB0aGUgZGlmZmVyZW5jZSBhY2NvcmRpbmcgdG8gdGhpcwo+PiB2ZXJz
aW9uIG9mIHRoaXMgU29DLgo+Pgo+PiBOb3RpY2VkIHRoYXQgdGhpcyBuZXcgZGV2aWNlLXRyZWUg
Y29tcGF0aWJsZSBtdXN0IGJlIGhhbmRsZWQgYnkKPj4gYm9vdGxvYWRlci4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogTXlsw6huZSBKb3NzZXJhbmQgPG15bGVuZS5qb3NzZXJhbmRAY29sbGFib3JhLmNv
bT4KPiAKPiBhcHByb2FjaCBsb29rcyBnb29kLCBidXQgeW91IHNob3VsZCBhbHNvIHVwZGF0ZSB0
aGUgY2xvY2stY29udHJvbGxlcgo+IGR0LWJpbmRpbmcgZm9yIHRoZSBuZXcgY29tcGF0aWJsZS4K
Ck9rYXksIEkgd2lsbC4gQXMgaXQgd2FzIG5vdCBpbXBsZW1lbnRlZCBpbiB0aGUgS2VybmVsLCBJ
IGRpZG4ndCBrbm93IGlmIApJIHNob3VsZCBhZGQgaXQuCgo+IAo+IFN0eWxlIG5pdHMgYmVsb3cu
Cj4gCj4gCj4+IC0tLQo+PiAgIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMyODguYyB8IDIw
ICsrKysrKysrKysrKysrKysrKy0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hp
cC9jbGstcmszMjg4LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMjg4LmMKPj4gaW5k
ZXggY2MyYTE3N2JiZGJmLi41MDE4ZDJmMWU1NGMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvY2xr
L3JvY2tjaGlwL2Nsay1yazMyODguYwo+PiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGst
cmszMjg4LmMKPj4gQEAgLTQyNSw4ICs0MjUsNiBAQCBzdGF0aWMgc3RydWN0IHJvY2tjaGlwX2Ns
a19icmFuY2ggcmszMjg4X2Nsa19icmFuY2hlc1tdIF9faW5pdGRhdGEgPSB7Cj4+ICAgCUNPTVBP
U0lURSgwLCAiYWNsa192aW8wIiwgbXV4X3BsbF9zcmNfY3BsbF9ncGxsX3VzYjQ4MG1fcCwgQ0xL
X0lHTk9SRV9VTlVTRUQsCj4+ICAgCQkJUkszMjg4X0NMS1NFTF9DT04oMzEpLCA2LCAyLCBNRkxB
R1MsIDAsIDUsIERGTEFHUywKPj4gICAJCQlSSzMyODhfQ0xLR0FURV9DT04oMyksIDAsIEdGTEFH
UyksCj4+IC0JRElWKDAsICJoY2xrX3ZpbyIsICJhY2xrX3ZpbzAiLCAwLAo+PiAtCQkJUkszMjg4
X0NMS1NFTF9DT04oMjgpLCA4LCA1LCBERkxBR1MpLAo+PiAgIAlDT01QT1NJVEUoMCwgImFjbGtf
dmlvMSIsIG11eF9wbGxfc3JjX2NwbGxfZ3BsbF91c2I0ODBtX3AsIENMS19JR05PUkVfVU5VU0VE
LAo+PiAgIAkJCVJLMzI4OF9DTEtTRUxfQ09OKDMxKSwgMTQsIDIsIE1GTEFHUywgOCwgNSwgREZM
QUdTLAo+PiAgIAkJCVJLMzI4OF9DTEtHQVRFX0NPTigzKSwgMiwgR0ZMQUdTKSwKPj4gQEAgLTgx
OSw2ICs4MTcsMTYgQEAgc3RhdGljIHN0cnVjdCByb2NrY2hpcF9jbGtfYnJhbmNoIHJrMzI4OF9j
bGtfYnJhbmNoZXNbXSBfX2luaXRkYXRhID0gewo+PiAgIAlJTlZFUlRFUigwLCAicGNsa19pc3Ai
LCAicGNsa19pc3BfaW4iLCBSSzMyODhfQ0xLU0VMX0NPTigyOSksIDMsIElGTEFHUyksCj4+ICAg
fTsKPj4gICAKPj4gK3N0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX2JyYW5jaCByazMyODh3X2hj
bGt2aW9fYnJhbmNoW10gX19pbml0ZGF0YSA9IHsKPj4gKwlESVYoMCwgImhjbGtfdmlvIiwgImFj
bGtfdmlvMSIsIDAsCj4+ICsJICAgIFJLMzI4OF9DTEtTRUxfQ09OKDI4KSwgOCwgNSwgREZMQUdT
KSwKPiAKPiBwbGVhc2Uga2VlcCBpbmRlbnRhdGlvbnMgYXMgdGhleSB3ZXJlLCB0aGUgc3ViLWxp
bmVzIHN0YXJ0aW5nIHdoZXJlIHRoZXkKPiBhcmUgaXMgYWN0dWFsbHkgaW50ZW50aW9uYWwgOi0p
CgpPdXBzLCBJIGRpZG4ndCBrbm93LCBJIHdpbGwgdXBkYXRlIHRoaXMgaW4gbXkgVjQuCgo+IAo+
IAo+PiArfTsKPj4gKwo+PiArc3RhdGljIHN0cnVjdCByb2NrY2hpcF9jbGtfYnJhbmNoIHJrMzI4
OF9oY2xrdmlvX2JyYW5jaFtdIF9faW5pdGRhdGEgPSB7Cj4+ICsJRElWKDAsICJoY2xrX3ZpbyIs
ICJhY2xrX3ZpbzAiLCAwLAo+PiArCSAgICBSSzMyODhfQ0xLU0VMX0NPTigyOCksIDgsIDUsIERG
TEFHUyksCj4gCj4gc2FtZSBoZXJlCgpzYW1lIGhlcmUKCj4gCj4+ICt9Owo+PiArCj4+ICAgc3Rh
dGljIGNvbnN0IGNoYXIgKmNvbnN0IHJrMzI4OF9jcml0aWNhbF9jbG9ja3NbXSBfX2luaXRjb25z
dCA9IHsKPj4gICAJImFjbGtfY3B1IiwKPj4gICAJImFjbGtfcGVyaSIsCj4+IEBAIC05MzYsNiAr
OTQ0LDE0IEBAIHN0YXRpYyB2b2lkIF9faW5pdCByazMyODhfY2xrX2luaXQoc3RydWN0IGRldmlj
ZV9ub2RlICpucCkKPj4gICAJCQkJICAgUkszMjg4X0dSRl9TT0NfU1RBVFVTMSk7Cj4+ICAgCXJv
Y2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlcyhjdHgsIHJrMzI4OF9jbGtfYnJhbmNoZXMsCj4+
ICAgCQkJCSAgQVJSQVlfU0laRShyazMyODhfY2xrX2JyYW5jaGVzKSk7Cj4+ICsKPj4gKwlpZiAo
b2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUobnAsICJyb2NrY2hpcCxyazMyODh3LWNydSIpKQo+PiAr
CQlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMoY3R4LCByazMyODh3X2hjbGt2aW9fYnJh
bmNoLAo+PiArCQkJCQkgICAgICAgQVJSQVlfU0laRShyazMyODh3X2hjbGt2aW9fYnJhbmNoKSk7
Cj4+ICsJZWxzZQo+PiArCQlyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYnJhbmNoZXMoY3R4LCByazMy
ODhfaGNsa3Zpb19icmFuY2gsCj4+ICsJCQkJCSAgICAgICBBUlJBWV9TSVpFKHJrMzI4OF9oY2xr
dmlvX2JyYW5jaCkpOwo+PiArCj4+ICAgCXJvY2tjaGlwX2Nsa19wcm90ZWN0X2NyaXRpY2FsKHJr
MzI4OF9jcml0aWNhbF9jbG9ja3MsCj4+ICAgCQkJCSAgICAgIEFSUkFZX1NJWkUocmszMjg4X2Ny
aXRpY2FsX2Nsb2NrcykpOwo+PiAgIAo+PgoKQmVzdCByZWdhcmRzLApNeWzDqG5lCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
