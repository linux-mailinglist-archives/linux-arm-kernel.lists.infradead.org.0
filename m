Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC10A17DE34
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 12:07:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FRZ2Iv5Q7Qn7JifDP7NRlcrPYxcDdqIzF2CaaNwDAs=; b=YpK3tlfa/JUppM
	HSfGzfJXvJ0PLz6VOV3YqDyjPa5+JZII0SXxklV7OfrKw9OeMsQzLvDVGtIBHM2iIt/bQ/pXz1XEm
	uJE0ogfoWSeSPJerAd1JtDjteRxyHti9RAHQb5td9PRq1ftXy+xe/2alG0pnB453THAmdctnmqmn4
	zkDNwZ5KBOGK2S2GPXYXCOjrb0e7X+aIjMyrH/uuwMmpwHaGANQX/3jxCAn71e+K/L7q/OlzXuifB
	WCwIAvI8wXGiDJqil8LWwzV6roUko2vOSo1T5XA70hGgakDmiD/5W4pYJP7/4CV2+KFLX/f5uwJl4
	4OfQH26uonFoyrP4+zFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBGFQ-0004VL-IU; Mon, 09 Mar 2020 11:07:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBGFI-0004Ts-G2
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 11:06:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 648701FB;
 Mon,  9 Mar 2020 04:06:49 -0700 (PDT)
Received: from [10.37.12.115] (unknown [10.37.12.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8BCE13F6CF;
 Mon,  9 Mar 2020 04:06:44 -0700 (PDT)
Subject: Re: [PATCH v2 00/20] Introduce common headers
To: Andy Lutomirski <luto@amacapital.net>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
 <3278D604-28F1-47A1-BAB8-D8EB439995E8@amacapital.net>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <b18c7ce1-0948-a9e2-2d7e-d019669a71e1@arm.com>
Date: Mon, 9 Mar 2020 11:07:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3278D604-28F1-47A1-BAB8-D8EB439995E8@amacapital.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_040652_576632_21152352 
X-CRM114-Status: GOOD (  16.00  )
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
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-mips@vger.kernel.org,
 linux-arch@vger.kernel.org, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5keSwKCk9uIDMvNi8yMCA0OjA0IFBNLCBBbmR5IEx1dG9taXJza2kgd3JvdGU6CgpbLi4u
XQoKPj4KPj4gVG8gc29sdmUgdGhlIHByb2JsZW0sIEkgZGVjaWRlZCB0byB1c2UgdGhlIGFwcHJv
YWNoIGJlbG93Ogo+PiAgKiBFeHRyYWN0IGZyb20gaW5jbHVkZS9saW51eC8gdGhlIHZEU08gcmVx
dWlyZWQga2VybmVsIGludGVyZmFjZQo+PiAgICBhbmQgcGxhY2UgaXQgaW4gaW5jbHVkZS9jb21t
b24vCj4gCj4gSSByZWFsbHkgbGlrZSB0aGUgYXBwcm9hY2gsIGJ1dCBJ4oCZbSB3b25kZXJpbmcg
aWYg4oCcY29tbW9u4oCdIGlzIHRoZSByaWdodCBuYW1lLiBUaGlzIGRpcmVjdG9yeSBpcyBoZWFk
ZXJzIHRoYXQgYXJlbuKAmXQgc3RhYmxlIEFCSSBsaWtlIHVhcGkgYnV0IGFyZSBzaGFyZWQgYmV0
d2VlbiB0aGUga2VybmVsIGFuZCB0aGUgdkRTTy4gUmVndWxhciB1c2VyIGNvZGUgc2hvdWxkICpu
b3QqIGluY2x1ZGUgdGhlc2UsIHJpZ2h0Pwo+IAo+IFdvdWxkIOKAnHZkc2/igJ0gb3IgcGVyaGFw
cyDigJxwcml2YXRlLWFiaeKAnSBiZSBjbGVhcmVyPwo+IAoKVGhhbmtzISBUaGVzZSBoZWFkZXJz
IGFyZSBkZWZpbml0ZWx5IG5vdCAidWFwaSIgbGlrZSBhbmQgdGhleSBhcmUgbWVhbnQgdG8KZXZv
bHZlIGluIGZ1dHVyZSBsaWtlIGFueSBvdGhlciBrZXJuZWwgaGVhZGVyLiBXZSBoYXZlIGp1c3Qg
dG8gbWFrZSBzdXJlIHRoYXQKdGhlIGV2b2x1dGlvbiBkb2VzIG5vdCBicmVhayB3aGF0IHdlIGFy
ZSB0cnlpbmcgdG8gYWNoaWV2ZSB3aXRoIHRoaXMgc2VyaWVzLgoKSSBoYXZlIHRvIGFkbWl0IHRo
YXQgSSBzcGVudCBxdWl0ZSBzb21lIHRpbWUgaW4gY2hvb3NpbmcgdGhlIG5hbWUgYW5kIEkgYW0g
bm90CmNvbXBsZXRlbHkgc2F0aXNmaWVkIHdpdGggImNvbW1vbiIgZWl0aGVyLiBUaGUgcmVhc29u
IHdoeSBJIGVuZGVkIHVwIHdpdGggdGhpcwppcyB0aGF0IHRoZSBoZWFkZXJzIGFyZSBjb21tb24g
aW4gYmV0d2VlbiB0aGUga2VybmVsIGFuZCB0aGUgdmRzbyAodXNlcnNwYWNlKQpidXQgSSBhZ3Jl
ZSB0aGF0IGl0IGRvZXMgbm90IG1ha2UgY29tcGxldGVseSBzZWxmIGV4cGxhbmF0b3J5LgoKVXNp
bmcgInZkc28iIHdvdWxkIG1lYW4gYWNjb3JkaW5nIHRvIG1lIHRoYXQgdGhvc2UgYXJlIHZkc28g
b25seSBoZWFkZXJzLApwcm9iYWJseSAicHJpdmF0ZS1hYmkiIGlzIHRoZSBiZXN0IGNob2ljZSBo
ZXJlLiBJZiB0aGVyZSBpcyBlbm91Z2ggY29uc2Vuc3VzLCBJCmFtIGhhcHB5IHRvIHJld29yayBt
eSBwYXRjaGVzIGFjY29yZGluZ2x5LiBXaGF0IGRvIHlvdSB0aGluaz8KCj4+ICAqIE1ha2Ugc3Vy
ZSB0aGF0IHdoZXJlIG1lYW5pbmdmdWwgdGhlIGtlcm5lbCBpbmNsdWRlcyAiY29tbW9uIgo+PiAg
KiBMaW1pdCB0aGUgdkRTTyBsaWJyYXJ5IHRvIGluY2x1ZGUgaGVhZGVycyBjb21pbmcgb25seSBm
cm9tIFVBUEkKPj4gICAgYW5kICJjb21tb24iICh3aXRoIDIgZXhjZXB0aW9ucyBjb21waWxlci5o
IGZvciBiYXJyaWVycyBhbmQKPj4gICAgcGFyYW0uaCBmb3IgSFopLgo+PiAgKiBBZGFwdCBhbGwg
dGhlIGFyY2hpdGVjdHVyZXMgdGhhdCBzdXBwb3J0IHRoZSB1bmlmaWVkIHZEU08gbGlicmFyeQo+
PiAgICB0byB1c2UgImNvbW1vbiIgaGVhZGVycy4KPiAKWy4uLl0KCi0tIApSZWdhcmRzLApWaW5j
ZW56bwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
