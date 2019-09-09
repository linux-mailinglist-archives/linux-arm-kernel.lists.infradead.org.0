Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401A8AD5C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3ueGVl2faZSbf12Wk0NuMmHxsYo9WFBopQMJTPn7c8=; b=af2j7tGlAeOwSd
	FGagtwjYqY9JXjO9p2eIBBy+1+L1pgW0Y4hqWo6cuXsr4XyVx2gV9aLgBtRPqb1k3iEqW5I//V7YS
	0rdZol0Is70TUcSUcuxzcIQLMl+M4ivKhkeB4D7cpEzsbjC+Pooio0EUwtkoRnwXM7FULPMOO4+GF
	AuqdocL1ePx3s7HF1TrE+du32TKC0qusWLhEMAXtLBHZAt9Uj3gKAVCKwc57RD0BEnzsIcpQpGKfT
	pBlbqm1M12oeJNhVmLTIQ+cpYUvODPLdmwO3eEw2jH5pPtQpbvK8bBhHDNFrOoFRTHMfW3/hyX0O8
	1zGn793YGud+mHyFRsFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7G38-0001xI-2r; Mon, 09 Sep 2019 09:33:30 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7G2n-0001wx-Q7
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:33:11 +0000
Received: by mail-qk1-x743.google.com with SMTP id 4so12369558qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 02:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2tHmH1stIAhWci8qIBPtmNf+VD11DJ+UCL9f9Y17abo=;
 b=vrZnv+PStMf+ECSwAA9EBVmkJ1p3GaWvYFKNeMG3Owov4IHFuOEVR00hBZEXUYgKSh
 OieKMKPXAWSyeWC/HP+/8QjHPAQdr34fWMdBDb4EyrTrZzcaWm+bFSXF8/i1Qu+HEiyz
 CKq1XWiDER91AclIs00Rtj003JXkH1Eu9Ku5Gq5DOUvFkeqvW6kHPWF61Px47znWI9K1
 S/swfW3z34aw9icDEOL4KLxAVFXkRZCd61hfEJTlf//onBcY4c/nTKxMTOkbTn4T4qAu
 gUry9EPHH1pj8bML9BWQUN4v2UvpiQKwO3J3lFPxgg0Hq0i2zXZ1H1fYb9CNTHuZvNPo
 y/0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2tHmH1stIAhWci8qIBPtmNf+VD11DJ+UCL9f9Y17abo=;
 b=KZRGFps5PisEFA8ZDj6Dc3Yvx0vjlfYjNWVmZFODdP4i7eAma6fheMy4VRgEM0xbPs
 z0ooG2RMPcyvYIefiyerGLPtQbs3GbZPeyp3KVyg0vceTo6FU1O1CZ1hGiNV7oRl/w3i
 fgNui3E9YoBrRpJj0nzXTcxntaTQeuAiTJXpStht4dAdasVHV8pavXLNfR2zzAqG2Z1H
 bv4a5Ab0v1801t4kdZKIC8RqdkC7IwV37BssnusGeQ40JN2yJmfflUNbHUJyKlOrBmQN
 HR4Q4YuQZpMif9NpILUqjajA0ptLxCDmF152DWD9T1+WAGXTQKU2UIg71kV1QqZSWANH
 5XuA==
X-Gm-Message-State: APjAAAWL8yu96pASoTKeJRwPrKI453RriumEwnMgNiapgZjgKFekpsA8
 qcBv7gqSDpROTz1n591YnnPv9TelgdQAOhIKaG6V4g==
X-Google-Smtp-Source: APXvYqyJ2skoDsCxCcviaFJEdYxXi0/LKrzEr6iBfeSawT0Q0tTImcnSBrPILhJzLyjKObBRKhPopIxIjwlVAoBadOo=
X-Received: by 2002:ae9:dd81:: with SMTP id r123mr6813864qkf.103.1568021588009; 
 Mon, 09 Sep 2019 02:33:08 -0700 (PDT)
MIME-Version: 1.0
References: <1567761708-31777-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1567761708-31777-1-git-send-email-yannick.fertre@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Mon, 9 Sep 2019 11:32:57 +0200
Message-ID: <CA+M3ks6MQBScJ4mOY3VD-OTP-wG2VfSLMxA-9z6ZkNAeO53SMA@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: ltdc: add pinctrl for DPI encoder mode
To: =?UTF-8?Q?Yannick_Fertr=C3=A9?= <yannick.fertre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_023309_849630_3C73A09A 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Philippe Cornu <philippe.cornu@st.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuLiA2IHNlcHQuIDIwMTkgw6AgMTE6MjIsIFlhbm5pY2sgRmVydHLDqSA8eWFubmljay5m
ZXJ0cmVAc3QuY29tPiBhIMOpY3JpdCA6Cj4KPiBUaGUgaW1wbGVtZW50YXRpb24gb2YgZnVuY3Rp
b25zIGVuY29kZXJfZW5hYmxlIGFuZCBlbmNvZGVyX2Rpc2FibGUKPiBtYWtlIHBvc3NpYmxlIHRv
IGNvbnRyb2wgdGhlIHBpbmN0cmwgYWNjb3JkaW5nIHRvIHRoZSBlbmNvZGVyIHR5cGUuCj4gVGhl
IHBpbmN0cmwgbXVzdCBiZSBhY3RpdmF0ZWQgb25seSBpZiB0aGUgZW5jb2RlciB0eXBlIGlzIERQ
SS4KPiBUaGlzIGhlbHBzIHRvIG1vdmUgdGhlIERQSS1yZWxhdGVkIHBpbmN0cmwgY29uZmlndXJh
dGlvbiBmcm9tCj4gYWxsIHRoZSBwYW5lbCBvciBicmlkZ2UgdG8gdGhlIExUREMgZHQgbm9kZS4K
Pgo+IFJldmlld2VkLWJ5OiBQaGlsaXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAc3QuY29tPgo+
Cj4gU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+
CgpBcHBsaWVkIG9uIGRybS1taXNjLW5leHQsClRoYW5rcywKQmVuamFtaW4KCj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jIHwgMzUgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRk
Yy5jCj4gaW5kZXggM2FiNGZiZi4uMWM0ZmRlMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vc3RtL2x0ZGMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCj4gQEAgLTE1
LDYgKzE1LDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvb2ZfYWRkcmVzcy5oPgo+ICAjaW5jbHVkZSA8bGludXgvb2ZfZ3JhcGguaD4KPiArI2luY2x1
ZGUgPGxpbnV4L3BpbmN0cmwvY29uc3VtZXIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3Jt
X2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcG1fcnVudGltZS5oPgo+ICAjaW5jbHVkZSA8
bGludXgvcmVzZXQuaD4KPiBAQCAtMTA0MCw2ICsxMDQxLDM2IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZHJtX2VuY29kZXJfZnVuY3MgbHRkY19lbmNvZGVyX2Z1bmNzID0gewo+ICAgICAgICAgLmRl
c3Ryb3kgPSBkcm1fZW5jb2Rlcl9jbGVhbnVwLAo+ICB9Owo+Cj4gK3N0YXRpYyB2b2lkIGx0ZGNf
ZW5jb2Rlcl9kaXNhYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikKPiArewo+ICsgICAg
ICAgc3RydWN0IGRybV9kZXZpY2UgKmRkZXYgPSBlbmNvZGVyLT5kZXY7Cj4gKwo+ICsgICAgICAg
RFJNX0RFQlVHX0RSSVZFUigiXG4iKTsKPiArCj4gKyAgICAgICAvKiBTZXQgdG8gc2xlZXAgc3Rh
dGUgdGhlIHBpbmN0cmwgd2hhdGV2ZXIgdHlwZSBvZiBlbmNvZGVyICovCj4gKyAgICAgICBwaW5j
dHJsX3BtX3NlbGVjdF9zbGVlcF9zdGF0ZShkZGV2LT5kZXYpOwo+ICt9Cj4gKwo+ICtzdGF0aWMg
dm9pZCBsdGRjX2VuY29kZXJfZW5hYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikKPiAr
ewo+ICsgICAgICAgc3RydWN0IGRybV9kZXZpY2UgKmRkZXYgPSBlbmNvZGVyLT5kZXY7Cj4gKwo+
ICsgICAgICAgRFJNX0RFQlVHX0RSSVZFUigiXG4iKTsKPiArCj4gKyAgICAgICAvKgo+ICsgICAg
ICAgICogU2V0IHRvIGRlZmF1bHQgc3RhdGUgdGhlIHBpbmN0cmwgb25seSB3aXRoIERQSSB0eXBl
Lgo+ICsgICAgICAgICogT3RoZXJzIHR5cGVzIGxpa2UgRFNJLCBkb24ndCBuZWVkIHBpbmN0cmwg
ZHVlIHRvCj4gKyAgICAgICAgKiBpbnRlcm5hbCBicmlkZ2UgKHRoZSBzaWduYWxzIGRvIG5vdCBj
b21lIG91dCBvZiB0aGUgY2hpcHNldCkuCj4gKyAgICAgICAgKi8KPiArICAgICAgIGlmIChlbmNv
ZGVyLT5lbmNvZGVyX3R5cGUgPT0gRFJNX01PREVfRU5DT0RFUl9EUEkpCj4gKyAgICAgICAgICAg
ICAgIHBpbmN0cmxfcG1fc2VsZWN0X2RlZmF1bHRfc3RhdGUoZGRldi0+ZGV2KTsKPiArfQo+ICsK
PiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZW5jb2Rlcl9oZWxwZXJfZnVuY3MgbHRkY19lbmNv
ZGVyX2hlbHBlcl9mdW5jcyA9IHsKPiArICAgICAgIC5kaXNhYmxlID0gbHRkY19lbmNvZGVyX2Rp
c2FibGUsCj4gKyAgICAgICAuZW5hYmxlID0gbHRkY19lbmNvZGVyX2VuYWJsZSwKPiArfTsKPiAr
Cj4gIHN0YXRpYyBpbnQgbHRkY19lbmNvZGVyX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRkZXYs
IHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBkcm1fZW5j
b2RlciAqZW5jb2RlcjsKPiBAQCAtMTA1NSw2ICsxMDg2LDggQEAgc3RhdGljIGludCBsdGRjX2Vu
Y29kZXJfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldiwgc3RydWN0IGRybV9icmlkZ2UgKmJy
aWRnZSkKPiAgICAgICAgIGRybV9lbmNvZGVyX2luaXQoZGRldiwgZW5jb2RlciwgJmx0ZGNfZW5j
b2Rlcl9mdW5jcywKPiAgICAgICAgICAgICAgICAgICAgICAgICAgRFJNX01PREVfRU5DT0RFUl9E
UEksIE5VTEwpOwo+Cj4gKyAgICAgICBkcm1fZW5jb2Rlcl9oZWxwZXJfYWRkKGVuY29kZXIsICZs
dGRjX2VuY29kZXJfaGVscGVyX2Z1bmNzKTsKPiArCj4gICAgICAgICByZXQgPSBkcm1fYnJpZGdl
X2F0dGFjaChlbmNvZGVyLCBicmlkZ2UsIE5VTEwpOwo+ICAgICAgICAgaWYgKHJldCkgewo+ICAg
ICAgICAgICAgICAgICBkcm1fZW5jb2Rlcl9jbGVhbnVwKGVuY29kZXIpOwo+IEBAIC0xMjgwLDYg
KzEzMTMsOCBAQCBpbnQgbHRkY19sb2FkKHN0cnVjdCBkcm1fZGV2aWNlICpkZGV2KQo+Cj4gICAg
ICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUobGRldi0+cGl4ZWxfY2xrKTsKPgo+ICsgICAgICAg
cGluY3RybF9wbV9zZWxlY3Rfc2xlZXBfc3RhdGUoZGRldi0+ZGV2KTsKPiArCj4gICAgICAgICBw
bV9ydW50aW1lX2VuYWJsZShkZGV2LT5kZXYpOwo+Cj4gICAgICAgICByZXR1cm4gMDsKPiAtLQo+
IDIuNy40Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmkt
ZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
