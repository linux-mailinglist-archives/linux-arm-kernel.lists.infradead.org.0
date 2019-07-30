Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3407AE89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 18:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83upIWXTN09EO0l3lAf0rCYaGPEU1R2BwRqn7OA5wrI=; b=PKkMgOUHnPA86Z
	hejzJQ3jlXqUw7DfaHxyRokw2h8Nno87Bmph5/BZXJT3k/eep4hstlL+MDYR3VdkboGt+iqSccDAs
	+8X6kJxc2qSGKfJDSJB4aCI+EEp/mD2UKlkTkLgP6KwgB5C4rYuJBSO2EfzRsy/MaCaUXPiwGX3ws
	uUAh+rO5LxyI8yDDU8qJ6zXI4Ydn+VNYpf+t4HT7Sfc37n18dg0s3Egr/6Cocid3RfHvgp57D3Y59
	FMUdPovfxEC48Ka0W5wQlQUlvHuvdGfzP70qLS/dPynUyioOS3hha66usXhvefZg9rvgozhJT8Y87
	ZU1UIUjiEMpv1/B9h9fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVSY-0004a4-Jm; Tue, 30 Jul 2019 16:58:46 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVSM-0004ZK-0T
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 16:58:35 +0000
Received: by mail-pg1-x543.google.com with SMTP id t132so30362390pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 09:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=kNH9892mMSdbgyYPq04/DOS1+jjJ5DNNUuFxNaUc4lA=;
 b=Rkz2n/Z4fx/N0ovqStcb1ANvDKtxcDrtxVH5xiavqxMZ1id3tmJKj9s3v/0i79OK1q
 oslYjKScx1QzaiiFKAhy912qj3Jku9gLgZoi51x/zngQxhCvSItaR+EwuJ1BxjG44yqC
 3r5vhAlvt9FrFziJLdNbUMqNe+fKrl8yEPIAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=kNH9892mMSdbgyYPq04/DOS1+jjJ5DNNUuFxNaUc4lA=;
 b=cSN512whSdPVRT2stNAVWVQGyrjuG0b9xwlnpfvpWuKgbeJ73YFDNe/VQk9JnW5xOz
 I5UNgtggG9rLhMerNfbaSvuXZPb5eU8oKO3PYNQWevoz51vILMWDJ6lcjJRC57HmDMSN
 LC74w2mCEkbMOECLSiSZCaX5/uGEwVi5vKHhN7SbuxDuVHmIMF81BROn2xV7OLr8Olt1
 bOOJT+j+ZfvoDl2NPyPOzOG4TiWvvnFl5fBIxf6/1CXnUsGZTD7k7sFx7fJBbbCiiTVw
 /h1vn6ukoYxuuRfHgcs0gsAJDmlNGmj5aM0AZfS2dfWU16ZalnqGstNABVg53eMrG25H
 x1wA==
X-Gm-Message-State: APjAAAXr2/aXsRIxqd589ZYOf2FzjXK1ubGUXm+9tLL7lIqmcfgSElg7
 z8sKqQxPVkhOiIUc4kyHBND8EA==
X-Google-Smtp-Source: APXvYqxlkNe5qlW5oU8NKyA6zXOWROGHVUAwS/f3z/hvi4mf0dRFgYBwSNr9otMt3pnou4o4biWeGQ==
X-Received: by 2002:a17:90a:33c4:: with SMTP id
 n62mr121088686pjb.28.1564505912808; 
 Tue, 30 Jul 2019 09:58:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y22sm76514188pfo.39.2019.07.30.09.58.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Jul 2019 09:58:31 -0700 (PDT)
Date: Tue, 30 Jul 2019 09:58:31 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] dmaengine: imx-dma: Mark expected switch fall-through
Message-ID: <201907300958.5F8CC90AD1@keescook>
References: <20190729225221.GA24269@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729225221.GA24269@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_095834_055889_E7A3CB82 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMjksIDIwMTkgYXQgMDU6NTI6MjFQTSAtMDUwMCwgR3VzdGF2byBBLiBSLiBT
aWx2YSB3cm90ZToKPiBNYXJrIHN3aXRjaCBjYXNlcyB3aGVyZSB3ZSBhcmUgZXhwZWN0aW5nIHRv
IGZhbGwgdGhyb3VnaC4KPiAKPiBUaGlzIHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcgd2Fybmlu
ZyAoQnVpbGRpbmc6IGFybSk6Cj4gCj4gZHJpdmVycy9kbWEvaW14LWRtYS5jOiBJbiBmdW5jdGlv
biDigJhpbXhkbWFfeGZlcl9kZXNj4oCZOgo+IGRyaXZlcnMvZG1hL2lteC1kbWEuYzo1NDI6Njog
d2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxs
dGhyb3VnaD1dCj4gICAgaWYgKHNsb3QgPT0gSU1YX0RNQV8yRF9TTE9UX0EpIHsKPiAgICAgICBe
Cj4gZHJpdmVycy9kbWEvaW14LWRtYS5jOjU1OToyOiBub3RlOiBoZXJlCj4gICBjYXNlIElNWERN
QV9ERVNDX01FTUNQWToKPiAgIF5+fn4KPiAKPiBOb3RpY2UgdGhhdCwgaW4gdGhpcyBwYXJ0aWN1
bGFyIGNhc2UsIHRoZSBjb2RlIGNvbW1lbnQgaXMKPiBtb2RpZmllZCBpbiBhY2NvcmRhbmNlIHdp
dGggd2hhdCBHQ0MgaXMgZXhwZWN0aW5nIHRvIGZpbmQuCj4gCj4gU2lnbmVkLW9mZi1ieTogR3Vz
dGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2b0BlbWJlZGRlZG9yLmNvbT4KClJldmlld2VkLWJ5OiBL
ZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4KCi1LZWVzCgo+IC0tLQo+ICBkcml2ZXJz
L2RtYS9pbXgtZG1hLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL2lteC1kbWEuYyBiL2RyaXZlcnMvZG1hL2lteC1k
bWEuYwo+IGluZGV4IDAwYTA4OWUyNDE1MC4uNWMwZmIzMTM0ODI1IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZG1hL2lteC1kbWEuYwo+ICsrKyBiL2RyaXZlcnMvZG1hL2lteC1kbWEuYwo+IEBAIC01
NTYsNiArNTU2LDcgQEAgc3RhdGljIGludCBpbXhkbWFfeGZlcl9kZXNjKHN0cnVjdCBpbXhkbWFf
ZGVzYyAqZCkKPiAgCQkgKiBXZSBmYWxsLXRocm91Z2ggaGVyZSBpbnRlbnRpb25hbGx5LCBzaW5j
ZSBhIDJEIHRyYW5zZmVyIGlzCj4gIAkJICogc2ltaWxhciB0byBNRU1DUFkganVzdCBhZGRpbmcg
dGhlIDJEIHNsb3QgY29uZmlndXJhdGlvbi4KPiAgCQkgKi8KPiArCQkvKiBGYWxsIHRocm91Z2gg
Ki8KPiAgCWNhc2UgSU1YRE1BX0RFU0NfTUVNQ1BZOgo+ICAJCWlteF9kbWF2MV93cml0ZWwoaW14
ZG1hLCBkLT5zcmMsIERNQV9TQVIoaW14ZG1hYy0+Y2hhbm5lbCkpOwo+ICAJCWlteF9kbWF2MV93
cml0ZWwoaW14ZG1hLCBkLT5kZXN0LCBETUFfREFSKGlteGRtYWMtPmNoYW5uZWwpKTsKPiAtLSAK
PiAyLjIyLjAKPiAKCi0tIApLZWVzIENvb2sKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
