Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670ABE1B35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ES5yzpc0moX/WJaJJ+gvoaQSAeA5hFj0m0QOs2Cm09g=; b=NCMrA72tKKmyhV
	iAgXQfVakyhE4XuybGIpK7K/JObveCV9Jl4EEcnJvSe4wVsPVqC/v9/cwwwn9TkhinzaIK4oXPieJ
	oWxvduarcItCho6CarT/HZIvZv6SDKhOYgfBXhqKxV9le0Mh47ACopSQiBUAXbnhLpI3Uf0c/eRvf
	zkFD69Tmdai1YpJ50ElD78iSrPdldsmerDYN7HDRcv4jsrIbbASbt8bfrQxOTUjCv1ibWjy6+nR3O
	DHjFr+vZ26CUvQrhyIE4wfksNGu2w1cAHDSz/g9TrCig2I+03nrHoblYG6KFREPNJrCxN5iVujCvi
	nPJq0kG+ub0CokDDgVwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNG3g-0001wb-42; Wed, 23 Oct 2019 12:48:12 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNG3V-0001vN-KX
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:48:03 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id F35C83E951;
 Wed, 23 Oct 2019 12:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1571834875;
 bh=0kqhIdrcdwTaeOk++zBCxLaWbwoAfqHJ5bwvzT6eofE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ty01jSUZZyZs/E5U7fYrVJsqd7rCW3TaZaBl4f6bW9Imrc+LwyG/rkLvdy1HnEelF
 yz54byi8l52QHKOb+vJbMLzFSvC5pmQg29NgewohrS2cpj2QCPLe7MwSxSaRhAcH7K
 8lU1zbQPw4nW+ClZbLkZrp8GCMt2MEyGq6n/hcZU=
Date: Wed, 23 Oct 2019 08:47:53 -0400
From: Brian Masney <masneyb@onstation.org>
To: Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [PATCH 5/5] ARM: dts: qcom: msm8974: add interconnect nodes
Message-ID: <20191023124753.GA14218@onstation.org>
References: <20191013080804.10231-1-masneyb@onstation.org>
 <20191013080804.10231-6-masneyb@onstation.org>
 <d154b0c6-fc39-bebc-d1b5-cc179fb6055d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d154b0c6-fc39-bebc-d1b5-cc179fb6055d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_054801_737074_6E5AB64B 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBPY3QgMjMsIDIwMTkgYXQgMDI6NTA6MTlQTSArMDMwMCwgR2VvcmdpIERqYWtvdiB3
cm90ZToKPiBPbiAxMy4xMC4xOSDQsy4gMTE6MDgg0YcuLCBCcmlhbiBNYXNuZXkgd3JvdGU6Cj4g
PiBBZGQgaW50ZXJjb25uZWN0IG5vZGVzIHRoYXQncyBuZWVkZWQgdG8gc3VwcG9ydCBidXMgc2Nh
bGluZy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQnJpYW4gTWFzbmV5IDxtYXNuZXliQG9uc3Rh
dGlvbi5vcmc+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybS9ib290L2R0cy9xY29tLW1zbTg5NzQuZHRz
aSB8IDYwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDYwIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3Fjb20tbXNtODk3NC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcWNvbS1tc204OTc0LmR0c2kK
PiA+IEBAIC0xMTUyLDYgKzEyMDcsMTEgQEAKPiA+ICAJCQkJICAgICAgICAgICAgICAiY29yZSIs
Cj4gPiAgCQkJCSAgICAgICAgICAgICAgInZzeW5jIjsKPiA+ICAKPiA+ICsJCQkJaW50ZXJjb25u
ZWN0cyA9IDwmbW1zc25vYyBNTk9DX01BU19HUkFQSElDU18zRCAmYmltYyBCSU1DX1NMVl9FQklf
Q0gwPiwKPiA+ICsJCQkJICAgICAgICAgICAgICAgIDwmb2NtZW1ub2MgT0NNRU1fVk5PQ19NQVNf
R0ZYM0QgJm9jbWVtbm9jIE9DTUVNX1NMVl9PQ01FTT47Cj4gCj4gV2hvIHdpbGwgYmUgdGhlIHJl
cXVlc3RpbmcgYmFuZHdpZHRoIHRvIEREUiBhbmQgb2NtZW0/IElzIGl0IHRoZSBkaXNwbGF5IG9y
IEdQVQo+IG9yIGJvdGg/IFRoZSBhYm92ZSBzZWVtIGxpa2UgR1BVLXJlbGF0ZWQgaW50ZXJjb25u
ZWN0cywgc28gbWF5YmUgdGhlc2UKPiBwcm9wZXJ0aWVzIHNob3VsZCBiZSBpbiB0aGUgR1BVIERU
IG5vZGUuCgpUaGUgZGlzcGxheSBpcyB3aGF0IGN1cnJlbnRseSByZXF1ZXN0cyB0aGUgaW50ZXJj
b25uZWN0IHBhdGgsCnNwZWNpZmljYWxseSBtZHA1X3NldHVwX2ludGVyY29ubmVjdCgpIGluCmRy
aXZlcnMvZ3B1L2RybS9tc20vZGlzcC9tZHA1L21kcDVfa21zLmMuIFRoZSBGcmVlZHJlbm8gR1BV
IGJpbmRpbmdzCmN1cnJlbnRseSBkb24ndCBoYXZlIGludGVyY29ubmVjdCBzdXBwb3J0LiBNYXli
ZSB0aGlzIGlzIHNvbWV0aGluZyB0aGF0Ckkgc2hvdWxkIGFkZCB0byB0aGF0IGRyaXZlciBhcyB3
ZWxsPwoKPiA+ICsJCQkJaW50ZXJjb25uZWN0LW5hbWVzID0gIm1kcDAtbWVtIiwKPiA+ICsJCQkJ
ICAgICAgICAgICAgICAgICAgICAgIm1kcDEtbWVtIjsKPiAKPiBBcyB0aGUgc2Vjb25kIHBhdGgg
aXMgbm90IHRvIEREUiwgYnV0IHRvIG9jbWVtLCBpdCBtaWdodCBiZSBiZXR0ZXIgdG8gY2FsbCBp
dAo+IHNvbWV0aGluZyBsaWtlICJncHUtb2NtZW0iLgoKSSB1c2VkIHdoYXQgbWRwNV9rbXMuYyBl
eHBlY3RlZC4KCkJyaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
