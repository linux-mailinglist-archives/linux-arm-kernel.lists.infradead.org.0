Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05227152187
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 21:33:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BT+sGULyfMYpgEYynGt8bjPPkCH+H+T15Q/R5rF4Kq0=; b=CM+Kkz9sAj38xZ
	DsbesXwnAR01lmBHlcIBaCWNSeoSDJH6dYEs2GynLFlgc0/eWJ0/MC8BPMo8omI3Y6qcC2dxSeW74
	nD3b0zpnDMysOGhrBk/sOMjhqT2oL7Ra7jyp4w7Hnq3gyK6cZUI9sv6votWGVL8k4mHV73K9ZAtxN
	Mf/2j65gkBhi/X2xH2H/984a4cGV/DCcJIHJNy0fXY5WC1fLKQFFdeCL0adIcT4Zk1CBlkQXgXyoi
	d8Toeo0TlPFg+c6D+J5fNxhoPsnx2CuNS4Uz2lQB0gl1HLWRsgBCbs6AfBwzqu/tGhEpU8iIs/J1j
	S+ZIrk9vANFH0IrNBH4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz4t1-0007gX-1N; Tue, 04 Feb 2020 20:33:31 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz4ss-0007fg-O8
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 20:33:24 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q39so1919111pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 12:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=4Y76WudeWCG5zXmxP2Nw4YSkfa14RC4kqB6t3Lg4X9M=;
 b=UM63F9EXUlmTMTVYbwks5jV/yCvDqR4chYFapC5j4CVIQviDsobwExzj3GIkgPbRdq
 //qsfAxnZ1oWlUcd0vhb6wNDUBvcZIH6/bP0reunmdDhUB2k2bkh75y4qAbG+VQgV0dp
 59icHfEdfg/Fz/zx7NbCienbak2IANxuX84XGTEe1YxKly8z/OJi34H3uMjk7Er/HXhj
 HGGS+RLISvXMN/aPIkoJD14ACshXu4NwMxheIOKq64mjltT9GCqP/sLbG29gRD80AuJr
 DOLtHEeEaArGoQsmTFcUUHUWTxqxpsz5Bz5FEpdv9b884Ytw6QBnv7Vq18AdvXdoNP4B
 yzVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=4Y76WudeWCG5zXmxP2Nw4YSkfa14RC4kqB6t3Lg4X9M=;
 b=gM3CaagJzNJW6mKRPl1ZljJ8jQo+0fhbnNTHvOJ9YLyFcqVGfah7XUaMk2ndQpVvup
 SA639rR0m9C6uEyatpIuhA0xmSL1ytDmNJc5EkMrtwuzy7ELPvgeLfUBiXIBCroJlCsl
 LiU+blt7BR6gFdP9wKMwmHT6v8N3rMXM9J/QIb8MxmODdS4lYYRIV+9drEJQZEhgIqeL
 HbunXqEl5GTgDUMBgTpUERz0WIsvUek5WlT3SY15onDFblmR2dF9F0Vi13HvOl5RK9W4
 OZUmb7dH1x+w2qqkp9qPVMFuovY6ZvWdALEIS5BmAoXzT+I+BWvhGRT/C7uw+lRiBBDz
 l1Ow==
X-Gm-Message-State: APjAAAXLMnAr/YDcI7IRXV6qpOxC9AMIBfbl9E/pNftTtIaYAv5CjuFB
 25vdiWHSbiRgCD2OjmYN0ow=
X-Google-Smtp-Source: APXvYqzeahYF5KBgE/fLGWyNk0UEHsBipBvuQH1Ndc7tvKe17Ilwb5Vq5hgNIVuTZ9BqoQ06SyLiQQ==
X-Received: by 2002:a17:90a:a78b:: with SMTP id
 f11mr1202943pjq.8.1580848401174; 
 Tue, 04 Feb 2020 12:33:21 -0800 (PST)
Received: from localhost ([184.63.162.180])
 by smtp.gmail.com with ESMTPSA id v9sm4620636pja.26.2020.02.04.12.33.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 12:33:20 -0800 (PST)
Date: Tue, 04 Feb 2020 12:33:13 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>, 
 Palmer Dabbelt <palmerdabbelt@google.com>
Message-ID: <5e39d509c9edc_63882ad0d49345c08@john-XPS-13-9370.notmuch>
In-Reply-To: <CAJ+HfNh2csyH2xZtGFXW1zwBEW4+bo_E60PWPydJkB6zZTVx3A@mail.gmail.com>
References: <20200128021145.36774-1-palmerdabbelt@google.com>
 <CAJ+HfNh2csyH2xZtGFXW1zwBEW4+bo_E60PWPydJkB6zZTVx3A@mail.gmail.com>
Subject: Re: arm64: bpf: Elide some moves to a0 after calls
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_123322_810975_1FCEC313 
X-CRM114-Status: GOOD (  29.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [john.fastabend[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, Andrii Nakryiko <andriin@fb.com>,
 Daniel Borkmann <daniel@iogearbox.net>, kernel-team@android.com,
 zlim.lnx@gmail.com, Shuah Khan <shuah@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux@googlegroups.com, Netdev <netdev@vger.kernel.org>,
 linux-kselftest@vger.kernel.org, catalin.marinas@arm.com,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>, will@kernel.org,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmrDtnJuIFTDtnBlbCB3cm90ZToKPiBPbiBUdWUsIDI4IEphbiAyMDIwIGF0IDAzOjE0LCBQYWxt
ZXIgRGFiYmVsdCA8cGFsbWVyZGFiYmVsdEBnb29nbGUuY29tPiB3cm90ZToKPiA+Cj4gPiBUaGVy
ZSdzIGZvdXIgcGF0Y2hlcyBoZXJlLCBidXQgb25seSBvbmUgb2YgdGhlbSBhY3R1YWxseSBkb2Vz
IGFueXRoaW5nLiAgVGhlCj4gPiBmaXJzdCBwYXRjaCBmaXhlcyBhIEJQRiBzZWxmdGVzdHMgYnVp
bGQgZmFpbHVyZSBvbiBteSBtYWNoaW5lIGFuZCBoYXMgYWxyZWFkeQo+ID4gYmVlbiBzZW50IHRv
IHRoZSBsaXN0IHNlcGFyYXRlbHkuICBUaGUgbmV4dCB0aHJlZSBhcmUganVzdCBzdGFnZWQgc3Vj
aCB0aGF0Cj4gPiB0aGVyZSBhcmUgc29tZSBwYXRjaGVzIHRoYXQgYXZvaWQgY2hhbmdpbmcgYW55
IGZ1bmN0aW9uYWxpdHkgcHVsbGVkIG91dCBmcm9tCj4gPiB0aGUgd2hvbGUgcG9pbnQgb2YgdGhv
c2UgcmVmYWN0b3JpbmdzLCB3aXRoIHR3byBjbGVhbnVwcyBhbmQgdGhlbiB0aGUgaWRlYS4KPiA+
Cj4gPiBNYXliZSB0aGlzIGlzIGFuIG9kZCB0aGluZyB0byBzYXkgaW4gYSBjb3ZlciBsZXR0ZXIs
IGJ1dCBJJ20gbm90IGFjdHVhbGx5IHN1cmUKPiA+IHRoaXMgcGF0Y2ggc2V0IGlzIGEgZ29vZCBp
ZGVhLiAgVGhlIGlzc3VlIG9mIGV4dHJhIG1vdmVzIGFmdGVyIGNhbGxzIGNhbWUgdXAgYXMKPiA+
IEkgd2FzIHJldmlld2luZyBzb21lIHVucmVsYXRlZCBwZXJmb3JtYW5jZSBvcHRpbWl6YXRpb25z
IHRvIHRoZSBSSVNDLVYgQlBGIEpJVC4KPiA+IEkgZmlndXJlZCBJJ2QgdGFrZSBhIHdoYWNrIGF0
IHBlcmZvcm1pbmcgdGhlIG9wdGltaXphdGlvbiBpbiB0aGUgY29udGV4dCBvZiB0aGUKPiA+IGFy
bTY0IHBvcnQganVzdCB0byBnZXQgYSBicmVhdGggb2YgZnJlc2ggYWlyLCBhbmQgSSdtIG5vdCBj
b252aW5jZWQgSSBsaWtlIHRoZQo+ID4gcmVzdWx0cy4KPiA+Cj4gPiBUaGF0IHNhaWQsIEkgdGhp
bmsgSSB3b3VsZCBhY2NlcHQgc29tZXRoaW5nIGxpa2UgdGhpcyBmb3IgdGhlIFJJU0MtViBwb3J0
Cj4gPiBiZWNhdXNlIHdlJ3JlIGFscmVhZHkgZG9pbmcgYSBtdWx0aS1wYXNzIG9wdGltaXphdGlv
biBmb3Igc2hyaW5raW5nIGZ1bmN0aW9uCj4gPiBhZGRyZXNzZXMgc28gaXQncyBub3QgYXMgbXVj
aCBleHRyYSBjb21wbGV4aXR5IG92ZXIgdGhlcmUuICBJZiB3ZSBkbyB0aGF0IHdlCj4gPiBzaG91
bGQgcHJvYmFibHkgc3RhcnQgcHVsaW5nIHNvbWUgb2YgdGhpcyBjb2RlIGludG8gdGhlIHNoYXJl
ZCBCUEYgY29tcGlsZXIsCj4gPiBidXQgd2UncmUgYWxzbyBvcGVuaW5nIHRoZSBkb29ycyB0byBt
b3JlIGNvbXBsaWNhdGVkIEJQRiBKSVQgb3B0aW1pemF0aW9ucy4KPiA+IEdpdmVuIHRoYXQgdGhl
IEJQRiBKSVQgYXBwZWFycyB0byBoYXZlIGJlZW4gZGVzaWduZWQgZXhwbGljaXRseSB0byBiZQo+
ID4gc2ltcGxlL2Zhc3QgYXMgb3Bwb3NlZCB0byBwZXJmb3JtIGNvbXBsZXggb3B0aW1pemF0aW9u
LCBJJ20gbm90IHN1cmUgdGhpcyBpcyBhCj4gPiBzYW5lIHdheSB0byBtb3ZlIGZvcndhcmQuCj4g
Pgo+IAo+IE9idmlvdXNseSBJIGNhbiBvbmx5IHNwZWFrIGZvciBteXNlbGYgYW5kIHRoZSBSSVND
LVYgSklULCBidXQgZ2l2ZW4KPiB0aGF0IHdlIGFscmVhZHkgaGF2ZSBvcGVuZWQgdGhlIGRvb3Ig
Zm9yIG1vcmUgYWR2YW5jZWQgdHJhbnNsYXRpb25zCj4gKGJyYW5jaCByZWxheGF0aW9uIGUuZy4p
LCBJIHRoaW5rIHRoYXQgdGhpcyBtYWtlcyBzZW5zZS4gQXQgdGhlIHNhbWUKPiB0aW1lIHdlIGRv
bid0IHdhbnQgdG8gZ28gYWxsIEpWTSBvbiB0aGUgSklUcy4gOi1QCgpJJ20gbm90IGFnYWluc3Qg
aXQgYWx0aG91Z2ggaWYgd2Ugc3RhcnQgdG8gZ28gdGhpcyByb3V0ZSBJIHdvdWxkIHdhbnQgc29t
ZQp3YXkgdG8gcXVhbnRpZnkgaG93IHdlIGFyZSBpbmNyZWFzaW5nL2Rlc2NyZWFzaW5nIGxvYWQg
dGltZXMuCgo+IAo+ID4gSSBmaWd1cmVkIEknZCBzZW5kIHRoZSBwYXRjaCBzZXQgb3V0IGFzIG1v
cmUgb2YgYSBxdWVzdGlvbiB0aGFuIGFueXRoaW5nIGVsc2UuCj4gPiBTcGVjaWZpY2FsbHk6Cj4g
Pgo+ID4gKiBIb3cgc2hvdWxkIEkgZ28gYWJvdXQgbWVhc3VyaW5nIHRoZSBwZXJmb3JtYW5jZSBv
ZiB0aGVzZSBzb3J0IG9mCj4gPiAgIG9wdGltaXphdGlvbnM/ICBJJ2QgbGlrZSB0byBiYWxhbmNl
IHRoZSB0aW1lIGl0IHRha2VzIHRvIHJ1biB0aGUgSklUIHdpdGggdGhlCj4gPiAgIHRpbWUgc3Bl
bnQgZXhlY3V0aW5nIHRoZSBwcm9ncmFtLCBidXQgSSBkb24ndCBoYXZlIGFueSBmZWVsIGZvciB3
aGF0IHJlYWwgQlBGCj4gPiAgIHByb2dyYW1zIGxvb2sgbGlrZSBvciBoYXZlIGFueSBiZW5jaG1h
cmsgc3VpdGUgdG8gcnVuLiAgSXMgdGhlcmUgc29tZXRoaW5nCj4gPiAgIG91dCB0aGVyZSB0aGlz
IHNob3VsZCBiZSBiZW5jaG1hcmtlZCBhZ2FpbnN0PyAgKEknZCBhbHNvIGxpa2UgdG8ga25vdyB0
aGF0IHRvCj4gPiAgIHJ1biB0aG9zZSBiZW5jaG1hcmtzIG9uIHRoZSBSSVNDLVYgcG9ydC4pCj4g
Cj4gSWYgeW91IHJ1biB0aGUgc2VsZnRlc3RzICd0ZXN0X3Byb2dzJyB3aXRoIC12IGl0J2xsIG1l
YXN1cmUvcHJpbnQgdGhlCj4gZXhlY3V0aW9uIHRpbWUgb2YgdGhlIHByb2dyYW1zLiBJJ2Qgc2F5
ICptb3N0KiBCUEYgcHJvZ3JhbSBpbnZva2VzIGEKPiBoZWxwZXIgKHZpYSBjYWxsKS4gSXQgd291
bGQgYmUgaW50ZXJlc3RpbmcgdG8gc2VlLCBmb3Igc2F5IHRoZQo+IHNlbGZ0ZXN0cywgaG93IG9m
dGVuIHRoZSBvcHRpbWl6YXRpb24gY2FuIGJlIHBlcmZvcm1lZC4KPiAKPiA+ICogSXMgdGhpcyB0
aGUgc29ydCBvZiB0aGluZyB0aGF0IG1ha2VzIHNlbnNlIGluIGEgQlBGIEpJVD8gIEkgZ3Vlc3Mg
SSd2ZSBqdXN0Cj4gPiAgIHJlYWxpemVkIEkgdHVybmVkICJyZXZpZXcgdGhpcyBwYXRjaCIgaW50
byBhIHdheSBiaWdnZXIgcmFiYml0IGhvbGUgdGhhbiBJCj4gPiAgIHJlYWxseSB3YW50IHRvIGdv
IGRvd24uLi4KPiA+Cj4gCj4gSSdkIHNheSAneWVzJy4gTXkgaHVuY2gsIGFuZCB0aGUgd29ya2xv
YWRzIEkndmUgc2VlbiwgQlBGIHByb2dyYW1zIGFyZQo+IHVzdWFsbHkgbG9hZGVkLCBhbmQgdGhl
biByZXNpZGVudCBmb3IgYSBsb25nIHRpbWUuIFNvLCB0aGUgSklUIHRpbWUgaXMKPiBub3Qgc3Vw
ZXIgY3JpdGljYWwuIFRoZSBGQi9DaWxpdW0gZm9sa3MgY2FuIGRlZmluaXRlbHkgcHJvdmlkZSBh
Cj4gYmV0dGVyIHNhbXBsZSBwb2ludCwgdGhhbiBteSBodW5jaC4gOy0pCgpJbiBvdXIgY2FzZSB0
aGUgSklUIHRpbWUgY2FuIGJlIHJlbGV2YW50IGJlY2F1c2Ugd2UgYXJlIGVmZmVjdGl2ZWx5IGhv
bGRpbmcKdXAgYSBrdWJlcm5ldGVzIHBvZCBsb2FkIHdhaXRpbmcgZm9yIHByb2dyYW1zIHRvIGxv
YWQuIEhvd2V2ZXIsIHdlIGNhbgpwcm9iYWJseSB3b3JrLWFyb3VuZCBpdCBieSBkb2luZyBtb3Jl
IGFnZ3Jlc3NpdmUgZHluYW1pYyBsaW5raW5nIG5vdyB0aGF0CnRoaXMgaXMgc3RhcnRpbmcgdG8g
bGFuZC4KCkl0IHdvdWxkIGJlIGludGVyZXN0aW5nIHRvIGhhdmUgYSB0ZXN0IHRvIG1lYXN1cmUg
bG9hZCB0aW1lIGluIHNlbGZ0ZXN0cwpvciBzZWxmdGVzdHMvYmVuY2htYXJrLyBwZXJoYXBzLiBX
ZSBoYXZlIHNvbWUgb2YgdGhlc2Ugb3V0IG9mIHRyZWUgd2UKY291bGQgcHVzaCBpbiBJIHRoaW5r
IGlmIHRoZXJlIGlzIGludGVyZXN0LgoKPiAKPiAKPiBCasO2cm4KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
