Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C611BC20B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CtRSPZwOkEv0uwp1AOKNvBk+waq0dFUa7SSbtS9Tgok=; b=J6arbar4XKF3U8
	qi7BWtPVggYPUw5S5NZU0ddGKU2QElK2PYXBY+jaIX3OImUDJjiGDrymZ66a2hYSoVVbBYQXIHtqJ
	efnIhG1p3AfDj5t2SoqXDPaK2nvOB4OBO1+1ZqNzUNFE5EB0FpFyR2qKDD4Jx8oFJy2kvOvzqSKfl
	mMA9sDSvjmlSZ5N4iPbN/ISXkymvQ1NohMgBmwwBSogE7ceRQqh9vGb0ZQ068JnJvm3aM2bL2EDkk
	nxV93lL94mE8dXvfqRTeotp2JNoEj28TUis53EhT4cBwaozdDluV3/ZEMyUibBfwa5B32tFxpH/Cq
	Y15FVjhWJTpYoOFIs1Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTReE-0000WV-4n; Tue, 28 Apr 2020 14:55:46 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRZj-0003A8-Qi
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:51:12 +0000
Received: by mail-io1-xd43.google.com with SMTP id w4so23086228ioc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 07:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GgeqmdEmb09cwWnZURvh19BHVHs9QFAo9j/uyja5xe8=;
 b=ftbhbo46DIoclP20MgqTJq6QQRg5IIitlwWEB+J2uWIkW1NTCjW5+JN0e+g2WLF9vX
 EKTRwC5obL6iWDl+wsizqv27kDrSnFwS5opGl2Zcq/MAtIokvA2YFVb/2/tWigKsAib0
 uOLaSE6BjfNoo30LntGvtNE2THRjybP1x/+YqnPP2BlCbHmTKKEBQzl/FzpdYc0xsuyD
 IFf76F2YqZH5MyVkpyeq5vO1yglnBvM0Qo75HG5bdTFhecuJIxKxzuiPOzs5nIBDXZs4
 fNpAWwOZwDSEjEVCu5IZKwpebijosF2ybxlz7kyBJ12/OlwYf9qgogeqZMxcghVtFbM+
 rlFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GgeqmdEmb09cwWnZURvh19BHVHs9QFAo9j/uyja5xe8=;
 b=Nt5+ztxb56g0BaU14cCJszm5nREsJ4/eWh8MPG3kFMJr3NqxelvsUBNrjP1GN+QkOA
 GqDxZ+QbcZGeC/fEAWloCvNdfHuUoYe6MzYJ6x09Gll1mQUETPv2cKIfYuEyi4zF+Ilj
 hpzO4R83RC4ICcVhUDimJW+h37/aVC5PsvfeZjTWG3P7uT0QXzBDBuRtfoJYNhT0mHg2
 18TWC1VK22kthAEofje0nM6pCg82zRleabQFoUS0O4SflP/o7htUSKg8XbBg8TOqy0kS
 e4GRNkn2WLshdY9rcG0Mhs4dTIiqnr+Dm5+5mu3iahyht+ak3M0Qmq5S9GaQ8i10qcsH
 FTDA==
X-Gm-Message-State: AGi0PuZaLwdl+BttNHbMizir0QUrTE2OFdjizvZxX44J7gswIDKfCCNG
 u6W+GvyvKbPCoNxGApWxyw9Yx6yd/m3DjYoTLMY=
X-Google-Smtp-Source: APiQypKTD+S1WqOLrfRlXdxvtseawzRWMNX6kR8updafIakHcwBAhBmXxHQROLhLlZ95M3jOMARBiMD5WpWSOUrqEXQ=
X-Received: by 2002:a5d:9494:: with SMTP id v20mr26401979ioj.101.1588085465427; 
 Tue, 28 Apr 2020 07:51:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200426161605.52121-1-samuel@sholland.org>
In-Reply-To: <20200426161605.52121-1-samuel@sholland.org>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 28 Apr 2020 16:50:54 +0200
Message-ID: <CAJiuCcdgDd=xrGU6iDjo=Og+OW=4cbrLG_NWZpzRZXdjJbnRXQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2] arm64: dts: allwinner: a64: Remove
 unused SPDIF sound card
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_075107_918098_5FF4C6FE 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Marcus Cooper <codekipper@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIDI2IEFwciAyMDIwIGF0IDE4OjEyLCBTYW11ZWwgSG9sbGFuZCA8c2FtdWVs
QHNob2xsYW5kLm9yZz4gd3JvdGU6Cj4KPiBBcyBvZiB2NS43LXJjMiwgTGludXggbm93IHByaW50
cyB0aGUgZm9sbG93aW5nIG1lc3NhZ2UgYXQgYm9vdDoKPgo+ICAgWyAgIDMzLjg0ODUyNV0gcGxh
dGZvcm0gc291bmRfc3BkaWY6IGRlZmVycmVkIHByb2JlIHBlbmRpbmcKPgo+IFRoaXMgaXMgYmVj
YXVzZSBzb3VuZF9zcGRpZiBpcyB3YWl0aW5nIG9uIGl0cyBDUFUgREFJICZzcGRpZiB0byBwcm9i
ZSwKPiBidXQgJnNwZGlmIGlzIGRpc2FibGVkIGluIHRoZSBkZXZpY2UgdHJlZS4KPgo+IEV4cG9z
dXJlIG9mIHRoZSBTUERJRiBwaW4gaXMgYm9hcmQtc3BlY2lmaWMgZnVuY3Rpb25hbGl0eSwgc28g
dGhlIHNvdW5kCj4gY2FyZCBhbmQgY29kZWMgREFJIGJlbG9uZyBpbiB0aGUgaW5kaXZpZHVhbCBi
b2FyZCBEVFMsIG5vdCB0aGUgU29DIERUU0kuCj4gSW4gZmFjdCwgbm8gaW4tdHJlZSBBNjQgYm9h
cmQgRFRTIGVuYWJsZXMgJnNwZGlmLCBzbyBsZXQncyByZW1vdmUgdGhlCj4gY2FyZCBhbmQgREFJ
IGVudGlyZWx5LgoKQ0M6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgoKV2l0
aG91dCBhbnkgdmFsdWUgOgpBY2tlZC1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdt
YWlsLmNvbT4KClJlZ2FyZHMsCkNsZW1lbnQKCj4KPiBUaGlzIHJldmVydHMgY29tbWl0IDc4ZTA3
MTM3MGE4NjQ3M2YyNTkyM2UwM2I1MWNiYmFkYWNmOGJlMGYuCj4KPiBTaWduZWQtb2ZmLWJ5OiBT
YW11ZWwgSG9sbGFuZCA8c2FtdWVsQHNob2xsYW5kLm9yZz4KPiAtLS0KPgo+IENoYW5nZXMgc2lu
Y2UgdjE6Cj4gIC0gUmVtb3ZlIHRoZSBub2RlIGluc3RlYWQgb2YgZGlzYWJsaW5nIGl0Cj4gIC0g
QWxzbyByZW1vdmUgdGhlIGNvZGVjIERBSQo+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSB8IDE4IC0tLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTggZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWE2NC5kdHNpCj4gaW5kZXggMzExNDNmZTY0ZDkxLi5jMjZjYzFmY2Fm
ZmQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2
NC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5k
dHNpCj4gQEAgLTE1NCwyNCArMTU0LDYgQEAgbGlua19jb2RlYzogc2ltcGxlLWF1ZGlvLWNhcmQs
Y29kZWMgewo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgfTsKPgo+IC0gICAgICAgc291
bmRfc3BkaWYgewo+IC0gICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInNpbXBsZS1hdWRpby1j
YXJkIjsKPiAtICAgICAgICAgICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQsbmFtZSA9ICJPbi1ib2Fy
ZCBTUERJRiI7Cj4gLQo+IC0gICAgICAgICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxjcHUgewo+
IC0gICAgICAgICAgICAgICAgICAgICAgIHNvdW5kLWRhaSA9IDwmc3BkaWY+Owo+IC0gICAgICAg
ICAgICAgICB9Owo+IC0KPiAtICAgICAgICAgICAgICAgc2ltcGxlLWF1ZGlvLWNhcmQsY29kZWMg
ewo+IC0gICAgICAgICAgICAgICAgICAgICAgIHNvdW5kLWRhaSA9IDwmc3BkaWZfb3V0PjsKPiAt
ICAgICAgICAgICAgICAgfTsKPiAtICAgICAgIH07Cj4gLQo+IC0gICAgICAgc3BkaWZfb3V0OiBz
cGRpZi1vdXQgewo+IC0gICAgICAgICAgICAgICAjc291bmQtZGFpLWNlbGxzID0gPDA+Owo+IC0g
ICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImxpbnV4LHNwZGlmLWRpdCI7Cj4gLSAgICAgICB9
Owo+IC0KPiAgICAgICAgIHRpbWVyIHsKPiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJh
cm0sYXJtdjgtdGltZXIiOwo+ICAgICAgICAgICAgICAgICBhbGx3aW5uZXIsZXJyYXR1bS11bmtu
b3duMTsKPiAtLQo+IDIuMjQuMQo+Cj4gLS0KPiBZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJl
Y2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBzICJsaW51eC1zdW54
aSIgZ3JvdXAuCj4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2Vp
dmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1zdW54aSt1bnN1YnNj
cmliZUBnb29nbGVncm91cHMuY29tLgo+IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3
ZWIsIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1zdW54aS8y
MDIwMDQyNjE2MTYwNS41MjEyMS0xLXNhbXVlbCU0MHNob2xsYW5kLm9yZy4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
