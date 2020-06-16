Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436F01FB566
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 17:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADJFcvJSM3LkQnFOtMtiXsXHGeNcmNXKEDdRO+8RIgA=; b=EEYEUM+clX8s6E
	5IAYzoDiWyr+Aer7XfGaJBZB/2CbVa6hE9jsQlLfp4534cPQFTZhmNTo9UV2w8+nc0tOkldcNGtC5
	qtFVXAMucNUD0tHhyHPQ89idDNJJ/qWEdAVtQPVfTNrLpn0KKmqlcbop5ltxZY6jtccRqzr3mZJra
	DayHBZeZpal6ZHSdvwPBuwAiEqYMVeCRb+x9VFhAzv2tV4sdvKL1qfaZSiFlTiXUe7x/Cxfx2Rm66
	q+czSxc/xYjuq7FHo8hhvIDWF2Go8C3yqTjHmOLTvzEhNtx3PH0kIr9oF9jT93j9zmwqKfC6GybKx
	mXNTGDSroxeZGrMO8XjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlD9L-0006m1-Vy; Tue, 16 Jun 2020 15:05:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlD8y-0006lT-Mz
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:04:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20E2F20644;
 Tue, 16 Jun 2020 15:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592319896;
 bh=qlY1oeHhN7eEs1PXYyERPbKkZKvlfREqQep9lxUApW4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YyC5zdxYQmO+KN188ie/b5WJZ4RXOXWuFcGRI7IvutGmhXF5lTrfT0jSFOAwEJjZs
 qoFtlhWWYRwwiaXRUtN5lRV60ApviLdUrC9ZRMEHX+29l42d2+jJWkp3U2G+mSza/U
 NmSN8dGvnjzqrXb0xp6vhO/GXpJOUBM8H2gljVMk=
Date: Tue, 16 Jun 2020 16:04:51 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH 2/2] arm64/sve: Eliminate data races on sve_default_vl
Message-ID: <20200616150451.GA1941@willie-the-truck>
References: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
 <1591808590-20210-3-git-send-email-Dave.Martin@arm.com>
 <20200616131808.GA1040@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616131808.GA1040@lca.pw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_080456_773831_A7166F61 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTYsIDIwMjAgYXQgMDk6MTg6MDhBTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gT24gV2VkLCBKdW4gMTAsIDIwMjAgYXQgMDY6MDM6MTBQTSArMDEwMCwgRGF2ZSBNYXJ0aW4g
d3JvdGU6Cj4gPiBzdmVfZGVmYXVsdF92bCBjYW4gYmUgbW9kaWZpZWQgdmlhIHRoZSAvcHJvYy9z
eXMvYWJpL3N2ZV9kZWZhdWx0X3ZsCj4gPiBzeXNjdGwgY29uY3VycmVudGx5IHdpdGggdXNlLCBh
bmQgbW9kaWZpZWQgY29uY3VycmVudGx5IGJ5IG11bHRpcGxlCj4gPiB0aHJlYWRzLgo+ID4gCj4g
PiBBZGRpbmcgYSBsb2NrIGZvciB0aGlzIHNlZW1zIG92ZXJraWxsLCBhbmQgSSBkb24ndCB3YW50
IHRvIHRoaW5rIGFueQo+ID4gbW9yZSB0aGFuIG5lY2Vzc2FyeSwgc28ganVzdCBkZWZpbmUgd3Jh
cHBlcnMgdXNpbmcgUkVBRF9PTkNFKCkvCj4gPiBXUklURV9PTkNFKCkuCj4gPiAKPiA+IFRoaXMg
d2lsbCBhdm9pZCB0aGUgcG9zc2liaWxpdHkgb2YgdG9ybiBhY2Nlc3NlcyBhbmQgcmVwZWF0ZWQg
bG9hZHMKPiA+IGFuZCBzdG9yZXMuCj4gPiAKPiA+IFRoZXJlJ3Mgbm8gZXZpZGVuY2UgeWV0IHRo
YXQgdGhpcyBpcyBnb2luZyB3cm9uZyBpbiBwcmFjdGljZTogdGhpcwo+ID4gaXMganVzdCBoeWdp
ZW5lLiAgRm9yIGdlbmVyaWMgc3lzY3RsIHVzZXJzLCBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8KPiA+
IGJ1aWxkIHRoaXMga2luZCBvZiB0aGluZyBpbnRvIHRoZSBzeXNjdGwgY29tbW9uIGNvZGUgc29t
ZWhvdy4KPiA+IAo+ID4gUmVwb3J0ZWQtYnk6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYXZlIE1hcnRpbiA8RGF2ZS5NYXJ0aW5AYXJtLmNvbT4KPiAK
PiBXaGlsZSB0aGlzIG9yaWdpbmFsIHBhdGNoIGxvb2tzIGNvcnJlY3QsIGxpbnV4LW5leHQgaGFz
IHRoaXMsCj4gCj4gW3dpbGw6IG1vdmUgc2V0X3N2ZV9kZWZhdWx0X3ZsKCkgaW5zaWRlICNpZmRl
ZiB0byBzcXVhc2ggYWxsbm9jb25maWcgd2FybmluZ10KPiAKPiAxZTU3MGY1MTJjYmQgKCJhcm02
NC9zdmU6IEVsaW1pbmF0ZSBkYXRhIHJhY2VzIG9uIHN2ZV9kZWZhdWx0X3ZsIikKPiAKPiB3aGlj
aCBjYXVzZXMgYW4gZXJyb3Igd2l0aCBDT05GSUdfQVJNNjRfU1ZFPW4sCj4gCj4gVGhpcyAuY29u
ZmlnLAo+IGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9jYWlsY2EvbGludXgtbW0v
bWFzdGVyL2FybTY0LmNvbmZpZwo+IAo+IGFyY2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jOiBJbiBm
dW5jdGlvbiDigJhzdmVfcHJvY19kb19kZWZhdWx0X3Zs4oCZOgo+IGFyY2gvYXJtNjQva2VybmVs
L2Zwc2ltZC5jOjM3NToyOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YKPiBmdW5jdGlv
biDigJhzZXRfc3ZlX2RlZmF1bHRfdmzigJk7IGRpZCB5b3UgbWVhbiDigJhnZXRfc3ZlX2RlZmF1
bHRfdmzigJk/Cj4gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gICBz
ZXRfc3ZlX2RlZmF1bHRfdmwoZmluZF9zdXBwb3J0ZWRfdmVjdG9yX2xlbmd0aCh2bCkpOwo+ICAg
Xn5+fn5+fn5+fn5+fn5+fn5+Cj4gICBnZXRfc3ZlX2RlZmF1bHRfdmwKClRoYW5rcywgSSdsbCB0
YWtlIGEgbG9vay4KCldpbGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
