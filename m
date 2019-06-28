Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9923859306
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jF2jPcUNE/w8YySy+neaj8PTMB8yWf3wi98dbDskMgQ=; b=fcBvP1PIos1Ay3
	z5CYj5yT9ZpB190XbREDwdY46jnWSAIhEm2/KFSiaWFmCph7gVunngCQSl9ERUxh8UfvaJdgH9ol0
	I1e+DIhM/W70YijNlf8LY5UII5fkiO/jUHw0ZTE2NTjytJ2faPLWm4nIudlySW4uP5soM8QSEGFeU
	ULVyFOfHkPhnhfoOufkSoMtDdKQ3zgp1F49nW/EOLQ9KUAiqIXcqYAAyGxUFOTP/1S00BsDwhMVv6
	YCqarbPdHpK7vU0ddedB9jLxqG7MDJvhFe87QaxROetFThz+YPgyQk0UZoXyWo12t6ES3bvb6qRPz
	78XqjbrlW8aliKtVFmNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgitE-00072d-3N; Fri, 28 Jun 2019 04:53:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgit1-00071Y-VY
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:53:25 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC29A20656;
 Fri, 28 Jun 2019 04:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561697600;
 bh=xyfM4ZWcVSKm8cjlTQWt6Dt2SEgAkACNyGwMNKTacAo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z3bBPa40+DwkDvULVLnnYbo1JZ4XWv6vjxv/VDsDg4XaHDOxyLs/a29o2G5izpXRS
 tV9rI2CL2aUtlgnfH29W2eShhpazNje3MwhMuKTERKz5mbpC59ewRFYE2CXkMeCQdj
 aQLfoPNd/8LGSWv1cB0P8081htHFDUfJPm7MmVg4=
Date: Thu, 27 Jun 2019 21:53:18 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [RESEND PATCH 00/10] crypto: k3: Add sa2ul driver
Message-ID: <20190628045318.GC673@sol.localdomain>
References: <20190628042745.28455-1-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628042745.28455-1-j-keerthy@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_215324_048318_8439DEDF 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2VlcnRoeSwKCk9uIEZyaSwgSnVuIDI4LCAyMDE5IGF0IDA5OjU3OjM1QU0gKzA1MzAsIEtl
ZXJ0aHkgd3JvdGU6Cj4gVGhlIHNlcmllcyBhZGRzIENyeXB0byBoYXJkd2FyZSBhY2NlbGVyYXRv
ciBzdXBwb3J0IGZvciBTQTJVTC4KPiBTQTJVTCBzdGFuZHMgZm9yIHNlY3VyaXR5IGFjY2VsZXJh
dG9yIHVsdHJhIGxpdGUuCj4gCj4gVGhlIFNlY3VyaXR5IEFjY2VsZXJhdG9yIChTQTJfVUwpIHN1
YnN5c3RlbSBwcm92aWRlcyBoYXJkd2FyZQo+IGNyeXB0b2dyYXBoaWMgYWNjZWxlcmF0aW9uIGZv
ciB0aGUgZm9sbG93aW5nIHVzZSBjYXNlczoKPiDigKIgRW5jcnlwdGlvbiBhbmQgYXV0aGVudGlj
YXRpb24gZm9yIHNlY3VyZSBib290Cj4g4oCiIEVuY3J5cHRpb24gYW5kIGF1dGhlbnRpY2F0aW9u
IG9mIGNvbnRlbnQgaW4gYXBwbGljYXRpb25zCj4gICByZXF1aXJpbmcgRFJNIChkaWdpdGFsIHJp
Z2h0cyBtYW5hZ2VtZW50KSBhbmQKPiAgIGNvbnRlbnQvYXNzZXQgcHJvdGVjdGlvbgo+IFRoZSBk
ZXZpY2UgaW5jbHVkZXMgb25lIGluc3RhbnRpYXRpb24gb2YgU0EyX1VMIG5hbWVkIFNBMl9VTDAK
PiAKPiBTQTJVTCBuZWVkcyBvbiB0eCBjaGFubmVsIGFuZCBhIHBhaXIgb2YgcnggZG1hIGNoYW5u
ZWxzLgo+IAo+IFRoaXMgc2VyaWVzIGhhcyBkZXBlbmRlbmN5IG9uIFVETUEgc2VyaWVzLiBIZW5j
ZSBpcyBiYXNlZCBvbiB0b3Agb2Y6Cj4gCj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9w
cm9qZWN0L2xpbnV4LWRtYWVuZ2luZS9saXN0Lz9zZXJpZXM9MTE0MTA1Cj4gCj4gVGhlIGFib3Zl
IHNlcmllcyBhZGRzIGNvdXBsZSBvZiBkbWFlbmdpbmUgQVBJcyB0aGF0IGFyZSB1c2VkCj4gYnkg
dGhlIHNhMnVsIGRyaXZlci4gSGVuY2UgdGhlcmUgaXMgYSBoYXJkIGRlcGVuZGVuY3kgb24gdGhl
Cj4gYWJvdmUgc2VyaWVzLgo+IAo+IFJlc2VuZGluZyB3aXRoIGxpbnV4LWNyeXB0byBsaXN0IGlu
IENjLgo+IAo+IEtlZXJ0aHkgKDEwKToKPiAgIGR0LWJpbmRpbmdzOiBjcnlwdG86IGszOiBBZGQg
c2EydWwgYmluZGluZ3MgZG9jdW1lbnRhdGlvbgo+ICAgY3J5cHRvOiBzYTJ1bDogQWRkIGNyeXB0
byBkcml2ZXIKPiAgIGNyeXB0bzogc2EydWw6IEFkZCBBRVMgRUNCIE1vZGUgc3VwcG9ydAo+ICAg
Y3J5cHRvOiBzYTJ1bDogQWRkIGFlYWQgc3VwcG9ydCBmb3IgaG1hYyhzaGExKWNiYyhhZXMpIGFs
Z29yaXRobQo+ICAgY3J5cHRvOiBzaGEyNTZfZ2VuZXJpYzogRXhwb3J0IHRoZSBUcmFuc2Zvcm0g
ZnVuY3Rpb24KPiAgIGNyeXB0bzogc2EydWw6IEFkZCBobWFjKHNoYTI1NiljYmMoYWVzKSBBRUFE
IEFsZ28gc3VwcG9ydAo+ICAgY3J5cHRvOiBzYTJ1bDogQWRkIGhtYWMoc2hhMSkgSE1BQyBhbGdv
cml0aG0gc3VwcG9ydAo+ICAgY3J5cHRvOiBzYTJ1bDogQWRkIGhtYWMoc2hhMjU2KSBITUFDIGFs
Z29yaXRobSBzdXBwb3J0Cj4gICBzYTJ1bDogQWRkIDNERVMgRUNCICYgQ0JDIE1vZGUgc3VwcG9y
dAo+ICAgYXJtNjQ6IGR0czogazMtYW02OiBBZGQgY3J5cHRvIGFjY2VsYXJhdG9yIG5vZGUKPiAK
PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5cHRvL3NhMnVsLnR4dCAgICAgIHwgICA0NyAr
Cj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2kgICAgICB8ICAgMzMg
Kwo+ICBjcnlwdG8vc2hhMjU2X2dlbmVyaWMuYyAgICAgICAgICAgICAgICAgICAgICAgfCAgICAz
ICstCj4gIGRyaXZlcnMvY3J5cHRvL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICB8ICAg
MTcgKwo+ICBkcml2ZXJzL2NyeXB0by9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgfCAg
ICAxICsKPiAgZHJpdmVycy9jcnlwdG8vc2EydWwuYyAgICAgICAgICAgICAgICAgICAgICAgIHwg
MjIzMiArKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2NyeXB0by9zYTJ1bC5oICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgMzg0ICsrKwo+ICBpbmNsdWRlL2NyeXB0by9zaGEuaCAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgICAxICsKPiAgOCBmaWxlcyBjaGFuZ2VkLCAyNzE3IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vc2EydWwudHh0Cj4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2NyeXB0by9zYTJ1bC5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2NyeXB0by9zYTJ1bC5oCgpEaWQgeW91IHJ1biB0aGUgY3J5cHRvIHNlbGYtdGVzdHMgb24gdGhp
cyBkcml2ZXI/ICBpLmUuIGJvb3QgYSBrZXJuZWwgd2l0aAoKCSMgQ09ORklHX0NSWVBUT19NQU5B
R0VSX0RJU0FCTEVfVEVTVFMgaXMgbm90IHNldAoJQ09ORklHX0RFQlVHX0tFUk5FTD15CglDT05G
SUdfQ1JZUFRPX01BTkFHRVJfRVhUUkFfVEVTVFM9eQoKV2hhdCBhcmUgdGhlIHJlc3VsdHM/CgpB
bHNvLCB0aGlzIHBhdGNoc2V0IGRvZXMgbm90IGNvbXBpbGUgZm9yIG1lLgoKRXJyb3I6IGFyY2gv
YXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2k6MTAzLjMzLTM0IHN5bnRheCBlcnJv
cgpGQVRBTCBFUlJPUjogVW5hYmxlIHRvIHBhcnNlIGlucHV0IHRyZWUKICBEVEMgICAgIGFyY2gv
YXJtNjQvYm9vdC9kdHMvbnZpZGlhL3RlZ3JhMjEwLXAyNTcxLmR0YgptYWtlWzJdOiAqKiogW3Nj
cmlwdHMvTWFrZWZpbGUubGliOjI5NDogYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1hbTY1NC1i
YXNlLWJvYXJkLmR0Yl0gRXJyb3IgMQptYWtlWzFdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVp
bGQ6NDg5OiBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpXSBFcnJvciAyCm1ha2VbMV06ICoqKiBXYWl0
aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCgotIEVyaWMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
