Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1659915AA77
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 14:54:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2OzgLzNdhebEVb90arrF7SEhPkTYoHnTyU6lSQHqu8=; b=EXWLjA2mueAGw0
	tDr3JMdMAcfof6wjxqGUZl4cB9gmZqYsQ0eK3+32NVrxlr2buqXa6nww3iz7JKE6Cw52IcRnSYsEy
	cJaNbjFjdHwwqUd36NPWi9pYi4/Cth7vvBcIol7wboh1j0RV+9dqzWUO5Aili86B6LO4sgvRTejer
	b8+MJADkZd/3wOQ4XFIT1USS+hfj+B+6YJwQo4oVnJx4JlYbld3fywn1Zi9MqDf2uanW/DRmHWzOX
	ublIxixnk9NSrllWbvLtsIzNTGfl8wsOmTq7gl1udcsGTciCBmQg6TWTwMItndJ1EQjMKkrz8I9jQ
	O6FbnNX2E9iaXVOh0tRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1sSy-0002dT-P5; Wed, 12 Feb 2020 13:54:12 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1sSp-0002cV-AM
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 13:54:04 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 05:54:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="226796307"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga007.fm.intel.com with ESMTP; 12 Feb 2020 05:54:00 -0800
Received: from [10.252.13.176] (abudanko-mobl.ccr.corp.intel.com
 [10.252.13.176])
 by linux.intel.com (Postfix) with ESMTP id E2B155803DA;
 Wed, 12 Feb 2020 05:53:49 -0800 (PST)
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Stephen Smalley <sds@tycho.nsa.gov>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
 <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
 <537bdb28-c9e4-f44f-d665-25250065a6bb@linux.intel.com>
 <63d9700f-231d-7973-5307-3e56a48c54cb@linux.intel.com>
 <d7213569-9578-7201-6106-f5ebc95bd6be@tycho.nsa.gov>
 <2e38c33d-f085-1320-8cc2-45f74b6ad86d@linux.intel.com>
 <dd6a1382-7b2f-a6e6-a1ac-009566d7f556@tycho.nsa.gov>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <8141da2e-49cf-c02d-69e9-8a7cbdc91431@linux.intel.com>
Date: Wed, 12 Feb 2020 16:53:48 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <dd6a1382-7b2f-a6e6-a1ac-009566d7f556@tycho.nsa.gov>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_055403_408318_8064E3BA 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Andi Kleen <ak@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andy Lutomirski <luto@amacapital.net>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIuMDIuMjAyMCAxNjozMiwgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+IE9uIDIvMTIvMjAg
Mzo1MyBBTSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+PiBIaSBTdGVwaGVuLAo+Pgo+PiBPbiAy
Mi4wMS4yMDIwIDE3OjA3LCBTdGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4+PiBPbiAxLzIyLzIwIDU6
NDUgQU0sIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4+Pgo+Pj4+IE9uIDIxLjAxLjIwMjAgMjE6
MjcsIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4+Pj4KPj4+Pj4gT24gMjEuMDEuMjAyMCAyMDo1
NSwgQWxleGVpIFN0YXJvdm9pdG92IHdyb3RlOgo+Pj4+Pj4gT24gVHVlLCBKYW4gMjEsIDIwMjAg
YXQgOTozMSBBTSBBbGV4ZXkgQnVkYW5rb3YKPj4+Pj4+IDxhbGV4ZXkuYnVkYW5rb3ZAbGludXgu
aW50ZWwuY29tPiB3cm90ZToKPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gT24gMjEuMDEuMjAyMCAx
Nzo0MywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+Pj4+PiBPbiAxLzIwLzIwIDY6MjMgQU0s
IEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4+Pj4+Pj4+Cj4+IDxTTklQPgo+Pj4+Pj4+Pj4gSW50
cm9kdWNlIENBUF9QRVJGTU9OIGNhcGFiaWxpdHkgZGVzaWduZWQgdG8gc2VjdXJlIHN5c3RlbSBw
ZXJmb3JtYW5jZQo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBXaHkgX25vYXVkaXQoKT/CoCBOb3JtYWxseSBv
bmx5IHVzZWQgd2hlbiBhIHBlcm1pc3Npb24gZmFpbHVyZSBpcyBub24tZmF0YWwgdG8gdGhlIG9w
ZXJhdGlvbi7CoCBPdGhlcndpc2UsIHdlIHdhbnQgdGhlIGF1ZGl0IG1lc3NhZ2UuCj4+Pj4KPj4+
PiBTbyBmYXIgc28gZ29vZCwgSSBzdWdnZXN0IHVzaW5nIHRoZSBzaW1wbGVzdCB2ZXJzaW9uIGZv
ciB2NjoKPj4+Pgo+Pj4+IHN0YXRpYyBpbmxpbmUgYm9vbCBwZXJmbW9uX2NhcGFibGUodm9pZCkK
Pj4+PiB7Cj4+Pj4gwqDCoMKgwqDCoHJldHVybiBjYXBhYmxlKENBUF9QRVJGTU9OKSB8fCBjYXBh
YmxlKENBUF9TWVNfQURNSU4pOwo+Pj4+IH0KPj4+Pgo+Pj4+IEl0IGtlZXBzIHRoZSBpbXBsZW1l
bnRhdGlvbiBzaW1wbGUgYW5kIHJlYWRhYmxlLiBUaGUgaW1wbGVtZW50YXRpb24gaXMgbW9yZQo+
Pj4+IHBlcmZvcm1hbnQgaW4gdGhlIHNlbnNlIG9mIGNhbGxpbmcgdGhlIEFQSSAtIG9uZSBjYXBh
YmxlKCkgY2FsbCBmb3IgQ0FQX1BFUkZNT04KPj4+PiBwcml2aWxlZ2VkIHByb2Nlc3MuCj4+Pj4K
Pj4+PiBZZXMsIGl0IGJsb2F0cyBhdWRpdCBsb2cgZm9yIENBUF9TWVNfQURNSU4gcHJpdmlsZWdl
ZCBhbmQgdW5wcml2aWxlZ2VkIHByb2Nlc3NlcywKPj4+PiBidXQgdGhpcyBibG9hdGluZyBhbHNv
IGFkdmVydGlzZXMgYW5kIGxldmVyYWdlcyB1c2luZyBtb3JlIHNlY3VyZSBDQVBfUEVSRk1PTgo+
Pj4+IGJhc2VkIGFwcHJvYWNoIHRvIHVzZSBwZXJmX2V2ZW50X29wZW4gc3lzdGVtIGNhbGwuCj4+
Pgo+Pj4gSSBjYW4gbGl2ZSB3aXRoIHRoYXQuwqAgV2UganVzdCBuZWVkIHRvIGRvY3VtZW50IHRo
YXQgd2hlbiB5b3Ugc2VlIGJvdGggYSBDQVBfUEVSRk1PTiBhbmQgYSBDQVBfU1lTX0FETUlOIGF1
ZGl0IG1lc3NhZ2UgZm9yIGEgcHJvY2VzcywgdHJ5IG9ubHkgYWxsb3dpbmcgQ0FQX1BFUkZNT04g
Zmlyc3QgYW5kIHNlZSBpZiB0aGF0IHJlc29sdmVzIHRoZSBpc3N1ZS7CoCBXZSBoYXZlIGEgc2lt
aWxhciBpc3N1ZSB3aXRoIENBUF9EQUNfUkVBRF9TRUFSQ0ggdmVyc3VzIENBUF9EQUNfT1ZFUlJJ
REUuCj4+Cj4+IEkgYW0gdHJ5aW5nIHRvIHJlcHJvZHVjZSB0aGlzIGRvdWJsZSBsb2dnaW5nIHdp
dGggQ0FQX1BFUkZNT04uCj4+IEkgYW0gdXNpbmcgdGhlIHJlZnBvbGljeSB2ZXJzaW9uIHdpdGgg
ZW5hYmxlZCBwZXJmX2V2ZW50IHRjbGFzcyBbMV0sIGluIHBlcm1pc3NpdmUgbW9kZS4KPj4gV2hl
biBydW5uaW5nIHBlcmYgc3RhdCAtYSBJIGFtIG9ic2VydmluZyB0aGlzIEFWQyBhdWRpdCBtZXNz
YWdlczoKPj4KPj4gdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0OTY2OTUuNjY2Ojg2OTEpOiBhdmM6
wqAgZGVuaWVkwqAgeyBvcGVuIH0gZm9ywqAgcGlkPTI3NzkgY29tbT0icGVyZiIgc2NvbnRleHQ9
dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJf
c3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+PiB0eXBlPUFWQyBtc2c9
YXVkaXQoMTU4MTQ5NjY5NS42NjY6ODY5MSk6IGF2YzrCoCBkZW5pZWTCoCB7IGtlcm5lbCB9IGZv
csKgIHBpZD0yNzc5IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0
ZW1kX3QgdGNvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9cGVyZl9l
dmVudCBwZXJtaXNzaXZlPTEKPj4gdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0OTY2OTUuNjY2Ojg2
OTEpOiBhdmM6wqAgZGVuaWVkwqAgeyBjcHUgfSBmb3LCoCBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBz
Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjb250ZXh0PXVzZXJfdTp1c2Vy
X3I6dXNlcl9zeXN0ZW1kX3QgdGNsYXNzPXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCj4+IHR5cGU9
QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4NjkyKTogYXZjOsKgIGRlbmllZMKgIHsgd3Jp
dGUgfSBmb3LCoCBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBzY29udGV4dD11c2VyX3U6dXNlcl9yOnVz
ZXJfc3lzdGVtZF90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNsYXNz
PXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCj4+Cj4+IEhvd2V2ZXIgdGhlcmUgaXMgbm8gY2FwYWJp
bGl0eSByZWxhdGVkIG1lc3NhZ2VzIGFyb3VuZC4gSSBzdXBwb3NlIG15IHJlZnBvbGljeSBzaG91
bGQKPj4gYmUgbW9kaWZpZWQgc29tZWhvdyB0byBvYnNlcnZlIGNhcGFiaWxpdHkgcmVsYXRlZCBB
VkNzLgo+Pgo+PiBDb3VsZCB5b3UgcGxlYXNlIGNvbW1lbnQgb3IgY2xhcmlmeSBvbiBob3cgdG8g
ZW5hYmxlIGNhcHMgcmVsYXRlZCBBVkNzIGluIG9yZGVyCj4+IHRvIHRlc3QgdGhlIGNvbmNlcm5l
ZCBsb2dnaW5nLgo+IAo+IFRoZSBuZXcgcGVyZm1vbiBwZXJtaXNzaW9uIGhhcyB0byBiZSBkZWZp
bmVkIGluIHlvdXIgcG9saWN5OyB5b3UnbGwgaGF2ZSBhIG1lc3NhZ2UgaW4gZG1lc2cgYWJvdXQg
IlBlcm1pc3Npb24gcGVyZm1vbiBpbiBjbGFzcyBjYXBhYmlsaXR5MiBub3QgZGVmaW5lZCBpbiBw
b2xpY3kuIi7CoCBZb3UgY2FuIGVpdGhlciBhZGQgaXQgdG8gdGhlIGNvbW1vbiBjYXAyIGRlZmlu
aXRpb24gaW4gcmVmcG9saWN5L3BvbGljeS9mbGFzay9hY2Nlc3NfdmVjdG9ycyBhbmQgcmVidWls
ZCB5b3VyIHBvbGljeSBvciBleHRyYWN0IHlvdXIgYmFzZSBtb2R1bGUgYXMgQ0lMLCBhZGQgaXQg
dGhlcmUsIGFuZCBpbnNlcnQgdGhlIHVwZGF0ZWQgbW9kdWxlLgoKWWVzLCBJIGFscmVhZHkgaGF2
ZSBpdCBsaWtlIHRoaXM6CmNvbW1vbiBjYXAyCnsKPC0tLS0tLT5tYWNfb3ZlcnJpZGU8LS0+IyB1
bnVzZWQgYnkgU0VMaW51eAo8LS0tLS0tPm1hY19hZG1pbgo8LS0tLS0tPnN5c2xvZwo8LS0tLS0t
Pndha2VfYWxhcm0KPC0tLS0tLT5ibG9ja19zdXNwZW5kCjwtLS0tLS0+YXVkaXRfcmVhZAo8LS0t
LS0tPnBlcmZtb24KfQoKZG1lc2cgc3RvcHBlZCByZXBvcnRpbmcgcGVyZm1vbiBhcyBub3QgZGVm
aW5lZCBidXQgYXVkaXQubG9nIHN0aWxsIGRvZXNuJ3QgcmVwb3J0IENBUF9QRVJGTU9OIGRlbmlh
bHMuCkJUVywgYXVkaXQgZXZlbiBkb2Vzbid0IHJlcG9ydCBDQVBfU1lTX0FETUlOIGRlbmlhbHMs
IGhvd2V2ZXIgcGVyZm1vbl9jYXBhYmxlKCkgZG9lcyBjaGVjayBmb3IgaXQuCgp+QWxleGV5Cgo+
IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
