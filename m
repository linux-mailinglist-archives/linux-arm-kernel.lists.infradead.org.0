Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E9815211B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 20:31:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GsXEN5JNZD7FNW5UxHNSa0SQlz04sus6IzvcVMJEbE=; b=nn7Q6Cgh0/ot7O
	TKX0OHiPhTaBYtEBTB3vazKn+N+Qmz7cgYfk5i0WJtR9HDjrjbtv2vKIK/FRLw1lQmwWifpTjNkDJ
	EQ29AItBryKDVawtbNYhbtbDXI2jnrM+4prLwuZRPkge/6ssOucu82VeLcCPu/uchNAWmD1S0t1wG
	w3QlH9sC9Nn6BPQr6EG4K8oZ4moHqvj400jL8AYCMdl7htr86AJ13oQTHXoKxZ/dpCO4B5BfPBH66
	8OgKq/hb83EpE1H9T+S+ye/FvIKzA50QLBwITFyra6LcwnNqCtVVfo/5KyC8H34jK6zfWtTKoZhSH
	jJyIgTC8NPv11d89Vrag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz3uJ-0004vp-55; Tue, 04 Feb 2020 19:30:47 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz3u7-0004v8-Pd
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 19:30:37 +0000
Received: by mail-qt1-x844.google.com with SMTP id h12so15315718qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 11:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UapTR/Swn2AywRKzX/GSR/rd23O04e9h6Fgs9p2msUo=;
 b=o/eOozhV6u7iYKKKZLmW9I9eE+A50S7MONuuj7k/cxVH+dM2FEQTnarK5ohzH6rGvj
 0CgNbVzW529C0KjCozjxar2OsHiNfHWDnX2D253V7ISvOQqErGLlZMwIM+CvfvAk/ETr
 kIN2VYeX2wVepBOg7pBlY3ot6HrDTlJcZar8+SV0kQAuWlb8sPSPR88RhgMETAMeMdzY
 5OSNHeIIxUDDbrEHfmSZ+8Tu9uVC1FThvyOAscXaxa6fYkHHiOzH0GdC3vVlVJ72f7F6
 bWTdyt9dGFRZE3xFNu6izLDDJf4wFBZDkFrHyopiOWXrfO0v+0bih6u0gyOnJ/ksyvBb
 32Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UapTR/Swn2AywRKzX/GSR/rd23O04e9h6Fgs9p2msUo=;
 b=jxuYjj6yKnt97pdtZEVA5Z7KqG5AQfTHxi/I/TCHyCVKyw6srPDiURRUHbCkkrRCZS
 3Bv94QVG2z9umCUm47QICuU2mFEHJosZyL+tS0JOmnpMcR2btR2YYemQbZymljZLPkuu
 PPM6o1vs0WLlVYLyZ2i1IN8t/qQsgy+7SI9lrMJfzmB3FOw9EtrY8ang/OHrtCf+P0mU
 8ZflXD3vxfbPbFEbZAzbiquPUIsA0vUrIXTJ13B1+29Gkt9MDb3hr1ofu0xJskkqVxZV
 vJuDqWl826A8MvSkJWUQnDWNq8DhRFs9ya4wlQj6sFQFZ14NUZj8KrnwzxV170HEmc4W
 llEg==
X-Gm-Message-State: APjAAAXGajbhcqpniGJ1PxnWA/NJnv47WLfkcnrEF8YPWSGpPT65Ip8/
 uQes809ZAkz0RPmo0lw72JoP+9bAFz8+32bB3rA=
X-Google-Smtp-Source: APXvYqzynoTQgpdm/iT9SFNSo/qjNEMHfOmhlVwoEI483RemBJB+ylGnJ7qiC5IrDY/m23437c91LCoT0rOjsfwP7pU=
X-Received: by 2002:ac8:554b:: with SMTP id o11mr30093106qtr.36.1580844634484; 
 Tue, 04 Feb 2020 11:30:34 -0800 (PST)
MIME-Version: 1.0
References: <20200128021145.36774-1-palmerdabbelt@google.com>
In-Reply-To: <20200128021145.36774-1-palmerdabbelt@google.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 4 Feb 2020 20:30:23 +0100
Message-ID: <CAJ+HfNh2csyH2xZtGFXW1zwBEW4+bo_E60PWPydJkB6zZTVx3A@mail.gmail.com>
Subject: Re: arm64: bpf: Elide some moves to a0 after calls
To: Palmer Dabbelt <palmerdabbelt@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_113035_836685_77E4B183 
X-CRM114-Status: GOOD (  25.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
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

T24gVHVlLCAyOCBKYW4gMjAyMCBhdCAwMzoxNCwgUGFsbWVyIERhYmJlbHQgPHBhbG1lcmRhYmJl
bHRAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4KPiBUaGVyZSdzIGZvdXIgcGF0Y2hlcyBoZXJlLCBidXQg
b25seSBvbmUgb2YgdGhlbSBhY3R1YWxseSBkb2VzIGFueXRoaW5nLiAgVGhlCj4gZmlyc3QgcGF0
Y2ggZml4ZXMgYSBCUEYgc2VsZnRlc3RzIGJ1aWxkIGZhaWx1cmUgb24gbXkgbWFjaGluZSBhbmQg
aGFzIGFscmVhZHkKPiBiZWVuIHNlbnQgdG8gdGhlIGxpc3Qgc2VwYXJhdGVseS4gIFRoZSBuZXh0
IHRocmVlIGFyZSBqdXN0IHN0YWdlZCBzdWNoIHRoYXQKPiB0aGVyZSBhcmUgc29tZSBwYXRjaGVz
IHRoYXQgYXZvaWQgY2hhbmdpbmcgYW55IGZ1bmN0aW9uYWxpdHkgcHVsbGVkIG91dCBmcm9tCj4g
dGhlIHdob2xlIHBvaW50IG9mIHRob3NlIHJlZmFjdG9yaW5ncywgd2l0aCB0d28gY2xlYW51cHMg
YW5kIHRoZW4gdGhlIGlkZWEuCj4KPiBNYXliZSB0aGlzIGlzIGFuIG9kZCB0aGluZyB0byBzYXkg
aW4gYSBjb3ZlciBsZXR0ZXIsIGJ1dCBJJ20gbm90IGFjdHVhbGx5IHN1cmUKPiB0aGlzIHBhdGNo
IHNldCBpcyBhIGdvb2QgaWRlYS4gIFRoZSBpc3N1ZSBvZiBleHRyYSBtb3ZlcyBhZnRlciBjYWxs
cyBjYW1lIHVwIGFzCj4gSSB3YXMgcmV2aWV3aW5nIHNvbWUgdW5yZWxhdGVkIHBlcmZvcm1hbmNl
IG9wdGltaXphdGlvbnMgdG8gdGhlIFJJU0MtViBCUEYgSklULgo+IEkgZmlndXJlZCBJJ2QgdGFr
ZSBhIHdoYWNrIGF0IHBlcmZvcm1pbmcgdGhlIG9wdGltaXphdGlvbiBpbiB0aGUgY29udGV4dCBv
ZiB0aGUKPiBhcm02NCBwb3J0IGp1c3QgdG8gZ2V0IGEgYnJlYXRoIG9mIGZyZXNoIGFpciwgYW5k
IEknbSBub3QgY29udmluY2VkIEkgbGlrZSB0aGUKPiByZXN1bHRzLgo+Cj4gVGhhdCBzYWlkLCBJ
IHRoaW5rIEkgd291bGQgYWNjZXB0IHNvbWV0aGluZyBsaWtlIHRoaXMgZm9yIHRoZSBSSVNDLVYg
cG9ydAo+IGJlY2F1c2Ugd2UncmUgYWxyZWFkeSBkb2luZyBhIG11bHRpLXBhc3Mgb3B0aW1pemF0
aW9uIGZvciBzaHJpbmtpbmcgZnVuY3Rpb24KPiBhZGRyZXNzZXMgc28gaXQncyBub3QgYXMgbXVj
aCBleHRyYSBjb21wbGV4aXR5IG92ZXIgdGhlcmUuICBJZiB3ZSBkbyB0aGF0IHdlCj4gc2hvdWxk
IHByb2JhYmx5IHN0YXJ0IHB1bGluZyBzb21lIG9mIHRoaXMgY29kZSBpbnRvIHRoZSBzaGFyZWQg
QlBGIGNvbXBpbGVyLAo+IGJ1dCB3ZSdyZSBhbHNvIG9wZW5pbmcgdGhlIGRvb3JzIHRvIG1vcmUg
Y29tcGxpY2F0ZWQgQlBGIEpJVCBvcHRpbWl6YXRpb25zLgo+IEdpdmVuIHRoYXQgdGhlIEJQRiBK
SVQgYXBwZWFycyB0byBoYXZlIGJlZW4gZGVzaWduZWQgZXhwbGljaXRseSB0byBiZQo+IHNpbXBs
ZS9mYXN0IGFzIG9wcG9zZWQgdG8gcGVyZm9ybSBjb21wbGV4IG9wdGltaXphdGlvbiwgSSdtIG5v
dCBzdXJlIHRoaXMgaXMgYQo+IHNhbmUgd2F5IHRvIG1vdmUgZm9yd2FyZC4KPgoKT2J2aW91c2x5
IEkgY2FuIG9ubHkgc3BlYWsgZm9yIG15c2VsZiBhbmQgdGhlIFJJU0MtViBKSVQsIGJ1dCBnaXZl
bgp0aGF0IHdlIGFscmVhZHkgaGF2ZSBvcGVuZWQgdGhlIGRvb3IgZm9yIG1vcmUgYWR2YW5jZWQg
dHJhbnNsYXRpb25zCihicmFuY2ggcmVsYXhhdGlvbiBlLmcuKSwgSSB0aGluayB0aGF0IHRoaXMg
bWFrZXMgc2Vuc2UuIEF0IHRoZSBzYW1lCnRpbWUgd2UgZG9uJ3Qgd2FudCB0byBnbyBhbGwgSlZN
IG9uIHRoZSBKSVRzLiA6LVAKCj4gSSBmaWd1cmVkIEknZCBzZW5kIHRoZSBwYXRjaCBzZXQgb3V0
IGFzIG1vcmUgb2YgYSBxdWVzdGlvbiB0aGFuIGFueXRoaW5nIGVsc2UuCj4gU3BlY2lmaWNhbGx5
Ogo+Cj4gKiBIb3cgc2hvdWxkIEkgZ28gYWJvdXQgbWVhc3VyaW5nIHRoZSBwZXJmb3JtYW5jZSBv
ZiB0aGVzZSBzb3J0IG9mCj4gICBvcHRpbWl6YXRpb25zPyAgSSdkIGxpa2UgdG8gYmFsYW5jZSB0
aGUgdGltZSBpdCB0YWtlcyB0byBydW4gdGhlIEpJVCB3aXRoIHRoZQo+ICAgdGltZSBzcGVudCBl
eGVjdXRpbmcgdGhlIHByb2dyYW0sIGJ1dCBJIGRvbid0IGhhdmUgYW55IGZlZWwgZm9yIHdoYXQg
cmVhbCBCUEYKPiAgIHByb2dyYW1zIGxvb2sgbGlrZSBvciBoYXZlIGFueSBiZW5jaG1hcmsgc3Vp
dGUgdG8gcnVuLiAgSXMgdGhlcmUgc29tZXRoaW5nCj4gICBvdXQgdGhlcmUgdGhpcyBzaG91bGQg
YmUgYmVuY2htYXJrZWQgYWdhaW5zdD8gIChJJ2QgYWxzbyBsaWtlIHRvIGtub3cgdGhhdCB0bwo+
ICAgcnVuIHRob3NlIGJlbmNobWFya3Mgb24gdGhlIFJJU0MtViBwb3J0LikKCklmIHlvdSBydW4g
dGhlIHNlbGZ0ZXN0cyAndGVzdF9wcm9ncycgd2l0aCAtdiBpdCdsbCBtZWFzdXJlL3ByaW50IHRo
ZQpleGVjdXRpb24gdGltZSBvZiB0aGUgcHJvZ3JhbXMuIEknZCBzYXkgKm1vc3QqIEJQRiBwcm9n
cmFtIGludm9rZXMgYQpoZWxwZXIgKHZpYSBjYWxsKS4gSXQgd291bGQgYmUgaW50ZXJlc3Rpbmcg
dG8gc2VlLCBmb3Igc2F5IHRoZQpzZWxmdGVzdHMsIGhvdyBvZnRlbiB0aGUgb3B0aW1pemF0aW9u
IGNhbiBiZSBwZXJmb3JtZWQuCgo+ICogSXMgdGhpcyB0aGUgc29ydCBvZiB0aGluZyB0aGF0IG1h
a2VzIHNlbnNlIGluIGEgQlBGIEpJVD8gIEkgZ3Vlc3MgSSd2ZSBqdXN0Cj4gICByZWFsaXplZCBJ
IHR1cm5lZCAicmV2aWV3IHRoaXMgcGF0Y2giIGludG8gYSB3YXkgYmlnZ2VyIHJhYmJpdCBob2xl
IHRoYW4gSQo+ICAgcmVhbGx5IHdhbnQgdG8gZ28gZG93bi4uLgo+CgpJJ2Qgc2F5ICd5ZXMnLiBN
eSBodW5jaCwgYW5kIHRoZSB3b3JrbG9hZHMgSSd2ZSBzZWVuLCBCUEYgcHJvZ3JhbXMgYXJlCnVz
dWFsbHkgbG9hZGVkLCBhbmQgdGhlbiByZXNpZGVudCBmb3IgYSBsb25nIHRpbWUuIFNvLCB0aGUg
SklUIHRpbWUgaXMKbm90IHN1cGVyIGNyaXRpY2FsLiBUaGUgRkIvQ2lsaXVtIGZvbGtzIGNhbiBk
ZWZpbml0ZWx5IHByb3ZpZGUgYQpiZXR0ZXIgc2FtcGxlIHBvaW50LCB0aGFuIG15IGh1bmNoLiA7
LSkKCgpCasO2cm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
