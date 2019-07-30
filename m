Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6C67A72F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 13:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ae6eV0HihylIDeRNnrVgqFJlIlxj6FHQaOgtpST7B2k=; b=NHY3rA9sxZF2cY
	vmrQbsAudk14hC8wXHNC2cwnh2tr3UmUosfhb8eY0FV+thXABcgBxyEevJt4G6lI0Yp3mfZ/BLrrP
	HBXskRki5mGPtiAIFFnJ1Y2n+gM+FDS4wa6k1qTkvNgu6yA/uLpUqBrhM8t8RqAaY82iIGo6rlYaI
	CmM0EPKdhzLKJC9zvBbmjYIRHAw6OiH5RAhwlwLNMCQQBhaektzWAcwZfU3jDTaV32agDUuyEJRE8
	JLodgMjP7hID2nkjar5E9PVgXzQMdqPGBorVhrmN/fvMQb5of1ZBvtdkaiIhdasChDWWu0L6HsO8N
	7qgvQ2lIGbldzBj+Xgnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQWt-0007tx-3H; Tue, 30 Jul 2019 11:42:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQWb-0007tE-4y
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 11:42:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6770428;
 Tue, 30 Jul 2019 04:42:35 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 987123F575;
 Tue, 30 Jul 2019 04:42:34 -0700 (PDT)
Date: Tue, 30 Jul 2019 12:42:32 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm_pmu: Mark expected switch fall-through
Message-ID: <20190730114232.GC51922@lakrids.cambridge.arm.com>
References: <20190726112737.19309-1-anders.roxell@linaro.org>
 <20190726122956.GC26088@lakrids.cambridge.arm.com>
 <20190726151825.GA12552@e121166-lin.cambridge.arm.com>
 <20190730112415.GB51922@lakrids.cambridge.arm.com>
 <20190730112758.ctgg6l5gldsefdgs@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730112758.ctgg6l5gldsefdgs@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_044237_237847_6837B587 
X-CRM114-Status: GOOD (  19.47  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMTI6Mjc6NTlQTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMTI6MjQ6MTVQTSArMDEwMCwgTWFyayBSdXRs
YW5kIHdyb3RlOgo+ID4gT24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDQ6MTg6MjVQTSArMDEwMCwg
TG9yZW56byBQaWVyYWxpc2kgd3JvdGU6Cj4gPiA+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAx
OjI5OjU2UE0gKzAxMDAsIE1hcmsgUnV0bGFuZCB3cm90ZToKPiA+ID4gPiBPbiBGcmksIEp1bCAy
NiwgMjAxOSBhdCAwMToyNzozN1BNICswMjAwLCBBbmRlcnMgUm94ZWxsIHdyb3RlOgo+ID4gPiA+
ID4gV2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUg
Zm9sbG93aW5nIHdhcm5pbmcKPiA+ID4gPiA+IHdhcyBzdGFydGluZyB0byBzaG93IHVwOgo+ID4g
PiA+ID4gCj4gPiA+ID4gPiAuLi9kcml2ZXJzL3BlcmYvYXJtX3BtdS5jOiBJbiBmdW5jdGlvbiDi
gJhjcHVfcG1fcG11X25vdGlmeeKAmToKPiA+ID4gPiA+IC4uL2RyaXZlcnMvcGVyZi9hcm1fcG11
LmM6NzI2OjM6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsCj4gPiA+ID4gPiAgdGhy
b3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4gPiA+ID4gPiAgICBjcHVfcG1fcG11X3Nl
dHVwKGFybXBtdSwgY21kKTsKPiA+ID4gPiA+ICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+Cj4gPiA+ID4gPiAuLi9kcml2ZXJzL3BlcmYvYXJtX3BtdS5jOjcyNzoyOiBub3RlOiBoZXJl
Cj4gPiA+ID4gPiAgIGNhc2UgQ1BVX1BNX0VOVEVSX0ZBSUxFRDoKPiA+ID4gPiA+ICAgXn5+fgo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBSZXdvcmsgc28gdGhhdCB0aGUgY29tcGlsZXIgZG9lc24ndCB3
YXJuIGFib3V0IGZhbGwtdGhyb3VnaC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gRml4ZXM6IGQ5MzUx
MmVmMGYwZSAoIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdoIHdhcm5pbmci
KQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5kZXJzIFJveGVsbCA8YW5kZXJzLnJveGVsbEBs
aW5hcm8ub3JnPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEknbSBub3QgY29u
dmluY2VkIHRoYXQgdGhpcyBpcyB0aGUgY29ycmVjdCBwYXRjaCB0byBmaXggdGhpcyBpc3N1ZS4K
PiA+ID4gPiA+IEhvd2V2ZXIsIEkgY2FuJ3Qgc2VlIHdoeSB3ZSBkbyAnYXJtcG11LT5zdGFydChh
cm1wbXUpOycgb25seSBpbiAnY2FzZQo+ID4gPiA+ID4gQ1BVX1BNX0VOVEVSX0ZBSUxFRCcgYW5k
IHdoeSB3ZSBub3QgY2FsbCBmdW5jdGlvbiBjcHVfcG1fcG11X3NldHVwKCkKPiA+ID4gPiA+IHRo
ZXJlIGFsc28sIHNpbmNlIGluIGNwdV9wbV9wbXVfc2V0dXAoKSBoYXMgYSBjYXNlIHByZXBhcmVk
IGZvcgo+ID4gPiA+ID4gQ1BVX1BNX0VOVEVSX0ZBSUxFRC4KPiA+ID4gPiAKPiA+ID4gPiBJIGFn
cmVlLCB0aGluayB0aGF0IHNob3VsZCBiZToKPiA+ID4gPiAKPiA+ID4gPiAJY2FzZSBDUFVfUE1f
RVhJVDoKPiA+ID4gPiAJY2FzZSBDUFVfUE1fRU5URVJfRkFJTEVEOgo+ID4gPiA+IAkJY3B1X3Bt
X3BtdV9zZXR1cChhcm1wbXUsIGNtZCk7Cj4gPiA+ID4gCQlhcm1wbXUtPnN0YXJ0KGFybXBtdSk7
Cj4gPiA+ID4gCQlicmVhazsKPiA+ID4gPiAKPiA+ID4gPiAuLi4gc28gdGhhdCB3ZSByZS1zdGFy
dCB0aGUgZXZlbnRzIGJlZm9yZSB3ZSBzdGFydCB0aGUgUE1VLgo+ID4gPiA+IAo+ID4gPiA+IFRo
YXQgd291bGQgYmUgYSBmaXggZm9yIGNvbW1pdDoKPiA+ID4gPiAKPiA+ID4gPiAgIGRhNGU0ZjE4
YWZlMGYzNzIgKCJkcml2ZXJzL3BlcmY6IGFybV9wbXU6IGltcGxlbWVudCBDUFVfUE0gbm90aWZp
ZXIiKQo+ID4gPiAKPiA+ID4gWWVzIHRoYXQncyBjb3JyZWN0LCBhcG9sb2dpZXMuIFByb2JhYmx5
IHdlIGRpZCBub3QgaGl0IGl0IGJlY2F1c2UgQ1BVIFBNCj4gPiA+IG5vdGlmaWVyIGVudHJ5IGZh
aWx1cmVzIGFyZSBhIHByZXR0eSByYXJlIGV2ZW50OyByZWdhcmRsZXNzOgo+ID4gPiAKPiA+ID4g
QWNrZWQtYnk6IExvcmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tPgo+
ID4gPiAKPiA+ID4gSSBjYW4gc2VuZCB0aGUgdXBkYXRlZCBmaXgsIGp1c3QgbGV0IG1lIGtub3cu
Cj4gPiAKPiA+IEknbSBub3Qgc3VyZSB3aGF0IFdpbGwgd2FudHMsIGJ1dCBhc3N1bWluZyB5b3Ug
ZG8gc286Cj4gPiAKPiA+IEFja2VkLWJ5OiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0u
Y29tPgo+IAo+IEkgZ2F2ZSB1cCB3YWl0aW5nLCBzbyBpdCdzIGFscmVhZHkgcXVldWVkIGhlcmU6
Cj4gCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJt
NjQvbGludXguZ2l0L2NvbW1pdC8/aD1mb3ItbmV4dC9maXhlcyZpZD0wZDdmZDcwZjI2MDM5YmQ0
YjMzNDQ0Y2E0N2YwZTY5Y2UzYWUwMzU0CgpHcmVhdDsgSSdsbCBtYXJrIHRoaXMgdGhyZWFkIGFz
IGRvbmUsIHRoZW4uIDopCgpNYXJrLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
