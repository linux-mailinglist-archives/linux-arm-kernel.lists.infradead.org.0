Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27829C3573
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtWvjF6u1uBa+Cd6F5Ha6KtmFlNCu0Q2aPhJwDJaiU4=; b=pBPzHmaqaSlWJp
	IRjRr9mD5UftsPq0MEUZOpxFHNeuzVdiv6/C7E0KfbISr08AcvKYwpS1Kin6Kh3w0cEqrZM4dW5XB
	4LJst6XTbzf1tqA8EeYDG+sYWSrzCKzJCv6XjUnTJi73WkCVOihenvJ3dCxRqRqRIO1K+d+mD2cme
	MMlzrB4NVaRPEHdYAogiAx6TSZJQuV1/hQOaGyhpj0boZ7fTQzZmbj4N03MA2avn49x7rlmXE/jMF
	gl8MF9i8w/TJzgmOjDJLt5pH3m95F/8sF4r4c5Jz3BWCb35LURFDkQSC2/2aEajt8pliigKpQj16L
	ZIXF0pvLUHd+Qen59Xgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFI5i-0003Tw-6Y; Tue, 01 Oct 2019 13:21:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFI5Z-0003Tb-HA
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:21:14 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E01B6205F4;
 Tue,  1 Oct 2019 13:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569936073;
 bh=QYSllP9/ys/7IY6OqXAXwvvPaklbnIJyDItt8Dcq5lY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rzJug3FJYMFIwyKDen3q25TZR5cluR7qieTbzsU3WaMfE18VvgMlfBxWVGfYaGSJ/
 Q63nru9hgzDq8nieQkpJU2IUwDuYrrlifkK0AVXZi349v2SS/FU9FNNaWbTj+WGQ3B
 FHNlA9eeVeIHQ8sNmVuNTMMZHl7Y3VlZlZBd/Qas=
Date: Tue, 1 Oct 2019 14:21:09 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v3 3/5] arm64: vdso32: Fix compilation warning
Message-ID: <20191001132108.jx2x7quyk2p2vyfw@willie-the-truck>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-4-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926214342.34608-4-vincenzo.frascino@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_062113_618499_257E29E9 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBTZXAgMjYsIDIwMTkgYXQgMTA6NDM6NDBQTSArMDEwMCwgVmluY2Vuem8gRnJhc2Np
bm8gd3JvdGU6Cj4gQXMgcmVwb3J0ZWQgYnkgV2lsbCBEZWFjb24gdGhlIGZvbGxvd2luZyBjb21w
aWxhdGlvbiB3YXJuaW5nIGFwcGVhcnMKPiBkdXJpbmcgdGhlIGNvbXBpbGF0aW9uIG9mIHRoZSB2
ZHNvMzI6Cj4gCj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2Fz
bS90aHJlYWRfaW5mby5oOjE3OjAsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9s
aW51eC90aHJlYWRfaW5mby5oOjM4LAo+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gvYXJt
NjQvaW5jbHVkZS9hc20vcHJlZW1wdC5oOjUsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5j
bHVkZS9saW51eC9wcmVlbXB0Lmg6NzgsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVk
ZS9saW51eC9zcGlubG9jay5oOjUxLAo+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUv
bGludXgvc2VxbG9jay5oOjM2LAo+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGlu
dXgvdGltZS5oOjYsCj4gICAgICAgICAgICAgICAgICBmcm9tIC4uLi93b3JrL2xpbnV4L2xpYi92
ZHNvL2dldHRpbWVvZmRheS5jOjcsCj4gICAgICAgICAgICAgICAgICBmcm9tIDxjb21tYW5kLWxp
bmU+OjA6Cj4gLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oOiBJbiBmdW5jdGlvbiDi
gJhfX3RhZ19zZXTigJk6Cj4gLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oOjIzMzox
NTogd2FybmluZzogY2FzdCBmcm9tIHBvaW50ZXIgdG8KPiBpbnRlZ2VyIG9mIGRpZmZlcmVudCBz
aXplIFstV3BvaW50ZXItdG8taW50LWNhc3RdCj4gICB1NjQgX19hZGRyID0gKHU2NClhZGRyICYg
fl9fdGFnX3NoaWZ0ZWQoMHhmZik7Cj4gICAgICAgICAgICAgICAgXgo+IEluIGZpbGUgaW5jbHVk
ZWQgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS1od2RlZi5oOjg6MCwKPiAg
ICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3Byb2Nlc3Nvci5o
OjM0LAo+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vZWxm
Lmg6MTE4LAo+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvZWxmLmg6NSwK
PiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2VsZm5vdGUuaDo2MiwKPiAg
ICAgICAgICAgICAgICAgIGZyb20gYXJjaC9hcm02NC9rZXJuZWwvdmRzbzMyL25vdGUuYzoxMToK
PiAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vbWVtb3J5Lmg6IEluIGZ1bmN0aW9uIOKAmF9fdGFn
X3NldOKAmToKPiAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vbWVtb3J5Lmg6MjMzOjE1OiB3YXJu
aW5nOiBjYXN0IGZyb20gcG9pbnRlciB0bwo+IGludGVnZXIgb2YgZGlmZmVyZW50IHNpemUgWy1X
cG9pbnRlci10by1pbnQtY2FzdF0KPiAgIHU2NCBfX2FkZHIgPSAodTY0KWFkZHIgJiB+X190YWdf
c2hpZnRlZCgweGZmKTsKPiAgICAgICAgICAgICAgICBeCj4gCj4gVGhpcyBoYXBwZW5zIGJlY2F1
c2UgZmV3IDY0IGJpdCBjb21waWxhdGlvbiBoZWFkZXJzIGFyZSBpbmNsdWRlZCBkdXJpbmcKPiB0
aGUgZ2VuZXJhdGlvbiBvZiB2ZHNvMzIuCj4gCj4gRml4IHRoZSBpc3N1ZSByZWRlZmluaW5nIHRo
ZSBfX3RhZ19zZXQgZnVuY3Rpb24uCj4gCj4gTm90ZTogVGhpcyBmaXggaXMgbWVhbnQgdG8gYmUg
dGVtcG9yYXJ5LCBhIG1vcmUgY29tcHJlaGVuc2l2ZSBzb2x1dGlvbgo+IGJhc2VkIG9uIHRoZSBy
ZWZhY3RvcmluZyBvZiB0aGUgZ2VuZXJpYyBoZWFkZXJzIHdpbGwgYmUgcHJvdmlkZWQgd2l0aCBh
Cj4gZnV0dXJlIHBhdGNoIHNldC4gQXQgdGhhdCBwb2ludCBpdCB3aWxsIGJlIHBvc3NpYmxlIHRv
IHJldmVydCB0aGlzIHBhdGNoLgo+IAo+IENjOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3Jn
Pgo+IENjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFZpbmNlbnpvIEZyYXNjaW5vIDx2aW5jZW56by5mcmFzY2lub0Bhcm0uY29tPgo+
IC0tLQo+ICBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9yeS5oIHwgMyArKysKPiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2lu
Y2x1ZGUvYXNtL21lbW9yeS5oIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9tZW1vcnkuaAo+IGlu
ZGV4IGI2MWI1MGJmNjhiMS4uYzYxYjJlYjUwYTNiIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQv
aW5jbHVkZS9hc20vbWVtb3J5LmgKPiArKysgYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL21lbW9y
eS5oCj4gQEAgLTIyOCwxMSArMjI4LDE0IEBAIHN0YXRpYyBpbmxpbmUgdW5zaWduZWQgbG9uZyBr
YXNscl9vZmZzZXQodm9pZCkKPiAgI2RlZmluZSBfX3RhZ19nZXQoYWRkcikJCTAKPiAgI2VuZGlm
IC8qIENPTkZJR19LQVNBTl9TV19UQUdTICovCj4gIAo+ICsjaWZkZWYgX19hYXJjaDY0X18KPiAr
LyogRG8gbm90IGF0dGVtcHQgdG8gY29tcGlsZSB0aGlzIGNvZGUgd2l0aCBjb21wYXQgdmRzbyAq
Lwo+ICBzdGF0aWMgaW5saW5lIGNvbnN0IHZvaWQgKl9fdGFnX3NldChjb25zdCB2b2lkICphZGRy
LCB1OCB0YWcpCj4gIHsKPiAgCXU2NCBfX2FkZHIgPSAodTY0KWFkZHIgJiB+X190YWdfc2hpZnRl
ZCgweGZmKTsKPiAgCXJldHVybiAoY29uc3Qgdm9pZCAqKShfX2FkZHIgfCBfX3RhZ19zaGlmdGVk
KHRhZykpOwo+ICB9Cj4gKyNlbmRpZgoKU29ycnksIGJ1dCBJJ20gbm90IHRha2luZyB0aGlzLgoK
SSBrbm93IHlvdSdyZSB0cnlpbmcgdG8gZml4IHRoZSBpc3N1ZXMgSSByZXBvcnRlZCBhcyBxdWlj
a2x5IGFzIHlvdSBjYW4gKGFuZAp0aGFuayB5b3UgZm9yIHRoYXQpLCBidXQgSSdtIHN1cmUgdGhh
dCB5b3UgYWdyZWUgdGhpcyBuZWVkcyBtb3JlIHRob3VnaHQgdG8KZGV2ZWxvcCBhIHByb3BlciBz
b2x1dGlvbiB0byB3aGF0IGlzIGEgbXVjaCBiaWdnZXIgaXNzdWUgdGhhbiBjYW4gYmUgc29sdmVk
CmJ5IHNwcmlua2xpbmcgI2lmZGVmcy4gSSBjYW4gbGl2ZSB3aXRoIHRoZSB3YXJuaW5nIG9uIHRo
ZSBiYXNpcyB0aGF0IGEKcHJvcGVyIGZpeCBpcyBpbiB0aGUgcGlwZWxpbmUsIGJ1dCBpbiB0aGUg
bWVhbnRpbWUgaXQgY2FuIHNlcnZlIGFzIGEKcmVtaW5kZXIgdGhhdCB3ZSdyZSBub3QgZG9uZSBo
ZXJlLgoKV2lsbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
