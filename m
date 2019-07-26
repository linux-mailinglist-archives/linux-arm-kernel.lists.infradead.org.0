Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A054A76055
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 10:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUzUv7XQzHr2Nj/skzeTVa7DcCzdXdeDeNKQN+U+l04=; b=X0Y+xB9EOxJhzu
	hkv5TUdmM0uQJF8uWqtFVJCqlKO5dYaqE8m6T2xgcBzD5eFrz/hZuEHmRRwdoW8D2f2gHa71UMgsk
	cQyplRDdZZTKn6Cg/TAXWWBlny+3MknyoLdyhhfy6PD6EI1LLsPZ1Vi8DIKrLilLR4R1DT/qyVZFo
	tawmH2rUYLmwM0jd4Yhjhd6e7ngCK7Alt+jB+cu/qWLOMR86em4PjhmFwtIs4zoFogvT6EY3JbEsK
	lYq6LZxR9dkWiG09uSI6vLYcJBEd9Ud85GKt2sj0L1+FiVKUA7E8y1AOpwJRssgH+xIq2gGi8UEt2
	HV3i/X8STYY8qV5pVnAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvEV-00078E-EL; Fri, 26 Jul 2019 08:05:43 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvEE-000778-18
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 08:05:27 +0000
Received: by mail-lj1-x243.google.com with SMTP id p17so50600647ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 01:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gmIWHPU81qKM4NmobEtN8vwuP0TkPt9eT4OsJzhaUjk=;
 b=y5xEgzE5jtlcpATZyzdxzyFTpGnrCxRIL7uzSmvkqqaSjqn773+lPi7JptM/oC82B2
 ERbV/Kkph8WF/vpS0iK1HE0VExJSalljlox2f3+vos5IQ68Ky88FaraUeLkAT6RUDfUQ
 WflUBgR2r9hdpzovWsdhbDIC+11PpgdKGFgOf09LxXdcO0t94ubgDe/S5ge0F0ghX/bB
 wcPqo+munS6NtHkwWgIbjGJxSqOMfifD5YvAY5y981NrOtWmuFn3qI/ni14t4DFzksHZ
 p83f77Ch5gFRkm9/lPngDbBvSVlhEkKxoSs2aNdOgnRO4Am3tgc/9SeKJq0PjwoQxzPJ
 d5zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gmIWHPU81qKM4NmobEtN8vwuP0TkPt9eT4OsJzhaUjk=;
 b=BcBZ2SmT/OYZ1qNq6plJQjjPfMx2Ihgvnc4cfCz2AqI8tjUrd5vTPcPSg/NEOfX9f3
 fD/Jm5tPE19m1TjgxDKeYBL9L5+uJy7gOLfZ6RgaI3TMBLNyNXEbbvMz+Bv3M2bT+bu+
 NWCPoMZkiEag8bKidapFpkTfejxarRYhyJrLpWves05kHXRhdER8wyZ7H27PzCjeUmp8
 bP6lyokk3/AbJMjMOaLc6Jb/01UjLEk4Fl8XEEOJ/x5Fl/srRWKz/q0W1x9o1X62WImu
 +MNR/RaPJHeGPfbLV5RtgCuKgz62DexAaGP0OJcF9+RNys0Du8GC+SxhIJQVHq55kkX5
 ok/A==
X-Gm-Message-State: APjAAAXl7r+cxlSFavW9g53K559F5O+h5p/Nako/nU7b8/USmHsSOg+B
 Pvr3DDsRY1cFjWYVpToARBFKwg==
X-Google-Smtp-Source: APXvYqzCVMfgKRMsARKSPF+KtDsxiocfdKwq11AIhpxQkPycGioijfy6CGbrfH0vqHwXLn2vGixe4Q==
X-Received: by 2002:a2e:9a10:: with SMTP id o16mr48004571lji.95.1564128323508; 
 Fri, 26 Jul 2019 01:05:23 -0700 (PDT)
Received: from [10.44.66.8] ([212.45.67.2])
 by smtp.googlemail.com with ESMTPSA id u9sm8233986lfk.64.2019.07.26.01.05.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 01:05:22 -0700 (PDT)
Subject: Re: [RFC PATCH 09/11] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b@eucas1p2.samsung.com>
 <20190723122016.30279-10-a.swigon@partner.samsung.com>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=georgi.djakov@linaro.org; prefer-encrypt=mutual; keydata=
 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
 KEmKjLDvB0pePJkdTw==
Message-ID: <6e8b2081-2fb3-9ab8-37d1-8b5fe5fd8e11@linaro.org>
Date: Fri, 26 Jul 2019 11:05:18 +0300
MIME-Version: 1.0
In-Reply-To: <20190723122016.30279-10-a.swigon@partner.samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_010526_107963_8770A110 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sw0312.kim@samsung.com, krzk@kernel.org, inki.dae@samsung.com,
 cw00.choi@samsung.com, myungjoo.ham@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJ0dXIsCgpPbiA3LzIzLzE5IDE1OjIwLCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiBUaGlz
IHBhdGNoIGFkZHMgaW50ZXJjb25uZWN0IGZ1bmN0aW9uYWxpdHkgdG8gdGhlIGV4eW5vcy1idXMg
ZGV2ZnJlcQo+IGRyaXZlci4KPiAKPiBUaGUgU29DIHRvcG9sb2d5IGlzIGEgZ3JhcGggKG9yLCBt
b3JlIHNwZWNpZmljYWxseSwgYSB0cmVlKSBhbmQgbW9zdCBvZiBpdHMKPiBlZGdlcyBhcmUgdGFr
ZW4gZnJvbSB0aGUgZGV2ZnJlcSBwYXJlbnQtY2hpbGQgaGllcmFyY2h5IChjZi4KPiBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGV2ZnJlcS9leHlub3MtYnVzLnR4dCkuIFRoZSBw
cmV2aW91cwo+IHBhdGNoIGFkZHMgbWlzc2luZyBlZGdlcyB0byB0aGUgRFQgKHVuZGVyIHRoZSBu
YW1lICdwYXJlbnQnKS4gRHVlIHRvCj4gdW5zcGVjaWZpZWQgcmVsYXRpdmUgcHJvYmluZyBvcmRl
ciwgLUVQUk9CRV9ERUZFUiBtYXkgYmUgcHJvcGFnYXRlZCB0bwo+IGd1YXJhbnRlZSB0aGF0IGEg
Y2hpbGQgaXMgcHJvYmVkIGJlZm9yZSBpdHMgcGFyZW50Lgo+IAo+IEVhY2ggYnVzIGlzIG5vdyBh
biBpbnRlcmNvbm5lY3QgcHJvdmlkZXIgYW5kIGFuIGludGVyY29ubmVjdCBub2RlIGFzIHdlbGwK
PiAoY2YuIERvY3VtZW50YXRpb24vaW50ZXJjb25uZWN0L2ludGVyY29ubmVjdC5yc3QpLCBpLmUu
IGV2ZXJ5IGJ1cyByZWdpc3RlcnMKPiBpdHNlbGYgYXMgYSBub2RlLiBOb2RlIElEcyBhcmUgbm90
IGhhcmRjb2RlZCBidXQgcmF0aGVyIGFzc2lnbmVkIGF0Cj4gcnVudGltZSwgaW4gcHJvYmluZyBv
cmRlciAoc3ViamVjdCB0byB0aGUgYWJvdmUtbWVudGlvbmVkIGV4Y2VwdGlvbgo+IHJlZ2FyZGlu
ZyByZWxhdGl2ZSBvcmRlcikuIFRoaXMgYXBwcm9hY2ggYWxsb3dzIGZvciB1c2luZyB0aGlzIGRy
aXZlciB3aXRoCj4gdmFyaW91cyBFeHlub3MgU29Dcy4KCkkgYW0gbm90IGZhbWlsaWFyIHdpdGgg
dGhlIEV4eW5vcyBidXMgdG9wb2xvZ3ksIGJ1dCBpdCBzZWVtcyB0byBtZSB0aGF0IGl0J3Mgbm90
CnJlcHJlc2VudGVkIGNvcnJlY3RseS4gQW4gaW50ZXJjb25uZWN0IHByb3ZpZGVyIHdpdGgganVz
dCBhIHNpbmdsZSBub2RlIChwb3J0KQppcyBvZGQuIEkgd291bGQgZXhwZWN0IHRoYXQgZWFjaCBw
cm92aWRlciBjb25zaXN0cyBvZiBtdWx0aXBsZSBtYXN0ZXIgYW5kIHNsYXZlCm5vZGVzLiBUaGlz
IGRhdGEgd291bGQgYmUgdXNlZCBieSBhIGZyYW1ld29yayB0byB1bmRlcnN0YW5kIHdoYXQgYXJl
IHRoZSBsaW5rcwphbmQgaG93IHRoZSB0cmFmZmljIGZsb3dzIGJldHdlZW4gdGhlIElQIGJsb2Nr
cyBhbmQgdGhyb3VnaCB3aGljaCBidXNlcy4KCj4gVGhlIGRldmZyZXEgdGFyZ2V0KCkgY2FsbGJh
Y2sgcHJvdmlkZWQgYnkgZXh5bm9zLWJ1cyBub3cgc2VsZWN0cyBlaXRoZXIgdGhlCj4gZnJlcXVl
bmN5IGNhbGN1bGF0ZWQgYnkgdGhlIGRldmZyZXEgZ292ZXJub3Igb3IgdGhlIGZyZXF1ZW5jeSBy
ZXF1ZXN0ZWQgdmlhCj4gdGhlIGludGVyY29ubmVjdCBBUEkgZm9yIHRoZSBnaXZlbiBub2RlLCB3
aGljaGV2ZXIgaXMgaGlnaGVyLgoKVGhpcyBjb21wbGV0ZWx5IG1ha2VzIHNlbnNlLiBXZSBqdXN0
IG5lZWQgdG8gYmUgc3VyZSB0aGF0IHRoZSBpbnRlcmNvbm5lY3QKZnJhbWV3b3JrIGlzIHVzZWQg
Y29ycmVjdGx5LgoKVGhhbmtzLApHZW9yZ2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
