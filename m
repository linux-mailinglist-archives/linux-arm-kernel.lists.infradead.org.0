Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0E9194057
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:50:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zbnlGFmal98ZjBlJB0w1Tu2q2TamOUvnBTwV20RJpnk=; b=SBkKN9qnrxZZ6eoncgFSAZ7a6
	37DZsyH+jIxgVIT5+EkT/j488b6784HfPgyc2omrevGE9R1hnbZm0mK7iM6bzL75c0821WaFj1g6X
	iI67xvpDxvpgxWT0aTqYLcnmE2lkueYdy/EagIhYNMPeeDGVkpdds72K07GG+gLG1+YNyo7C/ku95
	MmGOaFBF3BGHsB8/2quq9FuwlPS0B42wLlGGB7+mMtOY9C4CA2Y1paffu3Si0NrIkMkPwTU/kUKgz
	zqf3N4ml+Gn3f2kZg1P0iZdV3zSzkozMLjNQzo3WRGbub8RKdmnNnjc2qzq6N1gHz3qurvP9JmHT0
	40aDKITBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSu9-0003eo-J8; Thu, 26 Mar 2020 13:50:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSty-0003cL-3U; Thu, 26 Mar 2020 13:50:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: myjosserand) with ESMTPSA id 84513294896
Subject: Re: [PATCH 1/2] ARM: Rockchip: Handle rk3288/rk3288w revision
To: Geert Uytterhoeven <geert@linux-m68k.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
References: <20200302155703.278421-1-mylene.josserand@collabora.com>
 <20200302155703.278421-2-mylene.josserand@collabora.com>
 <2221545.2vEflg7qi2@diego>
 <CAMuHMdXJQqaCcMko9GUAeUiYQzmy3vnX42yVQNPzhj5ijtFuYA@mail.gmail.com>
From: Mylene Josserand <mylene.josserand@collabora.com>
Message-ID: <5802ec08-5e6a-8547-ee8e-dde630791235@collabora.com>
Date: Thu, 26 Mar 2020 14:50:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXJQqaCcMko9GUAeUiYQzmy3vnX42yVQNPzhj5ijtFuYA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_065030_280485_4739DCAC 
X-CRM114-Status: GOOD (  19.07  )
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gZXZlcnlvbmUsCgpUaGFuayB5b3UgZm9yIGFsbCB0aGVzZSBmZWVkYmFjayBhbmQgZGlz
Y3Vzc2lvbiBhYm91dCBteSBwYXRjaGVzLgoKT24gMy82LzIwIDExOjQ1IEFNLCBHZWVydCBVeXR0
ZXJob2V2ZW4gd3JvdGU6Cj4gSGkgSGVpa28sCj4gCj4gT24gV2VkLCBNYXIgNCwgMjAyMCBhdCAx
MjowMCBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPj4gQW0gTW9u
dGFnLCAyLiBNw6RyeiAyMDIwLCAxNjo1NzowMiBDRVQgc2NocmllYiBNeWzDqG5lIEpvc3NlcmFu
ZDoKPj4+IERldGVybWluZSB3aGljaCByZXZpc2lvbiBvZiByazMyODggYnkgY2hlY2tpbmcgdGhl
IEhETUkgdmVyc2lvbi4KPj4+IEFjY29yZGluZyB0byB0aGUgUm9ja2NoaXAgQlNQIGtlcm5lbCwg
b24gcmszMjg4dywgdGhlIEhETUkKPj4+IHJldmlzaW9uIGVxdWFscyAweDFBIHdoaWNoIGlzIG5v
dCB0aGUgY2FzZSBmb3IgdGhlIHJrMzI4OCBbMV0uCj4+Pgo+Pj4gQXMgdGhlc2UgU09DIGhhdmUg
c29tZSBkaWZmZXJlbmNlcywgdGhlIG5ldyBmdW5jdGlvbgo+Pj4gJ3NvY19pc19yazMyODh3JyB3
aWxsIGhlbHAgdXMgdG8ga25vdyBvbiB3aGljaCByZXZpc2lvbgo+Pj4gd2UgYXJlLgo+Pgo+PiB3
aGF0IGhhcHBlbmVkIHRvIGp1c3QgaGF2aW5nIGEgZGlmZmVyZW50IGNvbXBhdGlibGUgaW4gdGhl
IGR0cz8KPj4gQWthIGRvaW5nIGEKPj4KPj4gcmszMjg4dy5kdHNpIHdpdGgKPj4KPj4gI2luY2x1
ZGUgInJrMzI4OC5kdHNpIgo+Pgo+PiAmY3J1IHsKPj4gICAgICAgICAgY29tcGF0aWJsZSA9ICJy
b2NrY2hpcCxyazMyODh3LWNydSI7Cj4+IH0KPj4KPj4gSSBzb21laG93IGRvbid0IGV4cGVjdCBi
b2FyZHMgdG8ganVzdCBzd2l0Y2ggYmV0d2VlbiBzb2MgdmFyaWFudHMKPj4gb24gdGhlIGZseS4K
Pj4KPj4gQWxzbywgZG9pbmcgdGhpbmdzIGluIG1hY2gtcm9ja2NoaXAgaXMgbm90IHZlcnkgZnV0
dXJlLXByb29mOgo+Pgo+PiAoMSkgaGF2aW5nIHJhbmRvbSBzb2Mtc3BlY2lmaWMgQVBJcyBzcGFu
bmluZyB0aGUga2VybmVsIGZlZWxzIHdyb25nLAo+PiAgICAgIGVzcGVjaWFsbHkgYXMgYXQgc29t
ZSBwb2ludCBpdCBtaWdodCBub3QgYmUgY29udGFpbmVkIHRvIG91ciBvd24gc3BlY2lhbAo+PiAg
ICAgIGRyaXZlcnMgbGlrZSB0aGUgY3J1LiBJIGNhbm5vdCByZWFsbHkgc2VlIHBlb3BsZSBiZWlu
ZyBlbnRodXNpYXN0aWMgaWYKPj4gICAgICBzb21ldGhpbmcgbGlrZSB0aGlzIHdvdWxkIGJlIG5l
ZWRlZCBpbiBzYXkgdGhlIGNvcmUgQW5hbG9naXgtRFAgYnJpZGdlIDstKQo+IAo+IEluZGVlZC4g
IFlvdSdyZSBiZXR0ZXIgb2YgcmVnaXN0ZXJpbmcgYW4gc29jX2RldmljZV9hdHRyaWJ1dGUgdXNp
bmcKPiBzb2NfZGV2aWNlX3JlZ2lzdGVyKCksIGFmdGVyIHdoaWNoIGFueSBkcml2ZXIgY2FuIHVz
ZSBzb2NfZGV2aWNlX21hdGNoKCkKPiB0byBkaWZmZXJlbnRpYXRlIGJhc2VkIG9uIHRoZSBTb0Mg
cmV2aXNpb24uCgpUaGFuayB5b3UgZm9yIHRoaXMgc3VnZ2VzdGlvbi4gVGhlIGlzc3VlIGlzIHRo
YXQgY2xvY2tzIGFyZSByZWdpc3RlcmVkIAphdCBhbiBlYXJseSBzdGFnZSBvZiB0aGUgYm9vdCBz
byB1c2luZyBpbml0Y2FsbHMgaXMgdG9vIGxhdGUgZm9yIHRoZSAKY2xvY2sgZGlmZmVyZW50aWF0
aW9uIDooCgo+IAo+PiAoMikgSSBndWVzcyB0aGUgcmszMjg4dyB3aWxsIG5vdCBiZSB0aGUgbGFz
dCBzb2MgZG9pbmcgdGhpcyBhbmQgb24gYXJtNjQgeW91Cj4+ICAgICAgY2FuJ3QgZG8gaXQgdGhh
dCB3YXksIGFzIHRoZXJlIGlzIG5vIG1hY2gtcm9ja2NoaXAgdGhlcmUKPiAKPiBUaGVyZSdzIGRy
aXZlcnMvc29jL3JvY2tjaGlwIDstKQo+IAo+PiBTbyBteSBwZXJzb25hbCBwcmVmZXJlbmNlIHdv
dWxkIHJlYWxseSB3b3VsZCBiZSBqdXN0IGEgc3BlY2lmaWMgY29tcGF0aWJsZQo+PiBmb3IgYWZm
ZWN0ZWQgaXAgYmxvY2tzLgo+IAo+IERvaW5nIHRoYXQgb25seSBmb3IgYWZmZWN0ZWQgSVAgYmxv
Y2tzIG1heSBtaXNzIGludGVncmF0aW9uIGRpZmZlcmVuY2VzLgo+IE9mIGNvdXJzZSwgeW91IGNh
biBhbHdheXMgcmVzb3J0IHRvIHNvY19kZXZpY2VfbWF0Y2goKSB0byBoYW5kbGUgdGhvc2UuLi4K
PiAKPiBHcntvZXRqZSxlZXRpbmd9cywKPiAKPiAgICAgICAgICAgICAgICAgICAgICAgICAgR2Vl
cnQKPiAKCkl0IHdvdWxkIGJlIGEgZ3JlYXQgaWRlYSBpbmRlZWQgaWYgdGhlcmUgd2FzIG5vdCB0
aGlzIGNsb2NrIHJlZ2lzdHJhdGlvbiAKdG9vIHNvb24gZm9yIGluaXRjYWxscy4KCkkgYW0gY3Vy
cmVudGx5IHJ1bm5pbmcgb3V0IG9mIGlkZWFzIHRvIHByb3Bvc2UgYSBiZXR0ZXIgc29sdXRpb24g
dGhhbiAKdGhpcyBWMS4gSXMgYW55b25lIGhhcyBhbnkgcmVjb21tZW5kYXRpb24gdG8gaGFuZGxl
IHRoYXQ/IEkgd291bGQgcmVhbGx5IAphcHByZWNpYXRlIDopCgpUaGFuayB5b3UgaW4gYWR2YW5j
ZSEKQmVzdCByZWdhcmRzLApNeWzDqG5lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
