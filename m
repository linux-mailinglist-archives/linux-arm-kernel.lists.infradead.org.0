Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6677ADEC6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSW/TQaoB3rPZe5IaugH4SJPSkYBvzte+f31bjGqAD8=; b=dWj9M9jJQoEEhn
	Es9+4zEHgPnA2s/cNvgrZdUfW65Aw2yM60mHiA8B+yuRU4zKdWMEEPRlhj5p/UoW/lAKQVCX/r6Nn
	Hr/P+9vFppT8Z4kWYNWiVAcWAeW6edhi8vw6K+CYfcwJEcVmjpdYKjAXFDTsjEclW/Dva819wZcBc
	/XSXEV4sAMQ/k/1Ge5g0/V0dbgZoCaqHLSBM0e9Z6GEtOgFnsX8QlHFW57NxDLKfQ/3K/zm3NtcER
	O1yvAaiJ8ZBSfQKf3Ezp8AAsTHy9tBo7PUZa7PrNBhj4tPI4edh8MKRlnWAKqBUd0sLVNqtei91S2
	TJKyRi01DBuh6jfdobXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWzK-0003AV-I0; Mon, 21 Oct 2019 12:40:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWz8-00039w-Vp
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:40:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id i16so13153387wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=R5D7lr/7jPesG94tDWWwewjuwTYhPDAmBpCs+r4T4K4=;
 b=m6pK6vuf3zpfjYZiGwMjh4xEQNU8Jky+3d+vqNeRRo4QNKGmDjFmsXBFb1dsmCDt1j
 B4qQwOXFYqtnP6AEwzy0FmeUmbpZw2XOh6hLGKvtykf2EH3bg1xs5lsviBNA6AlfDTf5
 KIq57yciKs6q4t7U2tRyWO+Yi1esIUmAFcOD28xFbEpOlDcbdMAxWrxChRzgWuqpNH2o
 BFKLudO/cihRDU+AeqZxue7IUaxBbsYA6l+NrebQm/GxybCbqZ2Hk+yINyEoNzgoJNFx
 9/w3pGmCOWz61kvGWNHDL5RRk4s3n6H0dT9eVKYahC4yQdQEu0wXYoHgT71VAT+pWhaA
 V2+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=R5D7lr/7jPesG94tDWWwewjuwTYhPDAmBpCs+r4T4K4=;
 b=UV3NRSjBlAghgwi/d6uul8puxPny87Dylonm3oZ3B/Q3y5SY9rpnPWP8med/DdFFTn
 uGkHS0dxee/DdRhoJgcVh1C7JjJzlRy/+6Ya7I9Wvypu8ULV4kqVIJvk78n1KZ1HZ/7X
 4frxNw9fH3pF3JJEtcHbEPqh2pjIhORmSNTke0YW5emuZbRcsTymCJr9I0mXGoNpZMFw
 uj8m5+h4sG7DzKQ6U+oMJkhxbcvI+4Fj5Ac9087Iv6a3IB9HKo7hMVVrMa1CN7Jt09gO
 7c0fjShHba0ydT5GEgKCimqQEr8bQarAg62i0o2Esr6mgFfQDn33+b3ZK0oVvyAd88D4
 8Flw==
X-Gm-Message-State: APjAAAWHH1IIsUoxF0yxvi/86qZhi35GTce2IBENeOiVem8DufF6p8oN
 kjj+3hcqtpHMWOdObgs6BagcW3xbKFo=
X-Google-Smtp-Source: APXvYqygSkjRPrINjQ872Z7i/CXf6swgTY/j+zBGNLsSdX512ZbOY6uNqpviRydt4/B1X1h1jhbOlQ==
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr19843498wmb.125.1571661629651; 
 Mon, 21 Oct 2019 05:40:29 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id s14sm1100012wmh.18.2019.10.21.05.40.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 05:40:29 -0700 (PDT)
Date: Mon, 21 Oct 2019 13:40:27 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v2 7/9] mfd: mfd-core: Protect against NULL call-back
 function pointer
Message-ID: <20191021124027.GG4365@dell>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-8-lee.jones@linaro.org>
 <20191021123235.royyfp4mxrvsgioh@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021123235.royyfp4mxrvsgioh@holly.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_054031_023263_DF911131 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMSBPY3QgMjAxOSwgRGFuaWVsIFRob21wc29uIHdyb3RlOgoKPiBPbiBNb24sIE9j
dCAyMSwgMjAxOSBhdCAxMTo1ODoyMEFNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBJZiBh
IGNoaWxkIGRldmljZSBjYWxscyBtZmRfY2VsbF97ZW4sZGlzfWFibGUoKSB3aXRob3V0IGFuIGFw
cHJvcHJpYXRlCj4gPiBjYWxsLWJhY2sgYmVpbmcgc2V0LCB3ZSBhcmUgbGlrZWx5IHRvIGVuY291
bnRlciBhIHBhbmljLiAgQXZvaWQgdGhpcwo+ID4gYnkgYWRkaW5nIHN1aXRhYmxlIGNoZWNraW5n
Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3Jn
Pgo+ID4gLS0tCj4gPiAgZHJpdmVycy9tZmQvbWZkLWNvcmUuYyB8IDEwICsrKysrKysrKysKPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZmQvbWZkLWNvcmUuYyBiL2RyaXZlcnMvbWZkL21mZC1jb3JlLmMKPiA+IGluZGV4
IDgxMjY2NjViYjJkOC4uOTBiNDNiNDRhMTVhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZmQv
bWZkLWNvcmUuYwo+ID4gKysrIGIvZHJpdmVycy9tZmQvbWZkLWNvcmUuYwo+ID4gQEAgLTI4LDYg
KzI4LDExIEBAIGludCBtZmRfY2VsbF9lbmFibGUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiA+ICAJY29uc3Qgc3RydWN0IG1mZF9jZWxsICpjZWxsID0gbWZkX2dldF9jZWxsKHBkZXYp
Owo+ID4gIAlpbnQgZXJyID0gMDsKPiA+ICAKPiA+ICsJaWYgKCFjZWxsLT5lbmFibGUpIHsKPiA+
ICsJCWRldl9kYmcoJnBkZXYtPmRldiwgIk5vIC5lbmFibGUoKSBjYWxsLWJhY2sgcmVnaXN0ZXJl
ZFxuIik7Cj4gPiArCQlyZXR1cm4gMDsKPiA+ICsJfQo+ID4gKwo+ID4gIAkvKiBvbmx5IGNhbGwg
ZW5hYmxlIGhvb2sgaWYgdGhlIGNlbGwgd2Fzbid0IHByZXZpb3VzbHkgZW5hYmxlZCAqLwo+ID4g
IAlpZiAoYXRvbWljX2luY19yZXR1cm4oY2VsbC0+dXNhZ2VfY291bnQpID09IDEpCj4gPiAgCQll
cnIgPSBjZWxsLT5lbmFibGUocGRldik7Cj4gPiBAQCAtNDUsNiArNTAsMTEgQEAgaW50IG1mZF9j
ZWxsX2Rpc2FibGUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAJY29uc3Qgc3Ry
dWN0IG1mZF9jZWxsICpjZWxsID0gbWZkX2dldF9jZWxsKHBkZXYpOwo+ID4gIAlpbnQgZXJyID0g
MDsKPiA+ICAKPiA+ICsJaWYgKCFjZWxsLT5lbmFibGUpIHsKPiAKPiBPb3BzLgo+IAo+IENhbmNl
bCB0aGUgUi1COiA7LSkuIFNob3VsZG4ndCB0aGlzIGJlICFjZWxsLT5kaXNhYmxlKCkgPwoKWWVz
LiBMb29rcyBsaWtlIGEgQy9QIGVycm9yLgoKV2lsbCBmaXggYW5kIGFkZCB5b3VyIFItYi4KCi0t
IApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxp
bmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGlu
YXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
