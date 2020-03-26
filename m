Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FD9194384
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iFDhOSOpCkHcX1Z91n4HZVRXGhy3Q+VegewnkZRDl2Y=; b=JXATXg4tZiS58I
	chRC5RVMuesshLLCS2riQ4msAg9hjcKq+RKS+zvN2fxWS2Q2dL43uc7tX7DjOMAkxwuGBXL5gbadU
	aihYshsyQJDeJUFwqDe5BgZadmi6v7fyyvJwq2CF0P55bneWqjXHYpl1SclLaJFh7IJ1l7R5Hou65
	iF9RfYp5IiUYf+8Sp5vHv5sROCK8OXr31WlDDvHZA8NC9vG5nQyyB8wEgPBBLulcnXPSMxPu8Osuy
	DbPuyBZntWpo+fg22skwgYbvwBPiXqEUkmY3/8eNO0J2Q5l/HmqUqdnI+PGfbaX4zdDBGauz1PfGU
	mIHapxHef5Od81JfWCNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUkn-0006gv-6s; Thu, 26 Mar 2020 15:49:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUkc-0006gF-Qv
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:49:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id f6so984037wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 08:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tnn7KHY4eWHTo8zdroLBrOpWxVoG9chHd2LE7rb+g4c=;
 b=S/kSykVLIzOW+bMtz28j9SL0IboXQaDEabZEPluAQ/jdTHKWYG9FhojaUl0Fmq4B1P
 r3AOSY0O8LRBGxIut4Bs4gZXoJioXnt3PtNqTi1ystbqUw6iLFXcpAkXhOpGcigUixPy
 S3ncz6t/Ez10hkmDVMtK4taf2eL2L8Yc7N/mCu2LeWk2BMUaqKLjXQbdxJxM3t7p01vm
 DO4BwnJI29K3mRmETdN4mZCqxfiDdPigj1O7hrw7LtCoGHzH9Iu/dAy3ZkDdaeonu93N
 4HIrT4yneg3HIAFtgQYxod4eIlZMNQiUgoqjN9wVmdZ8fghCzcV0kAEEByfR9Je738JZ
 MdNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tnn7KHY4eWHTo8zdroLBrOpWxVoG9chHd2LE7rb+g4c=;
 b=bDL3KG/lR1sPMlZdkchEmiezLcF8NYwkZ5RjsHRkwNym6saqeYlRSsIjOmCMpTZHpd
 hK/zQ5wdpdczCI7v8EONVOWzI0bA0FGL7xI6X9iS6HUsBI0IMIZbC8B0wY6Ov7Bzu/vK
 QIq7+eJHRueTZe4ycqKeRlBzj7b16JRkJQ4+AThjiQhqsybhnuYnQmuPmrR67s1c1stx
 CX4uMsdgVVV6Q8+UER6LJBdRiRbRGDbgtbDi/avMMqDf3aAKKaYv8I4UeoRWVElJTQcF
 TdRotJb7PiHWTcd4Hufvj7zCTvb+xyqe5GDk7axRJQl8igN94+FrlrKrDmFMV4Zhc0mm
 lJzA==
X-Gm-Message-State: ANhLgQ03D9nPQtlNLc6qhjFZPX7t2zJmoDmbjXfzc3HvcrgwImKqhL3p
 tNls2KhZHBeXOq0L8d5lbbjcNMQPm5r1MQOwUL0nwA==
X-Google-Smtp-Source: ADFU+vv6nSdJKaQuPkAMrcUtKm8kmac0YVBKRQ4HyVrhEfsZEMMr7tcXI64Kt8igxgOVmda0hFaoxYzxjJIM+XsxhHA=
X-Received: by 2002:a05:600c:22c1:: with SMTP id 1mr518314wmg.29.1585237733584; 
 Thu, 26 Mar 2020 08:48:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200324203231.64324-1-keescook@chromium.org>
 <20200324203231.64324-3-keescook@chromium.org>
In-Reply-To: <20200324203231.64324-3-keescook@chromium.org>
From: Alexander Potapenko <glider@google.com>
Date: Thu, 26 Mar 2020 16:48:41 +0100
Message-ID: <CAG_fn=X0DVwqLaHJTO6Jw7TGcMSm77GKHinrd0m_6y0SzWOrFA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] init_on_alloc: Unpessimize default-on builds
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_084858_898342_8A92D489 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-arm-kernel@lists.infradead.org, Andy Lutomirski <luto@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>, "Perla,
 Enrico" <enrico.perla@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXIgMjQsIDIwMjAgYXQgOTozMiBQTSBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9t
aXVtLm9yZz4gd3JvdGU6Cj4KPiBSaWdodCBub3csIHRoZSBzdGF0ZSBvZiBDT05GSUdfSU5JVF9P
Tl9BTExPQ19ERUZBVUxUX09OIChhbmQKPiAuLi5PTl9GUkVFLi4uKSBkaWQgbm90IGNoYW5nZSB0
aGUgYXNzZW1ibHkgb3JkZXJpbmcgb2YgdGhlIHN0YXRpYyBicmFuY2gKPiB0ZXN0cy4gVXNlIHRo
ZSBuZXcganVtcF9sYWJlbCBtYWNybyB0byBjaGVjayBDT05GSUcgc2V0dGluZ3MgdG8gZGVmYXVs
dAo+IHRvIHRoZSAiZXhwZWN0ZWQiIHN0YXRlLCB1bnBlc3NpbWl6ZXMgdGhlIHJlc3VsdGluZyBh
c3NlbWJseSBjb2RlLgo+Cj4gU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJv
bWl1bS5vcmc+Cj4gLS0tCj4gIGluY2x1ZGUvbGludXgvbW0uaCB8IDYgKysrKy0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9tbS5oIGIvaW5jbHVkZS9saW51eC9tbS5oCj4gaW5kZXggMDU5NjU4
NjA0ZGQ2Li42NGU5MTExNTlmZmEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9tbS5oCj4g
KysrIGIvaW5jbHVkZS9saW51eC9tbS5oCj4gQEAgLTI2NjUsNyArMjY2NSw4IEBAIHN0YXRpYyBp
bmxpbmUgdm9pZCBrZXJuZWxfcG9pc29uX3BhZ2VzKHN0cnVjdCBwYWdlICpwYWdlLCBpbnQgbnVt
cGFnZXMsCj4gIERFQ0xBUkVfU1RBVElDX0tFWV9NQVlCRShDT05GSUdfSU5JVF9PTl9BTExPQ19E
RUZBVUxUX09OLCBpbml0X29uX2FsbG9jKTsKPiAgc3RhdGljIGlubGluZSBib29sIHdhbnRfaW5p
dF9vbl9hbGxvYyhnZnBfdCBmbGFncykKPiAgewo+IC0gICAgICAgaWYgKHN0YXRpY19icmFuY2hf
dW5saWtlbHkoJmluaXRfb25fYWxsb2MpICYmCj4gKyAgICAgICBpZiAoc3RhdGljX2JyYW5jaF9t
YXliZShDT05GSUdfSU5JVF9PTl9BTExPQ19ERUZBVUxUX09OLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgJmluaXRfb25fYWxsb2MpICYmCj4gICAgICAgICAgICAgIXBhZ2VfcG9p
c29uaW5nX2VuYWJsZWQoKSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHRydWU7Cj4gICAgICAg
ICByZXR1cm4gZmxhZ3MgJiBfX0dGUF9aRVJPOwo+IEBAIC0yNjc0LDcgKzI2NzUsOCBAQCBzdGF0
aWMgaW5saW5lIGJvb2wgd2FudF9pbml0X29uX2FsbG9jKGdmcF90IGZsYWdzKQo+ICBERUNMQVJF
X1NUQVRJQ19LRVlfTUFZQkUoQ09ORklHX0lOSVRfT05fRlJFRV9ERUZBVUxUX09OLCBpbml0X29u
X2ZyZWUpOwo+ICBzdGF0aWMgaW5saW5lIGJvb2wgd2FudF9pbml0X29uX2ZyZWUodm9pZCkKPiAg
ewo+IC0gICAgICAgcmV0dXJuIHN0YXRpY19icmFuY2hfdW5saWtlbHkoJmluaXRfb25fZnJlZSkg
JiYKPiArICAgICAgIHJldHVybiBzdGF0aWNfYnJhbmNoX21heWJlKENPTkZJR19JTklUX09OX0ZS
RUVfREVGQVVMVF9PTiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZpbml0
X29uX2ZyZWUpICYmCj4gICAgICAgICAgICAgICAgIXBhZ2VfcG9pc29uaW5nX2VuYWJsZWQoKTsK
PiAgfQo+Cj4gLS0KPiAyLjIwLjEKPgpSZXZpZXdlZC1ieTogQWxleGFuZGVyIFBvdGFwZW5rbyA8
Z2xpZGVyQGdvb2dsZS5jb20+CgotLSAKQWxleGFuZGVyIFBvdGFwZW5rbwpTb2Z0d2FyZSBFbmdp
bmVlcgoKR29vZ2xlIEdlcm1hbnkgR21iSApFcmlrYS1NYW5uLVN0cmHDn2UsIDMzCjgwNjM2IE3D
vG5jaGVuCgpHZXNjaMOkZnRzZsO8aHJlcjogUGF1bCBNYW5pY2xlLCBIYWxpbWFoIERlTGFpbmUg
UHJhZG8KUmVnaXN0ZXJnZXJpY2h0IHVuZCAtbnVtbWVyOiBIYW1idXJnLCBIUkIgODY4OTEKU2l0
eiBkZXIgR2VzZWxsc2NoYWZ0OiBIYW1idXJnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
