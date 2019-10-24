Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D8CE3375
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QVISs+1xM5+Scwz/P8RU4xKUBszD6o1EYUV8OjUyy0=; b=fr4JjJwCYXgLz9
	so5+ZpPVH5R/K3H3tqgdZdD2Crmv/rEdPEitn47q1YG5cRhHfGooG7NkTS50KkBZJzU87/Vj0OKXY
	cGmAiLG7xOxQelAGh3Z3H+43bZJzI2mGNVchR1LYZ+O4nnkzUlzN7BLhVGwUZ1bAMA28RUkJvZSml
	a4SrjTjAK6NjOaoWxNBzzqk6JCm6K44oq0rNxHh1O48nSKfbP9xPrBgkHEVLiHsUFSPQgdhPDY/eM
	YE0K2qpsbfnx3eHoJmNySjAqyjGhv/AaoVlAFoWfs12LMzbsqq0WVGlvSiMWd3BxXCM/d9hCJkcZv
	Q+dM5AMASZU4Bc9iP9Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcpk-0001tT-0a; Thu, 24 Oct 2019 13:07:20 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcpY-0001sy-9Y
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:07:09 +0000
Received: by mail-lj1-x242.google.com with SMTP id l21so24962763lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tkk6G5aHv6FVuWM741oKE389BRFXRaj6IbXbEW6yA1Y=;
 b=n5TAheGlAHyqwUFch1gDhnr7YjBFCO1Wk56bpymnySGUNJ3WfCvdDHuboiKcMLQb03
 exkAUP0/TUfc1Jl1ZJCgn3dDFQ1DhlaF3mDeu/CLPPluUcMVLAyNVCpeNyrzBpsO4vF/
 cVUkbHTKHKfV2Bv+s14y50GtUjXSCwmI8wz5pxmcBb8eYC3ur8o5dIgFlf2ZPkzw532K
 Kep1ZzfRHm3cY/zfGx2nIBzyUjOPHKZ5oZg7ZkcA3pAr9Sl12cV03Y1cupWc1fwDsvTu
 L7g8XjIgybiySuSzD7LZXc+Bc7zrDeL+gBhlkrcxCtrsVtq5TkpYqDETZLk77gNl5CXS
 FLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tkk6G5aHv6FVuWM741oKE389BRFXRaj6IbXbEW6yA1Y=;
 b=Mq6ifgovQnnEou8PH7NdPEqRzXMmyWCbZnXIdFx7OLbWXzmGPimH0PuGo/k4QdT5Pj
 0rXLsR5T70fQA8AQom6/DHpWEg/I+rl/87PThaDOp/ZaD3zKU7Bwkk0u+IqYsIRFCY6t
 ocXH1LAM4yeRDspallky/KzTAs0BisXmtILcPottUCQ6gnGq2kc2CyzW3TS5j/EEQuos
 1Q/XgP6YBsOcb1iTDMFG5UezIWeoncmHAIGUVXRhWmrN65JwJyT2oQ/1S2N9uU0epGTV
 IqFgVEvdJhk++dF8oel7zElnlj+7E86k0hDnPTplqdtvAGEaPx5bdcO/BppxIt+EtB6q
 3j5A==
X-Gm-Message-State: APjAAAVFsAf+RAtdjer/KK/aonY3rW2FxgO2dvv4GNHzTm3TTt13qCEj
 z+jUM6tMrhQsxZZney+Tu39w/VQw1R1Cj4mN68E=
X-Google-Smtp-Source: APXvYqwKbGmB3fZE31Be7iKOqtLOx2kBt/iIU4EzatUeJ/XuUjsrMJXzEx7sWNPPbTCPFOfdQZVsoTbIcyjaEJ7/0eo=
X-Received: by 2002:a2e:970b:: with SMTP id r11mr9317177lji.56.1571922426444; 
 Thu, 24 Oct 2019 06:07:06 -0700 (PDT)
MIME-Version: 1.0
References: <20191018101248.33727-1-steven.price@arm.com>
 <20191018101248.33727-12-steven.price@arm.com>
In-Reply-To: <20191018101248.33727-12-steven.price@arm.com>
From: Zong Li <zongbox@gmail.com>
Date: Thu, 24 Oct 2019 21:06:55 +0800
Message-ID: <CA+ZOyahf-G6Mzr0eF9YA0=HTtKPk+vJpSr3wFtKf_VZHbb-HRg@mail.gmail.com>
Subject: Re: [PATCH v12 11/22] mm: pagewalk: Add p4d_entry() and pgd_entry()
To: Steven Price <steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_060708_332342_95595CFD 
X-CRM114-Status: GOOD (  21.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zongbox[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-mm@kvack.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3RldmVuIFByaWNlIDxzdGV2ZW4ucHJpY2VAYXJtLmNvbT4g5pa8IDIwMTnlubQxMOaciDE55pel
IOmAseWFrSDkuIvljYg0OjE05a+r6YGT77yaCj4KPiBwZ2RfZW50cnkoKSBhbmQgcHVkX2VudHJ5
KCkgd2VyZSByZW1vdmVkIGJ5IGNvbW1pdCAwYjFmYmZlNTAwMDZjNDEwCj4gKCJtbS9wYWdld2Fs
azogcmVtb3ZlIHBnZF9lbnRyeSgpIGFuZCBwdWRfZW50cnkoKSIpIGJlY2F1c2UgdGhlcmUgd2Vy
ZQo+IG5vIHVzZXJzLiBXZSdyZSBhYm91dCB0byBhZGQgdXNlcnMgc28gcmVpbnRyb2R1Y2UgdGhl
bSwgYWxvbmcgd2l0aAo+IHA0ZF9lbnRyeSgpIGFzIHdlIG5vdyBoYXZlIDUgbGV2ZWxzIG9mIHRh
Ymxlcy4KPgo+IE5vdGUgdGhhdCBjb21taXQgYTAwY2M3ZDlkZDkzZDY2YSAoIm1tLCB4ODY6IGFk
ZCBzdXBwb3J0IGZvcgo+IFBVRC1zaXplZCB0cmFuc3BhcmVudCBodWdlcGFnZXMiKSBhbHJlYWR5
IHJlLWFkZGVkIHB1ZF9lbnRyeSgpIGJ1dCB3aXRoCj4gZGlmZmVyZW50IHNlbWFudGljcyB0byB0
aGUgb3RoZXIgY2FsbGJhY2tzLiBTaW5jZSB0aGVyZSBoYXZlIG5ldmVyCj4gYmVlbiB1cHN0cmVh
bSB1c2VycyBvZiB0aGlzLCByZXZlcnQgdGhlIHNlbWFudGljcyBiYWNrIHRvIG1hdGNoIHRoZQo+
IG90aGVyIGNhbGxiYWNrcy4gVGhpcyBtZWFucyBwdWRfZW50cnkoKSBpcyBjYWxsZWQgZm9yIGFs
bCBlbnRyaWVzLCBub3QKPiBqdXN0IHRyYW5zcGFyZW50IGh1Z2UgcGFnZXMuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBTdGV2ZW4gUHJpY2UgPHN0ZXZlbi5wcmljZUBhcm0uY29tPgo+IC0tLQo+ICBpbmNs
dWRlL2xpbnV4L3BhZ2V3YWxrLmggfCAxOSArKysrKysrKysrKysrLS0tLS0tCj4gIG1tL3BhZ2V3
YWxrLmMgICAgICAgICAgICB8IDI3ICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+ICAyIGZp
bGVzIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvcGFnZXdhbGsuaCBiL2luY2x1ZGUvbGludXgvcGFnZXdhbGsu
aAo+IGluZGV4IGJkZGQ5NzU5YmFiOS4uMTIwMDRiMDk3ZWFlIDEwMDY0NAo+IC0tLSBhL2luY2x1
ZGUvbGludXgvcGFnZXdhbGsuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvcGFnZXdhbGsuaAo+IEBA
IC04LDE1ICs4LDE1IEBAIHN0cnVjdCBtbV93YWxrOwo+Cj4gIC8qKgo+ICAgKiBtbV93YWxrX29w
cyAtIGNhbGxiYWNrcyBmb3Igd2Fsa19wYWdlX3JhbmdlCj4gLSAqIEBwdWRfZW50cnk6ICAgICAg
ICAgaWYgc2V0LCBjYWxsZWQgZm9yIGVhY2ggbm9uLWVtcHR5IFBVRCAoMm5kLWxldmVsKSBlbnRy
eQo+IC0gKiAgICAgICAgICAgICAgICAgICAgIHRoaXMgaGFuZGxlciBzaG91bGQgb25seSBoYW5k
bGUgcHVkX3RyYW5zX2h1Z2UoKSBwdWRzLgo+IC0gKiAgICAgICAgICAgICAgICAgICAgIHRoZSBw
bWRfZW50cnkgb3IgcHRlX2VudHJ5IGNhbGxiYWNrcyB3aWxsIGJlIHVzZWQgZm9yCj4gLSAqICAg
ICAgICAgICAgICAgICAgICAgcmVndWxhciBQVURzLgo+IC0gKiBAcG1kX2VudHJ5OiAgICAgICAg
IGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQTUQgKDNyZC1sZXZlbCkgZW50cnkK
PiArICogQHBnZF9lbnRyeTogICAgICAgICBpZiBzZXQsIGNhbGxlZCBmb3IgZWFjaCBub24tZW1w
dHkgUEdEICh0b3AtbGV2ZWwpIGVudHJ5Cj4gKyAqIEBwNGRfZW50cnk6ICAgICAgICAgaWYgc2V0
LCBjYWxsZWQgZm9yIGVhY2ggbm9uLWVtcHR5IFA0RCBlbnRyeQo+ICsgKiBAcHVkX2VudHJ5OiAg
ICAgICAgIGlmIHNldCwgY2FsbGVkIGZvciBlYWNoIG5vbi1lbXB0eSBQVUQgZW50cnkKPiArICog
QHBtZF9lbnRyeTogICAgICAgICBpZiBzZXQsIGNhbGxlZCBmb3IgZWFjaCBub24tZW1wdHkgUE1E
IGVudHJ5Cj4gICAqICAgICAgICAgICAgICAgICAgICAgdGhpcyBoYW5kbGVyIGlzIHJlcXVpcmVk
IHRvIGJlIGFibGUgdG8gaGFuZGxlCj4gICAqICAgICAgICAgICAgICAgICAgICAgcG1kX3RyYW5z
X2h1Z2UoKSBwbWRzLiAgVGhleSBtYXkgc2ltcGx5IGNob29zZSB0bwo+ICAgKiAgICAgICAgICAg
ICAgICAgICAgIHNwbGl0X2h1Z2VfcGFnZSgpIGluc3RlYWQgb2YgaGFuZGxpbmcgaXQgZXhwbGlj
aXRseS4KPiAtICogQHB0ZV9lbnRyeTogICAgICAgICBpZiBzZXQsIGNhbGxlZCBmb3IgZWFjaCBu
b24tZW1wdHkgUFRFICg0dGgtbGV2ZWwpIGVudHJ5Cj4gKyAqIEBwdGVfZW50cnk6ICAgICAgICAg
aWYgc2V0LCBjYWxsZWQgZm9yIGVhY2ggbm9uLWVtcHR5IFBURSAobG93ZXN0LWxldmVsKQo+ICsg
KiAgICAgICAgICAgICAgICAgICAgIGVudHJ5Cj4gICAqIEBwdGVfaG9sZTogICAgICAgICAgaWYg
c2V0LCBjYWxsZWQgZm9yIGVhY2ggaG9sZSBhdCBhbGwgbGV2ZWxzCj4gICAqIEBodWdldGxiX2Vu
dHJ5OiAgICAgaWYgc2V0LCBjYWxsZWQgZm9yIGVhY2ggaHVnZXRsYiBlbnRyeQo+ICAgKiBAdGVz
dF93YWxrOiAgICAgICAgIGNhbGxlciBzcGVjaWZpYyBjYWxsYmFjayBmdW5jdGlvbiB0byBkZXRl
cm1pbmUgd2hldGhlcgo+IEBAIC0yNCw4ICsyNCwxNSBAQCBzdHJ1Y3QgbW1fd2FsazsKPiAgICog
ICAgICAgICAgICAgICAgICAgICAiZG8gcGFnZSB0YWJsZSB3YWxrIG92ZXIgdGhlIGN1cnJlbnQg
dm1hIiwgcmV0dXJuaW5nCj4gICAqICAgICAgICAgICAgICAgICAgICAgYSBuZWdhdGl2ZSB2YWx1
ZSBtZWFucyAiYWJvcnQgY3VycmVudCBwYWdlIHRhYmxlIHdhbGsKPiAgICogICAgICAgICAgICAg
ICAgICAgICByaWdodCBub3ciIGFuZCByZXR1cm5pbmcgMSBtZWFucyAic2tpcCB0aGUgY3VycmVu
dCB2bWEiCj4gKyAqCj4gKyAqIHA/ZF9lbnRyeSBjYWxsYmFja3MgYXJlIGNhbGxlZCBldmVuIGlm
IHRob3NlIGxldmVscyBhcmUgZm9sZGVkIG9uIGEKPiArICogcGFydGljdWxhciBhcmNoaXRlY3R1
cmUvY29uZmlndXJhdGlvbi4KPiAgICovCj4gIHN0cnVjdCBtbV93YWxrX29wcyB7Cj4gKyAgICAg
ICBpbnQgKCpwZ2RfZW50cnkpKHBnZF90ICpwZ2QsIHVuc2lnbmVkIGxvbmcgYWRkciwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBuZXh0LCBzdHJ1Y3QgbW1fd2FsayAq
d2Fsayk7Cj4gKyAgICAgICBpbnQgKCpwNGRfZW50cnkpKHA0ZF90ICpwNGQsIHVuc2lnbmVkIGxv
bmcgYWRkciwKPiArICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBuZXh0LCBz
dHJ1Y3QgbW1fd2FsayAqd2Fsayk7Cj4gICAgICAgICBpbnQgKCpwdWRfZW50cnkpKHB1ZF90ICpw
dWQsIHVuc2lnbmVkIGxvbmcgYWRkciwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWdu
ZWQgbG9uZyBuZXh0LCBzdHJ1Y3QgbW1fd2FsayAqd2Fsayk7Cj4gICAgICAgICBpbnQgKCpwbWRf
ZW50cnkpKHBtZF90ICpwbWQsIHVuc2lnbmVkIGxvbmcgYWRkciwKPiBkaWZmIC0tZ2l0IGEvbW0v
cGFnZXdhbGsuYyBiL21tL3BhZ2V3YWxrLmMKPiBpbmRleCBkNDhjMmE5ODZlYTMuLmZjNGQ5OGEz
YTVhMCAxMDA2NDQKPiAtLS0gYS9tbS9wYWdld2Fsay5jCj4gKysrIGIvbW0vcGFnZXdhbGsuYwo+
IEBAIC05MywxNSArOTMsOSBAQCBzdGF0aWMgaW50IHdhbGtfcHVkX3JhbmdlKHA0ZF90ICpwNGQs
IHVuc2lnbmVkIGxvbmcgYWRkciwgdW5zaWduZWQgbG9uZyBlbmQsCj4gICAgICAgICAgICAgICAg
IH0KPgo+ICAgICAgICAgICAgICAgICBpZiAob3BzLT5wdWRfZW50cnkpIHsKPiAtICAgICAgICAg
ICAgICAgICAgICAgICBzcGlubG9ja190ICpwdGwgPSBwdWRfdHJhbnNfaHVnZV9sb2NrKHB1ZCwg
d2Fsay0+dm1hKTsKPiAtCj4gLSAgICAgICAgICAgICAgICAgICAgICAgaWYgKHB0bCkgewo+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gb3BzLT5wdWRfZW50cnkocHVkLCBh
ZGRyLCBuZXh0LCB3YWxrKTsKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNwaW5f
dW5sb2NrKHB0bCk7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAoZXJyKQo+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+IC0gICAgICAgICAgICAgICAgICAg
ICAgIH0KPiArICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSBvcHMtPnB1ZF9lbnRyeShwdWQs
IGFkZHIsIG5leHQsIHdhbGspOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChlcnIpCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgICAgICAgICAg
fQo+Cj4gICAgICAgICAgICAgICAgIHNwbGl0X2h1Z2VfcHVkKHdhbGstPnZtYSwgcHVkLCBhZGRy
KTsKPiBAQCAtMTM1LDcgKzEyOSwxMiBAQCBzdGF0aWMgaW50IHdhbGtfcDRkX3JhbmdlKHBnZF90
ICpwZ2QsIHVuc2lnbmVkIGxvbmcgYWRkciwgdW5zaWduZWQgbG9uZyBlbmQsCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgICAgICAgICAgICAgICAgICBj
b250aW51ZTsKPiAgICAgICAgICAgICAgICAgfQo+IC0gICAgICAgICAgICAgICBpZiAob3BzLT5w
bWRfZW50cnkgfHwgb3BzLT5wdGVfZW50cnkpCj4gKyAgICAgICAgICAgICAgIGlmIChvcHMtPnA0
ZF9lbnRyeSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IG9wcy0+cDRkX2VudHJ5
KHA0ZCwgYWRkciwgbmV4dCwgd2Fsayk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKGVy
cikKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ICsgICAgICAgICAg
ICAgICB9Cj4gKyAgICAgICAgICAgICAgIGlmIChvcHMtPnB1ZF9lbnRyeSB8fCBvcHMtPnBtZF9l
bnRyeSB8fCBvcHMtPnB0ZV9lbnRyeSkKPiAgICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSB3
YWxrX3B1ZF9yYW5nZShwNGQsIGFkZHIsIG5leHQsIHdhbGspOwo+ICAgICAgICAgICAgICAgICBp
ZiAoZXJyKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+IEBAIC0xNjIsNyArMTYx
LDEzIEBAIHN0YXRpYyBpbnQgd2Fsa19wZ2RfcmFuZ2UodW5zaWduZWQgbG9uZyBhZGRyLCB1bnNp
Z25lZCBsb25nIGVuZCwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+
ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICAgICAgICAgICAgICAgICB9Cj4g
LSAgICAgICAgICAgICAgIGlmIChvcHMtPnBtZF9lbnRyeSB8fCBvcHMtPnB0ZV9lbnRyeSkKPiAr
ICAgICAgICAgICAgICAgaWYgKG9wcy0+cGdkX2VudHJ5KSB7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgZXJyID0gb3BzLT5wZ2RfZW50cnkocGdkLCBhZGRyLCBuZXh0LCB3YWxrKTsKPiArICAg
ICAgICAgICAgICAgICAgICAgICBpZiAoZXJyKQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgYnJlYWs7Cj4gKyAgICAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgaWYgKG9w
cy0+cDRkX2VudHJ5IHx8IG9wcy0+cHVkX2VudHJ5IHx8IG9wcy0+cG1kX2VudHJ5IHx8Cj4gKyAg
ICAgICAgICAgICAgICAgICBvcHMtPnB0ZV9lbnRyeSkKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBlcnIgPSB3YWxrX3A0ZF9yYW5nZShwZ2QsIGFkZHIsIG5leHQsIHdhbGspOwo+ICAgICAgICAg
ICAgICAgICBpZiAoZXJyKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+IC0tCj4g
Mi4yMC4xCj4KCkl0J3MgZ29vZCB0byBtZS4KClRlc3RlZC1ieTogWm9uZyBMaSA8em9uZy5saUBz
aWZpdmUuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
