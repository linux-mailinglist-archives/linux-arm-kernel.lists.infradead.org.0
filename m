Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EF517E026
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:24:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSbplcTjQNILk3Qob6ZiIodOPELvRP2eVpwItuugLhk=; b=n1XUcvFgKXc6rG
	uzgcYRsju9690+IXaXaCba/bjJf8MCJFp9WSCxLTHeUsZndSLlpCj14ePSOsckxi7Atom27NZ/hAJ
	IxoGk90DbAEZdca0Pfj+RQG1OBzEvKbtjQNvMGdAW0l+HnJV5MgJMbp6N6GT1U+6lxeG/MZUcwQVL
	NmVAOxNUlyi9F6HKVTQbIrd95DSOGZA7cRYsUql2tsSaSnujUrAG0wfC3P751prmf2FvNj7Zov5MF
	cptrxngEoPAdwgSF64Zbr67ty9ne/2PfS0e6IbALwMdoYYb2jPLq6GPFVODAjkXI7sYBrhBJbYjWj
	xkQwIPZSeIA5I5cQ4vzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHSf-0003fr-7q; Mon, 09 Mar 2020 12:24:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHSV-0003f9-IT
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:24:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F1B7F30E;
 Mon,  9 Mar 2020 05:24:34 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 20D953F6CF;
 Mon,  9 Mar 2020 05:24:32 -0700 (PDT)
Date: Mon, 9 Mar 2020 12:24:30 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2 00/20] Introduce common headers
Message-ID: <20200309122429.GB26309@lakrids.cambridge.arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
 <3278D604-28F1-47A1-BAB8-D8EB439995E8@amacapital.net>
 <b18c7ce1-0948-a9e2-2d7e-d019669a71e1@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b18c7ce1-0948-a9e2-2d7e-d019669a71e1@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_052435_655162_41AE9528 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, linux-arch@vger.kernel.org,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Will Deacon <will.deacon@arm.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrei Vagin <avagin@openvz.org>, Stephen Boyd <sboyd@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMDksIDIwMjAgYXQgMTE6MDc6MDhBTSArMDAwMCwgVmluY2Vuem8gRnJhc2Np
bm8gd3JvdGU6Cj4gSGkgQW5keSwKPiAKPiBPbiAzLzYvMjAgNDowNCBQTSwgQW5keSBMdXRvbWly
c2tpIHdyb3RlOgo+IAo+IFsuLi5dCj4gCj4gPj4KPiA+PiBUbyBzb2x2ZSB0aGUgcHJvYmxlbSwg
SSBkZWNpZGVkIHRvIHVzZSB0aGUgYXBwcm9hY2ggYmVsb3c6Cj4gPj4gICogRXh0cmFjdCBmcm9t
IGluY2x1ZGUvbGludXgvIHRoZSB2RFNPIHJlcXVpcmVkIGtlcm5lbCBpbnRlcmZhY2UKPiA+PiAg
ICBhbmQgcGxhY2UgaXQgaW4gaW5jbHVkZS9jb21tb24vCj4gPiAKPiA+IEkgcmVhbGx5IGxpa2Ug
dGhlIGFwcHJvYWNoLCBidXQgSeKAmW0gd29uZGVyaW5nIGlmIOKAnGNvbW1vbuKAnSBpcyB0aGUK
PiA+IHJpZ2h0IG5hbWUuIFRoaXMgZGlyZWN0b3J5IGlzIGhlYWRlcnMgdGhhdCBhcmVu4oCZdCBz
dGFibGUgQUJJIGxpa2UKPiA+IHVhcGkgYnV0IGFyZSBzaGFyZWQgYmV0d2VlbiB0aGUga2VybmVs
IGFuZCB0aGUgdkRTTy4gUmVndWxhciB1c2VyCj4gPiBjb2RlIHNob3VsZCAqbm90KiBpbmNsdWRl
IHRoZXNlLCByaWdodD8KPiA+IAo+ID4gV291bGQg4oCcdmRzb+KAnSBvciBwZXJoYXBzIOKAnHBy
aXZhdGUtYWJp4oCdIGJlIGNsZWFyZXI/Cj4gCj4gVGhhbmtzISBUaGVzZSBoZWFkZXJzIGFyZSBk
ZWZpbml0ZWx5IG5vdCAidWFwaSIgbGlrZSBhbmQgdGhleSBhcmUgbWVhbnQgdG8KPiBldm9sdmUg
aW4gZnV0dXJlIGxpa2UgYW55IG90aGVyIGtlcm5lbCBoZWFkZXIuIFdlIGhhdmUganVzdCB0byBt
YWtlIHN1cmUgdGhhdAo+IHRoZSBldm9sdXRpb24gZG9lcyBub3QgYnJlYWsgd2hhdCB3ZSBhcmUg
dHJ5aW5nIHRvIGFjaGlldmUgd2l0aCB0aGlzIHNlcmllcy4KCkdpdmVuIHdlIGFscmVhZHkgaW5j
bHVkZSB1YXBpLyogaGVhZGVycyBpbiBrZXJuZWwgY29kZSwgSSB0aGluayBwbGFjaW5nCnRoZXNl
IGluIGEgdmRzby8qIG5hbWVzcGFjZSB3b3VsZCBiZSBmaW5lLiBJIHRoaW5rIHRoYXQgbW9yZSBj
bGVhcmx5CmV4cHJlc3NlcyB0aGUgY29uc3RyYWludHMgb24gdGhlIGhlYWRlcnMgdGhhbiBwcml2
YXRlLWFiaS8qIHdvdWxkLgoKVGhhbmtzLApNYXJrLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
