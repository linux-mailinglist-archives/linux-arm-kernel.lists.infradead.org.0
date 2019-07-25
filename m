Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAE074B26
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 12:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtbkygHavuHeF4hAYfNPYxvyG7kMf2HXqxxeBbHHWjM=; b=ZmfZO8YVE5LPbl
	1VUdswpVbOZjd09Y4O/SXxPJK3OsSBjNVTn3oUTYHJbM0W+jNH3yBithNnUeyh6k7tqzwf0ST8jpW
	40uX8FVm7pLiqT3GHb619+YlEjTFs7B3iax+bfdLW4anNFCObNWIuv2GK9jz6+llUP3vgQTON+kFk
	n1p52IUSmpPD6eYH7UXb7lwramK4XvcGB2It0uVYMLoWIBnhn2QoPt0jBj+wxVNhIvo441nnVerRe
	BBFOuWU6aN0QMrXfFTHS4TOik9o1zy305KUN51fxngOj4zWN+saOxxqW/rC1Io/TSXbaNxoNvtdZQ
	M50T415hgIIcDvRjdtFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqaeV-0005Ep-6X; Thu, 25 Jul 2019 10:07:11 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqadj-0004wn-48
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 10:06:25 +0000
Received: by mail-qt1-x841.google.com with SMTP id w17so4147370qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 03:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zQMVxe3WoXIZNphAhnksatgFc1GF8rTdTdgr2SLV9iE=;
 b=kDPaigz0G8Pu7nH11KHGXyzXzcWIGm8p48us4Zolu2noXTfmgTxNEGRY9ENB0JwjaL
 GAuiJMo3VWyDGeJ8iaGqgT7ou/XAFWXqi4J7XyA3YnPE2QbNirtXBhWdIiQ3j0sJGPL+
 55c+K3owfz2iMnuXKKivBARspjVkdOjLySJyyNiiNhiEY0yHomFtSMJp6HDRLu5fnQrg
 iNLM1w9zDj/QxyOFNkat6bw50e6EP0NMzk6p3cBmi5UGRM4XhEXiRpCCienLXFg6+RJB
 lgjO869eVfc0mfQSTuuUSAJxC0LmLbDN9AfP4IqsCCvOOtPrjuZVxSZ75f3PRtPV4oXj
 9KVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zQMVxe3WoXIZNphAhnksatgFc1GF8rTdTdgr2SLV9iE=;
 b=hEXBI103JBxkWuofvjRs3pUIynE62ebYJj0EdWeBixKHwTkQ+/STBMl/9wmby4BWo6
 2wSHGKQp8ByUom5j547twf6JhhQFYW/SYIGnnS68OO/vFblNG2YjILvyPpKZyEU+wkS6
 iYpA2Qzc/uajumAgAbMcqKoX1cwVjh7+Ki314+RrfcjEFjtIg5u5yfmeAV18gdUkuvYk
 HQ6jzv7SVC+wmwpVcJiRxCQSedU7t+MpLlASxhJsBU42HHK86mD2y5mG/Zca9IshG5Uo
 4WUvvyOFy6NWus+JHVNc37VYU0lszYjHVJtKvU8SHKQH+XL5u7gsrPGyBYutMV6bb8S+
 trNw==
X-Gm-Message-State: APjAAAWdPpmjXetP0SgHj4tr22KjwvygVO5oWsY5hQv9diPU3kj2hCff
 Wg3Uqo6gGlt2NHb07SgmyevMwf4DeOv4aTrzKkYTfg==
X-Google-Smtp-Source: APXvYqxiUgtD1Oqp5s64OPc9Tv6xDA0YAOE0HLwM37Elo/1REVFSdGgH6ZMP+A2uMINEanG0dwqemHajRYVCdHtY8NM=
X-Received: by 2002:ac8:7402:: with SMTP id p2mr59799351qtq.250.1564049181185; 
 Thu, 25 Jul 2019 03:06:21 -0700 (PDT)
MIME-Version: 1.0
References: <1563811560-29589-1-git-send-email-olivier.moysan@st.com>
 <1563811560-29589-4-git-send-email-olivier.moysan@st.com>
In-Reply-To: <1563811560-29589-4-git-send-email-olivier.moysan@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Thu, 25 Jul 2019 12:06:10 +0200
Message-ID: <CA+M3ks6ZRrLAa=xMPi5UfdLEzMCBCjeovUei2O9m8V4PW3bh-Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] drm/bridge: sii902x: make audio mclk optional
To: Olivier Moysan <olivier.moysan@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_030623_509308_8E04CC3A 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 jernej.skrabec@siol.net, Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, Jyri Sarha <jsarha@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbHVuLiAyMiBqdWlsLiAyMDE5IMOgIDE4OjA2LCBPbGl2aWVyIE1veXNhbiA8b2xpdmllci5t
b3lzYW5Ac3QuY29tPiBhIMOpY3JpdCA6Cj4KPiBUaGUgbWFzdGVyIGNsb2NrIG9uIGkycyBidXMg
aXMgbm90IG1hbmRhdG9yeSwKPiBhcyBzaWk5MDJYIGludGVybmFsIFBMTCBjYW4gYmUgdXNlZCBp
bnN0ZWFkLgo+IE1ha2UgdXNlIG9mIG1jbGsgb3B0aW9uYWwuCgpBcHBsaWVkIG9uIGRybS1taXNj
LW5leHQuClRoYW5rcywKQmVuamFtaW4KCj4KPiBTaWduZWQtb2ZmLWJ5OiBPbGl2aWVyIE1veXNh
biA8b2xpdmllci5tb3lzYW5Ac3QuY29tPgo+IFJldmlld2VkLWJ5OiBKeXJpIFNhcmhhIDxqc2Fy
aGFAdGkuY29tPgo+IEFja2VkLWJ5OiBBbmRyemVqIEhhamRhIDxhLmhhamRhQHNhbXN1bmcuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3NpaTkwMnguYyB8IDE5ICsrKysrKysr
KystLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDkgZGVsZXRp
b25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zaWk5MDJ4LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3NpaTkwMnguYwo+IGluZGV4IDk2MjkzMWMyMGVmZS4u
YTMyMzgxNWFhOWI2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc2lpOTAy
eC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zaWk5MDJ4LmMKPiBAQCAtNTY4LDEz
ICs1NjgsMTQgQEAgc3RhdGljIGludCBzaWk5MDJ4X2F1ZGlvX2h3X3BhcmFtcyhzdHJ1Y3QgZGV2
aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gICAg
ICAgICB9Cj4KPiAtICAgICAgIG1jbGtfcmF0ZSA9IGNsa19nZXRfcmF0ZShzaWk5MDJ4LT5hdWRp
by5tY2xrKTsKPiAtCj4gLSAgICAgICByZXQgPSBzaWk5MDJ4X3NlbGVjdF9tY2xrX2RpdigmaTJz
X2NvbmZpZ19yZWcsIHBhcmFtcy0+c2FtcGxlX3JhdGUsCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBtY2xrX3JhdGUpOwo+IC0gICAgICAgaWYgKG1jbGtfcmF0ZSAhPSBy
ZXQgKiBwYXJhbXMtPnNhbXBsZV9yYXRlKQo+IC0gICAgICAgICAgICAgICBkZXZfZGJnKGRldiwg
IkluYWNjdXJhdGUgcmVmZXJlbmNlIGNsb2NrICglbGQvJWQgIT0gJXUpXG4iLAo+IC0gICAgICAg
ICAgICAgICAgICAgICAgIG1jbGtfcmF0ZSwgcmV0LCBwYXJhbXMtPnNhbXBsZV9yYXRlKTsKPiAr
ICAgICAgIGlmIChzaWk5MDJ4LT5hdWRpby5tY2xrKSB7Cj4gKyAgICAgICAgICAgICAgIG1jbGtf
cmF0ZSA9IGNsa19nZXRfcmF0ZShzaWk5MDJ4LT5hdWRpby5tY2xrKTsKPiArICAgICAgICAgICAg
ICAgcmV0ID0gc2lpOTAyeF9zZWxlY3RfbWNsa19kaXYoJmkyc19jb25maWdfcmVnLAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwYXJhbXMtPnNhbXBsZV9y
YXRlLCBtY2xrX3JhdGUpOwo+ICsgICAgICAgICAgICAgICBpZiAobWNsa19yYXRlICE9IHJldCAq
IHBhcmFtcy0+c2FtcGxlX3JhdGUpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgZGV2X2RiZyhk
ZXYsICJJbmFjY3VyYXRlIHJlZmVyZW5jZSBjbG9jayAoJWxkLyVkICE9ICV1KVxuIiwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1jbGtfcmF0ZSwgcmV0LCBwYXJhbXMtPnNhbXBs
ZV9yYXRlKTsKPiArICAgICAgIH0KPgo+ICAgICAgICAgbXV0ZXhfbG9jaygmc2lpOTAyeC0+bXV0
ZXgpOwo+Cj4gQEAgLTc1MSwxMSArNzUyLDExIEBAIHN0YXRpYyBpbnQgc2lpOTAyeF9hdWRpb19j
b2RlY19pbml0KHN0cnVjdCBzaWk5MDJ4ICpzaWk5MDJ4LAo+ICAgICAgICAgICAgICAgICBzaWk5
MDJ4LT5hdWRpby5pMnNfZmlmb19zZXF1ZW5jZVtpXSB8PSBhdWRpb19maWZvX2lkW2ldIHwKPiAg
ICAgICAgICAgICAgICAgICAgICAgICBpMnNfbGFuZV9pZFtsYW5lc1tpXV0gfCBTSUk5MDJYX1RQ
SV9JMlNfRklGT19FTkFCTEU7Cj4KPiAtICAgICAgIHNpaTkwMngtPmF1ZGlvLm1jbGsgPSBkZXZt
X2Nsa19nZXQoZGV2LCAibWNsayIpOwo+ICsgICAgICAgc2lpOTAyeC0+YXVkaW8ubWNsayA9IGRl
dm1fY2xrX2dldF9vcHRpb25hbChkZXYsICJtY2xrIik7Cj4gICAgICAgICBpZiAoSVNfRVJSKHNp
aTkwMngtPmF1ZGlvLm1jbGspKSB7Cj4gICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiJXM6
IE5vIGNsb2NrIChhdWRpbyBtY2xrKSBmb3VuZDogJWxkXG4iLAo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIF9fZnVuY19fLCBQVFJfRVJSKHNpaTkwMngtPmF1ZGlvLm1jbGspKTsKPiAtICAgICAg
ICAgICAgICAgcmV0dXJuIDA7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHNpaTkw
MngtPmF1ZGlvLm1jbGspOwo+ICAgICAgICAgfQo+Cj4gICAgICAgICBzaWk5MDJ4LT5hdWRpby5w
ZGV2ID0gcGxhdGZvcm1fZGV2aWNlX3JlZ2lzdGVyX2RhdGEoCj4gLS0KPiAyLjcuNAo+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwg
bWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
