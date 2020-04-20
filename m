Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AD01AFF2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 02:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QcX+4D6Z+Fr5dltWhPPDui65iwC5XEpS1b9+Qvw/LCg=; b=o9qvfNYFmqkWqC
	pcMbBwkcEE50Wew7RysBK/XEIec94KBQUFZEYIz1JXO1v6dc7TgwbWOnW0B6bZ21m7TAuIg+L5Grz
	L6X8XOe9GLFfPYnIR70UgcnoPxOfhOXiXCkpO8tU2w5fxOwaNrdIZYMasMGPLVwqbsBvTwFJ8mYl/
	12jAPoCorrnQbYBHf7IbS84u/B7GIy9S/BJQXV5ijvIl98beBnShpTDQwOIBRzjuHnZcKmb7PZFbK
	k5is8ckEYohcS9wGTmWcXu9i4rCrYAV+KdnsPb1dbvyoFV2+EP51P77/uCo7b5mlz8lSkn7Mnhumt
	PXBlk8xEb6br7KZxDleA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQKBh-0003TI-5c; Mon, 20 Apr 2020 00:21:25 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQKBL-0003NS-O3
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 00:21:14 +0000
Received: by mail-yb1-xb44.google.com with SMTP id i2so4457623ybk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 17:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=s8BN9m+lx2Z48+uXcCTiGNQq8+iPaDOWBf0i0XZJgGg=;
 b=NraVSXpw2kgjiwrg7NQ9JOem9ozvndrMa4CK99N3hfpqAiTB5okNd7BQkOIk7i0g47
 wlf+AQKl1I/T4MjB3IQv5fTPC/KJQMpqHIAaKofnqvbwj7dBqebfC3XKHsitoueT/ctx
 IhciW92FBwcBz8630vH6Rib9AxRfveMs9JIUAVOS6YevLsGugYg1rP2R9Mv+CIuxN/Py
 0HKhPib8Kp+1AezkbppM2L4uuo8gcHkqATQ7Rs2kMdYu0msHNF57+nXZKrbSTGPUNDot
 9mVV3IXta/ufQvqz0081YfFXPOB4xHF7+rmRFy2frwp8Vj7ZSgNxGhY34wAX1tXth1EL
 G0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=s8BN9m+lx2Z48+uXcCTiGNQq8+iPaDOWBf0i0XZJgGg=;
 b=ma/vaQyPxC4vzLgJ49SkpY9HBRhbeYK7UUv1Wk+ZDKKVKYs9ddN91vhlr7Uw+H5FxN
 H6D77BjpVi2Vha/hZvmr0fk/Sadh4g6FoI6KbNgJfmQFm34q2U8LmBM0Di/nrKwnFl/E
 ewW9qyfNyImzGFqPLz0PRuR3ShXcLMmseS5Ycybf1kVc7I2lJAzyYKkhbBm7SXL4uN5O
 OcJt37fHPNTUUsHyiLpM9efXCOGB/gyUOiCXKUZiebzARjZGyCO7UIF8jksou/S8mIaS
 SzkyRnREyXTdtb6mwMIZ9/s4g9F3o4V7SSNtxH7vtDuR6Of1DHzrkfDPjzKEQSKmZA4b
 dJ8Q==
X-Gm-Message-State: AGi0PuZ9iSWS+/aJaLhOE/u+NWHEvApR9XOUM55NF+JP4OMr/kggAXKz
 Sddq6v4JJNx1JtPQmDtEoAaf5CGc5obh2cjStwgJCAKm
X-Google-Smtp-Source: APiQypJSOxjv8wt4QQJ4xhmJDmewwOsK4skGY6vGs/0WOCDwdsbc/Vct6BQldP4vgGuwsYYSyW6gIb+HYgEIOtHSeEY=
X-Received: by 2002:a25:9cc3:: with SMTP id z3mr15862074ybo.234.1587342062189; 
 Sun, 19 Apr 2020 17:21:02 -0700 (PDT)
MIME-Version: 1.0
References: <158614147708.29424.2884940487411120526.stgit@localhost>
 <CAA93ih2ineuFYzA_uhGwmzsznDKacEG=7rK1beWsCkrnR0opuA@mail.gmail.com>
 <CAK7LNAR9tdhqkKft5j59_Z=sJj_wVJBwRysFpShO1HXck7-idw@mail.gmail.com>
In-Reply-To: <CAK7LNAR9tdhqkKft5j59_Z=sJj_wVJBwRysFpShO1HXck7-idw@mail.gmail.com>
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
Date: Mon, 20 Apr 2020 09:20:50 +0900
Message-ID: <CAA93ih3tLjouxUB70BK42bi_dFfaovTy-aCyHjHjjYR6aR3TWw@mail.gmail.com>
Subject: Re: [PATCH 0/2] dts: uniphier: Add Akebi96 Board support
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_172104_327268_0CF9D2D4 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: DTML <devicetree@vger.kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFtYWRhLXNhbiwKCjIwMjDlubQ05pyIMjDml6Uo5pyIKSA4OjM3IE1hc2FoaXJvIFlhbWFk
YSA8bWFzYWhpcm95QGtlcm5lbC5vcmc+Ogo+Cj4gSGlyYW1hdHN1LXNhbgo+Cj4KPiBPbiBGcmks
IEFwciAxNywgMjAyMCBhdCAyOjMxIFBNIE1hc2FtaSBIaXJhbWF0c3UKPiA8bWFzYW1pLmhpcmFt
YXRzdUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+Cj4gPiBIZWxsbyBZYW1hZGEtc2FuLAo+ID4KPiA+
IENvdWxkIHlvdSByZXZpZXcgdGhpcyBzZXJpZXM/Cj4KPgo+IFdoZXJlIGRpZCB5b3UgcG9zdCB5
b3VyIHNlcmllcz8KPgo+IEkgc2VlIHRoaXMgcGluZyBtYWlsIGluCj4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC8/cT1Ba2ViaTk2Cj4KPiBCdXQsIEkgZG8gbm90IHNl
ZSB0aGUgb3JpZ2luYWwgcG9zdC4KCkhtbSwgaW5kZWVkLiBJIGhhZCBzdWJtaXR0ZWQgdGhlIHNl
cmllcyB0byBsaW51eC1hcm0ta2VybmVsLCBidXQgaXQKc2VlbXMgdG8gYmUgZmFpbGVkLgoKPgo+
IENvdWxkIHlvdSBwb2ludCBtZSB0byB0aGUgcGF0Y2h3b3JrIFVSTCwgcGxlYXNlPwoKT0ssIEkn
bGwgcmVwb3N0IGl0LgoKPgo+IE9uY2UgSSBmaW5kIHRoZSBwYXRjaCBsb2NhdGlvbiwgaXQgaXMg
ZWFzeSB0byBoYW5kbGUuCj4gU2luY2UgSSBkbyBub3QgaGF2ZSB0aGlzIGJvYXJkLCBJIHdpbGwg
anVzdCBxdWV1ZSBpdCB1cCB3aXRoIG5vIGV2YWx1YXRpb24uCgoKVGhhbmsgeW91LAoKCj4KPiBU
aGFua3MuCj4KPgo+Cj4gPgo+ID4gVGhhbmsgeW91LAo+ID4KPiA+IDIwMjDlubQ05pyINuaXpSjm
nIgpIDExOjUyIE1hc2FtaSBIaXJhbWF0c3UgPG1hc2FtaS5oaXJhbWF0c3VAbGluYXJvLm9yZz46
Cj4gPiA+Cj4gPiA+IEhlbGxvLAo+ID4gPgo+ID4gPiBIZXJlIGlzIGEgY291cGxlIG9mIHBhdGNo
ZXMgdG8gYWRkIGEgZGV2aWNldHJlZSBmb3IgQWtlYmk5NiBib2FyZC4KPiA+ID4gVGhlIEFrZWJp
OTYgaXMgYSBjZXJ0aWZpZWQgOTZib2FyZHMgd2hpY2ggaXMgYmFzZWQgb24gU29jaW9uZXh0Cj4g
PiA+IFVuaVBoaWVyIExEMjAgU29DLiBNb3N0IG9mIHRoZSBwYXJ0IGlzIHNpbWlsYXIgdG8gTEQy
MCByZWZlcmVuY2UKPiA+ID4gYm9hcmQsIGJ1dCB0aGVyZSBhcmUgc29tZSBjaGFuZ2VzLgo+ID4g
Pgo+ID4gPiAgIC0gTUFYMzQyMSBVU0ItU1BJIGNoaXAgb24gU1BJIHBvcnQzIChmb3IgVVNCIGdh
ZGdldCBwb3J0LikKPiA+ID4gICAtIFNpbXBsZSBmcmFtZSBidWZmZXIgd2l0aCAxMDgwcCBmaXhl
ZCByZXNvbHV0aW9uLgo+ID4gPiAgIC0gSTJTIHBvcnQgd2hpY2ggaXMgY29ubmVjdGVkIHRvIGFv
dXQxYiBpbnN0ZWFkIG9mIGFvdXQxLgo+ID4gPiAgIC0gMyBzZXJpYWwgcG9ydHMsIG9ubHkgc2Vy
aWFsMyBoYXMgQ1RTL1JUUy4KPiA+ID4gICAtIE5vIE5BTkQsIG9ubHkgZU1NQyBvbiB0aGUgYm9h
cmQuCj4gPiA+ICAgLSBPUC1URUUgc3VwcG9ydC4KPiA+ID4KPiA+ID4gU2VlIGh0dHBzOi8vd3d3
Ljk2Ym9hcmRzLm9yZy9wcm9kdWN0L2FrZWJpOTYvIGZvciBkZXRhaWxzLgo+ID4gPgo+ID4gPiBU
aGFuayB5b3UsCj4gPiA+Cj4gPiA+IC0tLQo+ID4gPgo+ID4gPiBNYXNhbWkgSGlyYW1hdHN1ICgy
KToKPiA+ID4gICAgICAgZHQtYmluZGluZ3M6IGFybTogQWRkIEFrZWJpOTYgYm9hcmQgc3VwcG9y
dAo+ID4gPiAgICAgICBhcm02NDogZHRzOiB1bmlwaGllcjogQWRkIHN1cHBvcnQgZm9yIEFrZWJp
OTYKPiA+ID4KPiA+ID4KPiA+ID4gIC4uLi9iaW5kaW5ncy9hcm0vc29jaW9uZXh0L3VuaXBoaWVy
LnlhbWwgICAgICAgICAgIHwgICAgMQo+ID4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9zb2Npb25l
eHQvTWFrZWZpbGUgICAgICAgICAgICAgfCAgICAxCj4gPiA+ICAuLi4vYm9vdC9kdHMvc29jaW9u
ZXh0L3VuaXBoaWVyLWxkMjAtYWtlYmk5Ni5kdHMgICB8ICAyMDAgKysrKysrKysrKysrKysrKysr
KysKPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvc29jaW9uZXh0L3VuaXBoaWVyLWxkMjAuZHRz
aSAgIHwgICAgMgo+ID4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAyMDMgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMv
c29jaW9uZXh0L3VuaXBoaWVyLWxkMjAtYWtlYmk5Ni5kdHMKPiA+ID4KPiA+ID4gLS0KPiA+ID4g
TWFzYW1pIEhpcmFtYXRzdSA8bWFzYW1pLmhpcmFtYXRzdUBsaW5hcm8ub3JnPgo+ID4gPgo+ID4K
PiA+Cj4gPiAtLQo+ID4gTWFzYW1pIEhpcmFtYXRzdQo+Cj4KPgo+IC0tCj4gQmVzdCBSZWdhcmRz
Cj4gTWFzYWhpcm8gWWFtYWRhCgoKCi0tCk1hc2FtaSBIaXJhbWF0c3UKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
