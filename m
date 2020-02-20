Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE78D165E3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUhrzEzZEVbPCptPXHtJ1peirwwb2St1aiZ6jrbhd1w=; b=OW11/GaxUpUJ1A
	8yxcS/mSpEUaHQyaCWKvlMe1bymoqW9flIJbMDIwwzsBpwDXYJtAX0vN6QbBjjnJgY7dPCf0qwYfU
	BnLfHXBzQQPUqD4q33emjcp2kWWt2k0l9wilRu1yvXI3n7ZsIxXxmL9Jj9ZbqbxoPFLZAu3Oygagx
	m+L+ZudMmJC/bQO2gdOIGVaiEMhA+NOFnbPYRHDfWG6ogOTl9AvV9LSifY598pNGY27JikUE3S/yi
	gJtdZqmFU51cVatoGJDKpRDamfdfsn48IHZ3tz8mm9lmouqFSXAyL+LtW06c1ShDsTNqfSaicPT0j
	PCwh/aI9I4Ib/VNux+aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4lYE-0005Ek-9a; Thu, 20 Feb 2020 13:07:34 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4lY5-0004sa-Bi
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:07:26 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 05:05:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="283399590"
Received: from linux.intel.com ([10.54.29.200])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Feb 2020 05:05:21 -0800
Received: from [10.125.252.166] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.166])
 by linux.intel.com (Postfix) with ESMTP id 253CC580472;
 Thu, 20 Feb 2020 05:05:12 -0800 (PST)
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, Stephen Smalley
 <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>
References: <875zgizkyk.fsf@nanos.tec.linutronix.de>
 <7d6f4210-423f-e454-3910-9f8e17dff1aa@linux.intel.com>
Organization: Intel Corp.
Message-ID: <95aa57e6-4d78-39df-386c-a98734f19777@linux.intel.com>
Date: Thu, 20 Feb 2020 16:05:11 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <7d6f4210-423f-e454-3910-9f8e17dff1aa@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_050725_449971_74D3AA7F 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Ck9uIDA3LjAyLjIwMjAgMTY6MzksIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPiAKPiBPbiAwNy4w
Mi4yMDIwIDE0OjM4LCBUaG9tYXMgR2xlaXhuZXIgd3JvdGU6Cj4+IEFsZXhleSBCdWRhbmtvdiA8
YWxleGV5LmJ1ZGFua292QGxpbnV4LmludGVsLmNvbT4gd3JpdGVzOgo+Pj4gT24gMjIuMDEuMjAy
MCAxNzoyNSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4+IE9uIDIyLjAxLjIwMjAgMTc6MDcs
IFN0ZXBoZW4gU21hbGxleSB3cm90ZToKPj4+Pj4+IEl0IGtlZXBzIHRoZSBpbXBsZW1lbnRhdGlv
biBzaW1wbGUgYW5kIHJlYWRhYmxlLiBUaGUgaW1wbGVtZW50YXRpb24gaXMgbW9yZQo+Pj4+Pj4g
cGVyZm9ybWFudCBpbiB0aGUgc2Vuc2Ugb2YgY2FsbGluZyB0aGUgQVBJIC0gb25lIGNhcGFibGUo
KSBjYWxsIGZvciBDQVBfUEVSRk1PTgo+Pj4+Pj4gcHJpdmlsZWdlZCBwcm9jZXNzLgo+Pj4+Pj4K
Pj4+Pj4+IFllcywgaXQgYmxvYXRzIGF1ZGl0IGxvZyBmb3IgQ0FQX1NZU19BRE1JTiBwcml2aWxl
Z2VkIGFuZCB1bnByaXZpbGVnZWQgcHJvY2Vzc2VzLAo+Pj4+Pj4gYnV0IHRoaXMgYmxvYXRpbmcg
YWxzbyBhZHZlcnRpc2VzIGFuZCBsZXZlcmFnZXMgdXNpbmcgbW9yZSBzZWN1cmUgQ0FQX1BFUkZN
T04KPj4+Pj4+IGJhc2VkIGFwcHJvYWNoIHRvIHVzZSBwZXJmX2V2ZW50X29wZW4gc3lzdGVtIGNh
bGwuCj4+Pj4+Cj4+Pj4+IEkgY2FuIGxpdmUgd2l0aCB0aGF0LsKgIFdlIGp1c3QgbmVlZCB0byBk
b2N1bWVudCB0aGF0IHdoZW4geW91IHNlZQo+Pj4+PiBib3RoIGEgQ0FQX1BFUkZNT04gYW5kIGEg
Q0FQX1NZU19BRE1JTiBhdWRpdCBtZXNzYWdlIGZvciBhIHByb2Nlc3MsCj4+Pj4+IHRyeSBvbmx5
IGFsbG93aW5nIENBUF9QRVJGTU9OIGZpcnN0IGFuZCBzZWUgaWYgdGhhdCByZXNvbHZlcyB0aGUK
Pj4+Pj4gaXNzdWUuwqAgV2UgaGF2ZSBhIHNpbWlsYXIgaXNzdWUgd2l0aCBDQVBfREFDX1JFQURf
U0VBUkNIIHZlcnN1cwo+Pj4+PiBDQVBfREFDX09WRVJSSURFLgo+Pj4+Cj4+Pj4gcGVyZiBzZWN1
cml0eSBbMV0gZG9jdW1lbnQgY2FuIGJlIHVwZGF0ZWQsIGF0IGxlYXN0LCB0byBhbGlnbiBhbmQg
ZG9jdW1lbnQgCj4+Pj4gdGhpcyBhdWRpdCBsb2dnaW5nIHNwZWNpZmljcy4KPj4+Cj4+PiBBbmQg
SSBwbGFuIHRvIHVwZGF0ZSB0aGUgZG9jdW1lbnQgcmlnaHQgYWZ0ZXIgdGhpcyBwYXRjaCBzZXQg
aXMgYWNjZXB0ZWQuCj4+PiBGZWVsIGZyZWUgdG8gbGV0IG1lIGtub3cgb2YgdGhlIHBsYWNlcyBp
biB0aGUga2VybmVsIGRvY3MgdGhhdCBhbHNvCj4+PiByZXF1aXJlIHVwZGF0ZSB3LnIudCBDQVBf
UEVSRk1PTiBleHRlbnNpb24uCj4+Cj4+IFRoZSBkb2N1bWVudGF0aW9uIHVwZGF0ZSB3YW50cyBi
ZSBwYXJ0IG9mIHRoZSBwYXRjaCBzZXQgYW5kIG5vdCBwbGFubmVkCj4+IHRvIGJlIGRvbmUgX2Fm
dGVyXyB0aGUgcGF0Y2ggc2V0IGlzIG1lcmdlZC4KPiAKPiBXZWxsLCBhY2NlcHRlZC4gSXQgaXMg
Z29pbmcgdG8gbWFrZSBwYXRjaGVzICMxMSBhbmQgYmV5b25kLgoKUGF0Y2hlcyAjMTEgYW5kICMx
MiBvZiB2NyBbMV0gY29udGFpbiBpbmZvcm1hdGlvbiBvbiBDQVBfUEVSRk1PTiBpbnRlbnRpb24g
YW5kIHVzYWdlLgpQYXRjaCBmb3IgbWFuLXBhZ2VzIFsyXSBleHRlbmRzIHBlcmZfZXZlbnRfb3Bl
bi4yIGRvY3VtZW50YXRpb24uCgpUaGFua3MsCkFsZXhleQoKLS0tClsxXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9sa21sL2M4ZGU5MzdhLTBiM2EtNzE0Ny1mNWVmLTY5ZjQ2N2U4N2ExM0BsaW51
eC5pbnRlbC5jb20vClsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzE4ZDEwODNkLWVm
ZTUtZjVmOC1jNTMxLWQxNDJjMGU1YzFhOEBsaW51eC5pbnRlbC5jb20vCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
