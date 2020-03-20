Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEB518CF42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 14:44:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEkpMCPyzSS1lcUP89jLkvThKSdZ0evSSlhIlb/QaHg=; b=iPSOUtIxPDIV5Z
	kvXzkn5L6ycXImdTQ0/axp19IIN54XUrgsTaKRXdMGEQ3mbqSw3tIjR1tjgaZftTyXEEcP5R3TKXC
	rz7pl4FiF752NKcosn06t78GkxCONFfct91vCrSC4dQkX7nTBaWRneP+WAHYi2vnf/YSkr9ENT8vr
	zpa63ZD+UbPtoPKu4v/ORHQ+E2PAa2aC3T8btJkPGlzLguI7KCCOC9pir5YL7ltt4JOYkme4QyB6p
	IqHRx2OH3wb4G5d/7JUUD+EQqmXrxd/bxBsKS85PFM9ptg9oXjiURn6m6YmQDHCnhPD68KWaDgmx6
	j+5gjDMTV+LHQX7J5LPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFHwZ-0001Ug-3R; Fri, 20 Mar 2020 13:44:11 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFHwP-0001Tq-56
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 13:44:02 +0000
Received: by mail-ot1-f67.google.com with SMTP id e19so5977148otj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 06:44:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HTiNRBW6uZ5w4Aw+oJKhvSzAGoLn1XvNb66iGTV4mFU=;
 b=k6sOWp3FJqVrkCDeG32NXyI9NHBjpeBMhrmhCfKR0lecBjc6OxwWiG2Gsb4srll2gI
 AhmywIG6Z5D1+f3oVWN1IXhQqb0bikilMIbGx/pjBu+x+8tLiiqWDfvn8fvdBhwqKReR
 Ob7BLvwQwtSG8Ei2xLUzvWwtxk6XbuA/+7xrPgvvFM0NvmzQQV+TrnmmA0YKSRt8gpx9
 Tvty9IZ9gR8HQhrjduEQXvCdYLRGbDAxHqLIIt2jyk1jnIABRfDOoySA2ZVQRIxCERTB
 YsvelyIZeuiapqtdzvPDCbtG7UV78EPSQ6EBrfnxHFKDg2Exb8Ttm/3YcKMP7omlrU24
 M/7Q==
X-Gm-Message-State: ANhLgQ1/+S+dNqvEg5GD6boihF+NzH7HMCIGPq/sprVCo3+srh6bTH51
 ZiNPe4xyIUALTD1v9GMkKqwljaXHDRPtluPIpUY=
X-Google-Smtp-Source: ADFU+vvEmg/6HsmpxKKaMImY62zgJb2bd3AJh/9jTVUjPK3jVM6yuBr7QDpI3y7cw9SFs4dn0QsgJ13LDN+MQ4od7LE=
X-Received: by 2002:a9d:1708:: with SMTP id i8mr6703347ota.250.1584711840156; 
 Fri, 20 Mar 2020 06:44:00 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200225112354eucas1p1300749b32c6809b6a22194c1a952a68c@eucas1p1.samsung.com>
 <20200127140716.15673-1-geert+renesas@glider.be>
 <d1b12473-5199-1cf6-25d1-a6ce79450e8e@samsung.com>
 <CAMuHMdUGu4eStpYp5W0SKJd8yrLLDTgF4__Jq_n+Z7SWtPM+Cg@mail.gmail.com>
 <90c006f2-8c13-2976-008f-37139ca49f37@gmail.com>
 <CAMuHMdVkhf+4CQwpf9tn3UfaMb=qoRRYS2XpwcgBMciTVmXjHA@mail.gmail.com>
 <75358399-c292-4e60-abdc-bd0729cf5c08@gmail.com>
 <CAMuHMdX9PH+WUvONz2C8D1fRrZXn5rEND-p_my2mYvoyxF_gWA@mail.gmail.com>
In-Reply-To: <CAMuHMdX9PH+WUvONz2C8D1fRrZXn5rEND-p_my2mYvoyxF_gWA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Mar 2020 14:43:48 +0100
Message-ID: <CAMuHMdVwxi57jMrVoH8P2ms0j9YrZvc1Zi+BVR3VDo8QJHaU-w@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: boot: Obtain start of physical memory from DTB
To: Dmitry Osipenko <digetx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_064401_197408_08F05CD0 
X-CRM114-Status: GOOD (  26.87  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRG1pdHJ5IGV0IGFsLAoKT24gRnJpLCBNYXIgMjAsIDIwMjAgYXQgMTA6MTggQU0gR2VlcnQg
VXl0dGVyaG9ldmVuCjxnZWVydEBsaW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4gT24gVGh1LCBNYXIg
MTksIDIwMjAgYXQgMzozNSBQTSBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+IHdy
b3RlOgo+ID4gMTkuMDMuMjAyMCAxMToxOCwgR2VlcnQgVXl0dGVyaG9ldmVuINC/0LjRiNC10YI6
Cj4gPiA+IE9uIFRodSwgTWFyIDE5LCAyMDIwIGF0IDI6MTEgQU0gRG1pdHJ5IE9zaXBlbmtvIDxk
aWdldHhAZ21haWwuY29tPiB3cm90ZToKPiA+ID4+IDI1LjAyLjIwMjAgMTQ6NDAsIEdlZXJ0IFV5
dHRlcmhvZXZlbiDQv9C40YjQtdGCOgo+ID4gPj4+IE9uIFR1ZSwgRmViIDI1LCAyMDIwIGF0IDEy
OjI0IFBNIE1hcmVrIFN6eXByb3dza2kKPiA+ID4+PiA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29t
PiB3cm90ZToKPiA+ID4+Pj4gT24gMjcuMDEuMjAyMCAxNTowNywgR2VlcnQgVXl0dGVyaG9ldmVu
IHdyb3RlOgo+ID4gPj4+Pj4gQ3VycmVudGx5LCB0aGUgc3RhcnQgYWRkcmVzcyBvZiBwaHlzaWNh
bCBtZW1vcnkgaXMgb2J0YWluZWQgYnkgbWFza2luZwo+ID4gPj4+Pj4gdGhlIHByb2dyYW0gY291
bnRlciB3aXRoIGEgZml4ZWQgbWFzayBvZiAweGY4MDAwMDAwLiAgVGhpcyBtYXNrIHZhbHVlCj4g
PiA+Pj4+PiB3YXMgY2hvc2VuIGFzIGEgYmFsYW5jZSBiZXR3ZWVuIHRoZSByZXF1aXJlbWVudHMg
b2YgZGlmZmVyZW50IHBsYXRmb3Jtcy4KPiA+ID4+Pj4+IEhvd2V2ZXIsIHRoaXMgZG9lcyByZXF1
aXJlIHRoYXQgdGhlIHN0YXJ0IGFkZHJlc3Mgb2YgcGh5c2ljYWwgbWVtb3J5IGlzCj4gPiA+Pj4+
PiBhIG11bHRpcGxlIG9mIDEyOCBNaUIsIHByZWNsdWRpbmcgYm9vdGluZyBMaW51eCBvbiBwbGF0
Zm9ybXMgd2hlcmUgdGhpcwo+ID4gPj4+Pj4gcmVxdWlyZW1lbnQgaXMgbm90IGZ1bGZpbGxlZC4K
PiA+ID4+Pj4+Cj4gPiA+Pj4+PiBGaXggdGhpcyBsaW1pdGF0aW9uIGJ5IG9idGFpbmluZyB0aGUg
c3RhcnQgYWRkcmVzcyBmcm9tIHRoZSBEVEIgaW5zdGVhZCwKPiA+ID4+Pj4+IGlmIGF2YWlsYWJs
ZSAoZWl0aGVyIGV4cGxpY2l0bHkgcGFzc2VkLCBvciBhcHBlbmRlZCB0byB0aGUga2VybmVsKS4K
PiA+ID4+Pj4+IEZhbGwgYmFjayB0byB0aGUgdHJhZGl0aW9uYWwgbWV0aG9kIHdoZW4gbmVlZGVk
Lgo+ID4gPj4+Pj4KPiA+ID4+Pj4+IFRoaXMgYWxsb3dzIHRvIGJvb3QgTGludXggb24gcjdzOTIx
MC9yemEybWV2YiB1c2luZyB0aGUgNjQgTWlCIG9mIFNEUkFNCj4gPiA+Pj4+PiBvbiB0aGUgUlpB
Mk1FVkIgc3ViIGJvYXJkLCB3aGljaCBpcyBsb2NhdGVkIGF0IDB4MEMwMDAwMDAgKENTMyBzcGFj
ZSksCj4gPiA+Pj4+PiBpLmUuIG5vdCBhdCBhIG11bHRpcGxlIG9mIDEyOCBNaUIuCj4gPiA+Pj4+
Pgo+ID4gPj4+Pj4gU3VnZ2VzdGVkLWJ5OiBOaWNvbGFzIFBpdHJlIDxuaWNvQGZsdXhuaWMubmV0
Pgo+ID4gPj4+Pj4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5l
c2FzQGdsaWRlci5iZT4KPiA+ID4+Pj4+IFJldmlld2VkLWJ5OiBOaWNvbGFzIFBpdHJlIDxuaWNv
QGZsdXhuaWMubmV0Pgo+ID4gPj4+Pj4gLS0tCj4gPiA+Pj4+PiBBZ2FpbnN0IGFybS9mb3ItbmV4
dC4KPiA+ID4+Pj4KPiA+ID4+Pj4gVGhpcyBwYXRjaCBsYW5kZWQgcmVjZW50bHkgaW4gbGludXgt
bmV4dC4gSXQgYnJlYWtzIGxlZ2FjeSBib290aW5nIGZyb20KPiA+ID4+Pj4gdGhlIHpJbWFnZSAr
IGFwcGVuZGVkIERUICsgY21kbGluZS9tZW1vcnkgaW5mbyBwcm92aWRlZCB2aWEgQVRBR3MuIEkK
PiA+ID4+Pj4gd2lsbCBkZWJ1ZyBpdCBmdXJ0aGVyIG9uY2UgSSBmaW5kIHNvbWUgc3BhcmUgdGlt
ZS4gV2hhdCBJIG5vdGljZWQgc28KPiA+ID4+Pj4gZmFyLCB0aGUgY21kbGluZS9tZW1vcnkgaW5m
byBpcyBub3QgcmVhZCBmcm9tIHRoZSBBVEFHcywgb25seSB0aGUgdmFsdWVzCj4gPiA+Pj4+IHBy
b3ZpZGVkIHZpYSBhcHBlbmRlZCBEVCBhcmUgdXNlZC4KPiA+ID4+Pgo+ID4gPj4+IE9vcHMsIHNv
bWV0aGluZyBoYXBwZW5pbmcgbGlrZSB0aGlzIHdhcyBvbmUgb2YgbXkgYmlnZ2VzdCB3b3JyaWVz
IHdoZW4KPiA+ID4+PiBwb3N0aW5nIHRoaXMgcGF0Y2guLi4gU29ycnkgZm9yIHRoZSBicmVha2Fn
ZS4KPiA+ID4+Pgo+ID4gPj4+IElJVUlDLCB0aGUga2VybmVsIHN0aWxsIGJvb3RzLCBidXQganVz
dCBkb2Vzbid0IHVzZSB0aGUgaW5mbyBwYXNzZWQgYnkgQVRBR3M/Cj4gPiA+Pj4KPiA+ID4+PiBJ
J2xsIGhhdmUgYSBjbG9zZXIgbG9vayBsYXRlciB0b2RheS4KPiA+ID4+PiBJbiB0aGUgbWVhbiB0
aW1lLCBJJ3ZlIHNlbnQgc29tZSBkZWJ1ZyBjb2RlIEkgdXNlZCB3aGVuIGRldmVsb3BpbmcKPiA+
ID4+PiB0aGlzIHBhdGNoLCB3aGljaCBtYXkgYmUgdXNlZnVsLCBob3BlZnVsbHkuCj4gPiA+Pgo+
ID4gPj4gTlZJRElBIFRlZ3JhIGlzIGFsc28gYWZmZWN0ZWQgYnkgdGhpcyBwYXRjaC4gQSB3ZWVr
IGFnbyBhbiB1cGRhdGVkCj4gPiA+PiB2ZXJzaW9uIG9mIHRoZSBwYXRjaCB3YXMgcHVzaGVkIGlu
dG8gbGludXgtbmV4dCBhbmQgbm93IG1hY2hpbmUgZG9lc24ndAo+ID4gPj4gYm9vdCBhdCBhbGwu
Cgo+ID4gSSByZWNhbGxlZCB0aGF0IENPTkZJR19USFVNQjJfS0VSTkVMPXkgaXMgc2V0IGluIG15
IGtlcm5lbCdzIGNvbmZpZyBhbmQKPiA+IGRpc2FibGluZyB0aHVtYjIgYnVpbGQgZml4ZXMgdGhl
IHByb2JsZW0uIFBsZWFzZSBjb3JyZWN0IGl0IGluIHRoZSBuZXh0Cj4gPiB2ZXJzaW9uIG9mIHRo
ZSBwYXRjaCwgdGhhbmtzIGluIGFkdmFuY2UuCj4KPiBJbnRlcmVzdGluZy4gIEkgZW5hYmxlZCBD
T05GSUdfVEhVTUIyX0tFUk5FTD15LCBhbmQgaXQgZG9lc24ndCBtYWtlCj4gYSBkaWZmZXJlbmNl
IGZvciB0aGUgZmV3IGJvYXJkIGNvbWJvcyBJJ3ZlIHRyaWVkICh3aXRoL3dpdGhvdXQgYXBwZW5k
ZWQgRFRCKS4KPiBTbyBpdCBtdXN0IGJlIHJlbGF0ZWQgdG8gQVRBR1MuICBXaWxsIGRpdmUgZGVl
cGVyLi4uCgpJIG1hbmFnZWQgdG8gcmVwcm9kdWNlIGl0IHdpdGhvdXQgQVRBR1MuCgpUdXJucyBv
dXQgdG8gYmUgYSBiYWQgaW50ZXJhY3Rpb24gd2l0aCBjb21taXQgMTg0YmY2NTNhN2E0NTJjMSAo
IkFSTToKZGVjb21wcmVzc29yOiBmYWN0b3Igb3V0IHJvdXRpbmUgdG8gb2J0YWluIHRoZSBpbmZs
YXRlZCBpbWFnZSBzaXplIiksCndoaWNoIHJlbW92ZWQgb25lIGVudHJ5IGZyb20gdGhlIGRhdGEg
YXJyYXkgYXQgTEMwLiAgV2hpbGUgdGhhdCBjb21taXQKdXBkYXRlZCBhbGwgdGhlbi1leGlzdGlu
ZyB1c2VycywgbWVyZ2luZyBBcmQncyBwdWxsIHJlcXVlc3QgZGlkbid0IHRha2UKaW50byBhY2Nv
dW50IHRoYXQgYSBuZXcgdXNlciBoYWQgZW1lcmdlZCwgd2hpY2ggYWxzbyBuZWVkZWQgdXBkYXRp
bmcuCgpXaGVuIENPTkZJR19USFVNQjJfS0VSTkVMPXksIHRoZSBzdGFjayBwb2ludGVyIGJlY29t
ZXMgMi1ieXRlCmluc3RlYWQgb2YgNC1ieXRlIGFsaWduZWQsIGNhdXNpbmcgYSBjcmFzaC4KV2hl
biBDT05GSUdfVEhVTUIyX0tFUk5FTD1uLCBpdCBzdGlsbCB3b3JrcywgcHJvYmFibHkgYnkgYWNj
aWRlbnQuCgogICAgICAgICAgICAgICAgYWRyICAgICByMCwgTEMwCiAgICAgICAgICAgICAgICBs
ZHIgICAgIHIxLCBbcjBdICAgICAgICBAIGdldCBhYnNvbHV0ZSBMQzAKLSAgICAgICAgICAgICAg
IGxkciAgICAgc3AsIFtyMCwgIzI4XSAgIEAgZ2V0IHN0YWNrIGxvY2F0aW9uCisgICAgICAgICAg
ICAgICBsZHIgICAgIHNwLCBbcjAsICMyNF0gICBAIGdldCBzdGFjayBsb2NhdGlvbgoKaW4gYXJj
aC9hcm0vYm9vdC9jb21wcmVzc2VkL2hlYWQuUyBmaXhlcyB0aGUgaXNzdWUgZm9yIG1lLgoKV2ls
bCBzZW5kIHY0IHNob3J0bHkuCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAg
ICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBM
aW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29u
dmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIu
IEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1t
ZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
