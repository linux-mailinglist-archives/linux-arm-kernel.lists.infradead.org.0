Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7F2117C72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 01:32:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnbgTRK2Udz9KWVaR7Pj4/weV9ArZys+ibwQ9XIunro=; b=LWhHsKKbqtvKYh
	SCh6eEgMUZ59iUsxncBsRNevoO6SEajUyrPmYj7iZf2jlF5FKKa5/Ox/5SY5i/NRo+pbL3IfVQ79u
	h0Z4x7lo6hv2dZsemwBEzLxcNuIkcx0kCj63WCg37yvZ3UNob4JqbHfVkRnSvfgNm8sXIZXhhr28c
	MJy0tR/al0J8aH8X6wlDaHGErH1NMhqjT85vA/RlOHg6fm2jMPLkWpbMaVZrhyfjlYce50/5iXqpH
	goJB1E+dCDO5FX+t4dum6b+bOQCz/H4vk7rxk18ZH+nPPxJhPAQjzyz3vpy5hABakcFrF7ZnxnFHh
	M45sL73Ug7LHZclRBomQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieTRn-0001VB-Q6; Tue, 10 Dec 2019 00:32:15 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieTRe-0001U5-00
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 00:32:07 +0000
Received: by mail-pg1-x52b.google.com with SMTP id b137so7973290pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 16:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=8evBcz4lmmsnelwBpdcYncDfyag5sO5/iQnS/q4ZdNE=;
 b=BqPM+szUPCtHdlyak+LwpzgEOtKX16NXvlBrqw1oVUryWfUXIp90VOF1E3XkoVSLjL
 v43BwyV/WnDbyLBsEZMyFSgvd8sh7K15AHZDwGGW9fVSBDAMrcJfF4lspFglA1wMfeNw
 Qwfz05tPp/L9QkOyXdxyRhCYxNV9FKbcWrf3M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=8evBcz4lmmsnelwBpdcYncDfyag5sO5/iQnS/q4ZdNE=;
 b=TCoF2X5lMrj6/0UIr0tptjt1xDkgHLjw99bWZovjmKTWfLM8pLORLciVUAQrttimZJ
 VbIvGzK5Xfwpe3JDfPU0Tl9O3tJI/OlwOe+fPWYKTG2FEs6hP6CxyYCNvvjb5e38CKlz
 cu3ESBY7x4dUk70lZQ2uRwDQTun3J4LVkI0IyoDHh8Ctc5ZnfwNOSNF200AGBEEvls79
 mbWkMvkJrvmY7X4kOnA2zLvOn1jS0IoJ2HrxeWJkJ03SH67uGLDnhcRdMEjIoyd9NtWz
 aRsVsSDB8DtsXMxgkxJ6GgNku/HPZZvjSuIxt+QdOrgbYhCwaYg9ykd1WW2iBS0Z2jHl
 rAKg==
X-Gm-Message-State: APjAAAXMWaj6SS/6l3pDJZ2bJq/8UtbeD0OwcoVfY5KIJ6zXAuJXSKA+
 JRR/J+b9hyB5+2rLO7PTIVF5vQ==
X-Google-Smtp-Source: APXvYqy4D9BE4heIvg/4fO4ARmu8vxDMpm3JJunhQwLtFR2lpNylP9ta2onTMh67OOu6CvvoPTIJWg==
X-Received: by 2002:a62:a117:: with SMTP id b23mr33014552pff.174.1575937923008; 
 Mon, 09 Dec 2019 16:32:03 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id m45sm461387pje.32.2019.12.09.16.32.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 16:32:02 -0800 (PST)
Date: Mon, 9 Dec 2019 16:32:01 -0800
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/1] ARM: dts: rockchip: Add brcm bluetooth for
 rk3288-veyron
Message-ID: <20191210003201.GR228856@google.com>
References: <20191127223909.253873-1-abhishekpandit@chromium.org>
 <20191127223909.253873-2-abhishekpandit@chromium.org>
 <61639BAF-5AA0-4264-906F-E24E2A30088D@holtmann.org>
 <1788857.Va9C3Z3akr@diego>
 <CAD=FV=Xdrw1FC=DktQ8HjdEJcCKvdA3sx78gg-rn8=bBq=WrEw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=Xdrw1FC=DktQ8HjdEJcCKvdA3sx78gg-rn8=bBq=WrEw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_163206_041515_2CE08E92 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Marcel Holtmann <marcel@holtmann.org>, LKML <linux-kernel@vger.kernel.org>,
 BlueZ <linux-bluetooth@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBEZWMgMDksIDIwMTkgYXQgMDM6NTY6MTRQTSAtMDgwMCwgRG91ZyBBbmRlcnNvbiB3
cm90ZToKPiBIaSwKPiAKPiBPbiBTdW4sIERlYyA4LCAyMDE5IGF0IDQ6MDMgUE0gSGVpa28gU3TD
vGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gPgo+ID4gQW0gTW9udGFnLCA5LiBEZXpl
bWJlciAyMDE5LCAwMDo0ODozMSBDRVQgc2NocmllYiBNYXJjZWwgSG9sdG1hbm46Cj4gPiA+ID4g
VGhpcyBlbmFibGVzIHRoZSBCcm9hZGNvbSB1YXJ0IGJsdWV0b290aCBkcml2ZXIgb24gdWFydDAg
YW5kIGdpdmVzIGl0Cj4gPiA+ID4gb3duZXJzaGlwIG9mIGl0cyBncGlvcy4gSW4gb3JkZXIgdG8g
dXNlIHRoaXMsIHlvdSBtdXN0IGVuYWJsZSB0aGUKPiA+ID4gPiBmb2xsb3dpbmcga2NvbmZpZyBv
cHRpb25zOgo+ID4gPiA+IC0gQ09ORklHX0JUX0hDSVVBUlRfQkNNCj4gPiA+ID4gLSBDT05GSUdf
U0VSSUFMX0RFVgo+ID4gPiA+Cj4gPiA+ID4gVGhpcyBpcyBhcHBsaWNhYmxlIHRvIHJrMzI4OC12
ZXlyb24gc2VyaWVzIGJvYXJkcyB0aGF0IHVzZSB0aGUgYmNtNDM1NDAKPiA+ID4gPiB3aWZpK2J0
IGNoaXBzLgo+ID4gPiA+Cj4gPiA+ID4gQXMgcGFydCBvZiB0aGlzIGNoYW5nZSwgYWxzbyByZWZh
Y3RvciB0aGUgcGluY3RybCBhY3Jvc3MgdGhlIHZhcmlvdXMKPiA+ID4gPiBib2FyZHMuIEFsbCB0
aGUgYm9hcmRzIHVzaW5nIGJyb2FkY29tIGJsdWV0b290aCBzaG91bGRuJ3QgdG91Y2ggdGhlCj4g
PiA+ID4gYnRfZGV2X3dha2UgcGluLgo+ID4gPgo+ID4gPiBzbyBoYXZlIHRoZXNlIGNoYW5nZXMg
YmVpbmcgbWVyZ2VkPwo+ID4KPiA+IG5vdCB5ZXQKPiA+Cj4gPiBEb3VnIHdhbnRlZCB0byBnaXZl
IGEgUmV2aWV3ZWQtYnksIG9uY2UgdGhlIHVuZGVybHlpbmcgYmx1ZXRvb3RoCj4gPiBjaGFuZ2Vz
IGdvdCBtZXJnZWQgLSBub3Qgc3VyZSB3aGF0IHRoZSBzdGF0dXMgaXMgdGhvdWdoLgo+IAo+IEkg
aGF2ZSBiZWVuIG91dCBmb3IgdGhlIGxhc3Qgd2VlayBhbmQgYW0gYSBiaXQgYmFja2xvZ2dlZC4K
PiAKPiBJIG5vdGljZSB0aGF0IHRoaXMgbGFuZGVkIGluIG91ciA0LjE5IGtlcm5lbCB3aXRoICtN
YXR0aGlhcydzCj4gUmV2aWV3ZWQtYnkgYXQgPGh0dHBzOi8vY3JyZXYuY29tL2MvMTc3MjI2MT4u
ICBJIGRvbid0IGZlZWwgYW55IG5lZWQKPiB0byByZS1yZXZpZXcgdGhpcyBteXNlbGYgaWYgTWF0
dGhpYXMgaGFzIHRha2VuIGEgZmluYWwgbG9vayBvbiBpdCwgc28KPiB1bmxlc3MgaGUga25vd3Mg
YSByZWFzb24gd2h5IGl0IHNob3VsZG4ndCBsYW5kIHRoZW4gSSdkIHNheSBnbyBhaGVhZAo+IGFu
ZCBsYW5kIGl0LgoKU29ycnksIHNob3VsZCBoYXZlIHJlcGxpZWQgaGVyZSBpbiB0aGUgZmlyc3Qg
cGxhY2UuIFRoZSBjaGFuZ2VzIGxvb2sKZ29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBNYXR0aGlh
cyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
