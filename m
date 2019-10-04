Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E545ECC410
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 22:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoA+4Qs2dt/M9ZhoTa8AaDOWpNRPh7bN+c4/LEOJlTE=; b=Fxlt803HtCSWv3
	xYeqvJLoVIgrrY+VkbUT4o1xkLSi2CTxugB8h690YfF02TQU4+bxcshCK2UAiePeeshCyv2Aij9zt
	FIz2FXBX2tpymy4f9l4ajN33Q7hpgVW6/1Tjnf5I7qXVnbIFTrzXkwWSdZKkhgFoZA81x3IE0TdsA
	DOu8DT/Y+3AXRt9YCXKspCgNKLH7+YfL5nxe4Or270G22YyhADfoWWBSEZBxK3PM37bfpaTZFH88Y
	dnMG/X4wCDYE4q2oOi4JVXFwGnZN9k2s/EKvzGcVMedkoyeMPI641meCRfvQ/7ALby2R2DZEo/eUQ
	WAUmvq9VfTRInEO/d/8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGTzt-0005Py-PC; Fri, 04 Oct 2019 20:16:17 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGTzj-0005PR-Sw; Fri, 04 Oct 2019 20:16:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570220147;
 bh=/9iohLUYEBbDOBi5xKcaPBwoVFoiXUt1MECauKaeNPo=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=TWupxaHFHy8htGtXWmxeL0FJOHS78tgk2FewKPAYTLdU/gIv+6Ph7W47GGQhQlKJL
 K+3dE7Sxhp+y8vqH6ERC/XBycECioVXB5hTL9ftDzFn6CoBLsdTzrFNRRmR1bAyWZq
 sEk5rWSI+6/WFiD5zokQaSF29JdQXQYXLgdmLAKk=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.27] ([77.191.3.29]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LaTtv-1hqBeG0gfP-00mIlm; Fri, 04
 Oct 2019 22:15:47 +0200
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_3/3=5d_arm64=3a_dts=3a_rockchip=3a_fix_Roc?=
 =?UTF-8?B?a1BybzY0IHNkbW1jIHNldHRpbmdz44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGlu?=
 =?UTF-8?Q?ux-rockchip-bounces+shawn=2elin=3drock-chips=2ecom=40lists=2einfr?=
 =?UTF-8?B?YWRlYWQub3Jn5Luj5Y+R44CR?=
From: Soeren Moch <smoch@web.de>
To: Heiko Stuebner <heiko@sntech.de>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
 <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
 <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
 <120e2dbc-55eb-2205-b00f-7e50928ec706@rock-chips.com>
 <1c452b8b-853f-8f58-5f3a-0bbecbe20557@web.de>
 <fc7dce53-ad39-26e3-7c19-ab60ff4cc332@arm.com>
 <0c6fdb65-be2a-68e3-a686-14ce9b0a00a4@rock-chips.com>
 <e4aaddc2-441b-b835-380e-374a3d935474@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=smoch@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <c180ec58-083b-5730-a188-58eb6100b7b6@web.de>
Date: Fri, 4 Oct 2019 22:15:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e4aaddc2-441b-b835-380e-374a3d935474@web.de>
Content-Language: en-GB
X-Provags-ID: V03:K1:Zf72IgGpSgQJSNpJ/D6zm5lUuOX8w2V1h+znKSLKcyv+nh1hsOc
 p6T++Xvs/wvidFTOWBEvt39EPNaRpji/3T7Uo+DJema1R1MZ4uxLrGfVAjoqlBnYyMVby2J
 Mh3Eig6qsSJ/XW0CF+3RHmBJKpeNGvB4O0KYm/8HbavMnoRcIUvBIJMENxe/cwHWVYjayKD
 nAvysTpymIKUV9OTraj6w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AlODg3pdTKc=:2bXAJqkdhFYAJ6UtzWSE8c
 sY2WaG2V7lKLn7aE3t/qANkHdgX2W7ji5kX2emKrysveUNdm8sUryT5TUEX396gxYrVtnPpnH
 OMquyWmBbU8vHWnhDBeTfWgfjYO6Jot1mVv8fzp2v4iMV7EmAtyfsUNr2qWz56rb8PjvcG77X
 QOnOHiB1WkTRELrcY5lCJn0ASdb4dE01kCXUJ0PEcgJ/xlT1x4ekixIX/eHCXV0b8FiyjEDcK
 HlLE2D9CEdqnwCgiYaeCSwigXpzfllHpLuNWl+5/4LSzSHQqszAZHwv3qbd9UftFTDXdOgp6T
 Fgfa11oRaABb2qdm2mW8evyLQ22PNaYSc1XRxfLNzuXfp/41FqtkuDp95uJn6xbg3Hri4ANnX
 hBdFZqNSYzRzRKSQ1xcjd26Iz/joKOs+NaEbS6VoDzVFAsBslLdKQ9QaYYSSOOg4rjG0f6DvJ
 ncdRRhT/jTSxC2iDbMWF/ZEXtRfq0CJc3zDn2HchJz4f8PuBtkP1qxzyXuZ8MEl3md1hxdeNG
 gd9wb5eR0FnyZoogXP2e80iQ6xk3xPi+mIPe5BQOQFSTvmNNUasfBrPApOdj6QfBZPO3mjigy
 wHJFnSZyeENRdGJtrWWGmXSCOJI8h4b0dOi2xKzcW6hGSUKf4BxA6Yzlvfa/LE/Rei512CI91
 Ot+75JE+VBlYopy5Gf+mnuQHHsdhob1XLExKz94RJjeIzPkgLp8r2V2FwBrikZekb7uqQaQB1
 o7vPk2oZyq40bZea396HqWQh1JSEgvkqz/oU9cV9jsAhoA/BLsyDSgH75C+p9MGz8txOQX4Th
 12QvRmAd/Yks5GfU9sxSvKFEyOt3SPgPNhWeV01J6rpMWOUEfYo2agXP08TnfbrWPnEt0Lyal
 8PiD+3HmPKqoQJK5QfLuZnYx9hXBTcXQ3ZqGr/+7CMqQf5+UmJa5dC+GHDFaOM6MYx9ZBnyNv
 JDrIUaLYt0HC/xgFjYm+f3Q4xPqdaqJe4Vz9XM3RLzQJuvPECEOq3+ZNLzivZG+xFEaNtxZoL
 xKSA5U5r6+jM6t/4y+qyb7OLwgMNVYf21azNDTeP/mHjemsGizXwHPpF981xfPHG2PWIVYybD
 s5mcMi4mer+RWTGHqBQKLoGrY1WF/eVqN+h7LTnrVo+I81oWLSWsLuIk7OmjjQioQCy87P5tp
 QuAStsd1RuGq0Wtv3uDYBad9pxuZ5WbT2ia/rXgdqH0SEAsq0/5sjuz1Hscb2Y1wasynKfFuA
 eZtTSps+734dS0RFZlm1N9RW6ylL1rMnAXg4t3w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_131608_273569_57E5579B 
X-CRM114-Status: GOOD (  23.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.4 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVpa28sCgpzaW5jZSB5b3Ugc3RhcnRlZCB0byBhcHBseSB0aGUgZmlyc3QgMiBQYXRjaGVzIG9m
IHRoaXMgc2VyaWVzICh0aGFua3MKZm9yIHRoYXQhKSwgbm93IGFmdGVyIGFsbCB0aGUgZGlzY3Vz
c2lvbnMgaGVyZSAoYW5kIHRoZSBoZWFkcy11cCBmb3IgdGhlCmltcGxlbWVudGVkIG1vZGUgZGV0
ZWN0aW9uKSBJIHRoaW5rIHdlIHNob3VsZCBsZWF2ZSB0aGUgdmNjX3NkaW8KcmVndWxhdG9yIHNl
dHRpbmdzIHVubW9kaWZpZWQuCgpJdCBzdGlsbCBjb3VsZCBtYWtlIHNlbnNlIHRvIHJlbW92ZSB0
aGUgY2FwLW1tYy1oaWdoc3BlZWQgcHJvcGVydHkuIEFyZQp5b3UgT0sgd2l0aCBhIFYyIHBhdGNo
IGZvciB0aGF0PwoKVGhhbmtzLApTb2VyZW4KCgpPbiAwNC4xMC4xOSAxOToyNCwgU8O2cmVuIE1v
Y2ggd3JvdGU6Cj4KPiBPbiAwNC4xMC4xOSAxNzozMywgU2hhd24gTGluIHdyb3RlOgo+PiBPbiAy
MDE5LzEwLzQgMjI6MjAsIFJvYmluIE11cnBoeSB3cm90ZToKPj4+IE9uIDA0LzEwLzIwMTkgMDQ6
MzksIFNvZXJlbiBNb2NoIHdyb3RlOgo+Pj4+Cj4+Pj4gT24gMDQuMTAuMTkgMDQ6MTMsIFNoYXdu
IExpbiB3cm90ZToKPj4+Pj4gT24gMjAxOS8xMC80IDg6NTMsIFNvZXJlbiBNb2NoIHdyb3RlOgo+
Pj4+Pj4KPj4+Pj4+IE9uIDA0LjEwLjE5IDAyOjAxLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+Pj4+
Pj4gT24gMjAxOS0xMC0wMyAxMDo1MCBwbSwgU29lcmVuIE1vY2ggd3JvdGU6Cj4+Pj4+Pj4+IEFj
Y29yZGluZyB0byB0aGUgUm9ja1BybzY0IHNjaGVtYXRpYyBbMV0gdGhlIHJrMzM5OSBzZG1tYwo+
Pj4+Pj4+PiBjb250cm9sbGVyIGlzCj4+Pj4+Pj4+IGNvbm5lY3RlZCB0byBhIG1pY3JvU0QgKFRG
IGNhcmQpIHNsb3QsIHdoaWNoIGNhbm5vdCBiZSBzd2l0Y2hlZCB0bwo+Pj4+Pj4+PiAxLjhWLgo+
Pj4+Pj4+IFJlYWxseT8gQUZBSUNTIHRoZSBTRE1NQzAgd2lyaW5nIGxvb2tzIHByZXR0eSBtdWNo
IGlkZW50aWNhbCB0byB0aGUKPj4+Pj4+PiBOYW5vUEMtVDQgc2NoZW1hdGljIChpdCdzIHRoZSBz
YW1lIHJlZmVyZW5jZSBkZXNpZ24sIGFmdGVyIGFsbCksCj4+Pj4+Pj4gYW5kIEkKPj4+Pj4+PiBr
bm93IHRoYXQgYm9hcmQgY2FuIGhhcHBpbHkgZHJpdmUgYSBVSFMtSSBtaWNyb1NEIGNhcmQgd2l0
aCAxLjh2Cj4+Pj4+Pj4gSS9PcywKPj4+Pj4+PiBiZWNhdXNlIG1pbmUncyBkb2luZyBzbyByaWdo
dCBub3cuCj4+Pj4+Pj4KPj4+Pj4+PiBSb2Jpbi4KPj4+Pj4+IE9LLCB0aGUgUm9ja1BybzY0IGRv
ZXMgbm90IGFsbG93IGEgY2FyZCByZXNldCAocG93ZXIgY3ljbGUpIHNpbmNlCj4+Pj4+PiBWQ0Mz
VjBfU0QgaXMgZGlyZWN0bHkgY29ubmVjdGVkIHRvIFZDQzNWM19TWVMgKHZpYSBSODk1NTUpLCB0
aGUKPj4+Pj4+IFNETU1DMF9QV0hfSCBzaWduYWwgaXMgbm90IGNvbm5lY3RlZC4gU28gdGhlIGNh
cmQgZmFpbHMgdG8gaWRlbnRpZnkKPj4+Pj4+IGl0c2VsZiBhZnRlciBzdXNwZW5kIG9yIHJlYm9v
dCB3aGVuIHN3aXRjaGVkIHRvIDEuOFYgb3BlcmF0aW9uLgo+Pj4gQWgsIHRoYW5rcyBmb3IgY2xh
cmlmeWluZyAtIEkgZGlkIG92ZXJsb29rIHRoZSBzdWJ0bGV0eSB0aGF0IFUxMiBhbmQKPj4+IGZy
aWVuZHMgaGF2ZSAiTkMiIGFzIGFsdGVybmF0aXZlIHBhcnQgbnVtYmVycywgZXZlbiB0aG91Z2gg
dGhleQo+Pj4gYXJlbid0IGFjdHVhbGx5IG1hcmtlZCBhcyBETlAuIFNvIGl0J3Mgc3RpbGwgbm90
IHNvIG11Y2ggImNhbm5vdCBiZQo+Pj4gc3dpdGNoZWQiIGFzICJzd2l0Y2hpbmcgY2FuIGxlYWQg
dG8gb3RoZXIgcHJvYmxlbXMiLgo+Pj4KPj4+Pj4gSSBiZWxpZXZlIHdlIGFkZHJlc3NlZCB0aGlz
IGlzc3VlIGxvbmcgdGltZSBhZ28sIHBsZWFzZSBjaGVjazoKPj4+Pj4KPj4+Pj4gaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0
L2NvbW1pdC8/aWQ9NmExMWZjNDdmMTc1YzhkODcwMThlODljYjU4ZTJkMzZjNjY1MzRjYgo+Pj4+
Pgo+Pj4+Pgo+Pj4+IFRoYW5rcyBmb3IgdGhlIHBvaW50ZXIuCj4+Pj4gSW4gdGhpcyBjYXNlIEkg
Z3Vlc3MgSSBzaG91bGQgdXNlIGZvbGxvd2luZyBwYXRjaCBpbnN0ZWFkOgo+Pj4+Cj4+Pj4gLS0t
IHJrMzM5OS1yb2NrcHJvNjQuZHRzLmJhayDCoMKgIDIwMTktMTAtMDMgMjI6MTQ6MDAuMDY3NzQ1
Nzk5ICswMjAwCj4+Pj4gKysrIHJrMzM5OS1yb2NrcHJvNjQuZHRzwqDCoMKgIDIwMTktMTAtMDQg
MDA6MDI6NTAuMDQ3ODkyMzY2ICswMjAwCj4+Pj4gQEAgLTYxOSw2ICs2MTksOCBAQAo+Pj4+IMKg
wqDCoMKgwqAgbWF4LWZyZXF1ZW5jeSA9IDwxNTAwMDAwMDA+Owo+Pj4+IMKgwqDCoMKgwqAgcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+PiDCoMKgwqDCoMKgIHBpbmN0cmwtMCA9IDwmc2Rt
bWNfY2xrICZzZG1tY19jbWQgJnNkbW1jX2J1czQ+Owo+Pj4+ICvCoMKgwqAgc2QtdWhzLXNkcjEw
NDsKPj4+PiArwqDCoMKgIHZxbW1jLXN1cHBseSA9IDwmdmNjX3NkaW8+Owo+Pj4+IMKgwqDCoMKg
wqAgc3RhdHVzID0gIm9rYXkiOwo+Pj4+IMKgwqB9Owo+Pj4+IFdoZW4gSSBkbyBzbywgdGhlIHNk
IGNhcmQgaXMgZGV0ZWN0ZWQgYXMgU0RSMTA0LCBidXQgYSByZWJvb3QgaGFuZ3M6Cj4+Pj4KPj4+
PiBCb290MTogMjAxOC0wNi0yNiwgdmVyc2lvbjogMS4xNAo+Pj4+IENQVUlkID0gMHgwCj4+Pj4g
Q2hpcFR5cGUgPSAweDEwLCAyODYKPj4+PiBTcGlfQ2hpcElkID0gYzg0MDE4Cj4+Pj4gbm8gZmlu
ZCBya3BhcnRpdGlvbgo+Pj4+IFNwaUJvb3RJbml0OmZmZmZmZmZmCj4+Pj4gbW1jOiBFUlJPUjog
U0RIQ0kgRVJSOmNtZDoweDEwMixzdGF0OjB4MTgwMDAKPj4+PiBtbWM6IEVSUk9SOiBDYXJkIGRp
ZCBub3QgcmVzcG9uZCB0byB2b2x0YWdlIHNlbGVjdCEKPj4+PiBlbW1jIHJlaW5pdAo+Pj4+IG1t
YzogRVJST1I6IFNESENJIEVSUjpjbWQ6MHgxMDIsc3RhdDoweDE4MDAwCj4+Pj4gbW1jOiBFUlJP
UjogQ2FyZCBkaWQgbm90IHJlc3BvbmQgdG8gdm9sdGFnZSBzZWxlY3QhCj4+Pj4gZW1tYyByZWlu
aXQKPj4+PiBtbWM6IEVSUk9SOiBTREhDSSBFUlI6Y21kOjB4MTAyLHN0YXQ6MHgxODAwMAo+Pj4+
IG1tYzogRVJST1I6IENhcmQgZGlkIG5vdCByZXNwb25kIHRvIHZvbHRhZ2Ugc2VsZWN0IQo+Pj4+
IFNkbW1jSW5pdD0yIDEKPj4+PiBtbWMwOmNtZDUsMzIKPj4+PiBtbWMwOmNtZDcsMzIKPj4+PiBt
bWMwOmNtZDUsMzIKPj4+PiBtbWMwOmNtZDcsMzIKPj4+PiBtbWMwOmNtZDUsMzIKPj4+PiBtbWMw
OmNtZDcsMzIKPj4+PiBTZG1tY0luaXQ9MCAxCj4+Pj4KPj4+PiBTbyBJIGd1ZXNzIEkgc2hvdWxk
IHVzZSBhIGRpZmZlcmVudCBtaW5pbG9hZGVyIGZvciB0aGlzIHJlYm9vdCB0bwo+Pj4+IHdvcmsh
Pwo+Pj4+IE9yIHdoYXQgZWxzZSBjb3VsZCBiZSB3cm9uZyBoZXJlPwo+Pj4gSG1tLCBJIGd1ZXNz
IHRoaXMgaXMgInRoZSBUaW5rZXJib2FyZCBwcm9ibGVtIiBhZ2FpbiAtIHRoZSBwYXRjaAo+Pj4g
YWJvdmUgd291bGQgYmUgT0sgaWYgd2UgY291bGQgZ2V0IGFzIGZhciBhcyB0aGUga2VybmVsLCBi
dXQgY2FuJ3QKPj4+IGhlbHAgaWYgdGhlIAo+PiBJIGRpZG4ndCByZWFsaXplIHRoYXQgU0Qgd2Fz
IHVzZWQgYXMgYm9vdCBtZWRpdW0gZm9yIFJvY2tQcm82NCwgYnV0IEkKPj4gZGlkIHBhdGNoIHRo
ZSB2ZW5kb3IgdHJlZSB0byBzb2x2ZSB0aGUgaXNzdWUgZm9yIFRpbmtlcmJvYXJkLCBzZWUKPj4g
aHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbC9jb21taXQvYTRjY2RlMjFm
NWE5ZjA0Zjk5NmZiMDI0NzljYjlmMTZkM2RjOGRjMAo+Pgo+Pgo+PiBNeSBpbml0aWFsIHBsYW4g
d2FzIHRvIHBhdGNoaW5nIHVwc3RyZWFtIGtlcm5lbCBieSBhZGRpbmcgLT5zaHV0ZG93bixidXQK
Pj4gbmV2ZXIgZmluaXNoIGl0Lgo+Pgo+Pj4gb2ZmZW5kaW5nIGNhcmQgaXMgaXRzZWxmIHRoZSBi
b290IG1lZGl1bS4gVGhlcmUgd2FzIGEgcHJvcG9zYWwgaGVyZToKPj4+Cj4+PiBodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwODE3MjE3Lwo+PiBUaGlzIFJGQyBhbHNvIGxvb2tz
IGdvb2QgdG8gbWUsIGJ1dCBzZWVtcyBpdCBuZWVkcyB2b2x1bnRlZXJzCj4+IHRvIHB1c2ggaXQg
YWdhaW4uCj4gT2gsIEkgdGhpbmsgdGhpcyBpcyBhIHRvdGFsbHkgd3Jvbmcgd2F5Lgo+Cj4gV2hp
bGUgdGhpcyBtaWdodCB3b3JrIGZvciBzb21lIGNhcmRzLCBzZXR0aW5nIHRoZSBjb250cm9sbGVy
J3MgaS9vCj4gdm9sdGFnZSB0byAzLjNWIHdoaWxlIGxlYXZpbmcgdGhlIGNhcmQgYXQgMS44ViBj
b25maWd1cmF0aW9uIGlzIHRvdGFsbHkKPiBhZ2FpbnN0IHRoZSBzcGVjaWZpY2F0aW9uLCBjYW4g
bGVhZCB0byBhbGwga2luZHMgb2Ygc3RyYW5nZSBiZWhhdmlvdXIKPiBhbmQgZXZlbiBjYXVzZSBo
YXJkd2FyZSBkYW1hZ2UuIEl0IGFsc28gd291bGQgYWN0aXZlbHkgZGVmZW5kIHRoZQo+IHB1cnBv
c2Ugb2YgdGhlIGFib3ZlIG1lbnRpb25lZCBwYXRjaCAoNmExMWZjNCkgd2hlcmUgdGhlIGtlcm5l
bCBndWVzc2VzCj4gdGhlIGkvbyB2b2x0YWdlIGZyb20gdGhlIGNhcmQgY29uZmlndXJhdGlvbiBh
bmQgc3dpdGNoZXMgdGhlIGNvbnRyb2xsZXIKPiBhY2NvcmRpbmdseS4gV2Ugd291bGQgZW5kIHVw
IHdpdGggYSAxLjhWIGNhcmQgYW5kIGNvbnRyb2xsZXIKPiBjb25maWd1cmF0aW9uIGFuZCBhIHJl
Z3VsYXRvciB2b2x0YWdlIG9mIDMuM1YuIFRoaXMgd291bGQgb25seSB3b3JrIHdpdGgKPiBnb29k
IGx1Y2suIEV2ZW4gaWYgdGhlIGtlcm5lbCBkcml2ZXIgd291bGQgc3dpdGNoIHRoZSByZWd1bGF0
b3IgYmFjayB0bwo+IDEuOFYgaW4gdGhpcyBjYXNlLCB0aGUgdm9sdGFnZSBtaXNtYXRjaCByZW1h
aW5zIGluIHRoZSBib290bG9hZGVyIHdoZW4KPiB0aGlzIGNhcmQgY29udGFpbnMgdGhlIGJvb3Qg
aW1hZ2UuCj4KPiBUaGUgb25seSBzYW5lIHdheSBJIHNlZSB0byBoYW5kbGUgdGhpcyBpcyBpbXBs
ZW1lbnRpbmcgdGhlIHNhbWUKPiB3b3JrYXJvdW5kIChtb2RlIGd1ZXNzaW5nKSBhbHNvIGluIHRo
ZSBib290bG9hZGVyIChyb2NrY2hpcCBtaW5pbG9hZGVyCj4gYW5kIHUtYm9vdCBTUEwgc2luY2Ug
Ym90aCBib290bG9hZGVyIGNoYWlucyBhcmUgc3VwcG9ydGVkIGZvciB0aGlzIGJvYXJkKS4KPgo+
IE9yIG1heWJlIEkgbWlzcyBzb21ldGhpbmc/Cj4KPiBTb2VyZW4KPgo+Cj4+PiBhbHRob3VnaCBJ
J20gbm90IHN1cmUgd2hhdCBpZiBhbnkgcHJvZ3Jlc3MgaGFzIGJlZW4gbWFkZSBzaW5jZSB0aGVu
Lgo+Pj4KPj4+IFJvYmluLgo+Pj4KPj4+Cj4+Pgo+Pgo+CgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
