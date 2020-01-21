Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A09144345
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:31:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxJz/QKkMV1NdeNv1BXSr10it/rHtS24dWa9YpMeqgY=; b=pZjSVodcD8z55s
	lYtSWWlIkIAkT/OAIKQY5DPeZWwEMRsFoPJgmS/6CZkcxo/OLQvFRG5NOPpWZPrmhKBLn97Fyylr6
	t3cmcU81BApgzCyMh1Q8Z2gnX5cQpDJD3r0VDDqHB40ZEz9LqWGB0mNM1YyJ9sqedxhQcrMrgo/9V
	LQl8gRDDdN00TCskQEiC3GaJ1cftO2O2tyLw0J4wzj6ILI1yKiuh7xmEcylHIusTbbFgu5gUXsFBo
	d5vfGffIayOmVItqZspdTNrf5vwKnQNC8F9elvvmUhuD3YOek9dVMTouA/eX3iZT7NVdt7C7JKYYe
	SjNFVsO72/OUFA427dxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxN4-0007nD-RZ; Tue, 21 Jan 2020 17:31:22 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxMs-0007m8-DH
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:31:14 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 09:31:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="221768046"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jan 2020 09:31:04 -0800
Received: from [10.252.13.111] (iganakov-mobl1.ger.corp.intel.com
 [10.252.13.111])
 by linux.intel.com (Postfix) with ESMTP id 874B25803C5;
 Tue, 21 Jan 2020 09:30:55 -0800 (PST)
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Stephen Smalley <sds@tycho.nsa.gov>, Peter Zijlstra
 <peterz@infradead.org>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Ingo Molnar <mingo@redhat.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>, Will Deacon <will.deacon@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Robert Richter <rric@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
Date: Tue, 21 Jan 2020 20:30:54 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_093110_497374_025218B1 
X-CRM114-Status: GOOD (  18.09  )
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
Cc: Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIxLjAxLjIwMjAgMTc6NDMsIFN0ZXBoZW4gU21hbGxleSB3cm90ZToKPiBPbiAxLzIwLzIw
IDY6MjMgQU0sIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4KPj4gSW50cm9kdWNlIENBUF9QRVJG
TU9OIGNhcGFiaWxpdHkgZGVzaWduZWQgdG8gc2VjdXJlIHN5c3RlbSBwZXJmb3JtYW5jZQo+PiBt
b25pdG9yaW5nIGFuZCBvYnNlcnZhYmlsaXR5IG9wZXJhdGlvbnMgc28gdGhhdCBDQVBfUEVSRk1P
TiB3b3VsZCBhc3Npc3QKPj4gQ0FQX1NZU19BRE1JTiBjYXBhYmlsaXR5IGluIGl0cyBnb3Zlcm5p
bmcgcm9sZSBmb3IgcGVyZl9ldmVudHMsIGk5MTVfcGVyZgo+PiBhbmQgb3RoZXIgcGVyZm9ybWFu
Y2UgbW9uaXRvcmluZyBhbmQgb2JzZXJ2YWJpbGl0eSBzdWJzeXN0ZW1zLgo+Pgo+PiBDQVBfUEVS
Rk1PTiBpbnRlbmRzIHRvIGhhcmRlbiBzeXN0ZW0gc2VjdXJpdHkgYW5kIGludGVncml0eSBkdXJp
bmcgc3lzdGVtCj4+IHBlcmZvcm1hbmNlIG1vbml0b3JpbmcgYW5kIG9ic2VydmFiaWxpdHkgb3Bl
cmF0aW9ucyBieSBkZWNyZWFzaW5nIGF0dGFjawo+PiBzdXJmYWNlIHRoYXQgaXMgYXZhaWxhYmxl
IHRvIGEgQ0FQX1NZU19BRE1JTiBwcml2aWxlZ2VkIHByb2Nlc3MgWzFdLgo+PiBQcm92aWRpbmcg
YWNjZXNzIHRvIHN5c3RlbSBwZXJmb3JtYW5jZSBtb25pdG9yaW5nIGFuZCBvYnNlcnZhYmlsaXR5
Cj4+IG9wZXJhdGlvbnMgdW5kZXIgQ0FQX1BFUkZNT04gY2FwYWJpbGl0eSBzaW5nbHksIHdpdGhv
dXQgdGhlIHJlc3Qgb2YKPj4gQ0FQX1NZU19BRE1JTiBjcmVkZW50aWFscywgZXhjbHVkZXMgY2hh
bmNlcyB0byBtaXN1c2UgdGhlIGNyZWRlbnRpYWxzIGFuZAo+PiBtYWtlcyBvcGVyYXRpb24gbW9y
ZSBzZWN1cmUuCj4+Cj4+IENBUF9QRVJGTU9OIGludGVuZHMgdG8gdGFrZSBvdmVyIENBUF9TWVNf
QURNSU4gY3JlZGVudGlhbHMgcmVsYXRlZCB0bwo+PiBzeXN0ZW0gcGVyZm9ybWFuY2UgbW9uaXRv
cmluZyBhbmQgb2JzZXJ2YWJpbGl0eSBvcGVyYXRpb25zIGFuZCBiYWxhbmNlCj4+IGFtb3VudCBv
ZiBDQVBfU1lTX0FETUlOIGNyZWRlbnRpYWxzIGZvbGxvd2luZyB0aGUgcmVjb21tZW5kYXRpb25z
IGluIHRoZQo+PiBjYXBhYmlsaXRpZXMgbWFuIHBhZ2UgWzFdIGZvciBDQVBfU1lTX0FETUlOOiAi
Tm90ZTogdGhpcyBjYXBhYmlsaXR5IGlzCj4+IG92ZXJsb2FkZWQ7IHNlZSBOb3RlcyB0byBrZXJu
ZWwgZGV2ZWxvcGVycywgYmVsb3cuIgo+Pgo+PiBBbHRob3VnaCB0aGUgc29mdHdhcmUgcnVubmlu
ZyB1bmRlciBDQVBfUEVSRk1PTiBjYW4gbm90IGVuc3VyZSBhdm9pZGFuY2UKPj4gb2YgcmVsYXRl
ZCBoYXJkd2FyZSBpc3N1ZXMsIHRoZSBzb2Z0d2FyZSBjYW4gc3RpbGwgbWl0aWdhdGUgdGhlc2Ug
aXNzdWVzCj4+IGZvbGxvd2luZyB0aGUgb2ZmaWNpYWwgZW1iYXJnb2VkIGhhcmR3YXJlIGlzc3Vl
cyBtaXRpZ2F0aW9uIHByb2NlZHVyZSBbMl0uCj4+IFRoZSBidWdzIGluIHRoZSBzb2Z0d2FyZSBp
dHNlbGYgY291bGQgYmUgZml4ZWQgZm9sbG93aW5nIHRoZSBzdGFuZGFyZAo+PiBrZXJuZWwgZGV2
ZWxvcG1lbnQgcHJvY2VzcyBbM10gdG8gbWFpbnRhaW4gYW5kIGhhcmRlbiBzZWN1cml0eSBvZiBz
eXN0ZW0KPj4gcGVyZm9ybWFuY2UgbW9uaXRvcmluZyBhbmQgb2JzZXJ2YWJpbGl0eSBvcGVyYXRp
b25zLgo+Pgo+PiBbMV0gaHR0cDovL21hbjcub3JnL2xpbnV4L21hbi1wYWdlcy9tYW43L2NhcGFi
aWxpdGllcy43Lmh0bWwKPj4gWzJdIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0
ZXN0L3Byb2Nlc3MvZW1iYXJnb2VkLWhhcmR3YXJlLWlzc3Vlcy5odG1sCj4+IFszXSBodHRwczov
L3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9hZG1pbi1ndWlkZS9zZWN1cml0eS1idWdz
Lmh0bWwKPj4KPj4gU2lnbmVkLW9mZi1ieTogQWxleGV5IEJ1ZGFua292IDxhbGV4ZXkuYnVkYW5r
b3ZAbGludXguaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgaW5jbHVkZS9saW51eC9jYXBhYmlsaXR5
LmjCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMiArKysrKysrKysrKysKPj4gwqAgaW5jbHVkZS91YXBp
L2xpbnV4L2NhcGFiaWxpdHkuaMKgwqDCoMKgIHzCoCA4ICsrKysrKystCj4+IMKgIHNlY3VyaXR5
L3NlbGludXgvaW5jbHVkZS9jbGFzc21hcC5oIHzCoCA0ICsrLS0KPj4gwqAgMyBmaWxlcyBjaGFu
Z2VkLCAyMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9jYXBhYmlsaXR5LmggYi9pbmNsdWRlL2xpbnV4L2NhcGFiaWxpdHkuaAo+
PiBpbmRleCBlY2NlMGY0M2M3M2EuLjg3ODQ5NjlkOTFlMSAxMDA2NDQKPj4gLS0tIGEvaW5jbHVk
ZS9saW51eC9jYXBhYmlsaXR5LmgKPj4gKysrIGIvaW5jbHVkZS9saW51eC9jYXBhYmlsaXR5LmgK
Pj4gQEAgLTI1MSw2ICsyNTEsMTggQEAgZXh0ZXJuIGJvb2wgcHJpdmlsZWdlZF93cnRfaW5vZGVf
dWlkZ2lkKHN0cnVjdCB1c2VyX25hbWVzcGFjZSAqbnMsIGNvbnN0IHN0cnVjdAo+PiDCoCBleHRl
cm4gYm9vbCBjYXBhYmxlX3dydF9pbm9kZV91aWRnaWQoY29uc3Qgc3RydWN0IGlub2RlICppbm9k
ZSwgaW50IGNhcCk7Cj4+IMKgIGV4dGVybiBib29sIGZpbGVfbnNfY2FwYWJsZShjb25zdCBzdHJ1
Y3QgZmlsZSAqZmlsZSwgc3RydWN0IHVzZXJfbmFtZXNwYWNlICpucywgaW50IGNhcCk7Cj4+IMKg
IGV4dGVybiBib29sIHB0cmFjZXJfY2FwYWJsZShzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRzaywgc3Ry
dWN0IHVzZXJfbmFtZXNwYWNlICpucyk7Cj4+ICtzdGF0aWMgaW5saW5lIGJvb2wgcGVyZm1vbl9j
YXBhYmxlKHZvaWQpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IHVzZXJfbmFtZXNwYWNlICpucyA9
ICZpbml0X3VzZXJfbnM7Cj4+ICsKPj4gK8KgwqDCoCBpZiAobnNfY2FwYWJsZV9ub2F1ZGl0KG5z
LCBDQVBfUEVSRk1PTikpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gbnNfY2FwYWJsZShucywg
Q0FQX1BFUkZNT04pOwo+PiArCj4+ICvCoMKgwqAgaWYgKG5zX2NhcGFibGVfbm9hdWRpdChucywg
Q0FQX1NZU19BRE1JTikpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gbnNfY2FwYWJsZShucywg
Q0FQX1NZU19BRE1JTik7Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gZmFsc2U7Cj4+ICt9Cj4gCj4g
V2h5IF9ub2F1ZGl0KCk/wqAgTm9ybWFsbHkgb25seSB1c2VkIHdoZW4gYSBwZXJtaXNzaW9uIGZh
aWx1cmUgaXMgbm9uLWZhdGFsIHRvIHRoZSBvcGVyYXRpb24uwqAgT3RoZXJ3aXNlLCB3ZSB3YW50
IHRoZSBhdWRpdCBtZXNzYWdlLgoKU29tZSBvZiBpZGVhcyBmcm9tIHY0IHJldmlldy4KV2VsbCwg
b24gdGhlIHNlY29uZCBzaWdodCwgaXQgZGVmZW5pdGx5IHNob3VsZCBiZSBsb2dnZWQgZm9yIENB
UF9TWVNfQURNSU4uClByb2JhYmx5IGl0IGlzIG5vdCBzbyBmYXRhbCBmb3IgQ0FQX1BFUkZNT04s
IGJ1dCBwZXJzb25hbGx5IApJIHdvdWxkIHVuY29uZGl0aW9uYWxseSBsb2cgaXQgZm9yIENBUF9Q
RVJGTU9OIGFzIHdlbGwuCkdvb2QgY2F0Y2gsIHRoYW5rIHlvdS4KCn5BbGV4ZXkKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
