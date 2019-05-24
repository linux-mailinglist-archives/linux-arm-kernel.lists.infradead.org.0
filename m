Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 195AF2932F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyiJha8F0VO22pcIVv1Dtlrw/eU+y0m53xlOJ6EseXw=; b=Dmxisww89UxtFX
	nKbV7uwhXgKsRT1N8mpJz0s7Ll3PyRcKjgKd9D7nc1miVpXVfUYR3JqkbM0II1hkefyd2CsNjkgA6
	GRJ7lIeP+ByMMIiG3XwFvn67vb3MUSbg4sfAwlomLlu5Ancb5ACThiaI+jyHm49iFVO++fTyUIPqD
	7/DpC1bSXwfRPWD1E3GQjauxrluA+F0bMVmN56UZkwGOhLsInIpT23K5oAadePpsJzJTHfY0bvIfR
	92my97gcvcKmfWRKEFIjpZwLnUXDFvsEUp+I35T0plG2+E7FzOzp8oaJet3pQGbM0d4yivL/AFqcW
	0OSPMU63egrghjUBWlig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5er-0002FT-16; Fri, 24 May 2019 08:34:33 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5ej-0002F7-Sq
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:34:27 +0000
Received: by mail-qk1-x743.google.com with SMTP id i125so4105837qkd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 01:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=oKqDPNhFrhfI648m2ZpZorjnGR/p8vjrAU5pnK+zOrc=;
 b=I2DlnDhPUcB9WSOCiHzGa1dh1aSnEVCZqggaUOEx9lu7ClYlgQWd6xGoN6YLBPFd1B
 y4VQ8i8uCB9rsJzrpZWQeb66qboUfGI6KX8JrBPy8kILPXMFqypAi02U7tX7kF7Vu9Hq
 Rgml47oOcJaNGJ2WC/7p7ccoaY757I98JYMCeJMe0sE6+052hFn/5G9Z7e3pmwA+wIp4
 fRXfuvzU/zFpDBHtVf0JPhkfXlgAQsd3jVYyMxpSCAoXbIUARfcI8LmTkJ+XII8WNDTa
 K5NIpfMyyaLuO1nfuIEI+7Vn8r4v2NnRZaBtpmf7tCoJnUnVu47g7OXKU8BLxRMpUb9W
 bP+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=oKqDPNhFrhfI648m2ZpZorjnGR/p8vjrAU5pnK+zOrc=;
 b=JxkkZ7o/c/D4svTkgl/bLy3tl6Wa49vp3G1Vjr7cLFIdoOyQ1cRGw7Vjz3fVDenMi0
 xmPE2e2tYtsz/6XgHR9nnYrLi+wwp2iNO7jGef8Xs89daHj4RmNUpOeRt3CZlvQKeXuz
 eI5pZvwc3LiG6MIRmmbyade6trUeGM/sUqk8t2t6Bj36R9CVjrXTn322IjMSxnWnMXKF
 u0gzNZQxCT4CfLO/3+Wlxh2fWPwHEszV3iAn6yaemMkNo20rJIht9KL85/Co+cJTiWR5
 XtcbOJBzHUbKnRfilpkKLTVOTVHwIlWIb4AV5z9Q/T8v58/tDD5NATrlJKzKWcdZSEId
 GyCg==
X-Gm-Message-State: APjAAAXAdiFR+zVQTq5RjlOuJzzY4Ssn2+U7KddrAhZsLdBxM4SyfIAu
 D/qJ0QfhxSGNZnaSDsnS1iMVcvCzDCDXNLp7x6QXEw==
X-Google-Smtp-Source: APXvYqyMS3Rs1LJXdWZyK+SojuIy5gzc84YCqZt/AjhqaC8guA5a6LqGCwTxVOOBLQN9MRZFyJwqWtLqDZrNHGIGZ/Q=
X-Received: by 2002:ac8:5501:: with SMTP id j1mr4886948qtq.239.1558686864752; 
 Fri, 24 May 2019 01:34:24 -0700 (PDT)
MIME-Version: 1.0
References: <1557500579-19720-1-git-send-email-yannick.fertre@st.com>
 <aa466c60-9110-630e-3c75-99e632207334@st.com>
In-Reply-To: <aa466c60-9110-630e-3c75-99e632207334@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 24 May 2019 10:34:13 +0200
Message-ID: <CA+M3ks6nqUdMGxkBYf17ptVMB0P3xJ+cY93xXhCX6FTcKJr+eA@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: dsi: check hardware version
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_013425_936856_2AEE0DA7 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

TGUgdmVuLiAxMCBtYWkgMjAxOSDDoCAxODozMSwgUGhpbGlwcGUgQ09STlUgPHBoaWxpcHBlLmNv
cm51QHN0LmNvbT4gYSDDqWNyaXQgOgo+Cj4KPiBEZWFyIFlhbm5pY2ssCj4gVGhhbmsgeW91IGZv
ciB5b3VyIHBhdGNoLAo+Cj4gQWNrZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3Ju
dUBzdC5jb20+Cj4KPiBEZWFyIEJlbmphbWluLAo+IElmIHlvdSBhcmUgZmluZSB3aXRoIHRoaXMg
cGF0Y2gsIHBsZWFzZSBwdXNoIGl0ICphZnRlciogdGhlIHBhdGNoIG5hbWVkCj4gImRybS9zdG06
IGRzaTogYWRkIHN1cHBvcnQgb2YgYW4gb3B0aW9uYWwgcmVndWxhdG9yIiAoaWYgSSB3ZWxsCj4g
dW5kZXJzdG9vZCB0aG9zZSB0d28gcGF0Y2hlcykKPgo+IFRoYW5rIHlvdQo+IFBoaWxpcHBlIDot
KQoKQXBwbGllZCBvbiBkcm0tbWlzYy1uZXh0LAoKQmVuamFtaW4KPgo+Cj4gT24gNS8xMC8xOSA1
OjAyIFBNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6Cj4gPiBDaGVjayB2ZXJzaW9uIG9mIERTSSBo
YXJkd2FyZSBJUC4gT25seSB2ZXJzaW9ucyAxLjMwICYgMS4zMQo+ID4gYXJlIHN1cHBvcnRlZC4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJlQHN0
LmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5j
IHwgMjQgKysrKysrKysrKysrKysrKysrKysrKystCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9zdG0vZHdfbWlwaV9kc2ktc3RtLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2R3X21p
cGlfZHNpLXN0bS5jCj4gPiBpbmRleCAyMmJkMDk1Li4yOTEwNWU5IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBpX2RzaS1zdG0uYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3N0bS9kd19taXBpX2RzaS1zdG0uYwo+ID4gQEAgLTIyNyw3ICsyMjcsNiBAQCBkd19t
aXBpX2RzaV9nZXRfbGFuZV9tYnBzKHZvaWQgKnByaXZfZGF0YSwgY29uc3Qgc3RydWN0IGRybV9k
aXNwbGF5X21vZGUgKm1vZGUsCj4gPiAgICAgICB1MzIgdmFsOwo+ID4KPiA+ICAgICAgIC8qIFVw
ZGF0ZSBsYW5lIGNhcGFiaWxpdGllcyBhY2NvcmRpbmcgdG8gaHcgdmVyc2lvbiAqLwo+ID4gLSAg
ICAgZHNpLT5od192ZXJzaW9uID0gZHNpX3JlYWQoZHNpLCBEU0lfVkVSU0lPTikgJiBWRVJTSU9O
Owo+ID4gICAgICAgZHNpLT5sYW5lX21pbl9rYnBzID0gTEFORV9NSU5fS0JQUzsKPiA+ICAgICAg
IGRzaS0+bGFuZV9tYXhfa2JwcyA9IExBTkVfTUFYX0tCUFM7Cj4gPiAgICAgICBpZiAoZHNpLT5o
d192ZXJzaW9uID09IEhXVkVSXzEzMSkgewo+ID4gQEAgLTMwNiw2ICszMDUsNyBAQCBzdGF0aWMg
aW50IGR3X21pcGlfZHNpX3N0bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ID4gICB7Cj4gPiAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ID4gICAg
ICAgc3RydWN0IGR3X21pcGlfZHNpX3N0bSAqZHNpOwo+ID4gKyAgICAgc3RydWN0IGNsayAqcGNs
azsKPiA+ICAgICAgIHN0cnVjdCByZXNvdXJjZSAqcmVzOwo+ID4gICAgICAgaW50IHJldDsKPiA+
Cj4gPiBAQCAtMzQ3LDYgKzM0NywyOCBAQCBzdGF0aWMgaW50IGR3X21pcGlfZHNpX3N0bV9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgICAgICAgICBnb3RvIGVy
cl9jbGtfZ2V0Owo+ID4gICAgICAgfQo+ID4KPiA+ICsgICAgIHBjbGsgPSBkZXZtX2Nsa19nZXQo
ZGV2LCAicGNsayIpOwo+ID4gKyAgICAgaWYgKElTX0VSUihwY2xrKSkgewo+ID4gKyAgICAgICAg
ICAgICByZXQgPSBQVFJfRVJSKHBjbGspOwo+ID4gKyAgICAgICAgICAgICBEUk1fRVJST1IoIlVu
YWJsZSB0byBnZXQgcGVyaXBoZXJhbCBjbG9jazogJWRcbiIsIHJldCk7Cj4gPiArICAgICAgICAg
ICAgIGdvdG8gZXJyX2RzaV9wcm9iZTsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICsgICAgIHJldCA9
IGNsa19wcmVwYXJlX2VuYWJsZShwY2xrKTsKPiA+ICsgICAgIGlmIChyZXQpIHsKPiA+ICsgICAg
ICAgICAgICAgRFJNX0VSUk9SKCIlczogRmFpbGVkIHRvIGVuYWJsZSBwZXJpcGhlcmFsIGNsa1xu
IiwgX19mdW5jX18pOwo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9kc2lfcHJvYmU7Cj4gPiAr
ICAgICB9Cj4gPiArCj4gPiArICAgICBkc2ktPmh3X3ZlcnNpb24gPSBkc2lfcmVhZChkc2ksIERT
SV9WRVJTSU9OKSAmIFZFUlNJT047Cj4gPiArICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUocGNs
ayk7Cj4gPiArCj4gPiArICAgICBpZiAoZHNpLT5od192ZXJzaW9uICE9IEhXVkVSXzEzMCAmJiBk
c2ktPmh3X3ZlcnNpb24gIT0gSFdWRVJfMTMxKSB7Cj4gPiArICAgICAgICAgICAgIHJldCA9IC1F
Tk9ERVY7Cj4gPiArICAgICAgICAgICAgIERSTV9FUlJPUigiYmFkIGRzaSBoYXJkd2FyZSB2ZXJz
aW9uXG4iKTsKPiA+ICsgICAgICAgICAgICAgZ290byBlcnJfZHNpX3Byb2JlOwo+ID4gKyAgICAg
fQo+ID4gKwo+ID4gICAgICAgZHdfbWlwaV9kc2lfc3RtX3BsYXRfZGF0YS5iYXNlID0gZHNpLT5i
YXNlOwo+ID4gICAgICAgZHdfbWlwaV9kc2lfc3RtX3BsYXRfZGF0YS5wcml2X2RhdGEgPSBkc2k7
Cj4gPgo+ID4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmkt
ZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
