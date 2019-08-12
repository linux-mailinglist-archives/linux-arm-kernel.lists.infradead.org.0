Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BBC8A213
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 17:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/wf3f9ydXFgNSQXNMDN45T4caIsHOFwaiy6xHI5f/Y=; b=OVQd1bBxKmbeAH
	+G742Y69H+JqtDCI++kQF2XGG72r5NRlquWjxcA/z07jLn3bz55SBWyCt/RzTVA9AwKwhcxdP+QU3
	xfDI0DQhlEJgcVFzacWsm+fZb09QaS1czycwgX3PVFdC5n5iWHvYEOT8fRVtVay5fwtj/o6O/bkAo
	yo+3p9vzPAUwbHFw+rutW0mmpJqmEBVelYUC6R9WyDZRkLgHtzaH2LcPJkJyvWSLvUu03HQc17KXF
	alb5+yrykaAnmhFeNea+8WRziZk0OT8l58OCZllQmEkZADHT+ZBuSNBqGshSpuhStyjvqZccOLecO
	ayo5HajVkCyuJqyewYAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxC2u-0003eR-K7; Mon, 12 Aug 2019 15:15:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxC2h-0003ck-F4
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 15:15:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id k2so19051551wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 08:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=kxqbuY4B1dItH0K76N5jkNqR9OjL/xCxchMz+Ee+8mE=;
 b=lr/cfQpIZIaBSo6b9Q3zxeOVa2+U0uJcOFT+1l6c30ZI2NbC+DOeDIoBUtdF0VF0ov
 iwtSxkFt8UCR7dfeUmqY7rXB+7He3ZhOOiiMgmL9FmhQZgX9io9AucbNrI9nJyrQPpiQ
 E09PfHLDjAQW2IEh/0AroZo9xVRg/aeq/biCAQVAdq5XJb+nsYnv99EIGDBAAuOFFspl
 SvwOCXElndrpLEvzqNZeT1j0BHnGnbf85ioODXWRgasd1a/qtdcwvPJPWxwnBX0nqdQV
 SOBGjVPPASSZhDPvsfTKmRg64PHj8QlxLf59HMArxIzwN0KgPsk+8C2CZB54WJ5SHGl+
 0P7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=kxqbuY4B1dItH0K76N5jkNqR9OjL/xCxchMz+Ee+8mE=;
 b=q3YgnveqhELFNOXfOc85DiUwsHm8wc6qBTj8h1i1H+T1SvMv1GKWYXzBHsQNCgdLRM
 e3R5hGU7o90qvQaAmBPIK6dC6mI5PJwdClc1z9GgEIz6HZ/lkXoIsbp0T2e4gMD+1a25
 pIeDMtGRS1jKf55xP5vkyapKgDhl+t42WorevYkTfRZ0N1YEfgR8OucioslSNUEXsh+W
 RtwJ8K+B1USdwyL8kwy32cWc5BNlhujiOXMbdewH82ujXDIOLqfeL0Gkp9N9CRv448ay
 eGpUL9tknDgWy4hfHfoqtcWAjAJynCOtj6UxNmZ0nn2FSYU+V+HzkIGRI96z87A6BRsK
 BCiA==
X-Gm-Message-State: APjAAAU+Okiq8w6fAIg/c589cJxnOrhZ02alPlqhuJGplDS7Yh39CCiA
 5Pit/9SpT+IwizbNAx8dojR2oQ==
X-Google-Smtp-Source: APXvYqyuePFlhOmpa07Fm6SyAPeyyhzMKjfeXv4MqLRtO62+RwuhXTyFoBewlD8zEFNaSN29kSEuGg==
X-Received: by 2002:adf:f008:: with SMTP id j8mr26439756wro.129.1565622925048; 
 Mon, 12 Aug 2019 08:15:25 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id f134sm30682221wmg.20.2019.08.12.08.15.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 08:15:24 -0700 (PDT)
Date: Mon, 12 Aug 2019 16:15:22 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v5 01/10] dt-bindings: add powercontroller
Message-ID: <20190812151522.GW26727@dell>
References: <20190812121511.4169-1-frank-w@public-files.de>
 <20190812121511.4169-2-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812121511.4169-2-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_081527_519882_4DA5D043 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxMiBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gYWRkIG10NjMyMy1ydGMgYW5k
IG10NjMyMy1wd3JjIHRvIG10NjM5NyBtZmQgRFQgYmluZGluZ3MKPiBhbiBleGFtcGxlIGlzIHNo
b3duIGluIG10NjMyMy1wb3dlcm9mZi50eHQKPiAKPiBTdWdnZXN0ZWQtYnk6IEZyYW5rIFd1bmRl
cmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+IFNpZ25lZC1vZmYtYnk6IEpvc2VmIEZy
aWVkbCA8am9zZWYuZnJpZWRsQHNwZWVkLmF0Pgo+IFNpZ25lZC1vZmYtYnk6IEZyYW5rIFd1bmRl
cmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+IEFja2VkLWZvci1NRkQtYnk6IExlZSBK
b25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gLS0tCj4gY2hhbmdlcyBzaW5jZSB2NDogdXNl
IHJlbGF0aXZlIHBhdGgKPiBjaGFuZ2VzIHNpbmNlIHYzOiBub25lCj4gY2hhbmdlcyBzaW5jZSB2
Mjogc2VwYXJhdGVkIHJ0Yy1tdDYzOTcudHh0IHRvIHBhcnQgMgo+IC0tLQo+ICAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZmQvbXQ2Mzk3LnR4dCAgICAgICAgfCAyMCArKysrKysrKysrKysrLS0t
LS0tCj4gIC4uLi9iaW5kaW5ncy9wb3dlci9yZXNldC9tdDYzMjMtcG93ZXJvZmYudHh0ICB8IDIw
ICsrKysrKysrKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0L210NjMyMy1wb3dlcm9mZi50eHQKPiAKPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0Cj4gaW5k
ZXggMGViZDA4YWY3NzdkLi4wNjNmNWZlMWNhY2UgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0Cj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0Cj4gQEAgLTgsMTEgKzgsMTIgQEAg
TVQ2Mzk3L01UNjMyMyBpcyBhIG11bHRpZnVuY3Rpb24gZGV2aWNlIHdpdGggdGhlIGZvbGxvd2lu
ZyBzdWIgbW9kdWxlczoKPiAgLSBDbG9jawo+ICAtIExFRAo+ICAtIEtleXMKPiArLSBQb3dlciBj
b250cm9sbGVyCj4gIAo+ICBJdCBpcyBpbnRlcmZhY2VkIHRvIGhvc3QgY29udHJvbGxlciB1c2lu
ZyBTUEkgaW50ZXJmYWNlIGJ5IGEgcHJvcHJpZXRhcnkgaGFyZHdhcmUKPiAgY2FsbGVkIFBNSUMg
d3JhcHBlciBvciBwd3JhcC4gTVQ2Mzk3L01UNjMyMyBNRkQgaXMgYSBjaGlsZCBkZXZpY2Ugb2Yg
cHdyYXAuCj4gIFNlZSB0aGUgZm9sbG93aW5nIGZvciBwd2FycCBub2RlIGRlZmluaXRpb25zOgo+
IC1Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL21lZGlhdGVrL3B3cmFwLnR4
dAo+ICsuLi8uLi9iaW5kaW5ncy9zb2MvbWVkaWF0ZWsvcHdyYXAudHh0Cj4gIAo+ICBUaGlzIGRv
Y3VtZW50IGRlc2NyaWJlcyB0aGUgYmluZGluZyBmb3IgTUZEIGRldmljZSBhbmQgaXRzIHN1YiBt
b2R1bGUuCj4gIAo+IEBAIC0yMiwxNCArMjMsMTYgQEAgY29tcGF0aWJsZTogIm1lZGlhdGVrLG10
NjM5NyIgb3IgIm1lZGlhdGVrLG10NjMyMyIKPiAgT3B0aW9uYWwgc3Vibm9kZXM6Cj4gIAo+ICAt
IHJ0Ywo+IC0JUmVxdWlyZWQgcHJvcGVydGllczoKPiArCVJlcXVpcmVkIHByb3BlcnRpZXM6IFNo
b3VsZCBiZSBvbmUgb2YgZm9sbG93cwo+ICsJCS0gY29tcGF0aWJsZTogIm1lZGlhdGVrLG10NjMy
My1ydGMiCj4gIAkJLSBjb21wYXRpYmxlOiAibWVkaWF0ZWssbXQ2Mzk3LXJ0YyIKPiArCUZvciBk
ZXRhaWxzLCBzZWUgLi4vLi4vYmluZGluZ3MvcnRjL3J0Yy1tdDYzOTcudHh0CgpBcG9sb2dpZXMg
Zm9yIHRoZSBhbWJpZ3VpdHkuICBJIGRvbid0IHRoaW5rIHlvdSBuZWVkIHRvIGdvIGFsbCB0aGUg
d2F5CmJhY2sgdG8gJ2JpbmRpbmdzJy4gIEp1c3Qgb25lIHN0ZXAgYmFjayB3aWxsIGRvIGZpbmUu
ICAuLi9ydGMvKiB3aWxsIGJlCmZpbmUgaGVyZS4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10K
TGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNl
IHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIg
fCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
