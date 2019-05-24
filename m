Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C2C29336
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t58BE6E+cwSER8xGz//QMj0P8+/Vp/1taunHpJUO0ao=; b=okU0kTgtuzJ5CU
	Jp+t6rES6s0vnnDhK7uBUAr5Uqr39ZZlyBmfBiJi4RXuNfvWDC6jRhGSlPGZOI2C7sLedCLFrxyZ+
	xqvD+rnS/tQDU2fS3F+bFzn9nX9Mmv5dU7FumLNzdrO0BIO8N9io93raA3iPiT90oCbCdJk5RtD7E
	KwR58HWbwn7lDchzJjo6P3N8h0pXPuzGJa+0/q7+umd/5Fr474u90LZwyoIJmKovdjzyiiTNoJSnY
	5ZhyHkBlx4ung6x8s5fGBV6O7/n9Hy5rNU9tlSC96IPAGGPwe4/1qcyI27uFh0zGHcD/0myfp9Us1
	CfJhIZ8OMgO0UrcKV0WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5fm-0003ni-3i; Fri, 24 May 2019 08:35:30 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5fd-0003mw-Uf
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:35:23 +0000
Received: by mail-qk1-x744.google.com with SMTP id w25so6212668qkj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 01:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=stihjVpyL81uND5ibC7iaE+uqyg/RcZbMfoVKMB+mtE=;
 b=COOin8sWa/lSfTHzEbCe7QsWKGFHiwbo+Kuqmt7jQDTjGn3ID2t5iZEWRjwnG6By71
 uv4qD+B6V+lTSd1cGxfjm6xdUqKzNvZcPCCozGAex2g3HPLoSyGt0NRZJNju326CVrUV
 MZiPPpSrfATRPBRj69TBl8hi4mwSD9d9Ry0RIkDRDarSJhV7v4vh0sMntfyLf1zjBRF6
 ur+A0Nr18atc8xLW4L1cLh+ev5aI/b8CI+deN/SFEn4H6FL/TkNMHhBha/cCFesIbyQj
 44MwusoS5aJ1WsuHrDOHZoGBVhNW/7ciTNwIzlDSGh3AbxWasZnSztVK7nzT87PYKu6H
 HZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=stihjVpyL81uND5ibC7iaE+uqyg/RcZbMfoVKMB+mtE=;
 b=juvMLjwTZy0mv/U+TDEP2TxCOO6Drqoc/tiNG78Gyn9osEIdgwJLPI0T9Zw2e0G9/q
 OZBW9YMUJCZA65nNA7NPPu4OTvqM3RgUaNzYJ70TamuZrMJ8MHBuG+5fxFLMsyPAuBqw
 4fUwGe7wQdisNEZf89X+gf3+tQnQf2Ab4xuTwchGUR0IksfYIhrnNds7B+ZJJzSnRjS4
 R32PppN+e5+/pUlfOEAEDdSA5iMDIjVM5dS4jd1rQ0cqBW+pf4ggdw9cwce2+yA05oGx
 beHosoClEuXN7WvIdslSL5NyKeUF5fgVjQYuub6fEeaAUSkyaJq10KtV5dCFkJOAeeYM
 UxYQ==
X-Gm-Message-State: APjAAAWYtIh/Z2zvyhcqhbuYBF/jzSBNzYkFEgAxjQe1QPaJ18OUt/Ug
 +9wSfJHR9pE8GPOkinHgP23fewC4NiZBo4EtVLirhA==
X-Google-Smtp-Source: APXvYqzoub85iC3qRkUT/1rqPcbCAqf2PraA42mUh6gZCy1soKl7824Xl/NLHnNFN2zZSje+ohS+z/SwZ9ZQTmdisuQ=
X-Received: by 2002:a0c:ad85:: with SMTP id w5mr11932788qvc.242.1558686920808; 
 Fri, 24 May 2019 01:35:20 -0700 (PDT)
MIME-Version: 1.0
References: <1557753318-11218-1-git-send-email-yannick.fertre@st.com>
 <317f94d6-846f-92e2-bd0f-b44377ea7845@st.com>
In-Reply-To: <317f94d6-846f-92e2-bd0f-b44377ea7845@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 24 May 2019 10:35:10 +0200
Message-ID: <CA+M3ks77XPTZubS8icLdTF3mpQ3OHsvSqX35hHQik3ygRiGSZg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/stm: ltdc: remove clk_round_rate comment
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_013521_992098_6BA51901 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Vincent ABRIOU <vincent.abriou@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbHVuLiAxMyBtYWkgMjAxOSDDoCAxNjo0NiwgUGhpbGlwcGUgQ09STlUgPHBoaWxpcHBlLmNv
cm51QHN0LmNvbT4gYSDDqWNyaXQgOgo+Cj4gRGVhciBZYW5uaWNrLAo+Cj4gQWNrZWQtYnk6IFBo
aWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3JudUBzdC5jb20+Cj4KQXBwbGllZCBvbiBkcm0tbWlz
Yy1uZXh0LAoKQmVuamFtaW4KCj4gVGhhbmsgeW91LAo+Cj4gUGhpbGlwcGUgOi0pCj4KPiBPbiA1
LzEzLzE5IDM6MTUgUE0sIFlhbm5pY2sgRmVydHLDqSB3cm90ZToKPiA+IENsa19yb3VuZF9yYXRl
IHJldHVybnMgcm91bmRlZCBjbG9jayB3aXRob3V0IGNoYW5naW5nCj4gPiB0aGUgaGFyZHdhcmUg
aW4gYW55IHdheS4KPiA+IFRoaXMgZnVuY3Rpb24gY291bGRuJ3QgcmVwbGFjZSBzZXRfcmF0ZS9n
ZXRfcmF0ZSBjYWxscy4KPiA+IFRvZG8gY29tbWVudCBoYXMgYmVlbiByZW1vdmVkICYgYSBuZXcg
bG9nIGluc2VydGVkLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFlhbm5pY2sgRmVydHLDqSA8eWFu
bmljay5mZXJ0cmVAc3QuY29tPgo+ID4gLS0tCj4gPiBDaGFuZ2VzIGluIHYyOgo+ID4gICAgICAg
LSBDbGtfZW5hYmxlICYgY2xrX2Rpc2FibGUgYXJlIG5lZWRlZCBmb3IgdGhlIFNPQyBTVE0zMkY3
Cj4gPiAgICAgICAgKG5vdCBmb3IgU1RNMzJNUDEpLiBJIHJldHVybiB0aGlzIHBhcnQgb2YgdGhl
IHBhdGNoIHRvIG1ha2Ugc3VyZSB0aGUKPiA+ICAgICAgICBkcml2ZXIgaXMgY29tcGF0aWJsZSB3
aXRoIGFsbCBTT0MgU1RNMzIuCj4gPgo+ID4gICBkcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyB8
IDggKysrLS0tLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxl
dGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwo+ID4gaW5kZXggOTc5MTJlMi4uMTEwNGU3OCAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwo+ID4gQEAgLTUwNywxMSArNTA3LDYgQEAgc3RhdGljIGJv
b2wgbHRkY19jcnRjX21vZGVfZml4dXAoc3RydWN0IGRybV9jcnRjICpjcnRjLAo+ID4gICAgICAg
c3RydWN0IGx0ZGNfZGV2aWNlICpsZGV2ID0gY3J0Y190b19sdGRjKGNydGMpOwo+ID4gICAgICAg
aW50IHJhdGUgPSBtb2RlLT5jbG9jayAqIDEwMDA7Cj4gPgo+ID4gLSAgICAgLyoKPiA+IC0gICAg
ICAqIFRPRE8gY2xrX3JvdW5kX3JhdGUoKSBkb2VzIG5vdCB3b3JrIHlldC4gV2hlbiByZWFkeSwg
aXQgY2FuCj4gPiAtICAgICAgKiBiZSB1c2VkIGluc3RlYWQgb2YgY2xrX3NldF9yYXRlKCkgdGhl
biBjbGtfZ2V0X3JhdGUoKS4KPiA+IC0gICAgICAqLwo+ID4gLQo+ID4gICAgICAgY2xrX2Rpc2Fi
bGUobGRldi0+cGl4ZWxfY2xrKTsKPiA+ICAgICAgIGlmIChjbGtfc2V0X3JhdGUobGRldi0+cGl4
ZWxfY2xrLCByYXRlKSA8IDApIHsKPiA+ICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJDYW5ub3Qg
c2V0IHJhdGUgKCVkSHopIGZvciBwaXhlbCBjbGtcbiIsIHJhdGUpOwo+ID4gQEAgLTUyMSw2ICs1
MTYsOSBAQCBzdGF0aWMgYm9vbCBsdGRjX2NydGNfbW9kZV9maXh1cChzdHJ1Y3QgZHJtX2NydGMg
KmNydGMsCj4gPgo+ID4gICAgICAgYWRqdXN0ZWRfbW9kZS0+Y2xvY2sgPSBjbGtfZ2V0X3JhdGUo
bGRldi0+cGl4ZWxfY2xrKSAvIDEwMDA7Cj4gPgo+ID4gKyAgICAgRFJNX0RFQlVHX0RSSVZFUigi
cmVxdWVzdGVkIGNsb2NrICVka0h6LCBhZGp1c3RlZCBjbG9jayAlZGtIelxuIiwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgbW9kZS0+Y2xvY2ssIGFkanVzdGVkX21vZGUtPmNsb2NrKTsKPiA+
ICsKPiA+ICAgICAgIHJldHVybiB0cnVlOwo+ID4gICB9Cj4gPgo+ID4gLS0KPiA+IDIuNy40Cj4g
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJp
LWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
