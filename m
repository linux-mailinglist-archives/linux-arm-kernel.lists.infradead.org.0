Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B425420AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 11:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLoiVpFf4ex3iyqmoqUdu9Mt8NrZbtatw2yQ5FttThk=; b=cucfNhRCLGijd1
	fVZSYVbizXVlJGY9IjoG87LnIZPoaRqXbI2qVE+xAZZE00GcBcjcc4HA9WPuOKlnqYyLvK5WA/ss+
	Q8i86NmqYT8uQ+yjw3BWHvaesRlSTFtBh1IkgpR0Q2oermurnB1b8ZY/0uTGO/hZxRlzAxbulF9Of
	7PIU5lqAIq0AmqN5DabF3y/AphkW4D5rWkqlFmmcLIXBA7NPk79jRqD3nOXeTZm4OjJSVhGsLP8FB
	GcpWUgoRyOddkUbzecs+Y9lb+g/HVf23FKptjOdkyjD5NCzFbwyW8Z8S0JHilwfnCwN2SSwgm+Koh
	qW8JuraMi1zvMTQLYxJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazVj-0007fP-Qe; Wed, 12 Jun 2019 09:25:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hazVU-0007ev-E7
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 09:25:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C883C28;
 Wed, 12 Jun 2019 02:25:23 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AA1123F246;
 Wed, 12 Jun 2019 02:25:22 -0700 (PDT)
Date: Wed, 12 Jun 2019 10:25:20 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] arm64: Don't unconditionally add -Wno-psabi to
 KBUILD_CFLAGS
Message-ID: <20190612092519.GP28398@e103592.cambridge.arm.com>
References: <20190607161201.73430-1-natechancellor@gmail.com>
 <20190611171931.99705-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611171931.99705-1-natechancellor@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_022524_570079_DA4B67D4 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, clang-built-linux@googlegroups.com,
 Qian Cai <cai@lca.pw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgMTA6MTk6MzJBTSAtMDcwMCwgTmF0aGFuIENoYW5jZWxs
b3Igd3JvdGU6Cj4gVGhpcyBpcyBhIEdDQyBvbmx5IG9wdGlvbiwgd2hpY2ggd2FybnMgYWJvdXQg
QUJJIGNoYW5nZXMgd2l0aGluIEdDQywgc28KPiB1bmNvbmRpdGlvbmFsbHkgYWRkaW5nIGl0IGJy
ZWFrcyBDbGFuZyB3aXRoIHRvbnMgb2Y6Cj4gCj4gd2FybmluZzogdW5rbm93biB3YXJuaW5nIG9w
dGlvbiAnLVduby1wc2FiaScgWy1XdW5rbm93bi13YXJuaW5nLW9wdGlvbl0KPiAKPiBhbmQgbGlu
ayB0aW1lIGZhaWx1cmVzOgo+IAo+IGxkLmxsZDogZXJyb3I6IHVuZGVmaW5lZCBzeW1ib2w6IF9f
ZWZpc3R1Yl9fX3N0YWNrX2Noa19ndWFyZAo+ID4+PiByZWZlcmVuY2VkIGJ5IGFybS1zdHViLmM6
NzMKPiAoL2hvbWUvbmF0aGFuL2NibC9saW51eC9kcml2ZXJzL2Zpcm13YXJlL2VmaS9saWJzdHVi
L2FybS1zdHViLmM6NzMpCj4gPj4+ICAgICAgICAgICAgICAgYXJtLXN0dWIuc3R1Yi5vOihfX2Vm
aXN0dWJfaW5zdGFsbF9tZW1yZXNlcnZlX3RhYmxlKQo+IGluIGFyY2hpdmUgLi9kcml2ZXJzL2Zp
cm13YXJlL2VmaS9saWJzdHViL2xpYi5hCj4gCj4gVGhlc2UgZmFpbHVyZXMgY29tZSBmcm9tIHRo
ZSBsYWNrIG9mIC1mbm8tc3RhY2stcHJvdGVjdG9yLCB3aGljaCBpcwo+IGFkZGVkIHZpYSBjYy1v
cHRpb24gaW4gZHJpdmVycy9maXJtd2FyZS9lZmkvbGlic3R1Yi9NYWtlZmlsZS4gV2hlbiBhbgo+
IHVua25vd24gZmxhZyBpcyBhZGRlZCB0byBLQlVJTERfQ0ZMQUdTLCBjbGFuZyB3aWxsIG5vaXNp
bHkgd2FybiB0aGF0IGl0Cj4gaXMgaWdub3JpbmcgdGhlIG9wdGlvbiBsaWtlIGFib3ZlLCB1bmxp
a2UgZ2NjLCB3aG8gd2lsbCBqdXN0IGVycm9yLgo+IAo+ICQgZWNobyAiaW50IG1haW4oKSB7IHJl
dHVybiAwOyB9IiA+IHRtcC5jCj4gCj4gJCBjbGFuZyAtV25vLXBzYWJpIHRtcC5jOyBlY2hvICQ/
Cj4gd2FybmluZzogdW5rbm93biB3YXJuaW5nIG9wdGlvbiAnLVduby1wc2FiaScgWy1XdW5rbm93
bi13YXJuaW5nLW9wdGlvbl0KPiAxIHdhcm5pbmcgZ2VuZXJhdGVkLgo+IDAKPiAKPiAkIGdjYyAt
V3NvbWV0aW1lcy11bmluaXRpYWxpemVkIHRtcC5jOyBlY2hvICQ/Cj4gZ2NjOiBlcnJvcjogdW5y
ZWNvZ25pemVkIGNvbW1hbmQgbGluZSBvcHRpb24KPiDigJgtV3NvbWV0aW1lcy11bmluaXRpYWxp
emVk4oCZOyBkaWQgeW91IG1lYW4g4oCYLVdtYXliZS11bmluaXRpYWxpemVk4oCZPwo+IDEKPiAK
PiBGb3IgY2Mtb3B0aW9uIHRvIHdvcmsgcHJvcGVybHkgd2l0aCBjbGFuZyBhbmQgYmVoYXZlIGxp
a2UgZ2NjLCAtV2Vycm9yCj4gaXMgbmVlZGVkLCB3aGljaCB3YXMgZG9uZSBpbiBjb21taXQgYzNm
MGQwYmM1YjAxICgia2J1aWxkLCBMTFZNTGludXg6Cj4gQWRkIC1XZXJyb3IgdG8gY2Mtb3B0aW9u
IHRvIHN1cHBvcnQgY2xhbmciKS4KPiAKPiAkIGNsYW5nIC1XZXJyb3IgLVduby1wc2FiaSB0bXAu
YzsgZWNobyAkPwo+IGVycm9yOiB1bmtub3duIHdhcm5pbmcgb3B0aW9uICctV25vLXBzYWJpJwo+
IFstV2Vycm9yLC1XdW5rbm93bi13YXJuaW5nLW9wdGlvbl0KPiAxCj4gCj4gQXMgYSBjb25zZXF1
ZW5jZSBvZiB0aGlzLCB3aGVuIGFuIHVua25vd24gZmxhZyBpcyB1bmNvbmRpdGlvbmFsbHkgYWRk
ZWQKPiB0byBLQlVJTERfQ0ZMQUdTLCBpdCB3aWxsIGNhdXNlIGNjLW9wdGlvbiB0byBhbHdheXMg
ZmFpbCBhbmQgdGhvc2UgZmxhZ3MKPiB3aWxsIG5ldmVyIGdldCBhZGRlZDoKPiAKPiAkIGNsYW5n
IC1XZXJyb3IgLVduby1wc2FiaSAtZm5vLXN0YWNrLXByb3RlY3RvciB0bXAuYzsgZWNobyAkPwo+
IGVycm9yOiB1bmtub3duIHdhcm5pbmcgb3B0aW9uICctV25vLXBzYWJpJwo+IFstV2Vycm9yLC1X
dW5rbm93bi13YXJuaW5nLW9wdGlvbl0KPiAxCj4gCj4gVGhpcyBjYW4gYmUgc2VlbiB3aGVuIGNv
bXBpbGluZyB0aGUgd2hvbGUga2VybmVsIGFzIHNvbWUgd2FybmluZ3MgdGhhdAo+IGFyZSBub3Jt
YWxseSBkaXNhYmxlZCAoc2VlIGJlbG93KSBzaG93IHVwLiBUaGUgZnVsbCBsaXN0IG9mIGZsYWdz
Cj4gbWlzc2luZyBmcm9tIGRyaXZlcnMvZmlybXdhcmUvZWZpL2xpYnN0dWIgYXJlIHRoZSBmb2xs
b3dpbmcgKGdhdGhlcmVkCj4gZnJvbSBkaWZmaW5nIC5hcm02NC1zdHViLm8uY21kKToKPiAKPiAt
Zm5vLWRlbGV0ZS1udWxsLXBvaW50ZXItY2hlY2tzCj4gLVduby1hZGRyZXNzLW9mLXBhY2tlZC1t
ZW1iZXIKPiAtV2ZyYW1lLWxhcmdlci10aGFuPTIwNDgKPiAtV25vLXVudXNlZC1jb25zdC12YXJp
YWJsZQo+IC1mbm8tc3RyaWN0LW92ZXJmbG93Cj4gLWZuby1tZXJnZS1hbGwtY29uc3RhbnRzCj4g
LWZuby1zdGFjay1jaGVjawo+IC1XZXJyb3I9ZGF0ZS10aW1lCj4gLVdlcnJvcj1pbmNvbXBhdGli
bGUtcG9pbnRlci10eXBlcwo+IC1mZnJlZXN0YW5kaW5nCj4gLWZuby1zdGFjay1wcm90ZWN0b3IK
PiAKPiBVc2UgY2MtZGlzYWJsZS13YXJuaW5nIHNvIHRoYXQgaXQgZ2V0cyBkaXNhYmxlZCBmb3Ig
R0NDIGFuZCBkb2VzIG5vdGhpbmcKPiBmb3IgQ2xhbmcuCj4gCj4gRml4ZXM6IGViY2M1OTI4YzVk
OSAoImFybTY0OiBTaWxlbmNlIGdjYyB3YXJuaW5ncyBhYm91dCBhcmNoIEFCSSBkcmlmdCIpCj4g
TGluazogaHR0cHM6Ly9naXRodWIuY29tL0NsYW5nQnVpbHRMaW51eC9saW51eC9pc3N1ZXMvNTEx
Cj4gUmVwb3J0ZWQtYnk6IFFpYW4gQ2FpIDxjYWlAbGNhLnB3Pgo+IEFja2VkLWJ5OiBEYXZlIE1h
cnRpbiA8RGF2ZS5NYXJ0aW5AYXJtLmNvbT4KPiBSZXZpZXdlZC1ieTogTmljayBEZXNhdWxuaWVy
cyA8bmRlc2F1bG5pZXJzQGdvb2dsZS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTmF0aGFuIENoYW5j
ZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4KPiAtLS0KPiAKPiB2MSAtPiB2MjoKPiAK
PiAqIEltcHJvdmUgY29tbWl0IG1lc3NhZ2UgZXhwbGFuYXRpb24sIEkgd2Fzbid0IGVudGlyZWx5
IGhhcHB5IHdpdGggdGhlCj4gICBmaXJzdCBvbmU7IGxldCBtZSBrbm93IGlmIHRoZXJlIGFyZSBh
bnkgaXNzdWVzL3F1ZXN0aW9ucy4KPiAKPiAqIENhcnJ5IGZvcndhcmQgRGF2ZSdzIGFjayBhbmQg
TmljaydzIHJldmlldyAobGV0IG1lIGtub3cgaWYgeW91Cj4gICBkaXNhZ3JlZSB3aXRoIHRoZSBj
b21taXQgbWVzc2FzZ2UgcmV3b3JkaW5nKS4KPiAKPiAgYXJjaC9hcm02NC9NYWtlZmlsZSB8IDIg
Ky0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvTWFrZWZpbGUgYi9hcmNoL2FybTY0L01ha2VmaWxlCj4g
aW5kZXggOGZiZDU4M2IxOGUxLi5lOWQyZTU3OGNiZTYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02
NC9NYWtlZmlsZQo+ICsrKyBiL2FyY2gvYXJtNjQvTWFrZWZpbGUKPiBAQCAtNTEsNyArNTEsNyBA
QCBlbmRpZgo+ICAKPiAgS0JVSUxEX0NGTEFHUwkrPSAtbWdlbmVyYWwtcmVncy1vbmx5ICQobHNl
aW5zdHIpICQoYnJva2VuZ2FzaW5zdCkKPiAgS0JVSUxEX0NGTEFHUwkrPSAtZm5vLWFzeW5jaHJv
bm91cy11bndpbmQtdGFibGVzCj4gLUtCVUlMRF9DRkxBR1MJKz0gLVduby1wc2FiaQo+ICtLQlVJ
TERfQ0ZMQUdTCSs9ICQoY2FsbCBjYy1kaXNhYmxlLXdhcm5pbmcsIHBzYWJpKQo+ICBLQlVJTERf
QUZMQUdTCSs9ICQobHNlaW5zdHIpICQoYnJva2VuZ2FzaW5zdCkKPiAgCj4gIEtCVUlMRF9DRkxB
R1MJKz0gJChjYWxsIGNjLW9wdGlvbiwtbWFiaT1scDY0KQoKTG9va3MgT0sgdG8gbWUuICBUaGFu
a3MgZm9yIHRoZSBhZGRpdGlvbmFsIGV4cGxhbmF0aW9uLgoKQ2hlZXJzCi0tLURhdmUKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
