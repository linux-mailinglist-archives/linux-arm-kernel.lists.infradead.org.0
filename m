Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7421917925B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:30:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JW7lHZK3LUnQiROtPKQTfm4DzNzSG6WDTFyalzbZ+u4=; b=QPOAVPlf/Pmyy0
	MZ2AMUHaIbr+K6ELEulEpXTDsYxvsTVO+um3wUFXyAwqYJwYKCUVWpDsKK74uzakX9AdUCXOJd/cZ
	YeZXBDa2yHhYog1qcm27MTlkyOXHrj/eVteDrfcIttwv1ZwT60iGiSlRqRk9dZm2myH8AI3HcpWHV
	+DZwtkxBk+OwFYpHxLcjvMkSu1X8joV0q6FLALwdubnHW73dqCdfvoZ9QYXXhi5mEc1wHagCv26A4
	V6jSbFU6d4HsIa9aRQm7ZPKuoctxqkhNkkssua2mUd0hdOVCT7k/hj26trWa59lzbR5iFaEfdi+Zt
	F5Hccw/iz4/R/YU9OLhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9V2F-0006d4-2A; Wed, 04 Mar 2020 14:30:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9V23-0006S3-O6
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:29:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28CA431B;
 Wed,  4 Mar 2020 06:29:54 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F28A3F6CF;
 Wed,  4 Mar 2020 06:29:53 -0800 (PST)
Date: Wed, 4 Mar 2020 14:29:51 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH] arm64: reduce trampoline data alignment
Message-ID: <20200304142951.GC3575@lakrids.cambridge.arm.com>
References: <20200304093621.191138-1-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304093621.191138-1-remi@remlab.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_062955_876252_8E929EE6 
X-CRM114-Status: GOOD (  21.75  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

W2FkZGluZyBhcm02NCBmb2xrXQoKT24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMTE6MzY6MjFBTSAr
MDIwMCwgUsOpbWkgRGVuaXMtQ291cm1vbnQgd3JvdGU6Cj4gRnJvbTogUmVtaSBEZW5pcy1Db3Vy
bW9udCA8cmVtaS5kZW5pcy5jb3VybW9udEBodWF3ZWkuY29tPgo+IAo+IFRoZSB0cmFtcG9saW5l
IGRhdGEsIGN1cnJlbnRseSBjb25zaXN0aW5nIG9mIHR3byByZWxvY2F0ZWQgcG9pbnRlcnMsCj4g
bXVzdCBiZSB3aXRoaW4gYSBzaW5nbGUgcGFnZS4gSG93ZXZlciwgdGhlcmUgYXJlIG5vIG5lZWRz
IGZvciBpdCB0bwo+IHN0YXJ0IGEgcGFnZS4KPiAKPiBUaGlzIHJlZHVjZXMgdGhlIGFsaWdubWVu
dCB0byAxNiBieXRlcywgd2hpY2ggZW5zdXJlcyB0aGF0IHRoZSAxNiBieXRlcwo+IG9mIGRhdGEg
YXJlIGluIHRoZSBzYW1lIHBhZ2UuCj4gCj4gVGhpcyBwYXRjaCBhc3N1bWVzIHRoYXQgdGhlIHBh
Z2UgYWxpZ25tZW50IHdhcyBqdXN0IGEgcXVpY2sgYW5kIGRpcnR5Cj4gdHJpY2sgdG8gbm90IHdv
cnJ5IGFib3V0IGZpeG1hcC4gSWYgaG93ZXZlciB0aGUgcGFnZSBhbGlnbm1lbnQgd2FzCj4gbWVh
bnQgdG8gcHJlc2VudCBhIGRhdGEgcGFnZSB3aXRoIG5vIG90aGVyIGRhdGEgdGhhbiB0aGUgdHJh
bXBvbGluZSdzLAo+IHRoZW4gYm90aCB0aGUgY3VycmVudCBjb2RlIGFuZCB0aGlzIHBhdGNoIGFy
ZSB3cm9uZy4KCkkgdGhpbmsgdGhhdCBhbGlnbmluZyBpdCB0byBhIHBhZ2Ugd2FzIGEgc2ltcGxp
ZmljYXRpb24gb3ZlcmFsbCwgbm90Cmp1c3QgZm9yIHRoZSBmaXhtYXAuIEhvd2V2ZXIsIEkgZG8g
YWdyZWUgdGhhdCBhcyB0aGUgcGFnZSBpc24ndCBtYXBwZWQKZHVyaW5nIEVMMCBleGVjdXRpb24s
IGl0J3MgZmluZSBmb3Igb3RoZXIgYml0cyBvZiAucm9kYXRhIHRvIHNoYXJlIHRoZQpwYWdlLgoK
SSBhbHNvIHRoaW5rIHRoYXQgaXQncyBhIGJpdCBzY2FyeSB0aGF0IHdlIHJlbHkgb24gbm90aGlu
ZyBiZWluZyBwbGFjZWQKaW4gLnJvZGF0YSBiZXR3ZWVuIF9fZW50cnlfdHJhbXBfZGF0YV9zdGFy
dCBhbmQKX19zZGVpX2FzbV90cmFtcG9saW5lX25leHRfaGFuZGxlciwgc2luY2UgbWFjcm9zIGNv
dWxkIGVhc2lseSBwbGFjZQpzb21ldGhpbmcgYmV0d2VlbiB0aGUgdHdvLiBMdWNraWx5IE5PS1BS
T0JFKCkgYWRkcyBzdHVmZiB0byAuaW5pdC5kYXRhLApidXQgSSBoYWQgdG8gY2hlY2suCgpJIHRo
aW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byBhZGQgYSBuZXcgLmVudHJ5LnRyYW1wLmRhdGEgc2Vj
dGlvbiB0bwplbnN1cmUgdGhhdCwgd2hpY2ggd2UgY2FuIGFsaWduIGFwcHJvcHJpYXRlbHkgaW4g
dGhlIGxpbmtlciBzY3JpcHQuCgpUaGFua3MsCk1hcmsuCgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJl
bWkgRGVuaXMtQ291cm1vbnQgPHJlbWkuZGVuaXMuY291cm1vbnRAaHVhd2VpLmNvbT4KPiAtLS0K
PiAgYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUyB8IDYgKysrLS0tCj4gIGFyY2gvYXJtNjQvbW0v
bW11LmMgICAgICAgfCA1ICsrLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9lbnRy
eS5TIGIvYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUwo+IGluZGV4IGFlOTliZjhiYjBhZS4uOTdk
NmY4ZDE1YjNiIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2VudHJ5LlMKPiArKysg
Yi9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TCj4gQEAgLTgwNSw5ICs4MDUsOSBAQCBhbHRlcm5h
dGl2ZV9lbHNlX25vcF9lbmRpZgo+ICAyOgo+ICAJdHJhbXBfbWFwX2tlcm5lbAl4MzAKPiAgI2lm
ZGVmIENPTkZJR19SQU5ET01JWkVfQkFTRQo+IC0JYWRyCXgzMCwgdHJhbXBfdmVjdG9ycyArIFBB
R0VfU0laRQo+ICsJYWRycAl4MzAsIHRyYW1wX3ZlY3RvcnMgKyBQQUdFX1NJWkUKPiAgYWx0ZXJu
YXRpdmVfaW5zbiBpc2IsIG5vcCwgQVJNNjRfV09SS0FST1VORF9RQ09NX0ZBTEtPUl9FMTAwMwo+
IC0JbGRyCXgzMCwgW3gzMF0KPiArCWxkcgl4MzAsIFt4MzAsICM6bG8xMjpfX2VudHJ5X3RyYW1w
X2RhdGFfc3RhcnRdCj4gICNlbHNlCj4gIAlsZHIJeDMwLCA9dmVjdG9ycwo+ICAjZW5kaWYKPiBA
QCAtODU4LDcgKzg1OCw3IEBAIEVORCh0cmFtcF9leGl0X2NvbXBhdCkKPiAgCS5wb3BzZWN0aW9u
CQkJCS8vIC5lbnRyeS50cmFtcC50ZXh0Cj4gICNpZmRlZiBDT05GSUdfUkFORE9NSVpFX0JBU0UK
PiAgCS5wdXNoc2VjdGlvbiAiLnJvZGF0YSIsICJhIgo+IC0JLmFsaWduIFBBR0VfU0hJRlQKPiAr
CS5hbGlnbgk0Cj4gIAkuZ2xvYmwJX19lbnRyeV90cmFtcF9kYXRhX3N0YXJ0Cj4gIF9fZW50cnlf
dHJhbXBfZGF0YV9zdGFydDoKPiAgCS5xdWFkCXZlY3RvcnMKPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9tbS9tbXUuYyBiL2FyY2gvYXJtNjQvbW0vbW11LmMKPiBpbmRleCAwNWVjOGU1ZjE0MzYu
LjAzZTM1NTcyZmIxZSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L21tL21tdS5jCj4gKysrIGIv
YXJjaC9hcm02NC9tbS9tbXUuYwo+IEBAIC01OTksOSArNTk5LDggQEAgc3RhdGljIGludCBfX2lu
aXQgbWFwX2VudHJ5X3RyYW1wb2xpbmUodm9pZCkKPiAgCWlmIChJU19FTkFCTEVEKENPTkZJR19S
QU5ET01JWkVfQkFTRSkpIHsKPiAgCQlleHRlcm4gY2hhciBfX2VudHJ5X3RyYW1wX2RhdGFfc3Rh
cnRbXTsKPiAgCj4gLQkJX19zZXRfZml4bWFwKEZJWF9FTlRSWV9UUkFNUF9EQVRBLAo+IC0JCQkg
ICAgIF9fcGFfc3ltYm9sKF9fZW50cnlfdHJhbXBfZGF0YV9zdGFydCksCj4gLQkJCSAgICAgUEFH
RV9LRVJORUxfUk8pOwo+ICsJCXBhX3N0YXJ0ID0gX19wYV9zeW1ib2woX19lbnRyeV90cmFtcF9k
YXRhX3N0YXJ0KSAmIFBBR0VfTUFTSzsKPiArCQlfX3NldF9maXhtYXAoRklYX0VOVFJZX1RSQU1Q
X0RBVEEsIHBhX3N0YXJ0LCBQQUdFX0tFUk5FTF9STyk7Cj4gIAl9Cj4gIAo+ICAJcmV0dXJuIDA7
Cj4gLS0gCj4gMi4yNS4xCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
