Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 828201CD771
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bWH34vRnWnVQBusYEdCjECDwrqLAfj3MUNEhp+BOQw=; b=CMaePc97xMF0EI
	/bNTQURC5RXTqZW/58PJsmnht5ITmiA18uINNFnOFW2KJdCfn+3cjwoqexYaM4Td9UiUinOvHResj
	gYc1p9YMMYzbEn5bVcb4pbRPYusu5XbK/NtUPfC+OUmN8y/qWyndIUeZJwdbd0I/9EndclyFYmu8f
	qpEkUZQoe+B0OjS3i8ADBHRto747qmpGUKDV39t33UCvDCHIrfL/lae8DWBf6iZ2Xv+ZsY8wb0WW2
	nNL0SXHpUGV8BWDz0kEcu71HX1G/RfjBy+tQVJ4YCR16n1HnwjT2gUfOSwG/KxZd5amf5zHsenDOx
	Wz3+pm8cL5t8AK/CcfuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6PB-00031P-Hu; Mon, 11 May 2020 11:15:29 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Or-0001ON-RL
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:15:13 +0000
Received: by mail-ed1-x542.google.com with SMTP id r7so7576392edo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yf6Fgwz0TBfxr37ADXmX4uJ/e/GQxDcvOu2sIk21wIk=;
 b=oIqYFLJ6taukedc9Yf2iHuympHdWdio0/TIjf0ElH6MKuu5db0Cdi3x1KgqHJFlWDi
 QNVXqenRluAi/GIJTtbliLn6jeTLsSt5S1LAokRwQYsvySLbZRGW0zD85Tt1mds7XD3N
 UA5UcK81beu2kYUYDKOC7FdfHCt+jomF6/JaGuwlEc4QEVtdIc+ZL2NF5YJX3yAuhgO4
 L7WrCLwHB5Nmo+UjbpoMUjsxwO0qgjhnjCpUCzvDEzL9Qhj9Zox1kO2liJqBjdZ5xohL
 N2ndKDOC9HOoH5GZsv7OEBfX3PHhGLoCbMaORS4lIGOvelIN35PFO+RJDDvtxToTJdDg
 5fOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yf6Fgwz0TBfxr37ADXmX4uJ/e/GQxDcvOu2sIk21wIk=;
 b=QKnjRv4KGDZK5UdFPjmcKA5Au4UWbRAtSBAAyA66TwJZVvs56HxL+5kAq9WchlTmbV
 53wWa16hR0zdimb/A3LRtQx49PyQ2zuWwv0H05lsTPEzeVnCjZVKUZTuhu3tzuttUtcZ
 t0H2varogZVAiE12N2n+MJfFQ3CnSlq9a44m0PEclXAw3jHODVMnHxA59AUaV5/mQaxX
 19KX05VHb8N3lU6YPxm5nyAS2K7QBPUj5u9F2AcRQw7zBc4YSBq0PS25bhZ+10ftxK/D
 gtrG8XIm1TbkhJqonqxl9vSrphy+s5dJX3JBK2rydTs+CvRtLPlWl4HffnGwUSoXMz0v
 xWCQ==
X-Gm-Message-State: AGi0PuYIMHOrSp72gdJKNyc8WbvtSKRuY+rhwJTU3BWgyE8clZrw+PW9
 mZbtBJVrrMHdPmKKcJ0qJu7cbROy0lq1UygT5bwWUQ==
X-Google-Smtp-Source: APiQypKZpI0Su/Nan4QydtdBoW2dC+0/pVJModGirvjBu8VI7zpyWVT+A294xWUAF4jIRGyK8v81H9B60bOLdQHD+LI=
X-Received: by 2002:aa7:cf0e:: with SMTP id a14mr12665125edy.188.1589195705213; 
 Mon, 11 May 2020 04:15:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
 <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
 <84918e7d-c933-3fa1-a61e-0615d4b3cf2c@arm.com>
 <668ea1283a6dd6b34e701972f6f71034@codeaurora.org>
 <5b0f5d77c4eec22d8048bb0ffa078345@codeaurora.org>
 <759d47de-2101-39cf-2f1c-cfefebebd548@arm.com>
 <7d343e96cf0701d91152fd14c2fdec42@codeaurora.org>
 <CAJ9a7VgEiX19ukjwakNHBHDeZJ05f5Z7pAYG9iEnpXCuuDfBqg@mail.gmail.com>
 <a4bba03d41a2b0145b3c6c19d48698eb@codeaurora.org>
 <CAJ9a7Vj4eyv1n=RxuqfV=pdBN3SDG+ShYS5J4s40KJtqOnR7vw@mail.gmail.com>
 <ae0fe2050be01cc1403c7d53a0da8cb8@codeaurora.org>
 <b8c1cc35846d425a1677c73fddf5874d@codeaurora.org>
 <eee1b9a90266eed9a9c75401f0679777@codeaurora.org>
In-Reply-To: <eee1b9a90266eed9a9c75401f0679777@codeaurora.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Mon, 11 May 2020 12:14:54 +0100
Message-ID: <CAJ9a7Vjd0XG+rAvHptAAjGtE6xRhYsPaOSC_Bf9B-w-FZFu_Qw@mail.gmail.com>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_041509_930914_08FFAE2E 
X-CRM114-Status: GOOD (  31.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SEksCgpPbiBGcmksIDggTWF5IDIwMjAgYXQgMDk6NTMsIFNhaSBQcmFrYXNoIFJhbmphbgo8c2Fp
cHJha2FzaC5yYW5qYW5AY29kZWF1cm9yYS5vcmc+IHdyb3RlOgo+Cj4gSGkgU3V6dWtpLCBNaWtl
LAo+Cj4gT24gMjAyMC0wNS0wNiAxMzowNSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IFsu
Li5dCj4KPiA+Pj4+Cj4gPj4+IE9LIC0gc29ycnkgSSByZWFkIHlvdXIgc3RhdGVtZW50IHNheWlu
ZyB0aGF0IHJlcGxpY2F0b3IxIHdhcyAwIGFmdGVyCj4gPj4+IHRoZSByZXNldCBpbiBwcm9iZSgp
LCByYXRoZXIgdGhhbiBsb29rIGF0IHRoZSBsb2dzLgo+ID4+Pgo+ID4+PiBGcm9tIHRoZSBsb2dz
IGl0IGlzIHdvcmtpbmcgYXQgdGhlIHRpbWUgcHJvYmUoKSBvY2N1cnMsIGJ1dCBieSB0aGUKPiA+
Pj4gdGltZSB3ZSBjb21lIHRvIGVuYWJsZSB0aGUgcmVwbGljYXRvciBsYXRlciwgc29tZXRoaW5n
IGhhcyByZXNldAo+ID4+PiB0aGVzZQo+ID4+PiByZWdpc3RlcnMgLyBoYXJkd2FyZSBvdXRzaWRl
IHRoZSBjb250cm9sIG9mIHRoZSByZXBsaWNhdG9yIGRyaXZlci4KPiA+Pj4KPiA+Pgo+ID4+IFll
cywgSSB3aWxsIHRyeSB0byBnZXQgc29tZSBtb3JlIGluZm9ybWF0aW9uIGZyb20gdGhlIGZpcm13
YXJlIHNpZGUgaWYKPiA+PiB0aGVyZSBpcyBhbnl0aGluZyBtZXNzaW5nIHVwLgo+ID4+Cj4gPgo+
ID4gVGhpcyB0dXJuZWQgb3V0IHRvIGJlIGEgY2xvY2svcG0gaXNzdWUuIFRvIGNvbmZpcm0sIEkg
anVzdCBtYXJrZWQgY2xrCj4gPiBhcyBjcml0aWNhbAo+ID4gc28gdGhhdCBpdCB3b24ndCBiZSBn
YXRlZCBhbmQgSSBzYXcgdGhlIHJlcGxpY2F0b3IxKHN3YW9fcmVwbGljYXRvcikKPiA+IHJlZ2lz
dGVycwo+ID4gaW50YWN0IGFmdGVyIHByb2JlLiBBbHNvIGFsdGVybmF0aXZlbHksIEkgdHJpZWQg
dG8gY29tbWVudCBvdXQKPiA+IGRpc2FibGluZyBwY2xrCj4gPiB0byBjaGVjayBpZiB0aGVyZSBp
cyBzb21ldGhpbmcgd3JvbmcgaW4gYW1iYSBwbSBhbmQgdGhpcyBrZWVwcyB0aGUKPiA+IHJlZ2lz
dGVycwo+ID4gaW50YWN0IGFzIHdlbGwuCj4gPgo+ID4gQEAgLTI4OCw3ICsyOTUsNyBAQCBzdGF0
aWMgaW50IGFtYmFfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gICAgICAgICAgICAgICAg
IHBtX3J1bnRpbWVfc2V0X3N1c3BlbmRlZChkZXYpOwo+ID4gICAgICAgICAgICAgICAgIHBtX3J1
bnRpbWVfcHV0X25vaWRsZShkZXYpOwo+ID4KPiA+IC0gICAgICAgICAgICAgICBhbWJhX3B1dF9k
aXNhYmxlX3BjbGsocGNkZXYpOwo+ID4gKyAgICAgICAgICAgICAgIC8vYW1iYV9wdXRfZGlzYWJs
ZV9wY2xrKHBjZGV2KTsKPiA+ICAgICAgICAgICAgICAgICBkZXZfcG1fZG9tYWluX2RldGFjaChk
ZXYsIHRydWUpOwo+ID4gICAgICAgICB9IHdoaWxlICgwKTsKPiA+Cj4KPiBJIGNoZWNrZWQgd2l0
aCB0aGUgZGVidWcgdGVhbSBhbmQgdGhlcmUgaXMgYSBsaW1pdGF0aW9uIHdpdGgKPiB0aGUgcmVw
bGljYXRvcihzd2FvX3JlcGxpY2F0b3IpIGluIHRoZSBBT1NTIGdyb3VwIHdoZXJlIGl0Cj4gbG9z
ZXMgdGhlIGlkZmlsdGVyIHJlZ2lzdGVyIGNvbnRleHQgd2hlbiB0aGUgY2xvY2sgaXMgZGlzYWJs
ZWQuCj4gVGhpcyBpcyBub3QganVzdCBpbiBTQzcxODAgU29DIGJ1dCBhbHNvIHJlcG9ydGVkIG9u
IHNvbWUgbGF0ZXN0Cj4gdXBjb21pbmcgUUNPTSBTb0NzIGFzIHdlbGwgYW5kIHdpbGwgbmVlZCB0
byBiZSB0YWtlbiBjYXJlIGluCj4gb3JkZXIgdG8gZW5hYmxlIGNvcmVzaWdodCBvbiB0aGVzZSBj
aGlwc2V0cy4KPgo+IEhlcmUncyB3aGF0J3MgaGFwcGVuaW5nIC0gIEFmdGVyIHRoZSByZXBsaWNh
dG9yIGlzIGluaXRpYWxpemVkLAo+IHRoZSBjbG9jayBpcyBkaXNhYmxlZCBpbiBhbWJhX3BtX3J1
bnRpbWVfc3VzcGVuZCgpIGFzIGEgcGFydCBvZgo+IHBtIHJ1bnRpbWUgd29ya3F1ZXVlIHdpdGgg
dGhlIGFzc3VtcHRpb24gdGhhdCB0aGVyZSB3aWxsIGJlIG5vCj4gbG9zcyBvZiBjb250ZXh0IGFm
dGVyIHRoZSByZXBsaWNhdG9yIGlzIGluaXRpYWxpemVkLiBCdXQgaXQgZG9lc24ndAo+IGhvbGQg
Z29vZCB3aXRoIHRoZSByZXBsaWNhdG9ycyB3aXRoIHRoZXNlIHVuZm9ydHVuYXRlIGxpbWl0YXRp
b24KPiBhbmQgdGhlIGlkZmlsdGVyIHJlZ2lzdGVyIGNvbnRleHQgaXMgbG9zdC4KPgo+IFsgICAg
NS44ODk0MDZdIGFtYmFfcG1fcnVudGltZV9zdXNwZW5kIGRldm5hbWU9NmIwNjAwMC5yZXBsaWNh
dG9yIHJldD0wCj4gWyAgICA1LjkxNDUxNl0gV29ya3F1ZXVlOiBwbSBwbV9ydW50aW1lX3dvcmsK
PiBbICAgIDUuOTE4NjQ4XSBDYWxsIHRyYWNlOgo+IFsgICAgNS45MjExODVdICBkdW1wX2JhY2t0
cmFjZSsweDAvMHgxZDAKPiBbICAgIDUuOTI0OTU4XSAgc2hvd19zdGFjaysweDJjLzB4MzgKPiBb
ICAgIDUuOTI4MzgyXSAgZHVtcF9zdGFjaysweGMwLzB4MTA0Cj4gWyAgICA1LjkzMTg5Nl0gIGFt
YmFfcG1fcnVudGltZV9zdXNwZW5kKzB4ZDgvMHhlMAo+IFsgICAgNS45MzY0NjldICBfX3JwbV9j
YWxsYmFjaysweGUwLzB4MTQwCj4gWyAgICA1Ljk0MDMzMl0gIHJwbV9jYWxsYmFjaysweDM4LzB4
OTgKPiBbICAgIDUuOTQzOTI2XSAgcnBtX3N1c3BlbmQrMHhlYy8weDYxOAo+IFsgICAgNS45NDc1
MjJdICBycG1faWRsZSsweDVjLzB4M2Y4Cj4gWyAgICA1Ljk1MDg1MV0gIHBtX3J1bnRpbWVfd29y
aysweGE4LzB4YzAKPiBbICAgIDUuOTU0NzE4XSAgcHJvY2Vzc19vbmVfd29yaysweDFmOC8weDRj
MAo+IFsgICAgNS45NTg4NDhdICB3b3JrZXJfdGhyZWFkKzB4NTAvMHg0NjgKPiBbICAgIDUuOTYy
NjIzXSAga3RocmVhZCsweDEyYy8weDE1OAo+IFsgICAgNS45NjU5NTddICByZXRfZnJvbV9mb3Jr
KzB4MTAvMHgxYwo+Cj4gVGhpcyBpcyBhIHBsYXRmb3JtL1NvQyBzcGVjaWZpYyByZXBsaWNhdG9y
IGlzc3VlLCBzbyB3ZSBjYW4gZWl0aGVyCj4gaW50cm9kdWNlIHNvbWUgRFQgcHJvcGVydHkgZm9y
IHJlcGxpY2F0b3JzIHRvIGlkZW50aWZ5IHdoaWNoIHJlcGxpY2F0b3IKPiBoYXMgdGhpcyBsaW1p
dGF0aW9uLCBjaGVjayBpbiByZXBsaWNhdG9yX2VuYWJsZSgpIGFuZCByZXNldCB0aGUKPiByZWdp
c3RlcnMKPiBvciBoYXZlIHNvbWV0aGluZyBsaWtlIGJlbG93IGRpZmYgdG8gY2hlY2sgdGhlIGlk
ZmlsdGVyIHJlZ2lzdGVycyBpbgo+IHJlcGxpY2F0b3JfZW5hYmxlKCkgYW5kIHRoZW4gcmVzZXQg
d2l0aCBjbGVhciBjb21tZW50IHNwZWNpZnlpbmcgaXTigJlzCj4gdGhlCj4gaGFyZHdhcmUgbGlt
aXRhdGlvbiBvbiBzb21lIFFDT00gU29Dcy4gUGxlYXNlIGxldCBtZSBrbm93IHlvdXIgdGhvdWdo
dHMKPiBvbgo+IHRoaXM/Cj4KCjEpIGRvZXMgdGhpcyByZXBsaWNhdG9yIHBhcnQgaGF2ZSBhIHVu
aXF1ZSBJRCB0aGF0IGRpZmZlcnMgZnJvbSB0aGUKc3RhbmRhcmQgQVJNIGRlc2lnbmVkIHJlcGxp
Y2F0b3JzPwpJZiBzbyBwZXJoYXBzIGxpbmsgdGhlIG1vZGlmaWNhdGlvbiBpbnRvIHRoaXMuIChl
dmVuIGlmIHRoZSBwYXJ0IG5vIGluClBJRFIwLzEgaXMgdGhlIHNhbWUgdGhlIFVDSSBzaG91bGQg
YmUgZGlmZmVyZW50IGZvciBhIGRpZmZlcmVudAppbXBsZW1lbnRhdGlvbikKCjIpIFdlIGhhdmUg
dXNlZCBEVCBwcm9wZXJ0aWVzIGluIHRoZSBwYXN0IC0gKGUuZy4gc2NhdHRlciBnYXRoZXIgaW4K
VE1DKSB3aGVyZSBoYXJkd2FyZSBjb21wYXRpYmlsaXR5IGlzc3VlcyBoYXZlIGltcGFjdGVkIG9u
IHRoZQpvcGVyYXRpb24gb2YgYSBjb3Jlc2lnaHQgY29tcG9uZW50LiBUaGlzIGlzIGZ1cnRoZXIg
Y29tcGxpY2F0ZWQgYnkgdGhlCmZhY3QgdGhhdCBhbiBBQ1BJIHByb3BlcnR5IHdvdWxkIGJlIG5l
ZWRlZCBhcyB3ZWxsLgoKMykgVGhlIHN5c2ZzIGFjY2VzcyB0byBGSUxURVJJRDAvMSBvbiB0aGlz
IHJlcGxpY2F0b3IgaXMgZ29pbmcgdG8gc2hvdwpkaWZmZXJlbnQgdmFsdWVzIHRoYW4gb24gYSBz
dGFuZGFyZCByZXBsaWNhdG9yICgweDAwIGluc3RlYWQgb2YgMHhGRikuCkRvZXMgdGhpcyBuZWVk
IHRvIGJlIGFkZHJlc3NlZD8KCjQgKSBBbiBhbHRlcm5hdGl2ZSBhcHByb2FjaCBjb3VsZCBiZSB0
byBtb2RlbCB0aGUgZHJpdmVyIG9uIHRoZSBFVE0gLwpDVEkgZHJpdmVycyB3aGVyZSB0aGUgcmVn
aXN0ZXIgdmFsdWVzIGFyZSBoZWxkIGluIHRoZSBkcml2ZXIgc3RydWN0dXJlCmFuZCBvbmx5IGFw
cGxpZWQgb24gZW5hYmxlIC8gZGlzYWJsZS4KClRob3VnaHRzPwoKUmVnYXJkcwoKTWlrZQoKCgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LXJlcGxp
Y2F0b3IuYwo+IGIvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1yZXBsaWNh
dG9yLmMKPiBpbmRleCBlN2RjMWMzMWQyMGQuLmE5YzAzOWM5NDRlYiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LXJlcGxpY2F0b3IuYwo+ICsrKyBi
L2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtcmVwbGljYXRvci5jCj4gQEAg
LTY4LDYgKzY4LDE3IEBAIHN0YXRpYyBpbnQgZHluYW1pY19yZXBsaWNhdG9yX2VuYWJsZShzdHJ1
Y3QKPiByZXBsaWNhdG9yX2RydmRhdGEgKmRydmRhdGEsCj4gICAgICAgICAgaW50IHJjID0gMDsK
PiAgICAgICAgICB1MzIgcmVnOwo+Cj4gKyAgICAgICAvKgo+ICsgICAgICAgICogT24gc29tZSBR
Q09NIFNvQ3Mgd2l0aCByZXBsaWNhdG9ycyBpbiBBbHdheXMtT24gZG9tYWluLAo+IGRpc2FibGlu
Zwo+ICsgICAgICAgICogY2xvY2sgd2lsbCByZXN1bHQgaW4gcmVwbGljYXRvciBsb3NpbmcgaXRz
IGNvbnRleHQuIEN1cnJlbnRseQo+ICsgICAgICAgICogYXMgYSBwYXJ0IG9mIHBtX3J1bnRpbWUg
d29ya3F1ZXVlLCBhbWJhX3BtX3J1bnRpbWVfc3VzcGVuZAo+IGRpc2FibGVzCj4gKyAgICAgICAg
KiBjbG9jayBhc3N1bWluZyB0aGUgY29udGV4dCBpcyBub3QgbG9zdCB3aGljaCBpcyBub3QgdHJ1
ZSBmb3IKPiBjYXNlcwo+ICsgICAgICAgICogd2l0aCBoYXJkd2FyZSBsaW1pdGF0aW9ucyBhcyB0
aGUgYWJvdmUuCj4gKyAgICAgICAgKi8KPiArICAgICAgIGlmICgocmVhZGxfcmVsYXhlZChkcnZk
YXRhLT5iYXNlICsgUkVQTElDQVRPUl9JREZJTFRFUjApID09IDApCj4gJiYKPiArICAgICAgICAg
ICAocmVhZGxfcmVsYXhlZChkcnZkYXRhLT5iYXNlICsgUkVQTElDQVRPUl9JREZJTFRFUjEpID09
IDApKQo+ICsgICAgICAgICAgICAgICBkeW5hbWljX3JlcGxpY2F0b3JfcmVzZXQoZHJ2ZGF0YSk7
Cj4gKwo+ICAgICAgICAgIHN3aXRjaCAob3V0cG9ydCkgewo+ICAgICAgICAgIGNhc2UgMDoKPiAg
ICAgICAgICAgICAgICAgIHJlZyA9IFJFUExJQ0FUT1JfSURGSUxURVIwOwo+Cj4KPgo+IFRoYW5r
cywKPiBTYWkKPgo+IC0tCj4gUVVBTENPTU0gSU5ESUEsIG9uIGJlaGFsZiBvZiBRdWFsY29tbSBJ
bm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBhCj4gbWVtYmVyCj4gb2YgQ29kZSBBdXJvcmEgRm9y
dW0sIGhvc3RlZCBieSBUaGUgTGludXggRm91bmRhdGlvbgoKCgotLSAKTWlrZSBMZWFjaApQcmlu
Y2lwYWwgRW5naW5lZXIsIEFSTSBMdGQuCk1hbmNoZXN0ZXIgRGVzaWduIENlbnRyZS4gVUsKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
