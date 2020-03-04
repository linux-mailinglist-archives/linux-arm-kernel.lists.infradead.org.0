Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395CB179279
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:39:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hURkwv/kY1P4LnCnl4+96iNsENrhM9mKgDbjmsUUwM=; b=tYUuBL52EkhSup
	DtJ4zz89wuhZeZtYLluf+UJLNsBjEb9qDPn167NSGws8nRvuY2D/m3n+h2pouhZGe47xrcC3ussik
	CIKkQZEb90qUarDUrgia5A6IVXOIdGGLnJI7RLyGDmCQ/XaIIGLLMljZLsMZ9mZnMUTPDYDnguhnS
	/WvrlVmwQaayhhdnqdDM/Tmc8ao3s+vETyNBKLtaEfGYslqzNrFs5hlfwjUu4GrHJMMpHx7MgbiUy
	3CZxu/X+Yy0ns10Q+FYYNWs0P/SuB+3u0HvDoM0u9CF9jNE2zSwovHfpMejmnMhFo5tR+7XO1KgCm
	yI0l2Js/yQhX0DKTKE5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9VAp-00034u-U6; Wed, 04 Mar 2020 14:38:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9VAi-00034E-2K
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:38:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 50E3631B;
 Wed,  4 Mar 2020 06:38:51 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6BC823F6CF;
 Wed,  4 Mar 2020 06:38:50 -0800 (PST)
Date: Wed, 4 Mar 2020 14:38:48 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 3/3] arm64: use mov_q instead of literal ldr
Message-ID: <20200304143847.GF3575@lakrids.cambridge.arm.com>
References: <20200304093631.191200-3-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304093631.191200-3-remi@remlab.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_063852_200148_27FB5447 
X-CRM114-Status: GOOD (  17.09  )
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

T24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMTE6MzY6MzFBTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291
cm1vbnQgd3JvdGU6Cj4gRnJvbTogUmVtaSBEZW5pcy1Db3VybW9udCA8cmVtaS5kZW5pcy5jb3Vy
bW9udEBodWF3ZWkuY29tPgo+IAo+IEluIHByYWN0aWNlLCB0aGlzIHJlcXVpcmVzIG9ubHkgMiBp
bnN0cnVjdGlvbnMsIG9yIGV2ZW4gb25seSAxIGZvcgo+IHRoZSBpZG1hcF9wZ19kaXIgc2l6ZSAo
d2l0aCA0IG9yIDY0IEtpQiBwYWdlcykuIE9ubHkgdGhlIE1BSVIgdmFsdWVzCj4gbmVlZGVkIG1v
cmUgdGhhbiAyIGluc3RydWN0aW9ucyBhbmQgaXQgd2FzIGFscmVhZHkgY29udmVydGVkIHRvIG1v
dl9xCj4gYnkgOTViM2Y3NGJlYzIwMzgwNDY1OGUxN2Y4NmZlMjA3NTViYjhhYmNiOS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBSZW1pIERlbmlzLUNvdXJtb250IDxyZW1pLmRlbmlzLmNvdXJtb250QGh1
YXdlaS5jb20+CgpGV0lXLCB0aGlzIGxvb2tzIHJlYXNvbmFibGUgdG8gbWUgKGV2ZW4gd2l0aG91
dCBwYXRjaCAxKSwgc286CgpBY2tlZC1ieTogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJt
LmNvbT4KCk1hcmsuCgo+IC0tLQo+ICBhcmNoL2FybTY0L2tlcm5lbC9jcHUtcmVzZXQuUyAgICAg
ICB8ICAyICstCj4gIGFyY2gvYXJtNjQva2VybmVsL2h5cC1zdHViLlMgICAgICAgIHwgIDIgKy0K
PiAgYXJjaC9hcm02NC9rZXJuZWwvcmVsb2NhdGVfa2VybmVsLlMgfCAgNCArLS0tCj4gIGFyY2gv
YXJtNjQva3ZtL2h5cC1pbml0LlMgICAgICAgICAgIHwgMTAgKysrKy0tLS0tLQo+ICBhcmNoL2Fy
bTY0L21tL3Byb2MuUyAgICAgICAgICAgICAgICB8ICAyICstCj4gIDUgZmlsZXMgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9rZXJuZWwvY3B1LXJlc2V0LlMgYi9hcmNoL2FybTY0L2tlcm5lbC9jcHUtcmVzZXQuUwo+
IGluZGV4IDMyYzdiZjg1OGRkOS4uMzgwODdiNGMwNDMyIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJt
NjQva2VybmVsL2NwdS1yZXNldC5TCj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1LXJlc2V0
LlMKPiBAQCAtMzIsNyArMzIsNyBAQAo+ICBFTlRSWShfX2NwdV9zb2Z0X3Jlc3RhcnQpCj4gIAkv
KiBDbGVhciBzY3Rscl9lbDEgZmxhZ3MuICovCj4gIAltcnMJeDEyLCBzY3Rscl9lbDEKPiAtCWxk
cgl4MTMsID1TQ1RMUl9FTHhfRkxBR1MKPiArCW1vdl9xCXgxMywgU0NUTFJfRUx4X0ZMQUdTCj4g
IAliaWMJeDEyLCB4MTIsIHgxMwo+ICAJcHJlX2Rpc2FibGVfbW11X3dvcmthcm91bmQKPiAgCW1z
cglzY3Rscl9lbDEsIHgxMgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9oeXAtc3R1
Yi5TIGIvYXJjaC9hcm02NC9rZXJuZWwvaHlwLXN0dWIuUwo+IGluZGV4IDczZDQ2MDcwYjMxNS4u
ZTQ3M2VhZDgwNmVkIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2h5cC1zdHViLlMK
PiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9oeXAtc3R1Yi5TCj4gQEAgLTYzLDcgKzYzLDcgQEAg
ZWwxX3N5bmM6Cj4gIAliZXEJOWYJCQkJLy8gTm90aGluZyB0byByZXNldCEKPiAgCj4gIAkvKiBT
b21lb25lIGNhbGxlZCBrdm1fY2FsbF9oeXAoKSBhZ2FpbnN0IHRoZSBoeXAtc3R1Yi4uLiAqLwo+
IC0JbGRyCXgwLCA9SFZDX1NUVUJfRVJSCj4gKwltb3ZfcQl4MCwgSFZDX1NUVUJfRVJSCj4gIAll
cmV0Cj4gIAo+ICA5Ogltb3YJeDAsIHh6cgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5l
bC9yZWxvY2F0ZV9rZXJuZWwuUyBiL2FyY2gvYXJtNjQva2VybmVsL3JlbG9jYXRlX2tlcm5lbC5T
Cj4gaW5kZXggYzFkN2RiNzFhNzI2Li5jNDBjZTQ5NmM3OGIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9h
cm02NC9rZXJuZWwvcmVsb2NhdGVfa2VybmVsLlMKPiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9y
ZWxvY2F0ZV9rZXJuZWwuUwo+IEBAIC00MSw3ICs0MSw3IEBAIEVOVFJZKGFybTY0X3JlbG9jYXRl
X25ld19rZXJuZWwpCj4gIAljbXAJeDAsICNDdXJyZW50RUxfRUwyCj4gIAliLm5lCTFmCj4gIAlt
cnMJeDAsIHNjdGxyX2VsMgo+IC0JbGRyCXgxLCA9U0NUTFJfRUx4X0ZMQUdTCj4gKwltb3ZfcQl4
MSwgU0NUTFJfRUx4X0ZMQUdTCj4gIAliaWMJeDAsIHgwLCB4MQo+ICAJcHJlX2Rpc2FibGVfbW11
X3dvcmthcm91bmQKPiAgCW1zcglzY3Rscl9lbDIsIHgwCj4gQEAgLTExMyw4ICsxMTMsNiBAQCBF
TlRSWShhcm02NF9yZWxvY2F0ZV9uZXdfa2VybmVsKQo+ICAKPiAgRU5EUFJPQyhhcm02NF9yZWxv
Y2F0ZV9uZXdfa2VybmVsKQo+ICAKPiAtLmx0b3JnCj4gLQo+ICAuYWxpZ24gMwkvKiBUbyBrZWVw
IHRoZSA2NC1iaXQgdmFsdWVzIGJlbG93IG5hdHVyYWxseSBhbGlnbmVkLiAqLwo+ICAKPiAgLkxj
b3B5X2VuZDoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rdm0vaHlwLWluaXQuUyBiL2FyY2gv
YXJtNjQva3ZtL2h5cC1pbml0LlMKPiBpbmRleCAxNjBiZTJiNDY5NmQuLjM3ZDdkYzVlYzEwZCAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2t2bS9oeXAtaW5pdC5TCj4gKysrIGIvYXJjaC9hcm02
NC9rdm0vaHlwLWluaXQuUwo+IEBAIC02MCw3ICs2MCw3IEBAIGFsdGVybmF0aXZlX2Vsc2Vfbm9w
X2VuZGlmCj4gIAltc3IJdHRicjBfZWwyLCB4NAo+ICAKPiAgCW1ycwl4NCwgdGNyX2VsMQo+IC0J
bGRyCXg1LCA9VENSX0VMMl9NQVNLCj4gKwltb3ZfcQl4NSwgVENSX0VMMl9NQVNLCj4gIAlhbmQJ
eDQsIHg0LCB4NQo+ICAJbW92CXg1LCAjVENSX0VMMl9SRVMxCj4gIAlvcnIJeDQsIHg0LCB4NQo+
IEBAIC0xMDIsNyArMTAyLDcgQEAgYWx0ZXJuYXRpdmVfZWxzZV9ub3BfZW5kaWYKPiAgCSAqIGFz
IHdlbGwgYXMgdGhlIEVFIGJpdCBvbiBCRS4gRHJvcCB0aGUgQSBmbGFnIHNpbmNlIHRoZSBjb21w
aWxlcgo+ICAJICogaXMgYWxsb3dlZCB0byBnZW5lcmF0ZSB1bmFsaWduZWQgYWNjZXNzZXMuCj4g
IAkgKi8KPiAtCWxkcgl4NCwgPShTQ1RMUl9FTDJfUkVTMSB8IChTQ1RMUl9FTHhfRkxBR1MgJiB+
U0NUTFJfRUx4X0EpKQo+ICsJbW92X3EJeDQsIChTQ1RMUl9FTDJfUkVTMSB8IChTQ1RMUl9FTHhf
RkxBR1MgJiB+U0NUTFJfRUx4X0EpKQo+ICBDUFVfQkUoCW9ycgl4NCwgeDQsICNTQ1RMUl9FTHhf
RUUpCj4gIAltc3IJc2N0bHJfZWwyLCB4NAo+ICAJaXNiCj4gQEAgLTE0Miw3ICsxNDIsNyBAQCBy
ZXNldDoKPiAgCSAqIGNhc2Ugd2UgY29taW5nIHZpYSBIVkNfU09GVF9SRVNUQVJULgo+ICAJICov
Cj4gIAltcnMJeDUsIHNjdGxyX2VsMgo+IC0JbGRyCXg2LCA9U0NUTFJfRUx4X0ZMQUdTCj4gKwlt
b3ZfcQl4NiwgU0NUTFJfRUx4X0ZMQUdTCj4gIAliaWMJeDUsIHg1LCB4NgkJLy8gQ2xlYXIgU0NU
TF9NIGFuZCBldGMKPiAgCXByZV9kaXNhYmxlX21tdV93b3JrYXJvdW5kCj4gIAltc3IJc2N0bHJf
ZWwyLCB4NQo+IEBAIC0xNTUsMTEgKzE1NSw5IEBAIHJlc2V0Ogo+ICAJZXJldAo+ICAKPiAgMToJ
LyogQmFkIHN0dWIgY2FsbCAqLwo+IC0JbGRyCXgwLCA9SFZDX1NUVUJfRVJSCj4gKwltb3ZfcQl4
MCwgSFZDX1NUVUJfRVJSCj4gIAllcmV0Cj4gIAo+ICBFTkRQUk9DKF9fa3ZtX2hhbmRsZV9zdHVi
X2h2YykKPiAgCj4gLQkubHRvcmcKPiAtCj4gIAkucG9wc2VjdGlvbgo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L21tL3Byb2MuUyBiL2FyY2gvYXJtNjQvbW0vcHJvYy5TCj4gaW5kZXggNzY4OTlj
NmVlZTJiLi4xZGYzMDM0MDUyMjMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9tbS9wcm9jLlMK
PiArKysgYi9hcmNoL2FybTY0L21tL3Byb2MuUwo+IEBAIC00MDgsNyArNDA4LDcgQEAgU1lNX0ZV
TkNfU1RBUlQoX19jcHVfc2V0dXApCj4gIAkgKiBTZXQvcHJlcGFyZSBUQ1IgYW5kIFRUQlIuIFdl
IHVzZSA1MTJHQiAoMzktYml0KSBhZGRyZXNzIHJhbmdlIGZvcgo+ICAJICogYm90aCB1c2VyIGFu
ZCBrZXJuZWwuCj4gIAkgKi8KPiAtCWxkcgl4MTAsID1UQ1JfVHhTWihWQV9CSVRTKSB8IFRDUl9D
QUNIRV9GTEFHUyB8IFRDUl9TTVBfRkxBR1MgfCBcCj4gKwltb3ZfcQl4MTAsIFRDUl9UeFNaKFZB
X0JJVFMpIHwgVENSX0NBQ0hFX0ZMQUdTIHwgVENSX1NNUF9GTEFHUyB8IFwKPiAgCQkJVENSX1RH
X0ZMQUdTIHwgVENSX0tBU0xSX0ZMQUdTIHwgVENSX0FTSUQxNiB8IFwKPiAgCQkJVENSX1RCSTAg
fCBUQ1JfQTEgfCBUQ1JfS0FTQU5fRkxBR1MKPiAgCXRjcl9jbGVhcl9lcnJhdGFfYml0cyB4MTAs
IHg5LCB4NQo+IC0tIAo+IDIuMjUuMQo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
