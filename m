Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3DF17E84D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 20:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJdY2XJ3OPMzqjRusSIUOT4fcf5bUexnfP9jGbOQQQw=; b=SNimIJto3E5oIs
	+NoXkxvu5XFZf5JX+XUWR2d+b1uzlEjlPCFmhiPOBfSifptRu7VuA+2dCKqe4jnZBAnAyHlNQ24Zx
	iUXysuOl8jlrtSDYIRAPgZvpRYNZhYmqWHxPLJ+reASvTtMIhx0tnaO9v07tC/2iYjFAZrBVNAY8g
	QeUGcUny85hlS164ePNKaia2siGeHD2JtVXEoOImlkBm8avRvD3/sLsUKMoXuF0twJC4fZ55pwl7e
	X/7OIly3iZS8YusEVWmfdU686cIdgcPL808/MVhZL5LQxO9XtM54vK3HKqZGTgtgAk33s8XVJUShM
	+3NdpULoWhlaJ5O7NQ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBO0L-0005xN-4H; Mon, 09 Mar 2020 19:23:57 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBO0B-0005wq-Jg
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 19:23:49 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jBNzw-0005xU-TG; Mon, 09 Mar 2020 20:23:33 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 2F3E610408A; Mon,  9 Mar 2020 20:23:32 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Mark Rutland <mark.rutland@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2 00/20] Introduce common headers
In-Reply-To: <20200309122429.GB26309@lakrids.cambridge.arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
 <3278D604-28F1-47A1-BAB8-D8EB439995E8@amacapital.net>
 <b18c7ce1-0948-a9e2-2d7e-d019669a71e1@arm.com>
 <20200309122429.GB26309@lakrids.cambridge.arm.com>
Date: Mon, 09 Mar 2020 20:23:32 +0100
Message-ID: <877dzt72ob.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_122347_786827_51EC8684 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, linux-arch@vger.kernel.org,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-mips@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4gd3JpdGVzOgo+IE9uIE1vbiwgTWFy
IDA5LCAyMDIwIGF0IDExOjA3OjA4QU0gKzAwMDAsIFZpbmNlbnpvIEZyYXNjaW5vIHdyb3RlOgo+
PiBPbiAzLzYvMjAgNDowNCBQTSwgQW5keSBMdXRvbWlyc2tpIHdyb3RlOgo+PiA+PiBUbyBzb2x2
ZSB0aGUgcHJvYmxlbSwgSSBkZWNpZGVkIHRvIHVzZSB0aGUgYXBwcm9hY2ggYmVsb3c6Cj4+ID4+
ICAqIEV4dHJhY3QgZnJvbSBpbmNsdWRlL2xpbnV4LyB0aGUgdkRTTyByZXF1aXJlZCBrZXJuZWwg
aW50ZXJmYWNlCj4+ID4+ICAgIGFuZCBwbGFjZSBpdCBpbiBpbmNsdWRlL2NvbW1vbi8KPj4gPiAK
Pj4gPiBJIHJlYWxseSBsaWtlIHRoZSBhcHByb2FjaCwgYnV0IEnigJltIHdvbmRlcmluZyBpZiDi
gJxjb21tb27igJ0gaXMgdGhlCj4+ID4gcmlnaHQgbmFtZS4gVGhpcyBkaXJlY3RvcnkgaXMgaGVh
ZGVycyB0aGF0IGFyZW7igJl0IHN0YWJsZSBBQkkgbGlrZQo+PiA+IHVhcGkgYnV0IGFyZSBzaGFy
ZWQgYmV0d2VlbiB0aGUga2VybmVsIGFuZCB0aGUgdkRTTy4gUmVndWxhciB1c2VyCj4+ID4gY29k
ZSBzaG91bGQgKm5vdCogaW5jbHVkZSB0aGVzZSwgcmlnaHQ/Cj4+ID4gCj4+ID4gV291bGQg4oCc
dmRzb+KAnSBvciBwZXJoYXBzIOKAnHByaXZhdGUtYWJp4oCdIGJlIGNsZWFyZXI/Cj4+IAo+PiBU
aGFua3MhIFRoZXNlIGhlYWRlcnMgYXJlIGRlZmluaXRlbHkgbm90ICJ1YXBpIiBsaWtlIGFuZCB0
aGV5IGFyZSBtZWFudCB0bwo+PiBldm9sdmUgaW4gZnV0dXJlIGxpa2UgYW55IG90aGVyIGtlcm5l
bCBoZWFkZXIuIFdlIGhhdmUganVzdCB0byBtYWtlIHN1cmUgdGhhdAo+PiB0aGUgZXZvbHV0aW9u
IGRvZXMgbm90IGJyZWFrIHdoYXQgd2UgYXJlIHRyeWluZyB0byBhY2hpZXZlIHdpdGggdGhpcyBz
ZXJpZXMuCj4KPiBHaXZlbiB3ZSBhbHJlYWR5IGluY2x1ZGUgdWFwaS8qIGhlYWRlcnMgaW4ga2Vy
bmVsIGNvZGUsIEkgdGhpbmsgcGxhY2luZwo+IHRoZXNlIGluIGEgdmRzby8qIG5hbWVzcGFjZSB3
b3VsZCBiZSBmaW5lLiBJIHRoaW5rIHRoYXQgbW9yZSBjbGVhcmx5Cj4gZXhwcmVzc2VzIHRoZSBj
b25zdHJhaW50cyBvbiB0aGUgaGVhZGVycyB0aGFuIHByaXZhdGUtYWJpLyogd291bGQuCgpZZXMs
IHRoYXQgbWFrZXMgbW9zdCBzZW5zZS4KClRoYW5rcywKCiAgICAgICAgdGdseAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
