Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F63D183660
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 17:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbhtNW+A1rmnMaQS+gnMjKHLOhrg9ZAvZYBK7pk8UD4=; b=pHc6TxOmru1NmD
	dQeOgWUWmhsTmYweJOmPTc7KaBn1yY82NNSF5bUVLeWpB9fQccBzRPJsVTsleqKIyhK0davSTAUBt
	IceGnwy4+kn4xo6iesbZ8lMnJN6zmoJbz/42IfvD4tSlxEkECk2sRcTRDLA97EsSWwaE7pR7wKZ6d
	3LxcjmAd80wRmrVR3dzkgGXWdWoyx2pUvCRYszzlvC2htB7RMPBnGW9p92Aw1TYTVeV2nSiqbbe/y
	n2MhqBNMoRuIYtOt6M+4C1prgLCyjjMCRL5GkDUEh9pZcuACMz7iFnbA8SjGku3FHMLv4s0nbWA0g
	G5yCHqihobgnf/lvq3Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQv3-0008Mm-V6; Thu, 12 Mar 2020 16:42:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQuo-0008Lv-70
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 16:42:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9757130E;
 Thu, 12 Mar 2020 09:42:33 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 471CB3F6CF;
 Thu, 12 Mar 2020 09:42:32 -0700 (PDT)
Date: Thu, 12 Mar 2020 16:42:30 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH] arm64: use mov_q instead of literal ldr
Message-ID: <20200312164229.GB21120@lakrids.cambridge.arm.com>
References: <20200312094014.153356-1-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312094014.153356-1-remi@remlab.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_094234_344300_CE27C988 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXIgMTIsIDIwMjAgYXQgMTE6NDA6MTRBTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291
cm1vbnQgd3JvdGU6Cj4gRnJvbTogUmVtaSBEZW5pcy1Db3VybW9udCA8cmVtaS5kZW5pcy5jb3Vy
bW9udEBodWF3ZWkuY29tPgo+IAo+IEluIHByYWN0aWNlLCB0aGlzIHJlcXVpcmVzIG9ubHkgMiBp
bnN0cnVjdGlvbnMsIG9yIGV2ZW4gb25seSAxIGZvcgo+IHRoZSBpZG1hcF9wZ19kaXIgc2l6ZSAo
d2l0aCA0IG9yIDY0IEtpQiBwYWdlcykuIE9ubHkgdGhlIE1BSVIgdmFsdWVzCj4gbmVlZGVkIG1v
cmUgdGhhbiAyIGluc3RydWN0aW9ucyBhbmQgaXQgd2FzIGFscmVhZHkgY29udmVydGVkIHRvIG1v
dl9xCj4gYnkgOTViM2Y3NGJlYzIwMzgwNDY1OGUxN2Y4NmZlMjA3NTViYjhhYmNiOS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBSZW1pIERlbmlzLUNvdXJtb250IDxyZW1pLmRlbmlzLmNvdXJtb250QGh1
YXdlaS5jb20+CgpGV0lXOgoKQWNrZWQtYnk6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFy
bS5jb20+CgpNYXJrLgoKPiAtLS0KPiAgYXJjaC9hcm02NC9rZXJuZWwvY3B1LXJlc2V0LlMgICAg
ICAgfCAgMiArLQo+ICBhcmNoL2FybTY0L2tlcm5lbC9oeXAtc3R1Yi5TICAgICAgICB8ICAyICst
Cj4gIGFyY2gvYXJtNjQva2VybmVsL3JlbG9jYXRlX2tlcm5lbC5TIHwgIDQgKy0tLQo+ICBhcmNo
L2FybTY0L2t2bS9oeXAtaW5pdC5TICAgICAgICAgICB8IDEwICsrKystLS0tLS0KPiAgYXJjaC9h
cm02NC9tbS9wcm9jLlMgICAgICAgICAgICAgICAgfCAgMiArLQo+ICA1IGZpbGVzIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQva2VybmVsL2NwdS1yZXNldC5TIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1LXJlc2V0LlMK
PiBpbmRleCAzMmM3YmY4NThkZDkuLjM4MDg3YjRjMDQzMiAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bTY0L2tlcm5lbC9jcHUtcmVzZXQuUwo+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2NwdS1yZXNl
dC5TCj4gQEAgLTMyLDcgKzMyLDcgQEAKPiAgRU5UUlkoX19jcHVfc29mdF9yZXN0YXJ0KQo+ICAJ
LyogQ2xlYXIgc2N0bHJfZWwxIGZsYWdzLiAqLwo+ICAJbXJzCXgxMiwgc2N0bHJfZWwxCj4gLQls
ZHIJeDEzLCA9U0NUTFJfRUx4X0ZMQUdTCj4gKwltb3ZfcQl4MTMsIFNDVExSX0VMeF9GTEFHUwo+
ICAJYmljCXgxMiwgeDEyLCB4MTMKPiAgCXByZV9kaXNhYmxlX21tdV93b3JrYXJvdW5kCj4gIAlt
c3IJc2N0bHJfZWwxLCB4MTIKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvaHlwLXN0
dWIuUyBiL2FyY2gvYXJtNjQva2VybmVsL2h5cC1zdHViLlMKPiBpbmRleCA3M2Q0NjA3MGIzMTUu
LmU0NzNlYWQ4MDZlZCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9oeXAtc3R1Yi5T
Cj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvaHlwLXN0dWIuUwo+IEBAIC02Myw3ICs2Myw3IEBA
IGVsMV9zeW5jOgo+ICAJYmVxCTlmCQkJCS8vIE5vdGhpbmcgdG8gcmVzZXQhCj4gIAo+ICAJLyog
U29tZW9uZSBjYWxsZWQga3ZtX2NhbGxfaHlwKCkgYWdhaW5zdCB0aGUgaHlwLXN0dWIuLi4gKi8K
PiAtCWxkcgl4MCwgPUhWQ19TVFVCX0VSUgo+ICsJbW92X3EJeDAsIEhWQ19TVFVCX0VSUgo+ICAJ
ZXJldAo+ICAKPiAgOToJbW92CXgwLCB4enIKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJu
ZWwvcmVsb2NhdGVfa2VybmVsLlMgYi9hcmNoL2FybTY0L2tlcm5lbC9yZWxvY2F0ZV9rZXJuZWwu
Uwo+IGluZGV4IGMxZDdkYjcxYTcyNi4uYzQwY2U0OTZjNzhiIDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtNjQva2VybmVsL3JlbG9jYXRlX2tlcm5lbC5TCj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwv
cmVsb2NhdGVfa2VybmVsLlMKPiBAQCAtNDEsNyArNDEsNyBAQCBFTlRSWShhcm02NF9yZWxvY2F0
ZV9uZXdfa2VybmVsKQo+ICAJY21wCXgwLCAjQ3VycmVudEVMX0VMMgo+ICAJYi5uZQkxZgo+ICAJ
bXJzCXgwLCBzY3Rscl9lbDIKPiAtCWxkcgl4MSwgPVNDVExSX0VMeF9GTEFHUwo+ICsJbW92X3EJ
eDEsIFNDVExSX0VMeF9GTEFHUwo+ICAJYmljCXgwLCB4MCwgeDEKPiAgCXByZV9kaXNhYmxlX21t
dV93b3JrYXJvdW5kCj4gIAltc3IJc2N0bHJfZWwyLCB4MAo+IEBAIC0xMTMsOCArMTEzLDYgQEAg
RU5UUlkoYXJtNjRfcmVsb2NhdGVfbmV3X2tlcm5lbCkKPiAgCj4gIEVORFBST0MoYXJtNjRfcmVs
b2NhdGVfbmV3X2tlcm5lbCkKPiAgCj4gLS5sdG9yZwo+IC0KPiAgLmFsaWduIDMJLyogVG8ga2Vl
cCB0aGUgNjQtYml0IHZhbHVlcyBiZWxvdyBuYXR1cmFsbHkgYWxpZ25lZC4gKi8KPiAgCj4gIC5M
Y29weV9lbmQ6Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva3ZtL2h5cC1pbml0LlMgYi9hcmNo
L2FybTY0L2t2bS9oeXAtaW5pdC5TCj4gaW5kZXggODRmMzJjZjVhYmM3Li42ZTZlZDU1ODFlZWQg
MTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9rdm0vaHlwLWluaXQuUwo+ICsrKyBiL2FyY2gvYXJt
NjQva3ZtL2h5cC1pbml0LlMKPiBAQCAtNjAsNyArNjAsNyBAQCBhbHRlcm5hdGl2ZV9lbHNlX25v
cF9lbmRpZgo+ICAJbXNyCXR0YnIwX2VsMiwgeDQKPiAgCj4gIAltcnMJeDQsIHRjcl9lbDEKPiAt
CWxkcgl4NSwgPVRDUl9FTDJfTUFTSwo+ICsJbW92X3EJeDUsIFRDUl9FTDJfTUFTSwo+ICAJYW5k
CXg0LCB4NCwgeDUKPiAgCW1vdgl4NSwgI1RDUl9FTDJfUkVTMQo+ICAJb3JyCXg0LCB4NCwgeDUK
PiBAQCAtMTAyLDcgKzEwMiw3IEBAIGFsdGVybmF0aXZlX2Vsc2Vfbm9wX2VuZGlmCj4gIAkgKiBh
cyB3ZWxsIGFzIHRoZSBFRSBiaXQgb24gQkUuIERyb3AgdGhlIEEgZmxhZyBzaW5jZSB0aGUgY29t
cGlsZXIKPiAgCSAqIGlzIGFsbG93ZWQgdG8gZ2VuZXJhdGUgdW5hbGlnbmVkIGFjY2Vzc2VzLgo+
ICAJICovCj4gLQlsZHIJeDQsID0oU0NUTFJfRUwyX1JFUzEgfCAoU0NUTFJfRUx4X0ZMQUdTICYg
flNDVExSX0VMeF9BKSkKPiArCW1vdl9xCXg0LCAoU0NUTFJfRUwyX1JFUzEgfCAoU0NUTFJfRUx4
X0ZMQUdTICYgflNDVExSX0VMeF9BKSkKPiAgQ1BVX0JFKAlvcnIJeDQsIHg0LCAjU0NUTFJfRUx4
X0VFKQo+ICAJbXNyCXNjdGxyX2VsMiwgeDQKPiAgCWlzYgo+IEBAIC0xNDIsNyArMTQyLDcgQEAg
cmVzZXQ6Cj4gIAkgKiBjYXNlIHdlIGNvbWluZyB2aWEgSFZDX1NPRlRfUkVTVEFSVC4KPiAgCSAq
Lwo+ICAJbXJzCXg1LCBzY3Rscl9lbDIKPiAtCWxkcgl4NiwgPVNDVExSX0VMeF9GTEFHUwo+ICsJ
bW92X3EJeDYsIFNDVExSX0VMeF9GTEFHUwo+ICAJYmljCXg1LCB4NSwgeDYJCS8vIENsZWFyIFND
VExfTSBhbmQgZXRjCj4gIAlwcmVfZGlzYWJsZV9tbXVfd29ya2Fyb3VuZAo+ICAJbXNyCXNjdGxy
X2VsMiwgeDUKPiBAQCAtMTU1LDExICsxNTUsOSBAQCByZXNldDoKPiAgCWVyZXQKPiAgCj4gIDE6
CS8qIEJhZCBzdHViIGNhbGwgKi8KPiAtCWxkcgl4MCwgPUhWQ19TVFVCX0VSUgo+ICsJbW92X3EJ
eDAsIEhWQ19TVFVCX0VSUgo+ICAJZXJldAo+ICAKPiAgU1lNX0NPREVfRU5EKF9fa3ZtX2hhbmRs
ZV9zdHViX2h2YykKPiAgCj4gLQkubHRvcmcKPiAtCj4gIAkucG9wc2VjdGlvbgo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L21tL3Byb2MuUyBiL2FyY2gvYXJtNjQvbW0vcHJvYy5TCj4gaW5kZXgg
MWI4NzFmMTQxZWI0Li42YmQyMjgwNjdlYmMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9tbS9w
cm9jLlMKPiArKysgYi9hcmNoL2FybTY0L21tL3Byb2MuUwo+IEBAIC00MTEsNyArNDExLDcgQEAg
U1lNX0ZVTkNfU1RBUlQoX19jcHVfc2V0dXApCj4gIAkgKiBTZXQvcHJlcGFyZSBUQ1IgYW5kIFRU
QlIuIFdlIHVzZSA1MTJHQiAoMzktYml0KSBhZGRyZXNzIHJhbmdlIGZvcgo+ICAJICogYm90aCB1
c2VyIGFuZCBrZXJuZWwuCj4gIAkgKi8KPiAtCWxkcgl4MTAsID1UQ1JfVHhTWihWQV9CSVRTKSB8
IFRDUl9DQUNIRV9GTEFHUyB8IFRDUl9TTVBfRkxBR1MgfCBcCj4gKwltb3ZfcQl4MTAsIFRDUl9U
eFNaKFZBX0JJVFMpIHwgVENSX0NBQ0hFX0ZMQUdTIHwgVENSX1NNUF9GTEFHUyB8IFwKPiAgCQkJ
VENSX1RHX0ZMQUdTIHwgVENSX0tBU0xSX0ZMQUdTIHwgVENSX0FTSUQxNiB8IFwKPiAgCQkJVENS
X1RCSTAgfCBUQ1JfQTEgfCBUQ1JfS0FTQU5fRkxBR1MKPiAgCXRjcl9jbGVhcl9lcnJhdGFfYml0
cyB4MTAsIHg5LCB4NQo+IC0tIAo+IDIuMjUuMQo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
