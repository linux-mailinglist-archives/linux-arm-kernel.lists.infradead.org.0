Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C02162E13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:15:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1GIQRh4jTe5HTzOpjLmV6WEHDBQhzMcbGtDY+zYVQIE=; b=tp8lENT9Qw+Vfb
	v1MaiUP+5XKr+KIVABymHCdybQHv0EpIBIrZhjrfuFqN9aUye0oWUhRJx0xd6EUOat0u8p4N6DnDB
	vivgh8r5L264aBpzPFh3ZK2fG6rHfxxLwabKACLcac9fJn1XhnYZf74YP4KbFsSv+hyC2KoQb4i1J
	SLl0H/gh4hiiK1AQEu2OAyL+CYqb8s6FPlW1PHrqQTufzvlqqEcWCvKODVbF3hRCYGLCUhW27I0mr
	Z0Dxz44TrAyvLjaNctJ39JjInhKlKJhzlMHKK7D7u729rjhPle1i7N2ILMRixp1dgKlESljJzbmsC
	lMF6uOG+0kgec8KvSkrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47P5-0001FK-Kc; Tue, 18 Feb 2020 18:15:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47Ou-0001EL-S3
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:15:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8CE831B;
 Tue, 18 Feb 2020 10:15:15 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C3603F68F;
 Tue, 18 Feb 2020 10:15:14 -0800 (PST)
Subject: Re: [PATCH 1/5] KVM: arm64: Fix missing RES1 in emulation of DBGBIDR
To: Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>
References: <20200216185324.32596-1-maz@kernel.org>
 <20200216185324.32596-2-maz@kernel.org>
 <c1bd5c57-666e-0d54-1e7c-e45d0535ffe3@arm.com>
 <a02252f6-1e9a-2a35-9944-f23e161583ab@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <bf599b74-6ead-8722-d4d4-870a0cabc213@arm.com>
Date: Tue, 18 Feb 2020 18:15:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a02252f6-1e9a-2a35-9944-f23e161583ab@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_101516_960014_E6179A6F 
X-CRM114-Status: GOOD (  11.40  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpPbiAxOC8wMi8yMDIwIDE4OjAxLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24g
MTgvMDIvMjAyMCA1OjQzIHBtLCBKYW1lcyBNb3JzZSB3cm90ZToKPj4gT24gMTYvMDIvMjAyMCAx
ODo1MywgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4gVGhlIEFBcmNoMzIgQ1AxNCBEQkdESURSIGhh
cyBiaXQgMTUgc2V0IHRvIFJFUzEsIHdoaWNoIG91ciBjdXJyZW50Cj4+PiBlbXVsYXRpb24gZG9l
c24ndCBzZXQuIEp1c3QgYWRkIHRoZSBtaXNzaW5nIGJpdC4KCj4+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9rdm0vc3lzX3JlZ3MuYyBiL2FyY2gvYXJtNjQva3ZtL3N5c19yZWdzLmMKPj4+IGlu
ZGV4IDNlOTA5YjExN2YwYy4uZGE4MmM0YjAzYWFiIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02
NC9rdm0vc3lzX3JlZ3MuYwo+Pj4gKysrIGIvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYwo+Pj4g
QEAgLTE2NTgsNyArMTY1OCw3IEBAIHN0YXRpYyBib29sIHRyYXBfZGJnaWRyKHN0cnVjdCBrdm1f
dmNwdSAqdmNwdSwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBwLT5yZWd2YWwgPSAoKCgoZGZyID4+
IElEX0FBNjRERlIwX1dSUFNfU0hJRlQpICYgMHhmKSA8PCAyOCkgfAo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICgoKGRmciA+PiBJRF9BQTY0REZSMF9CUlBTX1NISUZU
KSAmIDB4ZikgPDwgMjQpIHwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAoKChkZnIgPj4gSURfQUE2NERGUjBfQ1RYX0NNUFNfU0hJRlQpICYgMHhmKSA8PCAyMCkKPj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8ICg2IDw8IDE2KSB8IChlbDMgPDwg
MTQpIHwgKGVsMyA8PCAxMikpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHwgKDYgPDwgMTYpIHwgKDEgPDwgMTUpIHwgKGVsMyA8PCAxNCkgfCAoZWwzIDw8IDEyKSk7Cj4+
Cj4+IEhtbW0sIHdoZXJlIGVsMyBpczoKPj4gfCB1MzIgZWwzID0gISFjcHVpZF9mZWF0dXJlX2V4
dHJhY3RfdW5zaWduZWRfZmllbGQocGZyLCBJRF9BQTY0UEZSMF9FTDNfU0hJRlQpOwo+Pgo+PiBB
cmVuJ3Qgd2UgZGVwZW5kaW5nIG9uIHRoZSBjb21waWxlcnMgJ3RydWUnIGJlaW5nIDEgaGVyZT8K
PiAKPiBQcmV0dHkgbXVjaCwgYnV0IHRoYW5rZnVsbHkgdGhlIG9ubHkgY29tcGlsZXJzIHdlIHN1
cHBvcnQgYXJlIEMgY29tcGlsZXJzOgo+IAo+ICJUaGUgcmVzdWx0IG9mIHRoZSBsb2dpY2FsIG5l
Z2F0aW9uIG9wZXJhdG9yICEgaXMgMCBpZiB0aGUgdmFsdWUgb2YgaXRzIG9wZXJhbmQgY29tcGFy
ZXMKPiB1bmVxdWFsIHRvIDAsIDEgaWYgdGhlIHZhbHVlIG9mIGl0cyBvcGVyYW5kIGNvbXBhcmVz
IGVxdWFsIHRvIDAuIFRoZSByZXN1bHQgaGFzIHR5cGUgaW50LiIKCkV4Y2VsbGVudC4gSSB0aG91
Z2h0IHRoaXMgd2FzIHRoZSBzb3J0IG9mIHRoaW5nIHRoYXQgY291bGRuJ3QgYmUgZGVwZW5kZWQg
b24hCgoKPiBBbmQgbm93IEkgaGF2ZSB5b3UgdG8gdGhhbmsgZm9yIGZsYXNoYmFja3MgdG8gYml0
d2lzZSBsb2dpY2FsIG9wZXJhdG9ycyBpbiBWaXN1YWwgQmFzaWMuLi4gOlAKCi4uLiBzb3JyeT8K
CgoKVGhhbmtzLAoKSmFtZXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
