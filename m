Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BE47A6D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 13:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17prFw6pxEFAwu2jcVTMK0iMhqyExVEOer+gYsYnICc=; b=ZzwvxPc/TQkL91
	rXKBu9eNxCZ6AB6btOnElt5YzWWZbtrELu/Kk5QzRgzT8VGGGGeVoM4jkTG9R1CW/mB+tb/54S/T3
	81w8NrqPqKLNr8vTooYjfeH557hZAfVtDCWf9R32+/nqLZ+AuPk0GPtVYgPB1/BCSibevZ7LgXC3X
	U6DkTcNoDtvUi2vB4762byaaSnijRjVKhsUMU4YDbMYCH3stVAq/aISJWsloqb1j0ThEf/xI149dY
	5Znmx1ndNPKjKR5iELrtxcfQ8hZBHHAbmPxTDq049ixkmTssZo3whxTyeVyDyzCdvIda4TFWJqURr
	EjqZNHtSfmU6cS3T9APQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQFL-0005mN-RA; Tue, 30 Jul 2019 11:24:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQEt-0005m3-2n
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 11:24:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 423FB28;
 Tue, 30 Jul 2019 04:24:18 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 746E93F575;
 Tue, 30 Jul 2019 04:24:17 -0700 (PDT)
Date: Tue, 30 Jul 2019 12:24:15 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH] arm_pmu: Mark expected switch fall-through
Message-ID: <20190730112415.GB51922@lakrids.cambridge.arm.com>
References: <20190726112737.19309-1-anders.roxell@linaro.org>
 <20190726122956.GC26088@lakrids.cambridge.arm.com>
 <20190726151825.GA12552@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726151825.GA12552@e121166-lin.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_042419_171792_9B75C4C7 
X-CRM114-Status: GOOD (  17.64  )
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
Cc: will@kernel.org, Anders Roxell <anders.roxell@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDQ6MTg6MjVQTSArMDEwMCwgTG9yZW56byBQaWVyYWxp
c2kgd3JvdGU6Cj4gT24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6Mjk6NTZQTSArMDEwMCwgTWFy
ayBSdXRsYW5kIHdyb3RlOgo+ID4gT24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6Mjc6MzdQTSAr
MDIwMCwgQW5kZXJzIFJveGVsbCB3cm90ZToKPiA+ID4gV2hlbiBmYWxsLXRocm91Z2ggd2Fybmlu
Z3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9sbG93aW5nIHdhcm5pbmcKPiA+ID4gd2Fz
IHN0YXJ0aW5nIHRvIHNob3cgdXA6Cj4gPiA+IAo+ID4gPiAuLi9kcml2ZXJzL3BlcmYvYXJtX3Bt
dS5jOiBJbiBmdW5jdGlvbiDigJhjcHVfcG1fcG11X25vdGlmeeKAmToKPiA+ID4gLi4vZHJpdmVy
cy9wZXJmL2FybV9wbXUuYzo3MjY6Mzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwK
PiA+ID4gIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ID4gPiAgICBjcHVfcG1f
cG11X3NldHVwKGFybXBtdSwgY21kKTsKPiA+ID4gICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn4KPiA+ID4gLi4vZHJpdmVycy9wZXJmL2FybV9wbXUuYzo3Mjc6Mjogbm90ZTogaGVyZQo+
ID4gPiAgIGNhc2UgQ1BVX1BNX0VOVEVSX0ZBSUxFRDoKPiA+ID4gICBefn5+Cj4gPiA+IAo+ID4g
PiBSZXdvcmsgc28gdGhhdCB0aGUgY29tcGlsZXIgZG9lc24ndCB3YXJuIGFib3V0IGZhbGwtdGhy
b3VnaC4KPiA+ID4gCj4gPiA+IEZpeGVzOiBkOTM1MTJlZjBmMGUgKCJNYWtlZmlsZTogR2xvYmFs
bHkgZW5hYmxlIGZhbGwtdGhyb3VnaCB3YXJuaW5nIikKPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5k
ZXJzIFJveGVsbCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3JnPgo+ID4gPiAtLS0KPiA+ID4gCj4g
PiA+IEknbSBub3QgY29udmluY2VkIHRoYXQgdGhpcyBpcyB0aGUgY29ycmVjdCBwYXRjaCB0byBm
aXggdGhpcyBpc3N1ZS4KPiA+ID4gSG93ZXZlciwgSSBjYW4ndCBzZWUgd2h5IHdlIGRvICdhcm1w
bXUtPnN0YXJ0KGFybXBtdSk7JyBvbmx5IGluICdjYXNlCj4gPiA+IENQVV9QTV9FTlRFUl9GQUlM
RUQnIGFuZCB3aHkgd2Ugbm90IGNhbGwgZnVuY3Rpb24gY3B1X3BtX3BtdV9zZXR1cCgpCj4gPiA+
IHRoZXJlIGFsc28sIHNpbmNlIGluIGNwdV9wbV9wbXVfc2V0dXAoKSBoYXMgYSBjYXNlIHByZXBh
cmVkIGZvcgo+ID4gPiBDUFVfUE1fRU5URVJfRkFJTEVELgo+ID4gCj4gPiBJIGFncmVlLCB0aGlu
ayB0aGF0IHNob3VsZCBiZToKPiA+IAo+ID4gCWNhc2UgQ1BVX1BNX0VYSVQ6Cj4gPiAJY2FzZSBD
UFVfUE1fRU5URVJfRkFJTEVEOgo+ID4gCQljcHVfcG1fcG11X3NldHVwKGFybXBtdSwgY21kKTsK
PiA+IAkJYXJtcG11LT5zdGFydChhcm1wbXUpOwo+ID4gCQlicmVhazsKPiA+IAo+ID4gLi4uIHNv
IHRoYXQgd2UgcmUtc3RhcnQgdGhlIGV2ZW50cyBiZWZvcmUgd2Ugc3RhcnQgdGhlIFBNVS4KPiA+
IAo+ID4gVGhhdCB3b3VsZCBiZSBhIGZpeCBmb3IgY29tbWl0Ogo+ID4gCj4gPiAgIGRhNGU0ZjE4
YWZlMGYzNzIgKCJkcml2ZXJzL3BlcmY6IGFybV9wbXU6IGltcGxlbWVudCBDUFVfUE0gbm90aWZp
ZXIiKQo+IAo+IFllcyB0aGF0J3MgY29ycmVjdCwgYXBvbG9naWVzLiBQcm9iYWJseSB3ZSBkaWQg
bm90IGhpdCBpdCBiZWNhdXNlIENQVSBQTQo+IG5vdGlmaWVyIGVudHJ5IGZhaWx1cmVzIGFyZSBh
IHByZXR0eSByYXJlIGV2ZW50OyByZWdhcmRsZXNzOgo+IAo+IEFja2VkLWJ5OiBMb3JlbnpvIFBp
ZXJhbGlzaSA8bG9yZW56by5waWVyYWxpc2lAYXJtLmNvbT4KPiAKPiBJIGNhbiBzZW5kIHRoZSB1
cGRhdGVkIGZpeCwganVzdCBsZXQgbWUga25vdy4KCkknbSBub3Qgc3VyZSB3aGF0IFdpbGwgd2Fu
dHMsIGJ1dCBhc3N1bWluZyB5b3UgZG8gc286CgpBY2tlZC1ieTogTWFyayBSdXRsYW5kIDxtYXJr
LnJ1dGxhbmRAYXJtLmNvbT4KClRoYW5rcywKTWFyay4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
