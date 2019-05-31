Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2F230DEB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 14:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOcddyMzH1Z91UoZAvQB3RjPiXDElJoRNnoAhHSqP48=; b=LtsCxjgnuUFIxV
	vKjKtNX7c61qN/nHtjJfkyfaY9lsqJDgTTRGifNnEPDBdPpxGMhyZUWPAQFNwnUEifGn8HtvOBpel
	h2sK04uPdBq0OhWAmwwU4SrhgSR2OJ1TysFmGkkr5TPSS5zGyRv1in5sHMK7OZG4qXX+2npoFaANt
	zkr+AnePSf4ivJkflOGbx+in3dQPQyvlMVpFFfT74n8qg7UPatVjbgGU7VmsuM98p343kcyj1fUjh
	3qjAahHPnem5dZ/6L3aqtm88xnBN5oMWNRQRM073xfMvBsxAiH2duP5Q28FtUHBe52GIbOskrAyRo
	is0/Eakgo9gmiEXYZRaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWgPc-000723-Mo; Fri, 31 May 2019 12:13:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWgPT-0006zE-0t
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 12:13:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id b18so6348282wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 05:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zPL7kGwvgfT7w1OSvaYMcS7OcwLZvuuC76OpV3I1Y8Y=;
 b=wDOdlxpWcTgZ74BZzK7I2k+xTkSWSclxCpRt6VZ5RDzD+XtX3LdIojrImMH3XTIYga
 msb01JH4zQTZjSW1hVRjAaAKJJ4mEoIGJd3XKxFPEwnpIpEpU1w9V93WNxvmQElmA1pn
 1ZYzJlHO9yvwV2/zjU8Xg9cibOX6RvLdxXelMnlM9+r5L3GiZZaeW6Gxik9CxXhFJUVg
 DjE4LC5q/bhiheqH/3uirZSl5iSjLc+O7NN6hA6tdw+kHDx3lMKPSqJZ+O5hc9OJRhQh
 VlOgE4SN4Fs/RcCxI0a4ByRwYvNQMfs552HJwluVm01PY1/QJ+DuQ61Yyd8D+UOenkbb
 Wf7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zPL7kGwvgfT7w1OSvaYMcS7OcwLZvuuC76OpV3I1Y8Y=;
 b=obJ+PpGkdHQUWTJ9kAIrx+WhMr7SICzNk1VR5uZWCK8C8uX+Bhs6xaoJEQ3ExecyWt
 3xZFJKTiymnvjG1rPjbsehceZEj11pDx5Bz4rrIlxj+dTHIZSPKxEoIWdz+yq3uMPhI3
 RTV3pkWbvtcmhIXespQnuhhbYnG4IChOE4IYchwMbA7NIEd0yHKGTIKnzbJWca90lgYZ
 cf88IHa6HZcgTWrTgMTiIqMaFFTHj3CUjtxXpzCYV2UF7O1R0a+wdneD95pJyy2IO3nI
 FwycSASOI/EaeGvRUgpy4JiaDgmnNF4d7/cJljmJjFqAL2QqiUzMx/q47zE8o+XSyLgB
 tkvA==
X-Gm-Message-State: APjAAAX6bRgBemaQy5JmZAYt6dU0cPX2E651QdWUFoQkHs1ce8z3VDsL
 ShwpvOA6oElRlBdOQbz/Gh399Q==
X-Google-Smtp-Source: APXvYqyyVrN+E+ikeh6cuXgOBQGG7V8bYDDzqrbjQWOuOMGUZ8A0AklUXUxI4rK4LfpMVsnIb7ExIg==
X-Received: by 2002:adf:e649:: with SMTP id b9mr6356787wrn.195.1559304801129; 
 Fri, 31 May 2019 05:13:21 -0700 (PDT)
Received: from [192.168.1.24]
 (amarseille-652-1-291-131.w109-208.abo.wanadoo.fr. [109.208.94.131])
 by smtp.gmail.com with ESMTPSA id d17sm7460299wrx.9.2019.05.31.05.13.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 05:13:20 -0700 (PDT)
Subject: Re: Panfrost impossible to probe without opp table
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>
References: <CAJiuCcfSUAJ2w1qd-OC_CJPXoUVL03dCX1OeaUykNioHkR8Ciw@mail.gmail.com>
 <CAAObsKBuDDF225otw-2kBKufmpS6ng9feBshUPFKNDGv3pE8Ww@mail.gmail.com>
 <838fa193-3c67-d4c8-8991-78c3c8f89cb6@baylibre.com>
 <CAAObsKBjboa50k0awDtwk5LUNV6_6+NQbpwS=_4QuD0vf70TNA@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <764f6a3a-c431-cd6b-0225-c7d55ca51a57@baylibre.com>
Date: Fri, 31 May 2019 14:13:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAAObsKBjboa50k0awDtwk5LUNV6_6+NQbpwS=_4QuD0vf70TNA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_051323_136401_AC655071 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: ezequiel Garcia <ezequiel@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzEvMDUvMjAxOSAxNDowOSwgVG9tZXUgVml6b3NvIHdyb3RlOgo+IE9uIEZyaSwgMzEgTWF5
IDIwMTkgYXQgMTQ6MDMsIE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4g
d3JvdGU6Cj4+Cj4+IEhpIFRvbWV1LAo+Pgo+PiBPbiAzMS8wNS8yMDE5IDEzOjU5LCBUb21ldSBW
aXpvc28gd3JvdGU6Cj4+PiBPbiBXZWQsIDI5IE1heSAyMDE5IGF0IDIzOjI5LCBDbMOpbWVudCBQ
w6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IEhpLAo+Pj4+Cj4+
Pj4gSSBoYXZlIHJlYmFzZSBteSBrZXJuZWwgb24gbGF0ZXN0IDUuMi1yYzIsIGFuZCBteSBwYW5m
cm9zdCBkcml2ZXIgaXMKPj4+PiBubyBtb3JlIHByb2JpbmcuCj4+Pj4KPj4+PiBUaGUgaXNzdWUg
aXMgY29taW5nIGZyb20gZjM2MTdiNDQ5ZDBiY2YzYjVkODBhOTdmNTE0OThkY2Y3NDYzY2Y3ZQo+
Pj4+ICAgICBkcm0vcGFuZnJvc3Q6IFNlbGVjdCBkZXZmcmVxCj4+Pj4KPj4+PiAgICAgQ3VycmVu
dGx5LCB0aGVyZSBpcyBzb21lIGxvZ2ljIGZvciB0aGUgZHJpdmVyIHRvIHdvcmsgd2l0aG91dCBk
ZXZmcmVxLgo+Pj4+ICAgICBIb3dldmVyLCB0aGUgZHJpdmVyIGFjdHVhbGx5IGZhaWxzIHRvIHBy
b2JlIGlmICFDT05GSUdfUE1fREVWRlJFUS4KPj4+Pgo+Pj4+ICAgICBGaXggdGhpcyBieSBzZWxl
Y3RpbmcgZGV2ZnJlcSwgYW5kIGRyb3AgdGhlIGFkZGl0aW9uYWwgY2hlY2tzCj4+Pj4gICAgIGZv
ciBkZXZmcmVxLgo+Pj4+Cj4+Pj4gSXQgc2VlbXMgdGhhdCB3aXRoIHRoaXMgY29tbWl0IHRoZSBP
UFAgdGFibGUgaXMgbm93IG1hbmRhdG9yeS4KPj4+PiBpcyBpdCBpbnRlbnRpb25hbD8KPj4+Cj4+
PiBIaSBDbMOpbWVudCwKPj4+Cj4+PiBkZXZmcmVxIHN1cHBvcnQgaXMgaW50ZW50aW9uYWxseSBy
ZXF1aXJlZC4gSSBnb3QgYSBINjQgYm9hcmQgd2hpY2ggSSdtCj4+PiB1c2luZyB0byBhZGQgVDcy
MCBzdXBwb3J0IHRvIFBhbmZyb3N0Lgo+Pgo+PiBvcGVyYXRpbmctcG9pbnRzLXYyIGFuZCBjbG9j
a3MgYXJlIG9wdGlvbmFsLCBkZXZmcmVxIHNob3VsZCBiZSBvcHRpb25hbCwKPj4gdGhpcyB3YXMg
dGhlIGRlZmF1bHQgYmVoYXZpb3VyIG9mIHRoZSBmaXJzdCBhcHBsaWVkIHZlcnNpb24uCj4gCj4g
SSdtIGNvbmNlcm5lZCBieSB0aGUgc2FmZXR5IG9mIHJ1bm5pbmcgdGhlc2UgR1BVcyBhbGwgdGhl
IHRpbWUgYXQKPiB0aGVpciBtYXhpbXVtIGZyZXF1ZW5jaWVzLiBNYXliZSBub3Qgb24gQ2hyb21l
Ym9va3MgYW5kIG90aGVyIGNvbnN1bWVyCj4gZGV2aWNlcywgYnV0IHRoZSBTQkNzIEkgaGF2ZSBo
ZXJlIGhhdmUgYWxsIHZlcnkgY3JhcHB5IGhlYXQKPiBkaXNzaXBhdGlvbi4KClN1cmUsIGl0J3Mg
bG9naWNhbCB0byBoYXZlIGRldmZyZXEgcnVubmluZyBvbiB0aGVzZSBkZXZpY2VzLgoKPiAKPj4g
QW1sb2dpYyBkdCBkb2VzIG5vdCBoYXZlIG9wZXJhdGluZy1wb2ludHMtdjIsIGFuZCBkZXZmcmVx
IHdvbid0IGJlIHN1cHBvcnRlZAo+PiBzb29uLgo+IAo+IFdoYXQncyB0aGUgcHJvYmxlbSB3aXRo
IGNvbWluZyB1cCB3aXRoIHRoZSBvcGVyYXRpbmcgcG9pbnRzPwoKQmVjYXVzZSB0aGUgYmluZGlu
Z3MgYXJlIG9wdGlvbmFsIDoKT3B0aW9uYWwgcHJvcGVydGllczoKCi0gY2xvY2tzIDogUGhhbmRs
ZSB0byBjbG9jayBmb3IgdGhlIE1hbGkgTWlkZ2FyZCBkZXZpY2UuCgotIG1hbGktc3VwcGx5IDog
UGhhbmRsZSB0byByZWd1bGF0b3IgZm9yIHRoZSBNYWxpIGRldmljZS4gUmVmZXIgdG8KICBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVndWxhdG9yL3JlZ3VsYXRvci50eHQgZm9y
IGRldGFpbHMuCgotIG9wZXJhdGluZy1wb2ludHMtdjIgOiBSZWZlciB0byBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3Mvb3BwL29wcC50eHQKICBmb3IgZGV0YWlscy4KClVubGVzcyB5
b3UgY2hhbmdlIHRoZSBiaW5kaW5ncywgaXQncyBtYW5kYXRlZCB0byBiZSBvcHRpb25hbCBieSB0
aGUgYmluZGluZ3MuCgpOZWlsCgoKPiAKPiBUaGFua3MsCj4gCj4gVG9tZXUKPiAKPj4gTmVpbAo+
Pgo+Pj4KPj4+IE9uY2UgSSdtIGFibGUgdG8gdGVzdCB0aGUgR1BVIHByb3Blcmx5IGFsb25nIHdp
dGggZnJlcXVlbmN5IHNjYWxpbmcsIEkKPj4+IHdpbGwgcGluZyB5b3Ugc28geW91IGNhbiByZXRl
c3QgYW5kIHJlc3VibWl0Lgo+Pj4KPj4+IFRoYW5rcywKPj4+Cj4+PiBUb21ldQo+Pj4KPj4+PiBB
Y3R1YWxseQo+Pj4+IFsgICAgMy4wNDYyMzddIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBjbG9jayBy
YXRlID0gNDMyMDAwMDAwCj4+Pj4gWyAgICAzLjA1MTU5M10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6
IGJ1c19jbG9jayByYXRlID0gMTAwMDAwMDAwCj4+Pj4gWyAgICAzLjA5NjAxMl0gcGFuZnJvc3Qg
MTgwMDAwMC5ncHU6IG1hbGktdDcyMCBpZCAweDcyMCBtYWpvciAweDEKPj4+PiBtaW5vciAweDEg
c3RhdHVzIDB4MAo+Pj4+IFsgICAgMy4xMDM2ODJdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBmZWF0
dXJlczogMDAwMDAwMDAsMTAzMDllNDAsCj4+Pj4gaXNzdWVzOiAwMDAwMDAwMCwyMTA1NDQwMAo+
Pj4+IFsgICAgMy4xMTE3ODldIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBGZWF0dXJlczogTDI6MHgw
NzExMDIwNgo+Pj4+IFNoYWRlcjoweDAwMDAwMDAwIFRpbGVyOjB4MDAwMDA4MDkgTWVtOjB4MSBN
TVU6MHgwMDAwMjgyMSBBUzoweGYKPj4+PiBKUzoweDcKPj4+PiBbICAgIDMuMTIzNDM1XSBwYW5m
cm9zdCAxODAwMDAwLmdwdTogc2hhZGVyX3ByZXNlbnQ9MHgzIGwyX3ByZXNlbnQ9MHgxCj4+Pj4g
WyAgICAzLjEzMDQwNV0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IEZhdGFsIGVycm9yIGR1cmluZyBk
ZXZmcmVxIGluaXQKPj4+Pgo+Pj4+IFdpdGggY29tbWl0IHJldmVydGVkCj4+Pj4gWyAgICAzLjAz
ODIzNl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGNsb2NrIHJhdGUgPSA0MzIwMDAwMDAKPj4+PiBb
ICAgIDMuMDQzNTkzXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogYnVzX2Nsb2NrIHJhdGUgPSAxMDAw
MDAwMDAKPj4+PiBbICAgIDMuMDg3OTk0XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogbWFsaS10NzIw
IGlkIDB4NzIwIG1ham9yIDB4MQo+Pj4+IG1pbm9yIDB4MSBzdGF0dXMgMHgwCj4+Pj4gWyAgICAz
LjA5NTY1OF0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGZlYXR1cmVzOiAwMDAwMDAwMCwxMDMwOWU0
MCwKPj4+PiBpc3N1ZXM6IDAwMDAwMDAwLDIxMDU0NDAwCj4+Pj4gWyAgICAzLjEwMzc2M10gcGFu
ZnJvc3QgMTgwMDAwMC5ncHU6IEZlYXR1cmVzOiBMMjoweDA3MTEwMjA2Cj4+Pj4gU2hhZGVyOjB4
MDAwMDAwMDAgVGlsZXI6MHgwMDAwMDgwOSBNZW06MHgxIE1NVToweDAwMDAyODIxIEFTOjB4Zgo+
Pj4+IEpTOjB4Nwo+Pj4+IFsgICAgMy4xMTU0MTBdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBzaGFk
ZXJfcHJlc2VudD0weDMgbDJfcHJlc2VudD0weDEKPj4+PiBbICAgIDMuMTIyNzk4XSBbZHJtXSBJ
bml0aWFsaXplZCBwYW5mcm9zdCAxLjAuMCAyMDE4MDkwOCBmb3IKPj4+PiAxODAwMDAwLmdwdSBv
biBtaW5vciAwCj4+Pj4KPj4+Pgo+Pj4+IFRoYW5rcywKPj4+PiBDbMOpbWVudAo+Pj4+Cj4+Pj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+Pj4+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwo+Pj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPj4+IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4+IGRy
aS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
