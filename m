Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E6325FB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 10:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChQHlrzMKb6Gw/FcRC+P6w/lBCwLVspEHcbfjxLeTAM=; b=pc4585GhL1iITg
	5emfbPsZnRgh1eM54uiw6xBQB67ofU59ZPhgkfLVsUCBvS5Ky4FoJ3Zir0jcdi6t61zsp1FAg2GMm
	vSAbGMxH9pK3uU/DjgJjO0Z5/+ab/KAGm6xlit7oGl3j5f08oaIsNgdF4OtKY5AjotE9ZRImzrQmO
	0Zfq9UaOxmTaQTCz5YFHIUeR+Pzp6w3UXAC7WbgF8R9hsx1zdUt725rxv1KlrY8DUTIDkKOJn8gOU
	nH/IjTH1zCaU+WXkiNB1u7s3X5eq6+VAUT1g1mvorZcmZya48J1mr+4On2U9pOPPYw6Kdew01Ynfy
	HycLlLpH+LEw7CB2Oyog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTMoj-0002rD-D7; Wed, 22 May 2019 08:41:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTMoc-0002qp-7s
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 08:41:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id i3so1272402wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 01:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=q7L1/sUPR8W9L8sXprMVyL5Z/bzVpXnH1aOKj/GG+/A=;
 b=n69/2+lx5ga5KpFONpiST2P4CX7PPHu2WceXSABiNdhAyiDvk8C+SCACxIwNaL2x9N
 cPJo848qpz6mgcUMpwNgiOvQfmiAyRBFmL+cP7i+cWKeP7HUW/lfrpQAYK4u1cFQn10z
 ojiLKlRLkE5cbhH9A7s2FMUtzFRxim2ipoXrvUa3DFtFqX8zQLSxkWtPlb7j4jj+kwBc
 SEKoopT21GfIZhHs7OBJHWXImJBXHqG9avaIOnHpT93VTAByAWbNVfMPVzprWMQTBcEK
 /Xl7dk+EW/rugC26Cm1IR+tnlktJj2mv1S2NfqKzpal8eQqC7E/YLGy54eGX/6C4+gMS
 577g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=q7L1/sUPR8W9L8sXprMVyL5Z/bzVpXnH1aOKj/GG+/A=;
 b=lrMKSiY/Ni+rzoyNb/cBTbOSsqM7xeSRlqOmRGqtLemJ425JrBlyEveDM1grjIvDaq
 MAC/Gzw9rJay+Mzx3uRKB4XQyNt8hi4J5tA6xsxCbR1oQ43ZCRNhkpHjfwz6XgVJ3dNB
 cjqQ7JmnJl4QcUjxRexYJa6kquUoM8wz9Kk2FAE0cpbc3oFYIDWpNO7/u7oRtrgmlYZI
 kgYnS/Qv8RkuLoQF2dUuYRKORFka3sCVtTZXuL5c0LZPGb86bGMvjAIFsgR6JCqhlv0D
 J8l4K08KEb8bcABW3HBFlfSmUSZoNAto6GBbZNtPrcZU7OpM6DwKRqU9kCEWaSMAC1rE
 tJjQ==
X-Gm-Message-State: APjAAAVcsEeGIWndnh2sC0FPyuo8vkfiE7oWiXYpWk+TvAwi6aVsQ4Hm
 RC8wChS75Rd2U++gw7BmJkEA1Q==
X-Google-Smtp-Source: APXvYqymC4/6/Dt/5Im40Dr4o+wcxROcVrKiMvQ98uY3QS+nO3KOw2P2dBJz6PSyiQem8zGp3U2B9w==
X-Received: by 2002:a1c:a00a:: with SMTP id j10mr1164973wme.41.1558514496607; 
 Wed, 22 May 2019 01:41:36 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id j13sm21086795wru.78.2019.05.22.01.41.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 01:41:35 -0700 (PDT)
Date: Wed, 22 May 2019 09:41:33 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie DELAUNAY <amelie.delaunay@st.com>
Subject: Re: [PATCH] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO is
 not defined
Message-ID: <20190522084133.GF4574@dell>
References: <1558338735-8444-1-git-send-email-amelie.delaunay@st.com>
 <20190522054833.GB4574@dell>
 <eb8425ec-989a-9701-7fee-61bd1d2b93c1@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb8425ec-989a-9701-7fee-61bd1d2b93c1@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_014138_309897_0014E81F 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "kbuild-all@01.org" <kbuild-all@01.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMiBNYXkgMjAxOSwgQW1lbGllIERFTEFVTkFZIHdyb3RlOgo+IE9uIDUvMjIvMTkg
Nzo0OCBBTSwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gT24gTW9uLCAyMCBNYXkgMjAxOSwgQW1lbGll
IERlbGF1bmF5IHdyb3RlOgo+ID4gCj4gPj4gV2hlbiBDT05GSUdfR1BJT19PRiBpcyBub3QgZGVm
aW5lZCwgc3RydWN0IGdwaW9fY2hpcCAnb2Zfbm9kZScgbWVtYmVyIGRvZXMKPiA+PiBub3QgZXhp
c3Q6Cj4gPj4gZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYzogSW4gZnVuY3Rpb24gJ3N0
bWZ4X3BpbmN0cmxfcHJvYmUnOgo+ID4+IGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmM6
NjUyOjE3OiBlcnJvcjogJ3N0cnVjdCBncGlvX2NoaXAnIGhhcyBubyBtZW1iZXIgbmFtZWQgJ29m
X25vZGUnCj4gPj4gICAgICAgcGN0bC0+Z3Bpb19jaGlwLm9mX25vZGUgPSBucDsKPiA+Pgo+ID4+
IEZpeGVzOiAxNDkwZDlmODQxYjEgKCJwaW5jdHJsOiBBZGQgU1RNRlggR1BJTyBleHBhbmRlciBQ
aW5jdHJsL0dQSU8gZHJpdmVyIikKPiA+PiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3Qg
PGxrcEBpbnRlbC5jb20+Cj4gPj4gU2lnbmVkLW9mZi1ieTogQW1lbGllIERlbGF1bmF5IDxhbWVs
aWUuZGVsYXVuYXlAc3QuY29tPgo+ID4+IC0tLQo+ID4+ICAgZHJpdmVycy9waW5jdHJsL3BpbmN0
cmwtc3RtZnguYyB8IDIgKysKPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykK
PiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1zdG1meC5jIGIv
ZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYwo+ID4+IGluZGV4IGViYTg3MmMuLmJiNjRh
YTAgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYwo+ID4+
ICsrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmMKPiA+PiBAQCAtNjQ4LDcgKzY0
OCw5IEBAIHN0YXRpYyBpbnQgc3RtZnhfcGluY3RybF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ID4+ICAgCXBjdGwtPmdwaW9fY2hpcC5iYXNlID0gLTE7Cj4gPj4gICAJcGN0
bC0+Z3Bpb19jaGlwLm5ncGlvID0gcGN0bC0+cGN0bF9kZXNjLm5waW5zOwo+ID4+ICAgCXBjdGwt
PmdwaW9fY2hpcC5jYW5fc2xlZXAgPSB0cnVlOwo+ID4+ICsjaWZkZWYgQ09ORklHX09GX0dQSU8K
PiA+PiAgIAlwY3RsLT5ncGlvX2NoaXAub2Zfbm9kZSA9IG5wOwo+ID4+ICsjZW5kaWYKPiA+IAo+
ID4gVGhpcyBpcyBwcmV0dHkgdWdseS4gIFdpbGwgU1RNRlggZXZlciBiZSB1c2VkIHdpdGhvdXQg
T0Ygc3VwcG9ydD8gIElmCj4gPiBub3QsIGl0IG1pZ2h0IGJlIGJldHRlciB0byBwbGFjZSB0aGlz
IHJlc3RyaWN0aW9uIG9uIHRoZSBkcml2ZXIgYXMgYQo+ID4gd2hvbGUuCj4gPiAKPiA+IEluY2lk
ZW50YWxseSwgd2h5IGlzIHRoaXMgYmxhbmtlZCBvdXQgaW4gdGhlIHN0cnVjdHVyZSBkZWZpbml0
aW9uPwo+ID4gRXZlbiAnc3RydWN0IGRldmljZScgZG9lc24ndCBkbyB0aGlzLgo+ID4gCj4gY29u
ZmlnIFBJTkNUUkxfU1RNRlgKPiAJdHJpc3RhdGUgIlNUTWljcm9lbGVjdHJvbmljcyBTVE1GWCBH
UElPIGV4cGFuZGVyIHBpbmN0cmwgZHJpdmVyIgo+IAlkZXBlbmRzIG9uIEkyQwo+IAlkZXBlbmRz
IG9uIE9GIHx8IENPTVBJTEVfVEVTVAo+IAlzZWxlY3QgR0VORVJJQ19QSU5DT05GCj4gCXNlbGVj
dCBHUElPTElCX0lSUUNISVAKPiAJc2VsZWN0IE1GRF9TVE1GWAo+IAo+IFRoZSBpc3N1ZSBpcyBk
dWUgdG8gQ09NUElMRV9URVNUOiB3b3VsZCAiZGVwZW5kcyBvbiBPRiB8fCAoT0YgJiYgCj4gQ09N
UElMRV9URVNUKSIgYmUgYmV0dGVyID8KCkxpbnVzIHdvdWxkIGJlIGluIGEgYmV0dGVyIHBvc2l0
aW9uIHRvIHJlc3BvbmQsIGJ1dCBmcm9tIHdoYXQgSSBjYW4Kc2VlLCBtYXliZToKCiAgZGVwZW5k
cyBvbiBPRiB8fCAoT0ZfR1BJTyAmJiBDT01QSUxFX1RFU1QpCgpBbHRob3VnaCwgSSdtIHVuc3Vy
ZSB3aHkgb3RoZXIgQ09NUElMRV9URVNUcyBoYXZlbid0IGhpZ2hsaWdodGVkIHRoaXMKaXNzdWUu
ICBQZXJoYXBzIGJlY2F1c2UgdGhleSBoYXZlIGFsbCBiZWVuIGxvY2tlZCBkb3duIHRvIGEgcGFy
dGljdWxhcgphcmNoOgoKJCBncmVwIENPTVBJTEVfVEVTVCAtLSBkcml2ZXJzL3BpbmN0cmwvS2Nv
bmZpZyAKCWJvb2wgIlN1cHBvcnQgcGluIG11bHRpcGxleGluZyBjb250cm9sbGVycyIgaWYgQ09N
UElMRV9URVNUCglib29sICJTdXBwb3J0IHBpbiBjb25maWd1cmF0aW9uIGNvbnRyb2xsZXJzIiBp
ZiBDT01QSUxFX1RFU1QKCWRlcGVuZHMgb24gT0YgJiYgKEFSQ0hfREFWSU5DSV9EQTg1MCB8fCBD
T01QSUxFX1RFU1QpCglkZXBlbmRzIG9uIE9GICYmIChBUkNIX0RJR0lDT0xPUiB8fCBDT01QSUxF
X1RFU1QpCglkZXBlbmRzIG9uIE9GICYmIChBUkNIX0xQQzE4WFggfHwgQ09NUElMRV9URVNUKQoJ
ZGVwZW5kcyBvbiBBUkNIX1I3UzcyMTAwIHx8IENPTVBJTEVfVEVTVAoJZGVwZW5kcyBvbiBBUkNI
X1I3UzkyMTAgfHwgQ09NUElMRV9URVNUCglkZXBlbmRzIG9uIEFSQ0hfUlpOMSB8fCBDT01QSUxF
X1RFU1QKCWRlcGVuZHMgb24gTUlQUyB8fCBDT01QSUxFX1RFU1QKCldoYXQgYWJvdXQgYWRkaW5n
IHRoaXMgdG8geW91ciBLY29uZmlnIGVudHJ5OgoKICBzZWxlY3QgT0ZfR1BJTwoKPiA+PiAgIAlw
Y3RsLT5ncGlvX2NoaXAubmVlZF92YWxpZF9tYXNrID0gdHJ1ZTsKPiA+PiAgIAo+ID4+ICAgCXJl
dCA9IGRldm1fZ3Bpb2NoaXBfYWRkX2RhdGEocGN0bC0+ZGV2LCAmcGN0bC0+Z3Bpb19jaGlwLCBw
Y3RsKTsKPiA+IAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVj
aG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBT
b0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
