Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 119461D12C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4BviCYf6oG/xqHWN+1l2J4xFFmi+/0yGwxUdghy8SwQ=; b=dUnpHM8tmh9BrL
	hKqAe1Y9279USNDqnPaOQWTCwvznxOwnPu8AjpXl42ataT3o+E2WkloL/Ianht70Byqt/26z5Hl7q
	eB7NUg+rkSHTUWQQVzYA6NkvSP/xTVaVdfZWwJaQe7tI0dsT/IeccNiyK05RpqFx6aVqdy39tA3p7
	jEWx03Y0c/qtNRmpl2IgkwbWy/mnOEhGKvH2HV1rJiJ1NGpNKRryHez5xrIV0vRmMf2dAlEP0LweA
	Xr/32fJR+2v+LPb8mqsgJdbfdGmTuEHyyQeuYeqhcUU3iOuQCtca3116c3QO4a1Ewv9Vl1BbJNVe6
	oS49UmjEi7fdaZIJFfCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqa1-0001M8-0x; Wed, 13 May 2020 12:33:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqZp-0001KH-L0
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:33:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id d207so8821788wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 05:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qpWJI6FbhpbhBsS8uD91tXQ8La+pJMlR93bNeYKPQqA=;
 b=xTRxNL+8+QajdVqdoqaLz2GNmho7dYijta8I+VPSQqDtB2JXmKvjpsfL4ApdOOxXnq
 JKD5TKMuAugjlXX9WdtRsdrQvu8ofuPgEH4rAF6vnis9w9LKtA8JngMjdZBBnS0u1vGF
 KmkVpjAMQa+1mYGHUt1kyJ7BN4bOhnaA5mSkm2kOf/QGXudaOxJw3H4T1WDRPM9dHloP
 EkSemID7BtfXhrQCKb4QxEtqDnSlYvc2UxhT1DHLQv9BeNDBr1hHYz0/cRxn8u/XrYtM
 gcQLgE+rgUekF1R/2kP5hMI+ZNL0sM5dkW9SCI/XvU8JgSDxu33xpjkDbqVrlhcnSjv5
 Ac9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=qpWJI6FbhpbhBsS8uD91tXQ8La+pJMlR93bNeYKPQqA=;
 b=a3s2dxqai+nHLIgDMSMJWLWdFkl67SPhSlozr0UbTAyhxCmPiaae8MBMlrNEpMn5p4
 3644Eg1ZvCquSns2c+pco7HxkF5FfoIem3I8a/aa0ZfUbXnd+vu/Jrm0isuYXrmiFSnr
 V/93aLjhM+vVWo5JgqbL+mlObk9GudZado5LdNuYn8YHj0Bd07Ygwvv3tDUTq+QD7J5G
 iRAKEPpq09QvBawjMeU1YFUbAr1/+azd/kKfuWnZDCfWBHwcpfpeUKvrngLqWH5qyLDh
 6KiAbAneuSSS0weL1N1TDcT+PnYYg3ACTd6kys4I11o2KypB+puAKRvtt+lSdtrLGuMP
 K8TQ==
X-Gm-Message-State: AGi0PuZifkL+h35xaLurz0mvP7I4zSaeDJxrjBGigBSuC0YLfZOpD7LX
 Ya4XlKXxq+Ct8jow6VR56pS9fA==
X-Google-Smtp-Source: APiQypLafv/klXsRptF5Sb8wEMHohwZ+jSfHlIKPb7TWrj2caQEtrinP6Pd4k6d50wFuGxt6ZvYD7g==
X-Received: by 2002:a1c:7513:: with SMTP id o19mr30771767wmc.104.1589373211812; 
 Wed, 13 May 2020 05:33:31 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:4460:3fd3:382:4a71?
 ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id m6sm25978063wrq.5.2020.05.13.05.33.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 05:33:31 -0700 (PDT)
Subject: Re: [PATCH v2 4/6] nvmem: add support for the Khadas MCU Programmable
 User Memory
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20200512132613.31507-1-narmstrong@baylibre.com>
 <20200512132613.31507-5-narmstrong@baylibre.com>
 <09026bde-0ae7-b1a4-835f-bf2481199398@linaro.org>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <b885eeb5-1542-775f-ab7b-b1218c6a337a@baylibre.com>
Date: Wed, 13 May 2020 14:33:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <09026bde-0ae7-b1a4-835f-bf2481199398@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_053333_860475_67E34728 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDUvMjAyMCAxMjozNCwgU3Jpbml2YXMgS2FuZGFnYXRsYSB3cm90ZToKPiAKPiAKPiBP
biAxMi8wNS8yMDIwIDE0OjI2LCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4gVGhlIG5ldyBLaGFk
YXMgVklNMiwgVklNMyBhbmQgRWRnZSBib2FyZHMgZW1iZWRzIGFuIG9uLWJvYXJkIG1pY3JvY29u
dHJvbGxlcgo+PiBvZmZlcmluZyBhIDU2Ynl0ZXMgVXNlciBQcm9ncmFtbWFibGUgTlZNRU0gYXJy
YXkuCj4+Cj4+IFRoaXMgYXJyYXkgbmVlZHMgYSBwYXNzd29yZCB0byBiZSB3cml0YWJsZSwgdGh1
cyBhIHBhc3N3b3JkIHN5c2ZzIGZpbGUKPj4gaGFzIGJlZW4gYWRkZWQgb24gdGhlIGRldmljZSBu
b2RlIHRvIHVubG9jayB0aGUgTlZNRU0uCj4gCj4gSXMgdGhpcyBvbmUgdGltZSBwcm9ncmFtbWFi
bGU/IE9yIGRvZXMgaXQgbmVlZCB0byBiZSB1bmxvY2tlZCBmb3IgZXZlcnkgcmVhZC93cml0ZT8K
Ckl0IGNhbiBiZSByZXdyaXR0ZW4sIGFuZCBuZWVkcyB0aGUgcGFzc3dvcmQgdG8gcmVhZCAmIHdy
aXRlLgoKPiAKPiBIb3cgY2FuIHlvdSBtYWtlIHN1cmUgdGhhdCB0aGUgbWVtb3J5IGlzIHVubG9j
a2VkIGJlZm9yZSBtYWtpbmcgYXR0ZW1wdCB0byByZWFkL3dyaXRlPwoKVGhlIG9ubHkgd2F5IHRv
IGtub3cgaXQncyB1bmxvY2sgaXMgcmVhZGluZyBiYWNrIHRoZSBwYXNzd29yZCB3aGVuIHVubG9j
a2VkLgoKPiAKPj4KPj4gVGhlIGRlZmF1bHQgNmJ5dGVzIHBhc3N3b3JkIGlkOiAiS2hhZGFzIgo+
Pgo+PiBUaGlzIGltcGxlbWVudHMgdGhlIHVzZXIgTlZNRU0gZGV2aWNlcyBhcyBjZWxsIG9mIHRo
ZSBLaGFkYXMgTUNVIE1GRCBkcml2ZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE5laWwgQXJtc3Ry
b25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbnZtZW0v
S2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgOCArKwo+PiDCoCBkcml2
ZXJzL252bWVtL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMiArCj4+
IMKgIGRyaXZlcnMvbnZtZW0va2hhZGFzLW1jdS11c2VyLW1lbS5jIHwgMTI4ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysKPj4gwqAgMyBmaWxlcyBjaGFuZ2VkLCAxMzggaW5zZXJ0aW9ucygr
KQo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9udm1lbS9raGFkYXMtbWN1LXVzZXIt
bWVtLmMKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZW0vS2NvbmZpZyBiL2RyaXZlcnMv
bnZtZW0vS2NvbmZpZwo+PiBpbmRleCBkN2I3ZjZkNjg4ZTcuLjkyY2Q0ZjZhYTkzMSAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9udm1lbS9LY29uZmlnCj4+ICsrKyBiL2RyaXZlcnMvbnZtZW0vS2Nv
bmZpZwo+PiBAQCAtNjcsNiArNjcsMTQgQEAgY29uZmlnIEpaNDc4MF9FRlVTRQo+PiDCoMKgwqDC
oMKgwqDCoCBUbyBjb21waWxlIHRoaXMgZHJpdmVyIGFzIGEgbW9kdWxlLCBjaG9vc2UgTSBoZXJl
OiB0aGUgbW9kdWxlCj4+IMKgwqDCoMKgwqDCoMKgIHdpbGwgYmUgY2FsbGVkIG52bWVtX2p6NDc4
MF9lZnVzZS4KPj4gwqAgK2NvbmZpZyBOVk1FTV9LSEFEQVNfTUNVX1VTRVJfTUVNCj4+ICvCoMKg
wqAgdHJpc3RhdGUgIktoYWRhcyBNQ1UgVXNlciBwcm9ncmFtbWFibGUgbWVtb3J5IHN1cHBvcnQi
Cj4+ICvCoMKgwqAgZGVwZW5kcyBvbiBNRkRfS0hBREFTX01DVQo+PiArwqDCoMKgIGRlcGVuZHMg
b24gUkVHTUFQCj4+ICvCoMKgwqAgaGVscAo+PiArwqDCoMKgwqDCoCBUaGlzIGlzIGEgZHJpdmVy
IGZvciB0aGUgTUNVIFVzZXIgcHJvZ3JhbW1hYmxlIG1lbW9yeQo+PiArwqDCoMKgwqDCoCBhdmFp
bGFibGUgb24gdGhlIEtoYWRhcyBWSU0gYW5kIEVkZ2UgYm9hcmRzLgo+PiArCj4+IMKgIGNvbmZp
ZyBOVk1FTV9MUEMxOFhYX0VFUFJPTQo+PiDCoMKgwqDCoMKgIHRyaXN0YXRlICJOWFAgTFBDMThY
WCBFRVBST00gTWVtb3J5IFN1cHBvcnQiCj4+IMKgwqDCoMKgwqAgZGVwZW5kcyBvbiBBUkNIX0xQ
QzE4WFggfHwgQ09NUElMRV9URVNUCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWVtL01ha2Vm
aWxlIGIvZHJpdmVycy9udm1lbS9NYWtlZmlsZQo+PiBpbmRleCBhN2MzNzcyMTgzNDEuLjA1MTZh
MzA5NTQyZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9udm1lbS9NYWtlZmlsZQo+PiArKysgYi9k
cml2ZXJzL252bWVtL01ha2VmaWxlCj4+IEBAIC0xNyw2ICsxNyw4IEBAIG9iai0kKENPTkZJR19O
Vk1FTV9JTVhfT0NPVFBfU0NVKcKgwqDCoCArPSBudm1lbS1pbXgtb2NvdHAtc2N1Lm8KPj4gwqAg
bnZtZW0taW14LW9jb3RwLXNjdS15wqDCoMKgwqDCoMKgwqAgOj0gaW14LW9jb3RwLXNjdS5vCj4+
IMKgIG9iai0kKENPTkZJR19KWjQ3ODBfRUZVU0UpwqDCoMKgwqDCoMKgwqAgKz0gbnZtZW1fano0
NzgwX2VmdXNlLm8KPj4gwqAgbnZtZW1fano0NzgwX2VmdXNlLXnCoMKgwqDCoMKgwqDCoCA6PSBq
ejQ3ODAtZWZ1c2Uubwo+PiArb2JqLSQoQ09ORklHX05WTUVNX0tIQURBU19NQ1VfVVNFUl9NRU0p
wqDCoMKgICs9IG52bWVtLWtoYWRhcy1tY3UtdXNlci1tZW0ubwo+PiArbnZtZW0ta2hhZGFzLW1j
dS11c2VyLW1lbS15wqDCoMKgIDo9IGtoYWRhcy1tY3UtdXNlci1tZW0ubwo+PiDCoCBvYmotJChD
T05GSUdfTlZNRU1fTFBDMThYWF9FRVBST00pwqDCoMKgICs9IG52bWVtX2xwYzE4eHhfZWVwcm9t
Lm8KPj4gwqAgbnZtZW1fbHBjMTh4eF9lZXByb20tecKgwqDCoCA6PSBscGMxOHh4X2VlcHJvbS5v
Cj4+IMKgIG9iai0kKENPTkZJR19OVk1FTV9MUEMxOFhYX09UUCnCoMKgwqAgKz0gbnZtZW1fbHBj
MTh4eF9vdHAubwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lbS9raGFkYXMtbWN1LXVzZXIt
bWVtLmMgYi9kcml2ZXJzL252bWVtL2toYWRhcy1tY3UtdXNlci1tZW0uYwo+PiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmExZDVhZTlhMDMwYwo+PiAtLS0gL2Rl
di9udWxsCj4+ICsrKyBiL2RyaXZlcnMvbnZtZW0va2hhZGFzLW1jdS11c2VyLW1lbS5jCj4+IEBA
IC0wLDAgKzEsMTI4IEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+
PiArLyoKPj4gKyAqIERyaXZlciBmb3IgS2hhZGFzIE1DVSBVc2VyIHByb2dyYW1tYWJsZSBNZW1v
cnkKPj4gKyAqCj4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjAgQmF5TGlicmUgU0FTCj4+ICsgKiBB
dXRob3Iocyk6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPj4gKyAq
Lwo+PiArCj4+ICsjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gCj4gV2h5IGRvIHdlIG5lZWQgdGhp
cyBoZWFkZXI/CgpXaWxsIGRyb3AKCj4gCj4+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4+
ICsjaW5jbHVkZSA8bGludXgvbnZtZW0tcHJvdmlkZXIuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9t
ZmQva2hhZGFzLW1jdS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+PiArI2luY2x1
ZGUgPGxpbnV4L29mLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4+
ICsKPj4gK3N0YXRpYyBpbnQga2hhZGFzX21jdV91c2VyX21lbV9yZWFkKHZvaWQgKmNvbnRleHQs
IHVuc2lnbmVkIGludCBvZmZzZXQsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
dm9pZCAqdmFsLCBzaXplX3QgYnl0ZXMpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IGtoYWRhc19t
Y3UgKmtoYWRhc19tY3UgPSBjb250ZXh0Owo+PiArCj4+ICvCoMKgwqAgcmV0dXJuIHJlZ21hcF9i
dWxrX3JlYWQoa2hhZGFzX21jdS0+bWFwLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIEtIQURBU19NQ1VfVVNFUl9EQVRBXzBfUkVHICsgb2Zmc2V0LAo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHZhbCwgYnl0ZXMpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW50
IGtoYWRhc19tY3VfdXNlcl9tZW1fd3JpdGUodm9pZCAqY29udGV4dCwgdW5zaWduZWQgaW50IG9m
ZnNldCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZvaWQgKnZhbCwgc2l6
ZV90IGJ5dGVzKQo+PiArewo+PiArwqDCoMKgIHN0cnVjdCBraGFkYXNfbWN1ICpraGFkYXNfbWN1
ID0gY29udGV4dDsKPj4gKwo+PiArwqDCoMKgIHJldHVybiByZWdtYXBfYnVsa193cml0ZShraGFk
YXNfbWN1LT5tYXAsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgS0hBREFTX01D
VV9VU0VSX0RBVEFfMF9SRUcgKyBvZmZzZXQsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdmFsLCBieXRlcyk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBzc2l6ZV90IHBhc3N3b3Jk
X3N0b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIs
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBjaGFyICpidWYsIHNp
emVfdCBjb3VudCkKPj4gK3sKPj4gK8KgwqDCoCBzdHJ1Y3Qga2hhZGFzX21jdSAqa2hhZGFzX21j
dSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+PiArwqDCoMKgIGludCBpLCByZXQ7Cj4+ICsKPj4g
K8KgwqDCoCBpZiAoY291bnQgPCA2KQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7
Cj4gCj4gUG9zc2libHkgdGhpcyBtYWdpYyA2IHZhbHVlIG5lZWRzIHByb3BlciBkZWZpbmUuIEFu
IGFkZGl0aW9uYWwgY2hlY2sgaGVyZSBmb3IgPiA2IHdvdWxkIGJlIGJldHRlciBhcyB3ZWxsLgoK
T2sKCj4gCj4+ICsKPj4gK8KgwqDCoCByZXQgPSByZWdtYXBfd3JpdGUoa2hhZGFzX21jdS0+bWFw
LCBLSEFEQVNfTUNVX1BBU1NXRF9TVEFSVF9SRUcsIDEpOwo+PiArwqDCoMKgIGlmIChyZXQpCj4+
ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+PiArCj4+ICvCoMKgwqAgZm9yIChpID0gMCA7
IGkgPCA2IDsgKytpKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXQgPSByZWdtYXBfd3JpdGUoa2hh
ZGFzX21jdS0+bWFwLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEtI
QURBU19NQ1VfQ0hFQ0tfVVNFUl9QQVNTV0RfUkVHLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGJ1ZltpXSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8Kg
wqDCoCByZXQgPSByZWdtYXBfd3JpdGUoa2hhZGFzX21jdS0+bWFwLCBLSEFEQVNfTUNVX1BBU1NX
RF9TVEFSVF9SRUcsIDApOwo+PiArwqDCoMKgIGlmIChyZXQpCj4+ICvCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gcmV0Owo+PiArCj4+ICvCoMKgwqAgcmV0dXJuIGNvdW50Owo+PiArb3V0Ogo+PiArwqDC
oMKgIHJlZ21hcF93cml0ZShraGFkYXNfbWN1LT5tYXAsIEtIQURBU19NQ1VfUEFTU1dEX1NUQVJU
X1JFRywgMCk7Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gcmV0Owo+PiArfQo+PiArCj4+ICtzdGF0
aWMgREVWSUNFX0FUVFJfV08ocGFzc3dvcmQpOwo+PiArCj4+ICtzdGF0aWMgc3RydWN0IGF0dHJp
YnV0ZSAqa2hhZGFzX21jdV91c2VyX21lbV9zeXNmc19hdHRyaWJ1dGVzW10gPSB7Cj4+ICvCoMKg
wqAgJmRldl9hdHRyX3Bhc3N3b3JkLmF0dHIsCj4+ICvCoMKgwqAgTlVMTCwKPj4gK307Cj4+ICsK
Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwIGtoYWRhc19tY3VfdXNlcl9t
ZW1fc3lzZnNfYXR0cl9ncm91cCA9IHsKPj4gK8KgwqDCoCAuYXR0cnMgPSBraGFkYXNfbWN1X3Vz
ZXJfbWVtX3N5c2ZzX2F0dHJpYnV0ZXMsCj4+ICt9Owo+PiArCj4+ICtzdGF0aWMgaW50IGtoYWRh
c19tY3VfdXNlcl9tZW1fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gK3sK
Pj4gK8KgwqDCoCBzdHJ1Y3Qga2hhZGFzX21jdSAqa2hhZGFzX21jdSA9IGRldl9nZXRfZHJ2ZGF0
YShwZGV2LT5kZXYucGFyZW50KTsKPiAKPiBZb3UgY291bGQgcHJvYmFibHkgZ2V0IGF3YXkgd2l0
aCBkZXBlbmRlbmN5IG9mIHRoaXMgc3RydWN0dXJlIGFuZCB0aGUgaGVhZGVyIGl0c2VsZiBieSBk
aXJlY3RseSBnZXR0aW5nIGhvbGQgb2YgcmVnbWFwIGZyb20gcGFyZW50IGRldmljZS4KCk9rCgo+
IAo+IAo+PiArwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4+ICvCoMKg
wqAgc3RydWN0IG52bWVtX2RldmljZSAqbnZtZW07Cj4+ICvCoMKgwqAgc3RydWN0IG52bWVtX2Nv
bmZpZyAqZWNvbmZpZzsKPj4gKwo+PiArwqDCoMKgIGVjb25maWcgPSBkZXZtX2t6YWxsb2MoZGV2
LCBzaXplb2YoKmVjb25maWcpLCBHRlBfS0VSTkVMKTsKPj4gK8KgwqDCoCBpZiAoIWVjb25maWcp
Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsKPj4gKwo+PiArwqDCoMKgIGVjb25m
aWctPmRldiA9IHBkZXYtPmRldi5wYXJlbnQ7Cj4+ICvCoMKgwqAgZWNvbmZpZy0+bmFtZSA9IGRl
dl9uYW1lKHBkZXYtPmRldi5wYXJlbnQpOwo+PiArwqDCoMKgIGVjb25maWctPnN0cmlkZSA9IDE7
Cj4+ICvCoMKgwqAgZWNvbmZpZy0+d29yZF9zaXplID0gMTsKPj4gK8KgwqDCoCBlY29uZmlnLT5y
ZWdfcmVhZCA9IGtoYWRhc19tY3VfdXNlcl9tZW1fcmVhZDsKPj4gK8KgwqDCoCBlY29uZmlnLT5y
ZWdfd3JpdGUgPSBraGFkYXNfbWN1X3VzZXJfbWVtX3dyaXRlOwo+PiArwqDCoMKgIGVjb25maWct
PnNpemUgPSA1NjsKPiBkZWZpbmUgNTYgdG8gbWFrZSBpdCBtb3JlIHJlYWRhYmxlIQoKT2sKCj4g
Cj4+ICvCoMKgwqAgZWNvbmZpZy0+cHJpdiA9IGtoYWRhc19tY3U7Cj4+ICsKPj4gK8KgwqDCoCBw
bGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBraGFkYXNfbWN1KTsKPj4gKwo+PiArwqDCoMKgIG52
bWVtID0gZGV2bV9udm1lbV9yZWdpc3RlcigmcGRldi0+ZGV2LCBlY29uZmlnKTsKPj4gK8KgwqDC
oCBpZiAoSVNfRVJSKG52bWVtKSkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBQVFJfRVJSKG52
bWVtKTsKPj4gKwo+PiArwqDCoMKgIHJldHVybiBzeXNmc19jcmVhdGVfZ3JvdXAoJnBkZXYtPmRl
di5rb2JqLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAma2hhZGFzX21j
dV91c2VyX21lbV9zeXNmc19hdHRyX2dyb3VwKTsKPj4gK30KPj4gKwo+PiArc3RhdGljIGNvbnN0
IHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2VfaWQga2hhZGFzX21jdV91c2VyX21lbV9pZF90YWJsZVtd
ID0gewo+PiArwqDCoMKgIHsgLm5hbWUgPSAia2hhZGFzLW1jdS11c2VyLW1lbSIsIH0sCj4+ICvC
oMKgwqAge30sCj4+ICt9Owo+PiArTU9EVUxFX0RFVklDRV9UQUJMRShwbGF0Zm9ybSwga2hhZGFz
X21jdV91c2VyX21lbV9pZF90YWJsZSk7Cj4+ICsKPj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1f
ZHJpdmVyIGtoYWRhc19tY3VfdXNlcl9tZW1fZHJpdmVyID0gewo+PiArwqDCoMKgIC5wcm9iZSA9
IGtoYWRhc19tY3VfdXNlcl9tZW1fcHJvYmUsCj4+ICvCoMKgwqAgLmRyaXZlciA9IHsKPj4gK8Kg
wqDCoMKgwqDCoMKgIC5uYW1lID0gImtoYWRhcy1tY3UtdXNlci1tZW0iLAo+PiArwqDCoMKgIH0s
Cj4+ICvCoMKgwqAgLmlkX3RhYmxlID0ga2hhZGFzX21jdV91c2VyX21lbV9pZF90YWJsZSwKPj4g
K307Cj4+ICsKPj4gK21vZHVsZV9wbGF0Zm9ybV9kcml2ZXIoa2hhZGFzX21jdV91c2VyX21lbV9k
cml2ZXIpOwo+PiArCj4+ICtNT0RVTEVfQVVUSE9SKCJOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9u
Z0BiYXlsaWJyZS5jb20+Iik7Cj4+ICtNT0RVTEVfREVTQ1JJUFRJT04oIktoYWRhcyBNQ1UgVXNl
ciBNRU0gZHJpdmVyIik7Cj4+ICtNT0RVTEVfTElDRU5TRSgiR1BMIHYyIik7Cj4+CgpUaGFua3Mg
Zm9yIHRoZSByZXZpZXcuCgpOZWlsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
