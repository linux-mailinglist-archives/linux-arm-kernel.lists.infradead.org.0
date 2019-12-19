Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A80125B38
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 07:06:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwZm6m/wA/lmHqoQuZl/6RtUwJZsd65wUHhwVTEs79c=; b=eQ62m8ngVz4033
	u1g+efTux0eFeuTIlRm86/P6svia/U2Dura6gBWFtZ/VCzmbjkc4z2DNWg7HSPwgStWGkzJ3rPX4n
	exIWICbkIUiMzcUzTZocZzgTlHxZLTPhsGWaCrZ85knJkMzGd8Pgg/7efwLUIzprEyXwkTFb0bWo+
	sQALZlQAKnpDB+rA7Vemhzx+AP3vsKZoEJUupGRDMUCvTdDfIhPT8iA2XFDK5UY/2sH0KTQOFqETB
	ALwLYx3K5wW2j2rdh3DxdzD2CnkjCkCW7aiOIv4y5Kkr52j1kDP88ZWGPDeP0s7dfgBpBRfuYwASq
	9YWWCQQjegH7oqo99djQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihowv-0005Lp-Q3; Thu, 19 Dec 2019 06:06:13 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihown-0005LE-1b
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 06:06:06 +0000
Received: by mail-qk1-x742.google.com with SMTP id k6so3738042qki.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 22:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hh8KccvDtoxQ5iuVrGchqXmublC0voHoq882to+xc8w=;
 b=R53bfuj7F9qGYPrLECK10byImpR4yK7ldvvpoKHT/U0eDHOLw1wcoFq8sEaN7V8dMv
 RTI4OvZHrc3f4vy7R3joPd+QbgejX5prA8699eMCN0SdjkV+ay4zyheL8hzyrR8j0Hz/
 FSbhiR/D9Lrz4TPHD8PeiGOFQ05PJAOuxG6io4ksDgI2GAlOBrgWNi2fNQDz/0dj13ry
 xOkX2z5MAPFOPxMcQ00gmYTQjXZzcFH/t4p8AlNidMVPXMdT+a607AbRmiRnMrMkMMp1
 PtBjaGGkRJkB+xuc08WFU+jIhx9Qq1CE8ukBh1PQfVnawhwdWOVj8zlTfERE9/nPXNUG
 lVzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hh8KccvDtoxQ5iuVrGchqXmublC0voHoq882to+xc8w=;
 b=fKyw0zuPFACTzd2wcd9yGL/z1zwtwvOSSqqijOPwWtwgOWNByoLPKi55C+rbZUfBpM
 vNeZImTuv39jjgpVHptNFaSL0R0JEWv6I743PPoJgciec22YKRS9u+RDYS3gQHO5No6l
 diBmKHxUXNz74nVKSqaqTmAG4vPbgQ6lFjuKAscuNLE5PcFe8VCRXZr4FmlNlNmsXE9C
 8Sh3sNRU+seXaN2kzFw2EDrHCUMmSDUPyc29aHlY4TVdCWNz7qZTHrZT3Tck5ZJeM8yy
 HAk2K/RMI4ST4AQRf915jkhzfS+x0c+PTvHJJRjj2pvbHutVissB0mXTB6TEozibBZgg
 Z1Ww==
X-Gm-Message-State: APjAAAVtaQQN6K9NvRIMW12ub36iOaf/G87Aratfa6Orw40YmlPffdkr
 779X/2aI/Vda7J+IynDYPY5TWmjaTVw=
X-Google-Smtp-Source: APXvYqx76XeZmAMheUFNFZOiIvYT9bf+9MmsIr9SMAoK2rMgm3C8UxDFIykW+8QWnhd7emRgbJAyHw==
X-Received: by 2002:a37:7c6:: with SMTP id 189mr6850205qkh.408.1576735563755; 
 Wed, 18 Dec 2019 22:06:03 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id 4sm1453127qki.51.2019.12.18.22.06.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Dec 2019 22:06:03 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: "ftrace: Rework event_create_dir()" triggers boot error messages
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20191218233101.73044ce3@rorschach.local.home>
Date: Thu, 19 Dec 2019 01:06:02 -0500
Message-Id: <7CC42C4D-8DD3-48E5-BB68-752BAB98DB56@lca.pw>
References: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
 <20191218233101.73044ce3@rorschach.local.home>
To: Steven Rostedt <rostedt@goodmis.org>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_220605_114750_F0B2C2A7 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux@googlegroups.com, Catalin Marinas <catalin.marinas@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIERlYyAxOCwgMjAxOSwgYXQgMTE6MzEgUE0sIFN0ZXZlbiBSb3N0ZWR0IDxyb3N0ZWR0
QGdvb2RtaXMub3JnPiB3cm90ZToKPiAKPiBPbiBXZWQsIDE4IERlYyAyMDE5IDIyOjU4OjIzIC0w
NTAwCj4gUWlhbiBDYWkgPGNhaUBsY2EucHc+IHdyb3RlOgo+IAo+PiBUaGUgbGludXgtbmV4dCBj
b21taXQgImZ0cmFjZTogUmV3b3JrIGV2ZW50X2NyZWF0ZV9kaXIoKeKAnSBbMV0gdHJpZ2dlcnMg
Ym9vdCB3YXJuaW5ncwo+PiBmb3IgQ2xhbmctYnVpbGQgKENsYW5nIHZlcnNpb24gOC4wLjEpIGtl
cm5lbHMgKHJlcHJvZHVjZWQgb24gYm90aCBhcm02NCBhbmQgcG93ZXJwYykuCj4+IFJldmVydGVk
IGl0ICh3aXRoIHRyaXZpYWwgY29uZmxpY3QgZml4ZXMpIG9uIHRoZSB0b3Agb2YgdG9kYXnigJlz
IGxpbnV4LW5leHQgZml4ZWQgdGhlIGlzc3VlLgo+PiAKPj4gY29uZmlnczoKPj4gaHR0cHM6Ly9y
YXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2NhaWxjYS9saW51eC1tbS9tYXN0ZXIvYXJtNjQuY29u
ZmlnCj4+IGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9jYWlsY2EvbGludXgtbW0v
bWFzdGVyL3Bvd2VycGMuY29uZmlnCj4+IAo+PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGttbC8yMDE5MTExMTEzMjQ1OC4zNDI5Nzk5MTRAaW5mcmFkZWFkLm9yZy8KPj4gCj4+IFsgIDEx
NS43OTkzMjddWyAgICBUMV0gUmVnaXN0ZXJlZCBlZml2YXJzIG9wZXJhdGlvbnMKPj4gWyAgMTE1
Ljg0OTc3MF1bICAgIFQxXSBjbG9ja3NvdXJjZTogU3dpdGNoZWQgdG8gY2xvY2tzb3VyY2UgYXJj
aF9zeXNfY291bnRlcgo+PiBbICAxMTUuOTAxMTQ1XVsgICAgVDFdIENvdWxkIG5vdCBpbml0aWFs
aXplIHRyYWNlIHBvaW50IGV2ZW50cy9zeXNfZW50ZXJfcnRfc2lncmV0dXJuCj4+IFsgIDExNS45
MDg4NTRdWyAgICBUMV0gQ291bGQgbm90IGNyZWF0ZSBkaXJlY3RvcnkgZm9yIGV2ZW50IHN5c19l
bnRlcl9ydF9zaWdyZXR1cm4KPj4gWyAgMTE1Ljk5ODk0OV1bICAgIFQxXSBDb3VsZCBub3QgaW5p
dGlhbGl6ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVyX3Jlc3RhcnRfc3lzY2FsbAo+PiBb
ICAxMTYuMDA2ODAyXVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVu
dCBzeXNfZW50ZXJfcmVzdGFydF9zeXNjYWxsCj4+IFsgIDExNi4wNjI3MDJdWyAgICBUMV0gQ291
bGQgbm90IGluaXRpYWxpemUgdHJhY2UgcG9pbnQgZXZlbnRzL3N5c19lbnRlcl9nZXRwaWQKPj4g
WyAgMTE2LjA2OTgyOF1bICAgIFQxXSBDb3VsZCBub3QgY3JlYXRlIGRpcmVjdG9yeSBmb3IgZXZl
bnQgc3lzX2VudGVyX2dldHBpZAo+PiBbICAxMTYuMDc4MDU4XVsgICAgVDFdIENvdWxkIG5vdCBp
bml0aWFsaXplIHRyYWNlIHBvaW50IGV2ZW50cy9zeXNfZW50ZXJfZ2V0dGlkCj4+IFsgIDExNi4w
ODUxODFdWyAgICBUMV0gQ291bGQgbm90IGNyZWF0ZSBkaXJlY3RvcnkgZm9yIGV2ZW50IHN5c19l
bnRlcl9nZXR0aWQKPj4gWyAgMTE2LjA5MzQwNV1bICAgIFQxXSBDb3VsZCBub3QgaW5pdGlhbGl6
ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVyX2dldHBwaWQKPj4gWyAgMTE2LjEwMDYxMl1b
ICAgIFQxXSBDb3VsZCBub3QgY3JlYXRlIGRpcmVjdG9yeSBmb3IgZXZlbnQgc3lzX2VudGVyX2dl
dHBwaWQKPj4gWyAgMTE2LjEwODk4OV1bICAgIFQxXSBDb3VsZCBub3QgaW5pdGlhbGl6ZSB0cmFj
ZSBwb2ludCBldmVudHMvc3lzX2VudGVyX2dldHVpZAo+PiBbICAxMTYuMTE2MDU4XVsgICAgVDFd
IENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVudCBzeXNfZW50ZXJfZ2V0dWlkCj4+
IFsgIDExNi4xMjQyNTBdWyAgICBUMV0gQ291bGQgbm90IGluaXRpYWxpemUgdHJhY2UgcG9pbnQg
ZXZlbnRzL3N5c19lbnRlcl9nZXRldWlkCj4+IFsgIDExNi4xMzE0NTddWyAgICBUMV0gQ291bGQg
bm90IGNyZWF0ZSBkaXJlY3RvcnkgZm9yIGV2ZW50IHN5c19lbnRlcl9nZXRldWlkCj4+IFsgIDEx
Ni4xMzk4NDBdWyAgICBUMV0gQ291bGQgbm90IGluaXRpYWxpemUgdHJhY2UgcG9pbnQgZXZlbnRz
L3N5c19lbnRlcl9nZXRnaWQKPj4gWyAgMTE2LjE0NjkwOF1bICAgIFQxXSBDb3VsZCBub3QgY3Jl
YXRlIGRpcmVjdG9yeSBmb3IgZXZlbnQgc3lzX2VudGVyX2dldGdpZAo+PiBbICAxMTYuMTU1MTYz
XVsgICAgVDFdIENvdWxkIG5vdCBpbml0aWFsaXplIHRyYWNlIHBvaW50IGV2ZW50cy9zeXNfZW50
ZXJfZ2V0ZWdpZAo+PiBbICAxMTYuMTYyMzcwXVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGly
ZWN0b3J5IGZvciBldmVudCBzeXNfZW50ZXJfZ2V0ZWdpZAo+PiBbICAxMTYuMTc4MDE1XVsgICAg
VDFdIENvdWxkIG5vdCBpbml0aWFsaXplIHRyYWNlIHBvaW50IGV2ZW50cy9zeXNfZW50ZXJfc2V0
c2lkCj4+IFsgIDExNi4xODUxMzhdWyAgICBUMV0gQ291bGQgbm90IGNyZWF0ZSBkaXJlY3Rvcnkg
Zm9yIGV2ZW50IHN5c19lbnRlcl9zZXRzaWQKPj4gWyAgMTE2LjI2OTMwN11bICAgIFQxXSBDb3Vs
ZCBub3QgaW5pdGlhbGl6ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVyX3NjaGVkX3lpZWxk
Cj4+IFsgIDExNi4yNzY4MTFdWyAgICBUMV0gQ291bGQgbm90IGNyZWF0ZSBkaXJlY3RvcnkgZm9y
IGV2ZW50IHN5c19lbnRlcl9zY2hlZF95aWVsZAo+PiBbICAxMTYuNTI3NjUyXVsgICAgVDFdIENv
dWxkIG5vdCBpbml0aWFsaXplIHRyYWNlIHBvaW50IGV2ZW50cy9zeXNfZW50ZXJfbXVubG9ja2Fs
bAo+PiBbICAxMTYuNTM1MTI2XVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZv
ciBldmVudCBzeXNfZW50ZXJfbXVubG9ja2FsbAo+PiBbICAxMTYuNjIyMDk2XVsgICAgVDFdIENv
dWxkIG5vdCBpbml0aWFsaXplIHRyYWNlIHBvaW50IGV2ZW50cy9zeXNfZW50ZXJfdmhhbmd1cAo+
PiBbICAxMTYuNjI5MzA3XVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBl
dmVudCBzeXNfZW50ZXJfdmhhbmd1cAo+PiBbICAxMTYuNzgzODY3XVsgICAgVDFdIENvdWxkIG5v
dCBpbml0aWFsaXplIHRyYWNlIHBvaW50IGV2ZW50cy9zeXNfZW50ZXJfc3luYwo+PiBbICAxMTYu
NzkwODE5XVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVudCBzeXNf
ZW50ZXJfc3luYwo+PiBbICAxMTcuNzIzNDAyXVsgICAgVDFdIHBucDogUG5QIEFDUEkgaW5pdAo+
IAo+IEkgbm90aWNlZCB0aGF0IGFsbCBvZiB0aGUgYWJvdmUgaGF2ZSB6ZXJvIHBhcmFtZXRlcnMu
IERvZXMgdGhlCj4gZm9sbG93aW5nIHBhdGNoIGZpeCBpdD8KClllcywgaXQgd29ya3MuCgo+IAo+
IChub3RlLCBJIHByZWZlciAicmV0IiBhbmQgImkiIG9uIGRpZmZlcmVudCBsaW5lcyBhbnl3YXkp
Cj4gCj4gLS0gU3RldmUKPiAKPiBkaWZmIC0tZ2l0IGEva2VybmVsL3RyYWNlL3RyYWNlX3N5c2Nh
bGxzLmMgYi9rZXJuZWwvdHJhY2UvdHJhY2Vfc3lzY2FsbHMuYwo+IGluZGV4IDUzOTM1MjU5Zjcw
MS4uYWJiNzBjNzFmZTYwIDEwMDY0NAo+IC0tLSBhL2tlcm5lbC90cmFjZS90cmFjZV9zeXNjYWxs
cy5jCj4gKysrIGIva2VybmVsL3RyYWNlL3RyYWNlX3N5c2NhbGxzLmMKPiBAQCAtMjY5LDcgKzI2
OSw4IEBAIHN0YXRpYyBpbnQgX19pbml0IHN5c2NhbGxfZW50ZXJfZGVmaW5lX2ZpZWxkcyhzdHJ1
Y3QgdHJhY2VfZXZlbnRfY2FsbCAqY2FsbCkKPiAJc3RydWN0IHN5c2NhbGxfdHJhY2VfZW50ZXIg
dHJhY2U7Cj4gCXN0cnVjdCBzeXNjYWxsX21ldGFkYXRhICptZXRhID0gY2FsbC0+ZGF0YTsKPiAJ
aW50IG9mZnNldCA9IG9mZnNldG9mKHR5cGVvZih0cmFjZSksIGFyZ3MpOwo+IC0JaW50IHJldCwg
aTsKPiArCWludCByZXQgPSAwOwo+ICsJaW50IGk7Cj4gCj4gCWZvciAoaSA9IDA7IGkgPCBtZXRh
LT5uYl9hcmdzOyBpKyspIHsKPiAJCXJldCA9IHRyYWNlX2RlZmluZV9maWVsZChjYWxsLCBtZXRh
LT50eXBlc1tpXSwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
