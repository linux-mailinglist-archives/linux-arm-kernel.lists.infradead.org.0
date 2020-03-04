Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EE217925F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:34:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFpAuclXKRvJKHQvJJzAFoXOJL2xVphiac0AunRGhmM=; b=e5/iaMv3ly/bTj
	mkkUnCEkhvkTWIiM7E8S2aSoFgKxa5EaV+IUTzt+AUWR6cKrvNM0tRS5Rqmhw65XGYLR9TzBFELKS
	F5DqHiYBuRVZKGnPjzR58NXq8HKuehkGxckKrZG69NNP9B2ZeboK9CbVj+v2Y5cgIvXN9drIj0YI6
	VzT2rC/ZPqCOfDt6YWK+OAkAd9OLH6lpyETsv3T9x6VO6r7fVygadM3v20AwqvesyK4MhiYg6lkPG
	uBlC7GmhhAVx4zPYp+g82fKg9oodixNyM0twN5nNtdrMK52wVpum3mfwWc0k63EdwS2d3k03CQby0
	V7AT9ieqzyrK1w/s0vFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9V6G-0000OD-Fo; Wed, 04 Mar 2020 14:34:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9V68-0000Mf-1Y
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:34:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84B3031B;
 Wed,  4 Mar 2020 06:34:07 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 981A53F6CF;
 Wed,  4 Mar 2020 06:34:06 -0800 (PST)
Date: Wed, 4 Mar 2020 14:34:04 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 1/3] arm64: optimize mov_q assembler macro
Message-ID: <20200304143404.GD3575@lakrids.cambridge.arm.com>
References: <20200304093631.191200-1-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304093631.191200-1-remi@remlab.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_063408_180457_C6EE6760 
X-CRM114-Status: GOOD (  17.99  )
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
Cc: catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

W2FkZGluZyBhcm02NCBmb2xrXQoKV2hlbiBzZW5kaWduIGEgc2VyaWVzIGxpa2UgdGhpcywgcGxl
YXNlIHNlbmQgYSBjb3ZlciBsZXR0ZXIsIGFuZCB0aHJlYWQKcGF0Y2hlcyBpbiByZXBseSB0byB0
aGUgY292ZXIgbGV0dGVyLgoKVXNlIGBnaXQgZm9ybWF0LXBhdGNoIC0tY292ZXJgIHRvIGdlbmVy
YXRlIHRoYXQsIGFuZCBgZ2l0IHNlbmQtZW1haWxgCnNob3VsZCB0aHJlYWQgdGhpbmdzIHRoYXQg
d2F5IGJ5IGRlZmF1bHQuCgpPbiBXZWQsIE1hciAwNCwgMjAyMCBhdCAxMTozNjoyOUFNICswMjAw
LCBSw6ltaSBEZW5pcy1Db3VybW9udCB3cm90ZToKPiBGcm9tOiBSZW1pIERlbmlzLUNvdXJtb250
IDxyZW1pLmRlbmlzLmNvdXJtb250QGh1YXdlaS5jb20+Cj4gCj4gVGhpcyByZWR1Y2VzIHRoZSBu
dW1iZXIgb2YgTU9WWiBhbmQgTU9WSyB0byBleHBhbmQgYSBjb25zdGFudC4KPiBUaGlzIG1ha2Vz
IHNldmVyYWwgY2hhbmdlczoKPiAKPiAxKSBTYXZlIG9uZSBpbnN0cnVjdGlvbiBmb3IgZXhhY3Rs
eSAzMiBvciA0OCBiaXRzIHVuc2lnbmVkIHZhbHVlcywKPiB1c2luZyB1bnNpZ25lZCBNT1YgcmF0
aGVyIHRoYW4gc2lnbmVkIE1PVi4KPiAKPiAyKSBTYXZlIG9uZSBpbnN0cnVjdGlvbiBmb3IgdW5z
aWduZWQgMTYgYml0cyAob3IgbGVzcykgdmFsdWVzLCBub3QKPiB0cmVhdGluZyB0aGVtIGFzIDMy
LWJpdHMgdmFsdWVzLgo+IAo+IDMpIFNraXAgYW55IHJlZHVuZGFudCBNT1ZLIGluc3RydWN0aW9u
cyB0aGUgMTYtYml0cyBpbW1lZGlhdGUgd291bGQgYmUKPiB6ZXJvLgo+IAo+IDQpIFVzZSBNT1ZO
IGlmIGl0IHNhdmVzIG9uZSBvciBtb3JlIE1PVksgb3ZlciBNT1ZaLgo+IAo+IE5vdGUgdGhhdCB0
aGUgYXNzZW1ibGVyIHVzZXMgLTEgYXMgdHJ1dGggdmFsdWUgKG5vdCArMSBsaWtlIEMpLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFJlbWkgRGVuaXMtQ291cm1vbnQgPHJlbWkuZGVuaXMuY291cm1vbnRA
aHVhd2VpLmNvbT4KClRvIGJlIGhvbmVzdCwgSSBkb24ndCB0aGluayB0aGlzIGlzIHdvcnRod2hp
bGUgZ2l2ZW4gaG93IGNvbXBsZXggaXQKbWFrZXMgdGhlIG1vdl9xIG1hY3JvLgoKR2l2ZW4gdGhl
IHBsYWNlcyB3ZSB1c2UgbW92X3EgdG9kYXksIEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyBnb2luZyB0
byBnaXZlCmFueSBtZWFzdXJhYmxlIHBlcmZvcm1hbmNlIGltcHJvdmVtZW50LCBidXQgd2lsbCBt
YWtlIGRlYnVnZ2luZyBtb3JlCnBhaW5mdWwgdGhhbiBuZWNlc3NhcnkuCgpUaGFua3MsCk1hcmsK
Cj4gLS0tCj4gIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vYXNzZW1ibGVyLmggfCA0NSArKysrKysr
KysrKysrKysrKysrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQwIGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9h
c20vYXNzZW1ibGVyLmggYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2Fzc2VtYmxlci5oCj4gaW5k
ZXggYWYwMzAwMTI5M2M2Li4yYjk4ZTJjNWM4YTIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9hc3NlbWJsZXIuaAo+ICsrKyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vYXNz
ZW1ibGVyLmgKPiBAQCAtNDczLDIyICs0NzMsNTcgQEAgVVNFUihcbGFiZWwsIGljCWl2YXUsIFx0
bXAyKQkJCS8vIGludmFsaWRhdGUgSSBsaW5lIFBvVQo+ICAKPiAgCS8qCj4gIAkgKiBtb3ZfcSAt
IG1vdmUgYW4gaW1tZWRpYXRlIGNvbnN0YW50IGludG8gYSA2NC1iaXQgcmVnaXN0ZXIgdXNpbmcK
PiAtCSAqICAgICAgICAgYmV0d2VlbiAyIGFuZCA0IG1vdnovbW92ayBpbnN0cnVjdGlvbnMgKGRl
cGVuZGluZyBvbiB0aGUKPiArCSAqICAgICAgICAgYmV0d2VlbiAxIGFuZCA0IG1vdi9tb3ZrIGlu
c3RydWN0aW9ucyAoZGVwZW5kaW5nIG9uIHRoZQo+ICAJICogICAgICAgICBtYWduaXR1ZGUgYW5k
IHNpZ24gb2YgdGhlIG9wZXJhbmQpCj4gIAkgKi8KPiAgCS5tYWNybwltb3ZfcSwgcmVnLCB2YWwK
PiAtCS5pZiAoKChcdmFsKSA+PiAzMSkgPT0gMCB8fCAoKFx2YWwpID4+IDMxKSA9PSAweDFmZmZm
ZmZmZikKPiAtCW1vdnoJXHJlZywgOmFic19nMV9zOlx2YWwKPiArCS5pZiAoKCgoXHZhbCkgJiAw
eGZmZmYpID09IDApICsgKCgoKFx2YWwpID4+IDE2KSAmIDB4ZmZmZikgPT0gMCkgKyAoKCgoXHZh
bCkgPj4gMzIpICYgMHhmZmZmKSA9PSAwKSArICgoKChcdmFsKSA+PiA0OCkgJiAweGZmZmYpID09
IDApIDw9ICgoKFx2YWwpICYgMHhmZmZmKSA9PSAweGZmZmYpICsgKCgoKFx2YWwpID4+IDE2KSAm
IDB4ZmZmZikgPT0gMHhmZmZmKSArICgoKChcdmFsKSA+PiAzMikgJiAweGZmZmYpID09IDB4ZmZm
ZikgKyAoKCgoXHZhbCkgPj4gNDgpICYgMHhmZmZmKSA9PSAweGZmZmYpKQo+ICsJLmlmICgoKFx2
YWwpID4+IDE2KSA9PSAwKQo+ICsJbW92eglccmVnLCA6YWJzX2cwOlx2YWwKPiAgCS5lbHNlCj4g
LQkuaWYgKCgoXHZhbCkgPj4gNDcpID09IDAgfHwgKChcdmFsKSA+PiA0NykgPT0gMHgxZmZmZikK
PiAtCW1vdnoJXHJlZywgOmFic19nMl9zOlx2YWwKPiArCS5pZiAoKChcdmFsKSA+PiAzMikgPT0g
MCkKPiArCW1vdnoJXHJlZywgOmFic19nMTpcdmFsCj4gKwkuZWxzZQo+ICsJLmlmICgoKFx2YWwp
ID4+IDQ4KSA9PSAwKQo+ICsJbW92eglccmVnLCA6YWJzX2cyOlx2YWwKPiAgCS5lbHNlCj4gIAlt
b3Z6CVxyZWcsIDphYnNfZzM6XHZhbAo+ICsJLmlmICgoKChcdmFsKSA+PiAzMikgJiAweGZmZmYp
ICE9IDApCj4gIAltb3ZrCVxyZWcsIDphYnNfZzJfbmM6XHZhbAo+ICAJLmVuZGlmCj4gKwkuZW5k
aWYKPiArCS5pZiAoKCgoXHZhbCkgPj4gMTYpICYgMHhmZmZmKSAhPSAwKQo+ICAJbW92awlccmVn
LCA6YWJzX2cxX25jOlx2YWwKPiAgCS5lbmRpZgo+ICsJLmVuZGlmCj4gKwkuaWYgKCgoXHZhbCkg
JiAweGZmZmYpICE9IDApCj4gIAltb3ZrCVxyZWcsIDphYnNfZzBfbmM6XHZhbAo+ICsJLmVuZGlm
Cj4gKwkuZW5kaWYKPiArCS5lbHNlCj4gKwkuaWYgKCgoKFx2YWwpID4+IDE2KSAmIDB4ZmZmZmZm
ZmZmZmZmKSA9PSAweGZmZmZmZmZmZmZmZikKPiArCW1vdm4JXHJlZywgOmFic19nMDp+XHZhbAo+
ICsJLmVsc2UKPiArCS5pZiAoKCgoXHZhbCkgPj4gMzIpICYgMHhmZmZmZmZmZikgPT0gMHhmZmZm
ZmZmZikKPiArCW1vdm4JXHJlZywgOmFic19nMTp+XHZhbAo+ICsJLmVsc2UKPiArCS5pZiAoKCgo
XHZhbCkgPj4gNDgpICYgMHhmZmZmKSA9PSAweGZmZmYpCj4gKwltb3ZuCVxyZWcsIDphYnNfZzI6
flx2YWwKPiArCS5lbHNlCj4gKwltb3ZuCVxyZWcsIDphYnNfZzM6flx2YWwKPiArCS5pZiAoKCgo
XHZhbCkgPj4gMzIpICYgMHhmZmZmKSAhPSAweGZmZmYpCj4gKwltb3ZrCVxyZWcsIDphYnNfZzJf
bmM6XHZhbAo+ICsJLmVuZGlmCj4gKwkuZW5kaWYKPiArCS5pZiAoKCgoXHZhbCkgPj4gMTYpICYg
MHhmZmZmKSAhPSAweGZmZmYpCj4gKwltb3ZrCVxyZWcsIDphYnNfZzFfbmM6XHZhbAo+ICsJLmVu
ZGlmCj4gKwkuZW5kaWYKPiArCS5pZiAoKChcdmFsKSAmIDB4ZmZmZikgIT0gMHhmZmZmKQo+ICsJ
bW92awlccmVnLCA6YWJzX2cwX25jOlx2YWwKPiArCS5lbmRpZgo+ICsJLmVuZGlmCj4gKwkuZW5k
aWYKPiAgCS5lbmRtCj4gIAo+ICAvKgo+IC0tIAo+IDIuMjUuMQo+IAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
