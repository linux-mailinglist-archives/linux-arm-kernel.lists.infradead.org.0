Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E861FBC4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GPgm7KqhVZ2dsaMXYGR/Zaj9mmfgs6eN7sK90oSMd4c=; b=CBD2vKdv81sKOspSsgbAT9jHk2
	aH7id8LpC+kmQsPQGZaLidvo+vUwvbEJkLHqp0WGxxSKXp3q3eVTvp6mshykLgm0suI9+V25OFNFO
	XGsO1ivc1pMe/LLXdqa4kgaGim+hHCC6vHkqlYOpzZTMu/xJ1rH6KECsMUJAzZpfbsUA7ssvXKeyf
	uIWHOCcZdxQ3H9h5jNEt0GJInje/OeMBudD318XTINumFIUpHs0+qHwOLbnvs/1trmbdLJQ/vEvbn
	3bqXQhggyQmr5Eh9kWvZQUYW+QKgmypXT1thwpQU2wS3JdxHGSpGmk0kEgiRa/A0mF/0MoxRFpchH
	FuvylCdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlF1Y-0000gc-Bb; Tue, 16 Jun 2020 17:05:24 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlF1M-0000Jg-My
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:05:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id c71so3565963wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 10:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Df4lS1a4Afgip6mUYwPxDAu7PfQ0SWY73b7vyFMbsdY=;
 b=CI3GXRng/K5RxhCOS2ZF34C0Ye8JxjrfxOlmQhW2IhqlU78cmj9vX2qakPBpyhaKCZ
 EPrtQxOXVVhNTmrfMvB6u7rPfCEdiaBROHPuqrCsuhN0ZnMFfiid/0hQXTDSpQ5mUHyC
 ZazlXCmEUzZoHaTgjbXV11ff2jaft3sQcWbiOJfJhStNCguLMBeM7HzwJ45SZbMReRyG
 +O5rdV7YmSbau/2jpbHx64yfKAnS4r79vqLfosIM7tiuGs22qPC0DG+Lo9uAGVrNeHvv
 XODkuQyVSl8Gv3F8WG88JXp9ZD75V5UnLPgYY38/uasWV76/p+Bhnl7BKcHgJ3tnxLlF
 3mZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Df4lS1a4Afgip6mUYwPxDAu7PfQ0SWY73b7vyFMbsdY=;
 b=mI/c+oorJqVz+OIFmJHDvcEOTXcQyuyVWo0cVPERAfo3f51OFUvFv1YMB6oK8t8SHh
 p9852hhhhWs/WrSt+uiwxHI6Hn6deRSbnq7Pn7cUaQaR7vpuJB0+K7RFu2alePdj6BJE
 CHqIAKfboXQh/g54aKh9KDFfCldVL9WS1TWQIw/9RdGRmsnlC13K1gxY7BnSn8bUD2RT
 4UQIAyfwh4Aifjn8DJZFJRe/T6kDDQdP1EdZKsFF+zN3w0gAMpNSKjNoSZtaI090sTov
 R0hlhNcPY48vA2b94UHZ1Jsz/Mdn87+hYXWlRIBHj4kvT8SlxZdgF4sBmo91OaqcnTed
 n86Q==
X-Gm-Message-State: AOAM531lboW9YnBgPvGngKzcKlIQzlPQSmkF/Q9tvdz60iMH7ClE9qbi
 wa3jfoiCzSTV28sWIpmi40xfqSHY
X-Google-Smtp-Source: ABdhPJxRRzNwKYMdzdDi5JUyzHnahhqSfODmYl+q3iopHnH3Wx2Jl5Fzl4J9jJsr+CkhwDCeg3nh7A==
X-Received: by 2002:a7b:c0cc:: with SMTP id s12mr4346720wmh.111.1592327110274; 
 Tue, 16 Jun 2020 10:05:10 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 w1sm4682818wmi.13.2020.06.16.10.05.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 10:05:09 -0700 (PDT)
Subject: Re: [PATCH v3 1/4] spi: bcm63xx-spi: add reset support
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200616070223.3401282-1-noltari@gmail.com>
 <20200616070223.3401282-2-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d79c9e3d-fcf3-84ab-4a13-8ff00b4b2605@gmail.com>
Date: Tue, 16 Jun 2020 10:05:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616070223.3401282-2-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_100512_765742_2DE40EDD 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzE2LzIwMjAgMTI6MDIgQU0sIMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyB3cm90ZToK
PiBiY202M3h4IGFyY2ggcmVzZXRzIHRoZSBTUEkgY29udHJvbGxlciBhdCBlYXJseSBib290LiBI
b3dldmVyLCBibWlwcyBhcmNoCj4gbmVlZHMgdG8gcGVyZm9ybSBhIHJlc2V0IHdoZW4gcHJvYmlu
ZyB0aGUgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2ph
cyA8bm9sdGFyaUBnbWFpbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFBoaWxpcHAgWmFiZWwgPHAuemFi
ZWxAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gIHYzOiB1c2UgZGV2bV9yZXNldF9jb250cm9sX2dl
dF9vcHRpb25hbF9leGNsdXNpdmUKPiAgdjI6IHVzZSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X2V4
Y2x1c2l2ZQo+IAo+ICBkcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jIHwgMTcgKysrKysrKysrKysr
KysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zcGkvc3BpLWJjbTYzeHguYyBiL2RyaXZlcnMvc3BpL3NwaS1iY202M3h4LmMK
PiBpbmRleCAwZjFiMTBhNGVmMGMuLjkyZTg4OTAxMTg5YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3NwaS9zcGktYmNtNjN4eC5jCj4gKysrIGIvZHJpdmVycy9zcGkvc3BpLWJjbTYzeHguYwo+IEBA
IC0xOCw2ICsxOCw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9lcnIuaD4KPiAgI2luY2x1ZGUgPGxp
bnV4L3BtX3J1bnRpbWUuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4gKyNpbmNsdWRlIDxs
aW51eC9yZXNldC5oPgo+ICAKPiAgLyogQkNNIDYzMzgvNjM0OCBTUEkgY29yZSAqLwo+ICAjZGVm
aW5lIFNQSV82MzQ4X1JTRVRfU0laRQkJNjQKPiBAQCAtNDkzLDYgKzQ5NCw3IEBAIHN0YXRpYyBp
bnQgYmNtNjN4eF9zcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCXN0
cnVjdCBiY202M3h4X3NwaSAqYnM7Cj4gIAlpbnQgcmV0Owo+ICAJdTMyIG51bV9jcyA9IEJDTTYz
WFhfU1BJX01BWF9DUzsKPiArCXN0cnVjdCByZXNldF9jb250cm9sICpyZXNldDsKPiAgCj4gIAlp
ZiAoZGV2LT5vZl9ub2RlKSB7Cj4gIAkJY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqbWF0Y2g7
Cj4gQEAgLTUyOSw2ICs1MzEsMTUgQEAgc3RhdGljIGludCBiY202M3h4X3NwaV9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCXJldHVybiBQVFJfRVJSKGNsayk7Cj4gIAl9
Cj4gIAo+ICsJcmVzZXQgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsX2V4Y2x1c2l2
ZShkZXYsIE5VTEwpOwo+ICsJaWYgKElTX0VSUihyZXNldCkpIHsKPiArCQlyZXQgPSBQVFJfRVJS
KHJlc2V0KTsKPiArCQlpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCj4gKwkJCWRldl9lcnIoZGV2
LAo+ICsJCQkJImZhaWxlZCB0byBnZXQgcmVzZXQgY29udHJvbGxlcjogJWRcbiIsIHJldCk7Cj4g
KwkJcmV0dXJuIHJldDsKPiArCX0KCldoZW4gdGhlIGNvbnRyb2xsZXIgaXMgb3B0aW9uYWwsIHlv
dSBkb24ndCBuZWVkIHRvIGRvIHRoYXQgbWFudWFsIGVycm9yCmNoZWNraW5nLCBhcyBpdCBkb2Vz
IHRoYXQgZm9yIHlvdSBhbHJlYWR5LiBZb3UgY2FuIG9ubHkgZG86CgppZiAoSVNfRVJSKHJlc2V0
KSkKCXJldHVybiBQVFJfRVJSKHJlc2V0KTsKCmFuZCB0aGF0J3MgaXQuIFdpdGggdGhhdCBmaXhl
ZCBpbiB2NCwgeW91IGNhbiBhZGQ6CgpSZXZpZXdlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5m
YWluZWxsaUBnbWFpbC5jb20+Ci0tIApGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
