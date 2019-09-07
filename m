Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4677AC84B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePPg6Frjj/aySQzLDSO9yKIxHjRRovQXIQg6FIVqNIU=; b=bowWqQzJHN7OBt
	NrBOpZwmZ3mCRMA4+OnMmPgiIqcpQzpABmpqPOKgCs3HBsPJq14uNr6iZorbNxLGih+WFOCxidLlh
	uu6AIKy6ELwy74iXN3XW9txvUqRkmXUgy2lYtcn++sJf/DyX80/N5+AZ3f5iXTh2XJNi2D0wpMo+c
	CVGjhJrDHTDjiOeTj1ZGS1aPbKBisqGNHxZd08nJgs7Ct18VTjRSmw7Yl56POciO7bEsaoqsS5CIs
	2iBr3STyov/WpJ1Gix78q9EXb6/D7hNmVDjw6RGc7bAnP2HfKNzdCxbhpMD6UjSW4ISvtZtXilbeC
	Z0/OyBHpuGMAeE2CsH8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6ejS-0006KD-Uq; Sat, 07 Sep 2019 17:42:43 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6ejE-0006Jq-3N
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:42:29 +0000
Received: by mail-pl1-x642.google.com with SMTP id m9so4672510pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amacapital-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=zOxFxXxkeAXBLA4hmpQx5p2K1SwU8yRrMWsF/vzne4c=;
 b=Ahrc72PGzKNYWoLbwpqpkb4sblxxhLeem6jebRPHiC48yikyu8YdaM5Oje1cRKpGrE
 B1aFxjVmVluxNvScD9M4WSgd+3044EW5n5U/PFuuVmQG4Hbymvgt22zE94vbhcs9R725
 YmVhBFQvI6AY2jzBjl65iE1N91bXW5n21nVFyaplmtDp+2SiGPjY7BdJbCgTW6FOdyps
 WzpWqeuBT7oibyk4x8aGykU8dzYGBQ3SiApw6VGFkEO8SPi7/aZ892rQXq+Pb+3b5ZeC
 PbzZzd392k2TpO4uq92p9v5vThdZeJX5HF5wKk1rRbCSaXdBoZUNJaEVn/U3I0P9Ilwr
 6irw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=zOxFxXxkeAXBLA4hmpQx5p2K1SwU8yRrMWsF/vzne4c=;
 b=WgpRGbC6Q+m6FSvsZJwS3JhUyC8QxHzSRqPOx41G3g2vm9+dLd+cBR0JX0EuUSr7/Z
 gO7vVFmeK1HLcJDRnFvtXCKuhIxvhlD5BN63EkN4ZLF0Pl7lEQ8jv3667IoFTHhZjvJL
 AmpDRp5lt7DBRtWkuEB8Df1ZrR0ysUKsZ6Q5sjpv75iwMhwlToWvT83rVrjFRKWHoHaf
 hlGTteb56P3cEzAlxoLy6hA4B6+Gc/MnSgeSXiduReiHs5QKkpDaED4VqGGGPNLi4Z9y
 IqDsoZCoWq5m3h+aOkhOI4wRKFZrFh5hnxLiEiEb25Q9DQ/LpqUgW6TLS/JrrezHFOnr
 ONqg==
X-Gm-Message-State: APjAAAWOs6UnrMbwe98hGZFIee792yAkWyV21j+IerlkQq34ii54BjuB
 WB+kJFlbOD14wLF74DCHG6yAWg==
X-Google-Smtp-Source: APXvYqy9Whfn7uTg3BOXXtKo+Xb13mslF8Px0gcix7JC2yC4OfYP4K4dJzWw76A+9fC6aflAwbUnzg==
X-Received: by 2002:a17:902:421:: with SMTP id
 30mr16087280ple.105.1567878146356; 
 Sat, 07 Sep 2019 10:42:26 -0700 (PDT)
Received: from ?IPv6:2600:100f:b121:da37:bc66:d4de:83c7:e0cd?
 ([2600:100f:b121:da37:bc66:d4de:83c7:e0cd])
 by smtp.gmail.com with ESMTPSA id h11sm8785567pgv.5.2019.09.07.10.42.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 10:42:25 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v12 11/12] open: openat2(2) syscall
From: Andy Lutomirski <luto@amacapital.net>
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <CAHk-=whZx97Nm-gUK0ppofj2RA2LLz2vmaDUTKSSV-+yYB9q_Q@mail.gmail.com>
Date: Sat, 7 Sep 2019 10:42:23 -0700
Message-Id: <C81D6D29-F6BF-48E6-A15E-3ABCB2C992E5@amacapital.net>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-12-cyphar@cyphar.com>
 <7236f382d72130f2afbbe8940e72cc67e5c6dce0.camel@kernel.org>
 <CAHk-=whZx97Nm-gUK0ppofj2RA2LLz2vmaDUTKSSV-+yYB9q_Q@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_104228_194166_15C49581 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Jiri Olsa <jolsa@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Aleksa Sarai <cyphar@cyphar.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, alpha <linux-alpha@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Linux Containers <containers@lists.linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIFNlcCA3LCAyMDE5LCBhdCA5OjU4IEFNLCBMaW51cyBUb3J2YWxkcyA8dG9ydmFsZHNA
bGludXgtZm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+IAo+PiBPbiBTYXQsIFNlcCA3LCAyMDE5IGF0
IDU6NDAgQU0gSmVmZiBMYXl0b24gPGpsYXl0b25Aa2VybmVsLm9yZz4gd3JvdGU6Cj4+IAo+PiBB
ZnRlciB0aGlua2luZyBhYm91dCB0aGlzIGEgYml0LCBJIHdvbmRlciBpZiB3ZSBtaWdodCBiZSBi
ZXR0ZXIgc2VydmVkCj4+IHdpdGggYSBuZXcgc2V0IG9mIE9BMl8qIGZsYWdzIGluc3RlYWQgb2Yg
cmVwdXJwb3NpbmcgdGhlIE9fKiBmbGFncz8KPiAKPiBJJ2QgaGF0ZSB0byBoYXZlIHlldCBfYW5v
dGhlcl8gc2V0IG9mIHRyYW5zbGF0aW9uIGZ1bmN0aW9ucywgYW5kCj4gYW5vdGhlciBjaGFuY2Ug
b2YgcGVvcGxlIGp1c3QgZ2V0dGluZyBpdCB3cm9uZyBlaXRoZXIgaW4gdXNlciBzcGFjZSBvcgo+
IHRoZSBrZXJuZWwuCj4gCj4gU28gbm8uIExldCdzIG5vdCBtYWtlIGFub3RoZXIgc2V0IG9mIGZs
YWdzIHRoYXQgaGFzIG5vIHNhbmUgd2F5IHRvCj4gaGF2ZSB0eXBlLXNhZmV0eSB0byBhdm9pZCBt
b3JlIGNvbmZ1c2lvbi4KPiAKPiBUaGUgbmV3IGZsYWdzIHRoYXQgX29ubHlfIHdvcmsgd2l0aCBv
cGVuYXQyKCkgbWlnaHQgYmUgbmFtZWQgd2l0aCBhCj4gcHJlZml4L3N1ZmZpeCB0byBtYXJrIHRo
YXQsIGJ1dCBJJ20gbm90IHN1cmUgaXQncyBhIGh1Z2UgZGVhbC4KPiAKPiAgICAgICAgICAgIAoK
SSBhZ3JlZSB3aXRoIHRoZSBwaGlsb3NvcGh5LCBidXQgSSB0aGluayBpdCBkb2VzbuKAmXQgYXBw
bHkgaW4gdGhpcyBjYXNlLiAgSGVyZSBhcmUgdGhlIGZsYWdzOgoKT19SRE9OTFksIE9fV1JPTkxZ
LCBPX1JEV1I6IG5vdCBldmVuIGEgcHJvcGVyIGJpdG1hc2suIFRoZSBrZXJuZWwgYWxyZWFkeSBo
YXMgdGhlIEZNT0RFXyBiaXRzIHRvIG1ha2UgdGhpcyBtYWtlIHNlbnNlLiBIb3cgYWJvdXQgd2Ug
bWFrZSB0aGUgb3BlbmF0MiBwZXJtaXNzaW9uIGJpdHMgY29uc2lzdGVudCB3aXRoIHRoZSBpbnRl
cm5hbCByZXByZXNlbnRhdGlvbiBhbmQgbGV0IHRoZSBPXyBwZXJtaXNzaW9uIGJpdHMgcmVtYWlu
IGFzIGFuIGF3ZnVsIHRyYW5zbGF0aW9uLiAgVGhlIGtlcm5lbCBhbHJlYWR5IHRyYW5zbGF0ZXMg
bGlrZSB0aGlzLCBhbmQgaXQgYWxyZWFkeSBzdWNrcy4KCk9fQ1JFQVQsIE9fVE1QRklMRSwgT19O
T0NUVFksIE9fVFJVTkM6IG5vdCBtb2RlcyBvbiB0aGUgZmQgYXQgYWxsLiAgVGhlc2UgYWZmZWN0
IHRoZSBtZWFuaW5nIG9mIG9wZW4oKS4gIEhlY2ssIGZvciBvcGVuYXQyLCBOT0NUVFkgc2hvdWxk
IGJlIHRoaXMgZGVmYXVsdC4KCk9fRVhDTDogaG9wZWxlc3NseSBvdmVybG9hZGVkLgoKT19BUFBF
TkQsIE9fRElSRUNULCBPX1NZTkMsIE9fRFNZTkMsIE9fTEFSR0VGSUxFLCBPX05PQVRJTUUsIE9f
UEFUSCwgT19OT05CTE9DSzogZ2VudWluZSBtb2RlIGJpdHMKCk9fQ0xPRVhFQzogc3BlY2lhbCBi
ZWNhdXNlIGl0IGFmZmVjdHMgdGhlIGZkLCBub3QgdGhlIHN0cnVjdCBmaWxlLgoKTGludXMsIHlv
dSByZWplY3RlZCByZXNvbHZlYXQoKSBiZWNhdXNlIHlvdSB3YW50ZWQgYSAqbmljZSogQVBJIHRo
YXQgcGVvcGxlIHdvdWxkIHVzZSBhbmQgdGhhdCBtaWdodCBldmVuIGJlIGFkb3B0ZWQgYnkgb3Ro
ZXIgT1Nlcy4gTGV04oCZcyBwbGVhc2Ugbm90IG1ha2Ugb3BlbmF0MigpIGJlIGEgZ2lhbnQgcGls
ZSBvZiBjcmFwIGluIHRoZSBuYW1lIG9mIGNvbnNpc3RlbmN5IHdpdGggb3BlbigpLiAgb3Blbigp
LCBmcmFua2x5LCBpcyBob3JyaWJsZS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
