Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C0B7A6E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 13:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLzILykWqhMQ+wu3E0S/Fv95RwN9gTOr9UcbYij68+w=; b=V0U1KWt39d022Z
	xchBCZ89M5i6C8Lf9QGZqcyZ4Zf+NGadkSc7/U8cdz35E9FdSFA3vXM+sbO+AdFST642LMJ1sMUx1
	88oNw1r8B6iUYTwrM+qbJwHz5woQxIPjfFzwSOkB5u+L5uD1eg65PRABDVql4drZ8MHOzSe+HjLK0
	dwwH/Xw6+Tq8JIMrpC6AHdybhUg5m3DeSxN9OR7BYRHjV5qWYIMHVADgJSsmjbhU8orgeBWnAcYcy
	WCDjQyhv2J0cJZ9rHGMACyAYWtRv7LMwnR2VoIWjML6ynTIADIiM1JrJXGU+JHWFqMRpOeVZNNsIK
	6y8Ob6sMgY9dH5rQ6rBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQIl-0007tH-So; Tue, 30 Jul 2019 11:28:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQIW-0007sV-2h
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 11:28:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63B232087F;
 Tue, 30 Jul 2019 11:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564486083;
 bh=rnaBRVn1mjxWpZxAFonlDUu7I1y6N0i1HPAr0bh96tg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=teW0gCrHZ5mnilA3e7+O1wr3JUumNVGxwuVSa3ZNEy+++k9Nkt7wb5hZ9Ljx/Qrb4
 JsC1qkwxWVa9ipeeO9wrjq2ZX7qhmjApEEnu8xd1uB1HoDttlJpPt0bcbwE+3HOfBd
 /6YK3G6jDBXxqaJ3ZCHOsd9Nuqd8vEEl8m+Bylck=
Date: Tue, 30 Jul 2019 12:27:59 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm_pmu: Mark expected switch fall-through
Message-ID: <20190730112758.ctgg6l5gldsefdgs@willie-the-truck>
References: <20190726112737.19309-1-anders.roxell@linaro.org>
 <20190726122956.GC26088@lakrids.cambridge.arm.com>
 <20190726151825.GA12552@e121166-lin.cambridge.arm.com>
 <20190730112415.GB51922@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730112415.GB51922@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_042804_146478_C3B4DE1C 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMTI6MjQ6MTVQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDA0OjE4OjI1UE0gKzAxMDAsIExvcmVuem8g
UGllcmFsaXNpIHdyb3RlOgo+ID4gT24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6Mjk6NTZQTSAr
MDEwMCwgTWFyayBSdXRsYW5kIHdyb3RlOgo+ID4gPiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAw
MToyNzozN1BNICswMjAwLCBBbmRlcnMgUm94ZWxsIHdyb3RlOgo+ID4gPiA+IFdoZW4gZmFsbC10
aHJvdWdoIHdhcm5pbmdzIHdhcyBlbmFibGVkIGJ5IGRlZmF1bHQgdGhlIGZvbGxvd2luZyB3YXJu
aW5nCj4gPiA+ID4gd2FzIHN0YXJ0aW5nIHRvIHNob3cgdXA6Cj4gPiA+ID4gCj4gPiA+ID4gLi4v
ZHJpdmVycy9wZXJmL2FybV9wbXUuYzogSW4gZnVuY3Rpb24g4oCYY3B1X3BtX3BtdV9ub3RpZnni
gJk6Cj4gPiA+ID4gLi4vZHJpdmVycy9wZXJmL2FybV9wbXUuYzo3MjY6Mzogd2FybmluZzogdGhp
cyBzdGF0ZW1lbnQgbWF5IGZhbGwKPiA+ID4gPiAgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhy
b3VnaD1dCj4gPiA+ID4gICAgY3B1X3BtX3BtdV9zZXR1cChhcm1wbXUsIGNtZCk7Cj4gPiA+ID4g
ICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+ID4gPiAuLi9kcml2ZXJzL3BlcmYv
YXJtX3BtdS5jOjcyNzoyOiBub3RlOiBoZXJlCj4gPiA+ID4gICBjYXNlIENQVV9QTV9FTlRFUl9G
QUlMRUQ6Cj4gPiA+ID4gICBefn5+Cj4gPiA+ID4gCj4gPiA+ID4gUmV3b3JrIHNvIHRoYXQgdGhl
IGNvbXBpbGVyIGRvZXNuJ3Qgd2FybiBhYm91dCBmYWxsLXRocm91Z2guCj4gPiA+ID4gCj4gPiA+
ID4gRml4ZXM6IGQ5MzUxMmVmMGYwZSAoIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10
aHJvdWdoIHdhcm5pbmciKQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuZGVycyBSb3hlbGwgPGFu
ZGVycy5yb3hlbGxAbGluYXJvLm9yZz4KPiA+ID4gPiAtLS0KPiA+ID4gPiAKPiA+ID4gPiBJJ20g
bm90IGNvbnZpbmNlZCB0aGF0IHRoaXMgaXMgdGhlIGNvcnJlY3QgcGF0Y2ggdG8gZml4IHRoaXMg
aXNzdWUuCj4gPiA+ID4gSG93ZXZlciwgSSBjYW4ndCBzZWUgd2h5IHdlIGRvICdhcm1wbXUtPnN0
YXJ0KGFybXBtdSk7JyBvbmx5IGluICdjYXNlCj4gPiA+ID4gQ1BVX1BNX0VOVEVSX0ZBSUxFRCcg
YW5kIHdoeSB3ZSBub3QgY2FsbCBmdW5jdGlvbiBjcHVfcG1fcG11X3NldHVwKCkKPiA+ID4gPiB0
aGVyZSBhbHNvLCBzaW5jZSBpbiBjcHVfcG1fcG11X3NldHVwKCkgaGFzIGEgY2FzZSBwcmVwYXJl
ZCBmb3IKPiA+ID4gPiBDUFVfUE1fRU5URVJfRkFJTEVELgo+ID4gPiAKPiA+ID4gSSBhZ3JlZSwg
dGhpbmsgdGhhdCBzaG91bGQgYmU6Cj4gPiA+IAo+ID4gPiAJY2FzZSBDUFVfUE1fRVhJVDoKPiA+
ID4gCWNhc2UgQ1BVX1BNX0VOVEVSX0ZBSUxFRDoKPiA+ID4gCQljcHVfcG1fcG11X3NldHVwKGFy
bXBtdSwgY21kKTsKPiA+ID4gCQlhcm1wbXUtPnN0YXJ0KGFybXBtdSk7Cj4gPiA+IAkJYnJlYWs7
Cj4gPiA+IAo+ID4gPiAuLi4gc28gdGhhdCB3ZSByZS1zdGFydCB0aGUgZXZlbnRzIGJlZm9yZSB3
ZSBzdGFydCB0aGUgUE1VLgo+ID4gPiAKPiA+ID4gVGhhdCB3b3VsZCBiZSBhIGZpeCBmb3IgY29t
bWl0Ogo+ID4gPiAKPiA+ID4gICBkYTRlNGYxOGFmZTBmMzcyICgiZHJpdmVycy9wZXJmOiBhcm1f
cG11OiBpbXBsZW1lbnQgQ1BVX1BNIG5vdGlmaWVyIikKPiA+IAo+ID4gWWVzIHRoYXQncyBjb3Jy
ZWN0LCBhcG9sb2dpZXMuIFByb2JhYmx5IHdlIGRpZCBub3QgaGl0IGl0IGJlY2F1c2UgQ1BVIFBN
Cj4gPiBub3RpZmllciBlbnRyeSBmYWlsdXJlcyBhcmUgYSBwcmV0dHkgcmFyZSBldmVudDsgcmVn
YXJkbGVzczoKPiA+IAo+ID4gQWNrZWQtYnk6IExvcmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBp
ZXJhbGlzaUBhcm0uY29tPgo+ID4gCj4gPiBJIGNhbiBzZW5kIHRoZSB1cGRhdGVkIGZpeCwganVz
dCBsZXQgbWUga25vdy4KPiAKPiBJJ20gbm90IHN1cmUgd2hhdCBXaWxsIHdhbnRzLCBidXQgYXNz
dW1pbmcgeW91IGRvIHNvOgo+IAo+IEFja2VkLWJ5OiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFu
ZEBhcm0uY29tPgoKSSBnYXZlIHVwIHdhaXRpbmcsIHNvIGl0J3MgYWxyZWFkeSBxdWV1ZWQgaGVy
ZToKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0
L2xpbnV4LmdpdC9jb21taXQvP2g9Zm9yLW5leHQvZml4ZXMmaWQ9MGQ3ZmQ3MGYyNjAzOWJkNGIz
MzQ0NGNhNDdmMGU2OWNlM2FlMDM1NAoKV2lsbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
