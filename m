Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851C61394A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:19:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhotGFz66CTM5jYtz6mT435xJ/9zkbgV3Gea2GDKoNY=; b=IOyzzsSfWCqtPl
	IPbKtWppL30bPIYrARKBuZm3VhCmXfD/uMqSHBPewT1BRg2GihYEk03hPOmhF1d07zhaO1OdupzzZ
	kkxCbFaJrclEJtz7B5M+zxhiezM+Q7em2M6CbMhV0AZhYEsUXZh+lqR4uEwbMnpJrxyuQbem9q1Pm
	it7ldKIuQxoWMBhze7F3WLkMF9+DUdAiMNZAeqDuGAP4cqIjssdssVTEQ7QtBakX11lQyL14DNktU
	wjDMFEljYJyRgVBcYgfw50odlh1lt0b2OLMUVxx9OCxoinCVzMwUxRTJKnjFWG6BoPLuY8n924OV/
	wBtDcb7jZPxrQuaDJ1Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1V4-0006mE-Jh; Mon, 13 Jan 2020 15:19:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1Ug-0006cF-O2
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:19:11 +0000
Received: by mail-wr1-x441.google.com with SMTP id z3so8993575wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 07:19:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=RcjIDWDVSFqwyRgsaPp3Vy+ROhKcQV4EgfHtXMY+e7g=;
 b=EQ0CtAli3rZ72cdsDppAxkuycO7PGoTVnQafNsmoRTzj7cAFMX8/GwK4xMVDBhq1aE
 +r3a4Wd+KDvsq6ckO+WqtbgLk7fSVbEqkCIMlUerT7pCGOdHp7JXOKGB/mtdUXIGrQRw
 OezCCx+5yLpG9+PAIxm0m6YETM8lmCOGwxwOKbAHx9LlLpU6xnJc+rhRiSRtcB1fI4oa
 bcEG/l7rXKGW6/uLBCDaq1a6YpsbJ9t3mTbWGflXKAIKVtbb1gNTVwqX+XrD7W1QZRm0
 N0LdrpDVyg0RkkEjRut1mOWYoZAyS70oIUPcUwCzTptZY4k60LlEDdJLDOFYUkqRTlVn
 Iy3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=RcjIDWDVSFqwyRgsaPp3Vy+ROhKcQV4EgfHtXMY+e7g=;
 b=ZVhF55hWLSIr4LLsZR7r3V8bRmDOjTr8LzuH4Gv/ZXgI6nOXIG7p44GixrM5tsJB/p
 bPhNb2dq8F6VJf55FXIg6ckw/comgxAvxjpU0B4Vo7TSKvoxY+zpwCEMjQhxWnCA7sWT
 9+8rfqlkLzoDwP/ZWAB6+/StGb+77a+tYB/axDjIEgIJYrbFwxGVPtXKTJZCS9Swtouy
 YKHa0vFQbULH3lBWBYvzvbb6JUR0aNm4aVO4/OMVI7LOmVO4fS6xnI4yerl7OlsPhahb
 EETAqnb4i64064j/THQHxkViH4aNGIgrm6x+PK0ynScIoTn1tQQJD9PSiPiWu5ZyjH2d
 TkAg==
X-Gm-Message-State: APjAAAWgxwWJ9akYqDgxCn8MsAvJhnsEGTtBk11MAgX0aY5A+yaXz5uz
 dZtV3hflPQNGmGVns9jWe+496g==
X-Google-Smtp-Source: APXvYqzeQuDGVXi8qqElZcHwRL3UYxFgDNdwJBDQDD7a/u0wjGtLH4bY1MrjGS6yOaYRzO7DpHzUrw==
X-Received: by 2002:a05:6000:1288:: with SMTP id
 f8mr19204986wrx.66.1578928744119; 
 Mon, 13 Jan 2020 07:19:04 -0800 (PST)
Received: from [192.168.1.5] (amarseille-656-1-2-65.w90-8.abo.wanadoo.fr.
 [90.8.156.65])
 by smtp.gmail.com with ESMTPSA id n14sm14122682wmi.26.2020.01.13.07.19.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jan 2020 07:19:03 -0800 (PST)
Subject: Re: [PATCH v2 3/3] media: platform: meson-ao-cec-g12a: add wakeup
 support
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, narmstrong@baylibre.com,
 mchehab@kernel.org, khilman@baylibre.com, devicetree@vger.kernel.org
References: <20191213132956.11074-1-glaroque@baylibre.com>
 <20191213132956.11074-4-glaroque@baylibre.com>
 <cccc0cda-7403-1378-40c8-291b11bf868a@xs4all.nl>
 <0a07b5cc-a7dc-2983-89de-a1894ae6a469@baylibre.com>
 <75278f35-c4c2-90bc-cc54-8c3b5bbdd7e1@xs4all.nl>
From: guillaume La Roque <glaroque@baylibre.com>
Message-ID: <f937eedc-c0e6-7a32-70b1-809e1b73e8a3@baylibre.com>
Date: Mon, 13 Jan 2020 16:19:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <75278f35-c4c2-90bc-cc54-8c3b5bbdd7e1@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_071906_831373_CD87D7A5 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDEvMTMvMjAgMjozMCBQTSwgSGFucyBWZXJrdWlsIHdyb3RlOgo+IE9uIDEvMTAvMjAgNDow
NiBQTSwgZ3VpbGxhdW1lIExhIFJvcXVlIHdyb3RlOgo+PiBIaSBIYW5zLAo+Pgo+PiBPbiAxLzcv
MjAgMzozNiBQTSwgSGFucyBWZXJrdWlsIHdyb3RlOgo+Pj4gSGkgR3VpbGxhdW1lLAo+Pj4KPj4+
IE9uIDEyLzEzLzE5IDI6MjkgUE0sIEd1aWxsYXVtZSBMYSBSb3F1ZSB3cm90ZToKPj4+PiBhZGQg
cmVnaXN0ZXIgY29uZmlndXJhdGlvbiB0byBhY3RpdmF0ZSB3YWtldXAgZmVhdHVyZSBpbiBibDMw
MQo+Pj4+Cj4+Pj4gVGVzdGVkLWJ5OiBLZXZpbiBIaWxtYW4gPGtoaWxtYW5AYmF5bGlicmUuY29t
Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBMYSBSb3F1ZSA8Z2xhcm9xdWVAYmF5bGli
cmUuY29tPgo+Pj4+IC0tLQo+Pj4+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lc29uL2FvLWNl
Yy1nMTJhLmMgfCAzMyArKysrKysrKysrKysrKysrKysrKysrCj4+Pj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzMyBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9tZXNvbi9hby1jZWMtZzEyYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZXNv
bi9hby1jZWMtZzEyYS5jCj4+Pj4gaW5kZXggODkxNTMzMDYwZDQ5Li44NTg1MGI5NzQxMjYgMTAw
NjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZXNvbi9hby1jZWMtZzEyYS5j
Cj4+Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZXNvbi9hby1jZWMtZzEyYS5jCj4+
Pj4gQEAgLTI1LDYgKzI1LDcgQEAKPj4+PiAgI2luY2x1ZGUgPG1lZGlhL2NlYy5oPgo+Pj4+ICAj
aW5jbHVkZSA8bWVkaWEvY2VjLW5vdGlmaWVyLmg+Cj4+Pj4gICNpbmNsdWRlIDxsaW51eC9jbGst
cHJvdmlkZXIuaD4KPj4+PiArI2luY2x1ZGUgPGxpbnV4L21mZC9zeXNjb24uaD4KPj4+PiAgCj4+
Pj4gIC8qIENFQyBSZWdpc3RlcnMgKi8KPj4+PiAgCj4+Pj4gQEAgLTE2OCw2ICsxNjksMTggQEAK
Pj4+PiAgCj4+Pj4gICNkZWZpbmUgQ0VDQl9XQUtFVVBDVFJMCQkweDMxCj4+Pj4gIAo+Pj4+ICsj
ZGVmaW5lIENFQ0JfRlVOQ19DRkdfUkVHCQkweEEwCj4+Pj4gKyNkZWZpbmUgQ0VDQl9GVU5DX0NG
R19NQVNLCQlHRU5NQVNLKDYsIDApCj4+Pj4gKyNkZWZpbmUgQ0VDQl9GVU5DX0NGR19DRUNfT04J
CTB4MDEKPj4+PiArI2RlZmluZSBDRUNCX0ZVTkNfQ0ZHX09UUF9PTgkJMHgwMgo+Pj4+ICsjZGVm
aW5lIENFQ0JfRlVOQ19DRkdfQVVUT19TVEFOREJZCTB4MDQKPj4+PiArI2RlZmluZSBDRUNCX0ZV
TkNfQ0ZHX0FVVE9fUE9XRVJfT04JMHgwOAo+Pj4+ICsjZGVmaW5lIENFQ0JfRlVOQ19DRkdfQUxM
CQkweDJmCj4+Pj4gKyNkZWZpbmUgQ0VDQl9GVU5DX0NGR19OT05FCQkweDAKPj4+PiArCj4+Pj4g
KyNkZWZpbmUgQ0VDQl9MT0dfQUREUl9SRUcJMHhBNAo+Pj4+ICsjZGVmaW5lIENFQ0JfTE9HX0FE
RFJfTUFTSwlHRU5NQVNLKDIyLCAxNikKPj4+PiArCj4+Pj4gIHN0cnVjdCBtZXNvbl9hb19jZWNf
ZzEyYV9kYXRhIHsKPj4+PiAgCS8qIFNldHVwIHRoZSBpbnRlcm5hbCBDRUNCX0NUUkwyIHJlZ2lz
dGVyICovCj4+Pj4gIAlib29sCQkJCWN0cmwyX3NldHVwOwo+Pj4+IEBAIC0xNzcsNiArMTkwLDcg
QEAgc3RydWN0IG1lc29uX2FvX2NlY19nMTJhX2RldmljZSB7Cj4+Pj4gIAlzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlCQkqcGRldjsKPj4+PiAgCXN0cnVjdCByZWdtYXAJCQkqcmVnbWFwOwo+Pj4+ICAJ
c3RydWN0IHJlZ21hcAkJCSpyZWdtYXBfY2VjOwo+Pj4+ICsJc3RydWN0IHJlZ21hcAkJCSpyZWdt
YXBfYW9fc3lzY3RybDsKPj4+PiAgCXNwaW5sb2NrX3QJCQljZWNfcmVnX2xvY2s7Cj4+Pj4gIAlz
dHJ1Y3QgY2VjX25vdGlmaWVyCQkqbm90aWZ5Owo+Pj4+ICAJc3RydWN0IGNlY19hZGFwdGVyCQkq
YWRhcDsKPj4+PiBAQCAtNTE4LDYgKzUzMiwxMyBAQCBtZXNvbl9hb19jZWNfZzEyYV9zZXRfbG9n
X2FkZHIoc3RydWN0IGNlY19hZGFwdGVyICphZGFwLCB1OCBsb2dpY2FsX2FkZHIpCj4+Pj4gIAkJ
CQkJIEJJVChsb2dpY2FsX2FkZHIgLSA4KSk7Cj4+Pj4gIAl9Cj4+Pj4gIAo+Pj4+ICsJaWYgKGFv
X2NlYy0+cmVnbWFwX2FvX3N5c2N0cmwpCj4+Pj4gKwkJcmV0IHw9IHJlZ21hcF91cGRhdGVfYml0
cyhhb19jZWMtPnJlZ21hcF9hb19zeXNjdHJsLAo+Pj4+ICsJCQkJCSBDRUNCX0xPR19BRERSX1JF
RywKPj4+PiArCQkJCQkgQ0VDQl9MT0dfQUREUl9NQVNLLAo+Pj4+ICsJCQkJCSBGSUVMRF9QUkVQ
KENFQ0JfTE9HX0FERFJfTUFTSywKPj4+PiArCQkJCQkJICAgIGxvZ2ljYWxfYWRkcikpOwo+Pj4+
ICsKPj4+PiAgCS8qIEFsd2F5cyBzZXQgQnJvYWRjYXN0L1VucmVnaXN0ZXJlZCAxNSBhZGRyZXNz
ICovCj4+Pj4gIAlyZXQgfD0gcmVnbWFwX3VwZGF0ZV9iaXRzKGFvX2NlYy0+cmVnbWFwX2NlYywg
Q0VDQl9MQUREX0hJR0gsCj4+Pj4gIAkJCQkgIEJJVChDRUNfTE9HX0FERFJfVU5SRUdJU1RFUkVE
IC0gOCksCj4+Pj4gQEAgLTYxOCw2ICs2MzksMTMgQEAgc3RhdGljIGludCBtZXNvbl9hb19jZWNf
ZzEyYV9hZGFwX2VuYWJsZShzdHJ1Y3QgY2VjX2FkYXB0ZXIgKmFkYXAsIGJvb2wgZW5hYmxlKQo+
Pj4+ICAJCXJlZ21hcF93cml0ZShhb19jZWMtPnJlZ21hcF9jZWMsIENFQ0JfQ1RSTDIsCj4+Pj4g
IAkJCSAgICAgRklFTERfUFJFUChDRUNCX0NUUkwyX1JJU0VfREVMX01BWCwgMikpOwo+Pj4+ICAK
Pj4+PiArCWlmIChhb19jZWMtPnJlZ21hcF9hb19zeXNjdHJsKSB7Cj4+Pj4gKwkJcmVnbWFwX3Vw
ZGF0ZV9iaXRzKGFvX2NlYy0+cmVnbWFwX2FvX3N5c2N0cmwsCj4+Pj4gKwkJCQkgICBDRUNCX0ZV
TkNfQ0ZHX1JFRywKPj4+PiArCQkJCSAgIENFQ0JfRlVOQ19DRkdfTUFTSywKPj4+PiArCQkJCSAg
IENFQ0JfRlVOQ19DRkdfQUxMKTsKPj4+IFdoYXQgZXhhY3RseSBpcyBlbmFibGVkIGhlcmU/IExv
b2tpbmcgYXQgQ0VDQl9GVU5DX0NGR19BTEwgaXQgc2VlbXMgdG8KPj4+IGVuYWJsZSBhdXRvbWF0
aWMgc3RhbmRieSAoSSBwcmVzdW1lIHdoZW4gdGhlIFNUQU5EQlkgbWVzc2FnZSBpcyByZWNlaXZl
ZD8pCj4+PiBhbmQgcG93ZXIgb24gKEkgcHJlc3VtZSB3aGVuIFNFVF9TVFJFQU1fUEFUSCBpcyBy
ZWNlaXZlZD8pLgo+PiB0aGlzIHJlZ2lzdGVyIGFuZCBmbGFncyBhcmUgdXNlZCBieSBibDMwMSBw
YXJ0Lgo+Pgo+PiBhbWxvZ2ljIGltcGxlbWVudGVkIGEgdGFzayB0byBjaGVjayBjZWMgZXZlbnQv
bWVzc2FnZS4KPj4KPj4gZm9yIHBvd2VyIG9uIGluIGJsMzAxIGl0J3Mgbm90IG9ubHkgb24gU0VU
X1NUUkVBTV9QQVRIIGJ1dCBhbHNvIG9uIDoKPj4KPj4gVVNFUl9DT05UUk9MX1BSRVNTRUQKPj4g
VEVYVF9WSUVXX09OCj4gTm90IElNQUdFX1ZJRVdfT04/Cgpzb3JyeSBpIGZvcmdvdCBpdCAsIHll
cyBvbiBJTUFHRV9WSUVXX09OIHRvbwoKCj4KPj4gQUNUSVZFX1NPVVJDRQo+PiBST1VUSU5HX0NI
QU5HRQo+Pgo+PiB3aGVuIGluIENFQ0JfRlVOQ19DRkdfUkVHIHJlZ2lzdGVyIHdlIHB1dMKgIENF
Q0JfRlVOQ19DRkdfQ0VDX09OIGFuZMKgIENFQ0JfRlVOQ19DRkdfQVVUT19QT1dFUl9PTgo+Pgo+
PiBpdCdzIG5vdCBwb3NzaWJsZSB0byBjaGFuZ2UgdGhpcwo+IFRvbyBiYWQgc2luY2UgQUNUSVZF
X1NPVVJDRSBhbmQgUk9VVElOR19DSEFOR0Ugc2hvdWxkIG5vdCBwb3dlciBvbiBhIENFQyBkZXZp
Y2UuCj4KPiBTZWUgc2VjdGlvbiAxMS41LjIgaW4gdGhlIEhETUkgMi4wIFNwZWNpZmljYXRpb24g
Zm9yIG1vcmUgZGV0YWlscywgaWYgeW91IGhhdmUKPiB0aGF0IHNwZWMuCgoKaSB3aWxsIHJldHVy
biB5b3VyIGNvbW1lbnQgdG8gYW1sb2dpYyBidXQgbm90IHN1cmUgdGhleSBkbyBjaGFuZ2UgaW4g
YmwzMDEuCgoKPgo+Pj4gRG8geW91IHJlYWxseSB3YW50IHRvIGF1dG9tYXRpY2FsbHkgaGFuZGxl
IFNUQU5EQlkgdGhhdCB3YXk/IFdoYXQgZG9lcyB0aGlzCj4+PiBkbyBvbiB0aGUgaGFyZHdhcmUg
bGV2ZWwgYW55d2F5PyBJc24ndCB0aGlzIHNvbWV0aGluZyB0aGF0IHNob3VsZCBiZQo+Pj4gY29u
dHJvbGxlZCBpbiB1c2Vyc3BhY2U/Cj4+IGluIGZhY3QgaSBkbyBhIG5ldyBjaGVjayBpbiBibDMw
MSBjb2RlIGFtbG9naWMgZG8gbm90aGluZyBvbiBTVEFOREJZIHNvIGkgd2lsbCBjbGVhbiBjb2Rl
Cj4+Cj4+IGFuZCBhY3RpdmF0ZSByZWFsIG9wdGlvbiBzdXBwb3J0ZWQgYnkgYmwzMDEKPj4KPj4+
IFNpbWlsYXIgcXVlc3Rpb25zIGZvciBwb3dlciBvbjogeW91IG1heSBub3QgYWx3YXlzIHdhbnQg
dG8gZW5hYmxlIHRoaXMgZmVhdHVyZQo+Pj4gc2luY2UgaXQgZGVwZW5kcyB2ZXJ5IG11Y2ggb24g
dGhlIHByZWNpc2UgdXNlLWNhc2UuCj4+Pgo+Pj4gQW5kIHdoaWNoIG1lc3NhZ2VzIGl0IHJlYWN0
cyB0byBpbiBvcmRlciB0byBkbyBhIHBvd2VyLW9uIG5lZWRzIHRvIGJlCj4+PiBkb2N1bWVudGVk
IHNpbmNlIHRoaXMgZGlmZmVycyBkZXBlbmRpbmcgb24gd2hldGhlciB0aGUgQ0VDIGFkYXB0ZXIg
aXMKPj4+IHVzZWQgZm9yIGEgVFYgb3IgZm9yIGEgcGxheWJhY2sgZGV2aWNlLiBUaGlzIGZlYXR1
cmUgbWF5IGJlIGhhcmR3aXJlZCBmb3IKPj4+IGEgcGxheWJhY2sgZGV2aWNlIG9ubHksIGluIHdo
aWNoIGNhc2UgaXQgc2hvdWxkIHByb2JhYmx5IGJlIGRpc2FibGVkIGlmCj4+PiB0aGUgQ0VDIGFk
YXB0ZXIgaXMgY29uZmlndXJlZCBhcyBhIFRWLgo+Pj4KPj4+IEluIGFueSBjYXNlIEkgd291bGQg
bGlrZSB0byBzZWUgc29tZSBtb3JlIGRldGFpbHMgYWJvdXQgaG93IHRoaXMgd29ya3MsCj4+PiBl
c3BlY2lhbGx5IHNpbmNlIHRoaXMgaXMgdGhlIGZpcnN0IGltcGxlbWVudGF0aW9uIG9mIHN1Y2gg
YSBmZWF0dXJlLgo+Pj4KPj4+IEkgc3VzcGVjdCB0aGF0IHNvbWUgdXNlcnNwYWNlIEFQSSBtaWdo
dCBiZSBuZWVkZWQgdG8gZ2V0IHRoZSByaWdodCBsZXZlbAo+Pj4gb2YgY29udHJvbCBvZiBzdWNo
IGEgZmVhdHVyZS4KPj4gaSB3aWxsIHNlbmQgdjMgbmV4dCB3ZWVrIHdpdGggc29tZSBjb21tZW50
cyBhbmQgZml4ICggZGlzYWJsZSBhcmUgbWlzc2luZyBmb3IgZXhhbXBsZSkKPj4KPj4gYWN0dWFs
IHVzZXJjYXNlIGlzIGZvciBhbmRyb2lkIFRWLgo+Pgo+PiB3aGVuIGNlYyB3YXMgZW5hYmxlIGFu
ZHJvaWQgVFYgd2FudCB0byBiZSB3YWtldXAgYnkgY2VjIGV2ZW50Lgo+Pgo+Pgo+Pj4gUmVnYXJk
cywKPj4+Cj4+PiAJSGFucwo+Pj4KPj4gdGhhbmtzIGZvciB5b3VyIHJldmlldwo+IE5vIHByb2Js
ZW0hCj4KPiAJSGFucwo+Cj4+IFJlZ2FyZHMKPj4KPj4gR3VpbGxhdW1lCj4+Cj4+Pj4gKwl9Cj4+
Pj4gKwo+Pj4+ICAJbWVzb25fYW9fY2VjX2cxMmFfaXJxX3NldHVwKGFvX2NlYywgdHJ1ZSk7Cj4+
Pj4gIAo+Pj4+ICAJcmV0dXJuIDA7Cj4+Pj4gQEAgLTY4NSw2ICs3MTMsMTEgQEAgc3RhdGljIGlu
dCBtZXNvbl9hb19jZWNfZzEyYV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
Pj4+ICAJCWdvdG8gb3V0X3Byb2JlX2FkYXB0ZXI7Cj4+Pj4gIAl9Cj4+Pj4gIAo+Pj4+ICsJYW9f
Y2VjLT5yZWdtYXBfYW9fc3lzY3RybCA9IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUK
Pj4+PiArCQkocGRldi0+ZGV2Lm9mX25vZGUsICJhbWxvZ2ljLGFvLXN5c2N0cmwiKTsKPj4+PiAr
CWlmIChJU19FUlIoYW9fY2VjLT5yZWdtYXBfYW9fc3lzY3RybCkpCj4+Pj4gKwkJZGV2X3dhcm4o
JnBkZXYtPmRldiwgImFvLXN5c2N0cmwgc3lzY29uIHJlZ21hcCBsb29rdXAgZmFpbGVkLlxuIik7
Cj4+Pj4gKwo+Pj4+ICAJaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAwKTsKPj4+PiAgCXJl
dCA9IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoJnBkZXYtPmRldiwgaXJxLAo+Pj4+ICAJCQkJ
CW1lc29uX2FvX2NlY19nMTJhX2lycSwKPj4+PgoKUmVnYXJkcwoKR3VpbGxhdW1lCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
