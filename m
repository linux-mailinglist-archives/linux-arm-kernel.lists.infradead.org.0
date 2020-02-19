Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12D816409F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:43:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dq7B6w1C3AXA/01eGNleXIUFNF0UX0qo9jKbUnR+xdA=; b=hD/0cj+SsTKJXS
	FO3r8dVuCg5YO3YBQ6Z1C3/Tms0r/z/I/Oyx9YlCkvqiOQj9i5zMDRIBr7bTXuHLfff3mYE4j0bA7
	Bbm+2slq9LtMkVpLg/dd3lBsvA3ugnGnPKDkk9QZkA/YKgpGxyNCIp/DQnt0JCRXrTxK1itfPt2/9
	rMqV0kju8AW4dPjdg1oeYQ1oqvA780l46LZd3xC0tQWBZdYha7QilPuMNbOxUdY5ql81wUCQTqgkp
	p4fRLDrMLG49lbJxu4ops6J4Wgf1gxx950UuiAvblUNfYjLsZwo38ISlIoJfWbl1Nfu3a4QNLGrAk
	RQ8LXD6+1B8/40pyWOeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Lsr-0001fc-CZ; Wed, 19 Feb 2020 09:43:09 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Lsi-0001f1-Fe
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:43:01 +0000
Received: from localhost.localdomain (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id BE0F12E5;
 Wed, 19 Feb 2020 09:42:58 +0000 (UTC)
Date: Wed, 19 Feb 2020 02:42:53 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Jonathan =?UTF-8?B?TmV1c2Now6RmZXI=?= <j.neuschaefer@gmx.net>
Subject: Re: [PATCH] docs: arm: tcm: Fix a few typos
Message-ID: <20200219024253.3ce1d2b2@lwn.net>
In-Reply-To: <20200218163829.13066-1-j.neuschaefer@gmx.net>
References: <20200218163829.13066-1-j.neuschaefer@gmx.net>
Organization: LWN.net
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_014300_526179_32267607 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
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
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxOCBGZWIgMjAyMCAxNzozODoyNSArMDEwMApKb25hdGhhbiBOZXVzY2jDpGZlciA8
ai5uZXVzY2hhZWZlckBnbXgubmV0PiB3cm90ZToKCj4gU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4g
TmV1c2Now6RmZXIgPGoubmV1c2NoYWVmZXJAZ214Lm5ldD4KPiAtLS0KPiAgRG9jdW1lbnRhdGlv
bi9hcm0vdGNtLnJzdCB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYXJtL3Rj
bS5yc3QgYi9Eb2N1bWVudGF0aW9uL2FybS90Y20ucnN0Cj4gaW5kZXggZWZmZDljN2JjOTY4Li5i
MjU2Zjk3ODM4ODMgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9hcm0vdGNtLnJzdAo+ICsr
KyBiL0RvY3VtZW50YXRpb24vYXJtL3RjbS5yc3QKPiBAQCAtNCwxOCArNCwxOCBAQCBBUk0gVENN
IChUaWdodGx5LUNvdXBsZWQgTWVtb3J5KSBoYW5kbGluZyBpbiBMaW51eAo+IAo+ICBXcml0dGVu
IGJ5IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAc3Rlcmljc3Nvbi5jb20+Cj4gCj4gLVNv
bWUgQVJNIFNvQzpzIGhhdmUgYSBzby1jYWxsZWQgVENNIChUaWdodGx5LUNvdXBsZWQgTWVtb3J5
KS4KPiArU29tZSBBUk0gU29DcyBoYXZlIGEgc28tY2FsbGVkIFRDTSAoVGlnaHRseS1Db3VwbGVk
IE1lbW9yeSkuCj4gIFRoaXMgaXMgdXN1YWxseSBqdXN0IGEgZmV3ICg0LTY0KSBLaUIgb2YgUkFN
IGluc2lkZSB0aGUgQVJNCj4gIHByb2Nlc3Nvci4KPiAKPiAtRHVlIHRvIGJlaW5nIGVtYmVkZGVk
IGluc2lkZSB0aGUgQ1BVIFRoZSBUQ00gaGFzIGEKPiArRHVlIHRvIGJlaW5nIGVtYmVkZGVkIGlu
c2lkZSB0aGUgQ1BVLCB0aGUgVENNIGhhcyBhCj4gIEhhcnZhcmQtYXJjaGl0ZWN0dXJlLCBzbyB0
aGVyZSBpcyBhbiBJVENNIChpbnN0cnVjdGlvbiBUQ00pCj4gIGFuZCBhIERUQ00gKGRhdGEgVENN
KS4gVGhlIERUQ00gY2FuIG5vdCBjb250YWluIGFueQo+ICBpbnN0cnVjdGlvbnMsIGJ1dCB0aGUg
SVRDTSBjYW4gYWN0dWFsbHkgY29udGFpbiBkYXRhLgo+ICBUaGUgc2l6ZSBvZiBEVENNIG9yIElU
Q00gaXMgbWluaW11bSA0S2lCIHNvIHRoZSB0eXBpY2FsCj4gIG1pbmltdW0gY29uZmlndXJhdGlv
biBpcyA0S2lCIElUQ00gYW5kIDRLaUIgRFRDTS4KPiAKPiAtQVJNIENQVTpzIGhhdmUgc3BlY2lh
bCByZWdpc3RlcnMgdG8gcmVhZCBvdXQgc3RhdHVzLCBwaHlzaWNhbAo+ICtBUk0gQ1BVcyBoYXZl
IHNwZWNpYWwgcmVnaXN0ZXJzIHRvIHJlYWQgb3V0IHN0YXR1cywgcGh5c2ljYWwKPiAgbG9jYXRp
b24gYW5kIHNpemUgb2YgVENNIG1lbW9yaWVzLiBhcmNoL2FybS9pbmNsdWRlL2FzbS9jcHV0eXBl
LmgKPiAgZGVmaW5lcyBhIENQVUlEX1RDTSByZWdpc3RlciB0aGF0IHlvdSBjYW4gcmVhZCBvdXQg
ZnJvbSB0aGUKPiAgc3lzdGVtIGNvbnRyb2wgY29wcm9jZXNzb3IuIERvY3VtZW50YXRpb24gZnJv
bSBBUk0gY2FuIGJlIGZvdW5kCgpBcHBsaWVkLCB0aGFua3MuCgpqb24KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
