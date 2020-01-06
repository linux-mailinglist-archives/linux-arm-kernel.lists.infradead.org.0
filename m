Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B32131673
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:06:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZxVnqKxvHHUWRAb3wC2GO48pCBlb+C1MGlbTet4w5w=; b=QMveZ9rndmg/SF
	RKUNN6g3ZS0OMaakfeiVjzsDRFexPHmNSv0Vw4BbF0SwecCihWjESOZ2VaqCeiqKNEFeAt0TMwjin
	URZs8AM5Kz1BWYFv7e1jqMqXjHM+eupzf5cFBnZjBmqyc4tQqxAQigvhduPW64NzGM09eLmRlv/sB
	NIuaiDtilD/ySGVkaOggzxdTZRhcRdUK4aOrxV6tfJE1CrAVpfKg22MAH7xVwP9ZndeOEIZyC13dB
	ITRHFjNVqXvrt68sBQJhMvvgDsD+FZBL9lezyOCkXukDeAvs/X8Q3MSXtSl8BLY41PY+7WpNdT5AU
	thuoHbCxG/8d1COxibuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioVpU-0003Kc-MY; Mon, 06 Jan 2020 17:06:12 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioVpM-0003Jv-E3
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:06:06 +0000
Received: by mail-qk1-x741.google.com with SMTP id 21so40084105qky.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 09:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=EwZ+SLXyd+u2b7lSTZL/WS+X23E/iu51rmn5Dj8RxnU=;
 b=Q5qXUAWvBBsS0lE0zD06JyRJt1XslmfI2fUrY3Zp6Hi15hdFgGzbEb08oQ1NQSDMdX
 xwbDoXhjO48Vwc+GB1UKy3VfEHx8ZPIIQSiqgOiVf6ZcwxFCVJIQ843zXAhkSi9Y1s5X
 HAUj7LQK+6WsqGqD7nuCUN7cc20OOmh7zCFylmDfN69tEZzTEtF2E2CmfXgWo/BUAWo5
 oVqChTiF+R4imFAc/YjlYyN7sh4egG0B+g2oHmE7eKOdNx4VaTbyDcMsW8cbE5RwyIXR
 DCYcSTdUHV3C7EBjCfB2GyUuX/ESGUr9yqt9Z/f8B+5L+4csrTsyQfG6AlP9i2cvJrw5
 Wevg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=EwZ+SLXyd+u2b7lSTZL/WS+X23E/iu51rmn5Dj8RxnU=;
 b=SJEjxWXE1AUTNaQ8V8jkaBT1ejwIKPYmxhHieoCr9fPm5SVLh/8KU16pAmKgSd3SqG
 Rpb+RzjfauSxfIkB44kZqoG2Mq8OmK933fSFvV/SAO45/sedEhG8jPyy1KATnzIxEq/7
 p7r7D+yGCpAVrB+E81sIjJe5f3r/MbE/4VlGOO80V8Ve9+s3lwvyogAOkIMrY2LnFcJq
 y315ME10VbZ8J07IkYr1qQlyE07rj2zaNxY7ZW9VaqrB0LIunSUDPWkMv8NYGqgoaSzO
 5zVmgG/7qZVp1Wsd1IS846O3NBDhZF7LZfvQXCxdo+BSwLT5WFbOK2QUccxp807jK/BV
 eDyg==
X-Gm-Message-State: APjAAAU/sCTUcswze/5Juzg6lbPStkK9LNkApQfzbTgMuTFtbX1wNX2w
 UuLtOxEoAwIV4lC0YaFFyMWjTQ==
X-Google-Smtp-Source: APXvYqwJxhahEu6YInys2SPBQzG2qgwGLQ9TdDO43Oo052eW8PdglS1AO9SL6TIVmGaJT+LGtb0lyg==
X-Received: by 2002:a05:620a:78f:: with SMTP id
 15mr9230475qka.295.1578330361188; 
 Mon, 06 Jan 2020 09:06:01 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id w25sm17147166qts.91.2020.01.06.09.06.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 Jan 2020 09:06:00 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: "ftrace: Rework event_create_dir()" triggers boot error messages
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20191218233101.73044ce3@rorschach.local.home>
Date: Mon, 6 Jan 2020 12:05:58 -0500
Message-Id: <3F343134-63CB-4D99-97AD-F512B8760C94@lca.pw>
References: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
 <20191218233101.73044ce3@rorschach.local.home>
To: Steven Rostedt <rostedt@goodmis.org>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_090604_480134_62B9FC74 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
IERvZXMgdGhlCj4gZm9sbG93aW5nIHBhdGNoIGZpeCBpdD8KPiAKPiAobm90ZSwgSSBwcmVmZXIg
InJldCIgYW5kICJpIiBvbiBkaWZmZXJlbnQgbGluZXMgYW55d2F5KQo+IAo+IC0tIFN0ZXZlCj4g
Cj4gZGlmZiAtLWdpdCBhL2tlcm5lbC90cmFjZS90cmFjZV9zeXNjYWxscy5jIGIva2VybmVsL3Ry
YWNlL3RyYWNlX3N5c2NhbGxzLmMKPiBpbmRleCA1MzkzNTI1OWY3MDEuLmFiYjcwYzcxZmU2MCAx
MDA2NDQKPiAtLS0gYS9rZXJuZWwvdHJhY2UvdHJhY2Vfc3lzY2FsbHMuYwo+ICsrKyBiL2tlcm5l
bC90cmFjZS90cmFjZV9zeXNjYWxscy5jCj4gQEAgLTI2OSw3ICsyNjksOCBAQCBzdGF0aWMgaW50
IF9faW5pdCBzeXNjYWxsX2VudGVyX2RlZmluZV9maWVsZHMoc3RydWN0IHRyYWNlX2V2ZW50X2Nh
bGwgKmNhbGwpCj4gCXN0cnVjdCBzeXNjYWxsX3RyYWNlX2VudGVyIHRyYWNlOwo+IAlzdHJ1Y3Qg
c3lzY2FsbF9tZXRhZGF0YSAqbWV0YSA9IGNhbGwtPmRhdGE7Cj4gCWludCBvZmZzZXQgPSBvZmZz
ZXRvZih0eXBlb2YodHJhY2UpLCBhcmdzKTsKPiAtCWludCByZXQsIGk7Cj4gKwlpbnQgcmV0ID0g
MDsKPiArCWludCBpOwo+IAo+IAlmb3IgKGkgPSAwOyBpIDwgbWV0YS0+bmJfYXJnczsgaSsrKSB7
Cj4gCQlyZXQgPSB0cmFjZV9kZWZpbmVfZmllbGQoY2FsbCwgbWV0YS0+dHlwZXNbaV0sCgpTdGV2
ZSwgdGhvc2UgZXJyb3JzIGFyZSBzdGlsbCB0aGVyZSBpbiB0b2RheeKAmXMgbGludXgtbmV4dC4g
SXMgdGhpcyBwYXRjaCBvbiB0aGUgd2F5IHRvIHRoZSBsaW51eC1uZXh0PwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
