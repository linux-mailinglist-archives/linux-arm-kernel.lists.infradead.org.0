Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF558AC8B9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 20:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPfBQERVqT6KrVXHBMnWYPSqn7e3g9ufzY0b74QGC5g=; b=bg57wAXwZuKp7V
	+WdqEKTB4wInbyJ57ykuAh4HJkyLx4xp2GK8AS7Oiliyh7VSiBusrU7DxlZegvFshRIUzfLJ4uuEM
	ryTt9QPwQYHGvlcWoF2R0CnNPcFB+pgMals+tqe7ii9fzfm4EYHxgWBrOpB3+4f5RSgFZxpdpqCWc
	vlK8RBPHHb/0Wm08jADlZ+scO8o3ZI6MD9hdIIifuJFGj55nxB3M62GxD4nlOkCO+FxfxnMAUIJ/l
	tzlfb5ZtP275u7MPwUP8whUXW99x/LqHxMR/tDYQosiMSzxYwcDRg6msDGd4jQi4kxlP2yzQSPsW0
	JaBvhlOSsPu5MPqUcGFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6fF9-0002gR-8U; Sat, 07 Sep 2019 18:15:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6fEv-0002g2-3n
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 18:15:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id w22so6616582pfi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 11:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amacapital-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=yCXO2IUW/xP5rGitFpbGKrkQxCFizP24AMzmcKYJo+k=;
 b=gPB2S/s21fOdrhZkZvzaMRRbkTHlbc79vLkQ8L7Cpmmu8hvbAG6eoC0Dm32QXRGYMY
 +1LPES8i+LJBkfY/p1yzpRzMMv2odDchTO0YHOkxwFiie7OsEOHDwtOH8zJJ6F9AZyk5
 MkZFVhvuxPxeMIKfq+G9obcmbfsQBob0Nc70jrYQVbX0W8tNU0vMgyrejbOLHj/PJBII
 8jO1EQn6kWKOgkBib76U4yxHBzWI3KaSO/lLhJIPi5x1WrjQ3kHOZysmKhg2Dv2MsCh4
 N/OxZH40a7P6xhJ/lAgfa+dSsRZSJmy+02UKql6Xb3VKWtRKJq/2ht+J5tBxXcxSYFTB
 1GhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=yCXO2IUW/xP5rGitFpbGKrkQxCFizP24AMzmcKYJo+k=;
 b=nRkW3zXKLtHjmj2Ih5JuxcytgLp+qWg+I1N2XrrQ8BzeLSoP9Oi4lBK8+bpyItp1+w
 jZR2DW5rP3wwxBxDUjVDIilE4rKzHPKK2CPvRsOUUT9iY2CbT/UxnM5gyDOgh8PsbPFA
 S/GZMdXMh27JEo2pPNFdDlL+jFbIS2RdAY1OlbWDqnUuDpyUFceMq1/UVpFywR+tnN2B
 sIUMq/iqdA0HUfwg/4H4ScPpM+BdazolcV6qrQNrad3udnQycaKIveWyRuHsgoK7HM97
 63prBoG7wiQ9kYcOEZ+XbemqAJmjYzCLnB7XDTNdhQJFeDX8e0/nSAKFYfJaHcAI9HRc
 TLJg==
X-Gm-Message-State: APjAAAVuQYkImLBdnnHlF6uegfOqLehs9JRQopICiP25WF/4k9YlIFyG
 IdwQ1GCVfDr1rJy+s0ryDjdEBw==
X-Google-Smtp-Source: APXvYqwtLHTxDBZPI4nj5nW8UmB/sRAqU0rGQe5gnm9Rg561yB9Atb14l/OoZSzCcZVB4Qk4BIIw8Q==
X-Received: by 2002:aa7:8b09:: with SMTP id f9mr13154710pfd.23.1567880111917; 
 Sat, 07 Sep 2019 11:15:11 -0700 (PDT)
Received: from ?IPv6:2600:100f:b121:da37:bc66:d4de:83c7:e0cd?
 ([2600:100f:b121:da37:bc66:d4de:83c7:e0cd])
 by smtp.gmail.com with ESMTPSA id x5sm10495873pfn.149.2019.09.07.11.15.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 11:15:11 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v12 11/12] open: openat2(2) syscall
From: Andy Lutomirski <luto@amacapital.net>
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <CAHk-=whe90Ec_RRrMRLE0=bJOHNS9YmVwcytVxmrfK3oCuZF6A@mail.gmail.com>
Date: Sat, 7 Sep 2019 11:15:09 -0700
Message-Id: <EE7399FD-7587-407B-B628-1D92CFD6B120@amacapital.net>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-12-cyphar@cyphar.com>
 <7236f382d72130f2afbbe8940e72cc67e5c6dce0.camel@kernel.org>
 <CAHk-=whZx97Nm-gUK0ppofj2RA2LLz2vmaDUTKSSV-+yYB9q_Q@mail.gmail.com>
 <C81D6D29-F6BF-48E6-A15E-3ABCB2C992E5@amacapital.net>
 <CAHk-=whe90Ec_RRrMRLE0=bJOHNS9YmVwcytVxmrfK3oCuZF6A@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_111513_161804_C29A86F5 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76
 chars
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

Cj4gT24gU2VwIDcsIDIwMTksIGF0IDEwOjQ1IEFNLCBMaW51cyBUb3J2YWxkcyA8dG9ydmFsZHNA
bGludXgtZm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+IAo+PiBPbiBTYXQsIFNlcCA3LCAyMDE5IGF0
IDEwOjQyIEFNIEFuZHkgTHV0b21pcnNraSA8bHV0b0BhbWFjYXBpdGFsLm5ldD4gd3JvdGU6Cj4+
IAo+PiBMaW51cywgeW91IHJlamVjdGVkIHJlc29sdmVhdCgpIGJlY2F1c2UgeW91IHdhbnRlZCBh
ICpuaWNlKiBBUEkKPiAKPiBOby4gSSByZWplY3RlZCByZXNvdmVhdCgpIGJlY2F1c2UgaXQgd2Fz
IGEgY29tcGxldGVseSBicm9rZW4gZ2FyYmFnZQo+IEFQSSB0aGF0IGNvdWxkbid0IGRvIGV2ZW4g
YmFzaWMgc3R1ZmYgcmlnaHQgKGxpa2UgT19DUkVBVCkuCj4gCj4gV2UgaGF2ZSBhIHRvbiBvZiBm
bGFnIHNwYWNlIGluIHRoZSBuZXcgb3BlbmF0MigpIG1vZGVsLCB3ZSBtaWdodCBhcwo+IHdlbGwg
bGVhdmUgdGhlIG9sZCBmbGFncyBhbG9uZSB0aGF0IHBlb3BsZSBhcmUgKGEpIHVzZWQgdG8gYW5k
IChiKSB3ZQo+IGhhdmUgY29kZSB0byBzdXBwb3J0IF9hbnl3YXlfLgo+IAo+IE1ha2luZyB1cCBh
IG5ldyBmbGFnIG5hbWVzcGFjZSBpcyBvbmx5IGdvaW5nIHRvIGNhdXNlIHVzIC0gYW5kIHVzZXJz
IC0KPiBtb3JlIHdvcmssIGFuZCBtb3JlIGNvbmZ1c2lvbi4gRm9yIG5vIGFjdHVhbCBhZHZhbnRh
Z2UuIEl0J3Mgbm90IGdvaW5nCj4gdG8gYmUgImNsZWFuZXIiLiBJdCdzIGp1c3QgZ29pbmcgdG8g
YmUgd29yc2UuCj4gCj4gCgpJZiB3ZSBrZWVwIGFsbCB0aGUgZmxhZyBiaXRzIGluIHRoZSBzYW1l
IG1hc2sgd2l0aCB0aGUgc2FtZSB2YWx1ZXMsIHRoZW4gd2XigJlyZSBzdHVjayB3aXRoIE9fUkRP
TkxZPTAgYW5kIGV2ZXJ5dGhpbmcgdGhhdCBpbXBsaWVzLiAgV2XigJlsbCBoYXZlIFVQR1JBREVf
UkVBRCB0aGF0IHdvcmtzIGRpZmZlcmVudGx5IGZyb20gdGhlIG1pc3NpbmcgcGxhaW4tb2xkLVJF
QUQgYml0LCBhbmQgd2UgY2Fu4oCZdCBleHByZXNzIGV4ZWN1dGUtb25seS1uby1yZWFkLW9yLXdy
aXRlLiBUaGlzIHN1Y2tzLgoKQ2FuIHdlIGF0IGxlYXN0IHNwbGl0IHRoZSBwZXJtaXNzaW9uIGJp
dHMgaW50byB0aGVpciBvd24gbWFzayBhbmQgbWFrZSBiaXRzIDAgYW5kIDEgaWxsZWdhbCBpbiB0
aGUgbWFpbiBzZXQgb2YgZmxhZ3MgaW4gb3BlbmF0Mj8KClRoZXJl4oCZcyBhbm90aGVyIHRocmVh
ZCBnb2luZyBvbiByaWdodCBub3cgYWJvdXQgYWRkaW5nIGEgYml0IGFsb25nIHRoZSBsaW5lcyBv
ZiDigJxNQVlFWEVD4oCdLCBhbmQgb25lIG9mIHRoZSBjb25jbHVzaW9ucyB3YXMgdGhhdCBpdCBz
aG91bGQgd2FpdCBmb3Igb3BlbmF0MiBzbyB0aGF0IGl0IGNhbiBoYXZlIHNhbWUgc2VtYW50aWNz
LiBJZiB3ZeKAmXJlIHN0dWNrIHdpdGggT19SRE9OTFkgYW5kIGZyaWVuZHMsIHRoZW4gTUFZRVhF
QyBpcyBkb29tZWQgdG8gYmVpbmcgYXQgbGVhc3QgYSBiaXQgbm9uc2Vuc2ljYWwuCgpBcyBhbiBh
bmFsb2d5LCBBTUQ2NCBpbnRyb2R1Y2VkIGJpZ2dlciBQVEVzIGJ1dCBrZXB0IHRoZSBzYW1lIG5v
bnNlbnNlIGVuY29kaW5nIG9mIHJlYWQgYW5kIHdyaXRlIHBlcm1pc3Npb24uIEFuZCB0aGVuIHdl
IGdvdCBOWCwgYW5kIG5vdyB3ZeKAmXJlIGdldHRpbmcgbGl0dGxlIGhvbGVzIGluIHRoZSBlbmNv
ZGluZyBzdG9sZW4gYnkgQ0VUIHRvIG1lYW4gbmV3IHNpbGx5IHRoaW5ncy4gIEkgZG9u4oCZdCBr
bm93IGlmIHlvdeKAmXZlIGJlZW4gZm9sbG93aW5nIHRoZSB2YXJpb3VzIHJvdW5kcyBvZiBwYXRj
aGVzLCBidXQgaXQgaXMgdHJ1bHkgaG9ycmlibGUuIFRoZSBtYXBwaW5nIGZyb20gbWVhbmluZyB0
byB0aGUgYWN0dWFsIGJpdHMgaXMgKnNoaXQqLCBhbmQgQU1ENjQgc2hvdWxkIGhhdmUgbWFkZSBh
IGNsZWFuIGJyZWFrIGluc3RlYWQuCgpvcGVuKCnigJlzIHBlcm1pc3Npb24gYml0cyBhcmUgYmFz
aWNhbGx5IHRoZSBzYW1lIHNpdHVhdGlvbi4gQW5kIHRoZSBrZXJuZWwgKmFscmVhZHkqIGhhcyBh
IG5vbi10eXBlLXNhZmUgdHJhbnNsYXRpb24gbGF5ZXIuIFBsZWFzZSwgcGxlYXNlIGxldCBvcGVu
YXQyKCkgYXQgbGVhc3QgZ2V0IHJpZCBvZiB0aGUgdHVyZCBpbiBvcGVuKCnigJlzIGJpdHMgMCBh
bmQgMS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
