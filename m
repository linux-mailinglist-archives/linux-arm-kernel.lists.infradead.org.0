Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B4115589E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 14:39:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQhatL3sHFufZAm4YIwFuRTR3dpajov1k9zzWUaVUkc=; b=l/d8mw0X1MODXR
	X3h6bXnh3kdq3WEWpB91cAbYpf1RFvzpvO8lm2lyIIJ7mris7iq9tO+NJ5sLEBB3lubN2aQ7bX7sF
	mWr6I50gvvrmUySLVMkJ2URcr7ewxhUxv+kUexa9h/i0ASd98M4w+zEn9c2QBCBTdr7LKIuJhPrUp
	VqG6n2u6YGaap276uG968SaT6IxHpq0bKHsI1+Ls6tKCPeKE10jSPjz2qwsldC1xbs4oJit0nF8c/
	Z6EUFzeE3KI+H7Nczxeu0AZtYy0DSzpJB8RGXaUaNqeZC8Hbkn/kFvic+cjwG2/u1YDtI3p2mjBQ4
	7JktQggQImac26mjiMKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j03r0-0004XI-9C; Fri, 07 Feb 2020 13:39:30 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j03qu-0004WX-3p
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 13:39:25 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 05:39:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="220798400"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga007.jf.intel.com with ESMTP; 07 Feb 2020 05:39:21 -0800
Received: from [10.125.252.178] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.178])
 by linux.intel.com (Postfix) with ESMTP id 7EB57580458;
 Fri,  7 Feb 2020 05:39:13 -0800 (PST)
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Thomas Gleixner <tglx@linutronix.de>, Stephen Smalley
 <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>
References: <875zgizkyk.fsf@nanos.tec.linutronix.de>
Organization: Intel Corp.
Message-ID: <7d6f4210-423f-e454-3910-9f8e17dff1aa@linux.intel.com>
Date: Fri, 7 Feb 2020 16:39:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <875zgizkyk.fsf@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_053924_207952_24E273DB 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Peter Zijlstra <peterz@infradead.org>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Paul Mackerras <paulus@samba.org>, Jiri Olsa <jolsa@redhat.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Andi Kleen <ak@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Igor Lubashev <ilubashe@akamai.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Stephane Eranian <eranian@google.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@amacapital.net>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDA3LjAyLjIwMjAgMTQ6MzgsIFRob21hcyBHbGVpeG5lciB3cm90ZToKPiBBbGV4ZXkgQnVk
YW5rb3YgPGFsZXhleS5idWRhbmtvdkBsaW51eC5pbnRlbC5jb20+IHdyaXRlczoKPj4gT24gMjIu
MDEuMjAyMCAxNzoyNSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4gT24gMjIuMDEuMjAyMCAx
NzowNywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+PiBJdCBrZWVwcyB0aGUgaW1wbGVtZW50
YXRpb24gc2ltcGxlIGFuZCByZWFkYWJsZS4gVGhlIGltcGxlbWVudGF0aW9uIGlzIG1vcmUKPj4+
Pj4gcGVyZm9ybWFudCBpbiB0aGUgc2Vuc2Ugb2YgY2FsbGluZyB0aGUgQVBJIC0gb25lIGNhcGFi
bGUoKSBjYWxsIGZvciBDQVBfUEVSRk1PTgo+Pj4+PiBwcml2aWxlZ2VkIHByb2Nlc3MuCj4+Pj4+
Cj4+Pj4+IFllcywgaXQgYmxvYXRzIGF1ZGl0IGxvZyBmb3IgQ0FQX1NZU19BRE1JTiBwcml2aWxl
Z2VkIGFuZCB1bnByaXZpbGVnZWQgcHJvY2Vzc2VzLAo+Pj4+PiBidXQgdGhpcyBibG9hdGluZyBh
bHNvIGFkdmVydGlzZXMgYW5kIGxldmVyYWdlcyB1c2luZyBtb3JlIHNlY3VyZSBDQVBfUEVSRk1P
Tgo+Pj4+PiBiYXNlZCBhcHByb2FjaCB0byB1c2UgcGVyZl9ldmVudF9vcGVuIHN5c3RlbSBjYWxs
Lgo+Pj4+Cj4+Pj4gSSBjYW4gbGl2ZSB3aXRoIHRoYXQuwqAgV2UganVzdCBuZWVkIHRvIGRvY3Vt
ZW50IHRoYXQgd2hlbiB5b3Ugc2VlCj4+Pj4gYm90aCBhIENBUF9QRVJGTU9OIGFuZCBhIENBUF9T
WVNfQURNSU4gYXVkaXQgbWVzc2FnZSBmb3IgYSBwcm9jZXNzLAo+Pj4+IHRyeSBvbmx5IGFsbG93
aW5nIENBUF9QRVJGTU9OIGZpcnN0IGFuZCBzZWUgaWYgdGhhdCByZXNvbHZlcyB0aGUKPj4+PiBp
c3N1ZS7CoCBXZSBoYXZlIGEgc2ltaWxhciBpc3N1ZSB3aXRoIENBUF9EQUNfUkVBRF9TRUFSQ0gg
dmVyc3VzCj4+Pj4gQ0FQX0RBQ19PVkVSUklERS4KPj4+Cj4+PiBwZXJmIHNlY3VyaXR5IFsxXSBk
b2N1bWVudCBjYW4gYmUgdXBkYXRlZCwgYXQgbGVhc3QsIHRvIGFsaWduIGFuZCBkb2N1bWVudCAK
Pj4+IHRoaXMgYXVkaXQgbG9nZ2luZyBzcGVjaWZpY3MuCj4+Cj4+IEFuZCBJIHBsYW4gdG8gdXBk
YXRlIHRoZSBkb2N1bWVudCByaWdodCBhZnRlciB0aGlzIHBhdGNoIHNldCBpcyBhY2NlcHRlZC4K
Pj4gRmVlbCBmcmVlIHRvIGxldCBtZSBrbm93IG9mIHRoZSBwbGFjZXMgaW4gdGhlIGtlcm5lbCBk
b2NzIHRoYXQgYWxzbwo+PiByZXF1aXJlIHVwZGF0ZSB3LnIudCBDQVBfUEVSRk1PTiBleHRlbnNp
b24uCj4gCj4gVGhlIGRvY3VtZW50YXRpb24gdXBkYXRlIHdhbnRzIGJlIHBhcnQgb2YgdGhlIHBh
dGNoIHNldCBhbmQgbm90IHBsYW5uZWQKPiB0byBiZSBkb25lIF9hZnRlcl8gdGhlIHBhdGNoIHNl
dCBpcyBtZXJnZWQuCgpXZWxsLCBhY2NlcHRlZC4gSXQgaXMgZ29pbmcgdG8gbWFrZSBwYXRjaGVz
ICMxMSBhbmQgYmV5b25kLgoKVGhhbmtzLApBbGV4ZXkKCj4gCj4gVGhhbmtzLAo+IAo+ICAgICAg
ICAgdGdseAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
