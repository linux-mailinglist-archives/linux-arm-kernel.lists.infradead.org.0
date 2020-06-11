Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C9C1F61CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 08:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhXR/qCGTpxtPDuG7v7qw1t0MyyyTwBXBaXIHf8RLyQ=; b=pqJYDCSbjCELoH
	a/ptA8TZ25Tvl2gZrk8W0oobVnw9UpMtXNSso7U3CQ3DZXl1v1A1RThb3zbxoX27Y0JYSqa9eSigW
	qcZr7SRy5Ct4pY/lOJqg4/0Apk4b40OWi1z+8UiWvqDQXEOZD11d/5QW7Q5gGINhzA2/QAJdG29gr
	IN0S1f+zuMOFizRRK3f94ZQP6ipEbctUO0NMJjlf0NUS5fIHnLJhyi9A728h5iKXKfx/s94xVYZ+3
	FdZTqCSzhG9MCtqzUcE1txF2kdARP0DylgGW1W3w0tbg2b8j0PO9Wh505kuVESEoGGV2OhvzJcNE/
	JmwNmyt5KAMtApBRYK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjGr0-0001h5-0p; Thu, 11 Jun 2020 06:38:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjGqs-0001gi-T9
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 06:38:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id t18so4871858wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 23:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=h9/g3OLlPWijyvP1KuO9aQZyD9zG3rXcaVB4w89VOTo=;
 b=PUVruPoiB0A/W4svTxm7GVSR4dG1YN+TPa+bNlh3UZacTzsJSuuqUwUX4bwsp3Lely
 ASxTDl6wuhSgZOarrxAxx8FICf7hAf7X52rBFKQIVkWW8q0n2yFwsDeF01VUfJGKtNcF
 utJBOp6IoDI69SKUEnBKV9+Q/HOyTyoIjU16kbXlrwTYEcykMxlelfLaNcGuySh9xt2T
 1ZTKkdOr3czNBDINz7PYzvHrmf2itfCGWMg/ZLDftyjqYiEZE5Ym9sHoeR9H2Ixk8Nhn
 rJTf1QcGGvC3lUEsbTj1SoSC3yJ+XeftVmBUrbdIFniiPlQau3zwDT+JHZxo61yfA/BT
 /PxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=h9/g3OLlPWijyvP1KuO9aQZyD9zG3rXcaVB4w89VOTo=;
 b=SqFQBdfHIu9h5rvFHWEHRGOk1HzYhYahpBZneF/8BfN+5kdc8mDaENtZoGsfTMrzUJ
 Sle+wkyvweJ3bKthCQseE66dB4zoJbreQvZTBbQ/vT+woDlOqy0ko+7+J/GkTYiqHRsx
 V+pC7FYKOWfMp2bnq5qNYO14ZMblc+Fb6gXeqOD4ibQN+wmze31CFKwo0ulzx468VL0A
 ypmFvoBkaDvkWsngCetEOaCQnYN4LhXnWzfxUWt1JqVb2A0WwjJjDZLGgJ06GaHudWVW
 VzstCZEWLd84RHQdf9CW3fFdYvGEPw7yovkDbwzRMJdx1UHRFG5Zo05q9ZllIK3iHOqI
 TmHQ==
X-Gm-Message-State: AOAM530FoFvaT/jHe63A+ZvS1m3xUag0CIHy2Mtv7MMhiNtyZnbsIqZE
 1yegTXBgtBmoJTy9fgZG9owj5g==
X-Google-Smtp-Source: ABdhPJwJ6GGdUSF95PWK6acVorvArCdb/C7RGrbCcYZz+gm/V3GugbZmXgsyKMl74ZLpxctA64b1qQ==
X-Received: by 2002:a5d:5489:: with SMTP id h9mr7521008wrv.125.1591857491567; 
 Wed, 10 Jun 2020 23:38:11 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id x186sm2657865wmg.8.2020.06.10.23.38.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 23:38:10 -0700 (PDT)
Date: Thu, 11 Jun 2020 07:38:09 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>, arnd@arndb.de
Subject: Re: [PATCH] dt-bindings: mfd: Ensure 'syscon' has a more specific
 compatible
Message-ID: <20200611063809.GW4106@dell>
References: <20200610194625.3597460-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610194625.3597460-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_233815_005648_5039EAED 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXJuZCwKCk9uIFdlZCwgMTAgSnVuIDIwMjAsIFJvYiBIZXJyaW5nIHdyb3RlOgoKPiBVc2luZyAn
c3lzY29uJyBhbG9uZSBzaG91bGQgYmUgYXZvaWRlZCBhcyBjb21wYXRpYmxlIHN0cmluZ3Mgc2hv
dWxkIGJlCj4gc3BlY2lmaWMgZW5vdWdoIHRvIGlkZW50aWZ5IHRoZSBleGFjdCBzZXQgb2YgcmVn
aXN0ZXJzIGNvbnRhaW5lZC4gVXBkYXRlCj4gdGhlIHNjaGVtYSB0byBlbnN1cmUgYXQgbGVhc3Qg
MiBjb21wYXRpYmxlIHN0cmluZ3MgYXJlIHByZXNlbnQuCgpJJ20gYXNzdW1pbmcgeW91J3JlIG9r
YXkgd2l0aCB0aGlzPwoKPiBDYzogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiBD
YzogTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+Cj4gU2lnbmVkLW9mZi1ieTogUm9i
IEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiBGWUksIHRoZXJlJ3MgNDMgY2FzZXMg
b2YgdGhpcyBvbiBhcm0zMiBpbiBteSB0ZXN0aW5nLgo+IAo+ICBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi55YW1sIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNjb24ueWFtbAo+IGluZGV4IDE5YmRhZjc4MTg1
My4uYWY3YTY4MDUxMzkyIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tZmQvc3lzY29uLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWZkL3N5c2Nvbi55YW1sCj4gQEAgLTQzLDcgKzQzLDggQEAgcHJvcGVydGllczoK
PiAgCj4gICAgICAgIC0gY29udGFpbnM6Cj4gICAgICAgICAgICBjb25zdDogc3lzY29uCj4gLSAg
ICAgICAgYWRkaXRpb25hbEl0ZW1zOiB0cnVlCj4gKyAgICAgICAgbWluSXRlbXM6IDIKPiArICAg
ICAgICBtYXhJdGVtczogNCAgIyBTaG91bGQgYmUgZW5vdWdoCj4gIAo+ICAgIHJlZzoKPiAgICAg
IG1heEl0ZW1zOiAxCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwg
TGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxv
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
