Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BB3182431
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 22:48:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BXoIihcJUfQBYGXZbs/rhNf/cFQTHs/jn/ekqUyJwB8=; b=jLsJ+T/hYP46HYZT171sP3Zyqg
	9DTlvX70WeW70lQQ4+i38cEkupL8Sb02ioqrTTLQVdmfr1JJHtC94eBOgpzz1q+YEo+1n+vx5hJT3
	RYuRQe60Z8t957u9JRs/Q2iMju7RpnjkHjePEtAh8iUPuBTZiZfeiqiX0WxbgsN9RXDx5XpDIOoHy
	2ByxJ7F0TAnnNb8GqN7uwI2jgiJkiFR9k5Z9ZC62ObqoR0WAwYLUSHv1Gx36pKAbFUN8C6xN0fBEa
	Bxq2rBjATR6xnojiORmBl7UrRaaVy7jfyWlmTk8tU6W9xglY37sst3wRR1oRCm1Qzz1+VGPzMWqSc
	u3NuyqVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC9D7-0008AG-BO; Wed, 11 Mar 2020 21:48:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC9Cz-00089j-Sf
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 21:48:11 +0000
Received: by mail-pg1-x541.google.com with SMTP id u12so1909601pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 14:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=/4yzTeqL3PszmyK7W6UgnE4OAw4fNb5KxnvAnWLF9Vg=;
 b=M4AhPXr5MlKc8OYJsyrHI0gUkdxu/90oWkwA/c2qrAWNFS5TZ37SCfZlcsjzE1QNWS
 +tAyOIL8RNdksLHz5sUlhijjQyNHtJPOTpzRuGxqK/Y5idpxVo/qz3tn/pbSmt5xPBKY
 jESfGZmH5U3V+QfPZtjNwWGVGFN4mrnMpjgJIKr6U0j2XLQkDcntv9ahf+1zEtmxkXt6
 OhtonS04lzlxzKzgpLYyqOxXOWOJGDYGzm5va4sGH133VhuN4Dl9qwPuE0lnfgJ0JR8t
 jpjfVmM+WVfWfxEbrCi9M9ax3LVzMEV3aGXMX6CL1tsxwFhxyeoD2PX5pl8Koptn8y3W
 JC7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/4yzTeqL3PszmyK7W6UgnE4OAw4fNb5KxnvAnWLF9Vg=;
 b=SStwNLhk51peqdQ05C2yEaxTNOLnk+kEqVDgqqd4Gf2gE4nrjJco7PFAhXQv38tDQl
 bxKnhoZe5UUF/zy9TX0u0ZoDkpDqD4oxcb8raXl3Ee3hqRQvyDT+HiQciMi/5b/uYRVb
 RulnTW7VlA78a5sdq/2h6MuNp1S0vUPHOqt+EtyKoF/RgRUKyX1S7/zrDU1/cmcFX//9
 G8/d3p+MXTE4HVkXSIN/CLTVSnZQ6fCKALuWyDjoYL6eIKeZjtg+oZdJWoouYYvGc0lf
 WbzGDrJPetE8Cdkm0+MEC4QP2s+sQi6QwTi+nsK/phatyb8/zDzCjt5Z755Y+I0ltwgl
 /mew==
X-Gm-Message-State: ANhLgQ0BvYAZgzuYT+nO6hYwjOfEax0C7y0EubYxgNoJKl6dCrX2m2N8
 FZF7xfbeDpE6OTpYB6SU8pOoV1B3eug=
X-Google-Smtp-Source: ADFU+vtB2oplAl/F0VyDcqCIxLTxr0NShErSKUVlTC7nMGz9jRQT/P97N/NvxGFfQHg32ojIN7qQVA==
X-Received: by 2002:a62:4d87:: with SMTP id a129mr4720909pfb.116.1583963286798; 
 Wed, 11 Mar 2020 14:48:06 -0700 (PDT)
Received: from [192.168.1.11] (97-126-123-70.tukw.qwest.net. [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id
 g14sm13465205pfb.131.2020.03.11.14.48.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 14:48:05 -0700 (PDT)
Subject: Re: [PATCH 2/6] arm64: uaccess: Use named asm operands for __in_range
To: Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20200311180416.6509-1-richard.henderson@linaro.org>
 <20200311180416.6509-3-richard.henderson@linaro.org>
 <2de143ee-ae9c-328c-a44d-2c84ea8f087b@arm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Message-ID: <d24cfd89-2ee4-38bd-d412-68a988e15831@linaro.org>
Date: Wed, 11 Mar 2020 14:48:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <2de143ee-ae9c-328c-a44d-2c84ea8f087b@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_144809_925995_7908912C 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gMy8xMS8yMCAxMjowOCBQTSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDExLzAzLzIwMjAg
NjowNCBwbSwgUmljaGFyZCBIZW5kZXJzb24gd3JvdGU6Cj4+IFdpdGggemVybyBjaGFuZ2Ugb2Yg
YmVoYXZpb3IsIHVzZSAlW10gc3ludGF4IGZvciB0aGUgYXNtCj4+IG9wZXJhbmRzIGluc3RlYWQg
b2YgbnVtYmVyZWQgb3BlcmFuZHMuCj4gCj4gRm9yIGFueSBwYXJ0aWN1bGFyIHJlYXNvbj8KCldo
ZW4gd2UgZ2V0IHRvIHRoZSB0aGlyZCBwYXRjaCBhbmQgYWRkIENDX1NFVChsZSksIGFsbCBvZiB0
aGUgb3BlcmFuZCBudW1iZXJzCndpbGwgY2hhbmdlLCBhbmQgSSBmb3VuZCB0aGF0IG1vcmUgY29u
ZnVzaW5nIHRoYW4gbm90LgoKPiBJbgo+IHBhcnRpY3VsYXIsIHRoZSB2YWx1ZSByZXByZXNlbnRl
ZCBieSAlMCAodGhlIGNvbmNlcHR1YWwgWCcpIG5ldmVyIGNvcnJlc3BvbmRzCj4gdG8gdGhlIHZh
cmlhYmxlICJhZGRyIiwgc28gbmFtaW5nIGl0ICJhZGRyIiBwcm92aWRlcyB0aGUgb3Bwb3NpdGUg
b2YgY2xhcml0eS4KCldvdWxkIHlvdSBzaW1wbHkgcHJlZmVyIGEgZGlmZmVyZW50IG5hbWUgZm9y
IHRoZSBvcGVyYW5kPwoKCnJ+CgoKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9h
c20vdWFjY2Vzcy5oIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS91YWNjZXNzLmgKPj4gaW5kZXgg
MzJmYzgwNjFhYTc2Li5jZWIxZDc5ZWFiMDkgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvaW5j
bHVkZS9hc20vdWFjY2Vzcy5oCj4+ICsrKyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vdWFjY2Vz
cy5oCj4+IEBAIC03NSwxOSArNzUsMjEgQEAgc3RhdGljIGlubGluZSB1bnNpZ25lZCBsb25nIF9f
cmFuZ2Vfb2soY29uc3Qgdm9pZCBfX3VzZXIKPj4gKmFkZHIsIHVuc2lnbmVkIGxvbmcgc2kKPj4g
wqDCoMKgwqDCoCBhc20gdm9sYXRpbGUoCj4+IMKgwqDCoMKgwqAgLy8gQSArIEIgPD0gQyArIDEg
Zm9yIGFsbCBBLEIsQywgaW4gZm91ciBlYXN5IHN0ZXBzOgo+PiDCoMKgwqDCoMKgIC8vIDE6IFgg
PSBBICsgQjsgWCcgPSBYICUgMl42NAo+PiAtwqDCoMKgICLCoMKgwqAgYWRkc8KgwqDCoCAlMCwg
JTMsICUyXG4iCj4+ICvCoMKgwqAgIsKgwqDCoCBhZGRzwqDCoMKgICVbYWRkcl0sICVbYWRkcl0s
ICVbc2l6ZV1cbiIKPj4gwqDCoMKgwqDCoCAvLyAyOiBTZXQgQyA9IDAgaWYgWCA+IDJeNjQsIHRv
IGd1YXJhbnRlZSBYJyA+IEMgaW4gc3RlcCA0Cj4+IC3CoMKgwqAgIsKgwqDCoCBjc2VswqDCoMKg
ICUxLCB4enIsICUxLCBoaVxuIgo+PiArwqDCoMKgICLCoMKgwqAgY3NlbMKgwqDCoCAlW2xpbWl0
XSwgeHpyLCAlW2xpbWl0XSwgaGlcbiIKPj4gwqDCoMKgwqDCoCAvLyAzOiBTZXQgWCcgPSB+MCBp
ZiBYID49IDJeNjQuIEZvciBYID09IDJeNjQsIHRoaXMgZGVjcmVtZW50cyBYJwo+PiDCoMKgwqDC
oMKgIC8vwqDCoMKgIHRvIGNvbXBlbnNhdGUgZm9yIHRoZSBjYXJyeSBmbGFnIGJlaW5nIHNldCBp
biBzdGVwIDQuIEZvcgo+PiDCoMKgwqDCoMKgIC8vwqDCoMKgIFggPiAyXjY0LCBYJyBtZXJlbHkg
aGFzIHRvIHJlbWFpbiBub256ZXJvLCB3aGljaCBpdCBkb2VzLgo+PiAtwqDCoMKgICLCoMKgwqAg
Y3NpbnbCoMKgwqAgJTAsICUwLCB4enIsIGNjXG4iCj4+ICvCoMKgwqAgIsKgwqDCoCBjc2ludsKg
wqDCoCAlW2FkZHJdLCAlW2FkZHJdLCB4enIsIGNjXG4iCj4+IMKgwqDCoMKgwqAgLy8gNDogRm9y
IFggPCAyXjY0LCB0aGlzIGdpdmVzIHVzIFgnIC0gQyAtIDEgPD0gMCwgd2hlcmUgdGhlIC0xCj4+
IMKgwqDCoMKgwqAgLy/CoMKgwqAgY29tZXMgZnJvbSB0aGUgY2FycnkgaW4gYmVpbmcgY2xlYXIu
IE90aGVyd2lzZSwgd2UgYXJlCj4+IMKgwqDCoMKgwqAgLy/CoMKgwqAgdGVzdGluZyBYJyAtIEMg
PT0gMCwgc3ViamVjdCB0byB0aGUgcHJldmlvdXMgYWRqdXN0bWVudHMuCj4+IC3CoMKgwqAgIsKg
wqDCoCBzYmNzwqDCoMKgIHh6ciwgJTAsICUxXG4iCj4+IC3CoMKgwqAgIsKgwqDCoCBjc2V0wqDC
oMKgICUwLCBsc1xuIgo+PiAtwqDCoMKgIDogIj0mciIgKHJldCksICIrciIgKGxpbWl0KSA6ICJJ
ciIgKHNpemUpLCAiMCIgKGFkZHIpIDogImNjIik7Cj4+ICvCoMKgwqAgIsKgwqDCoCBzYmNzwqDC
oMKgIHh6ciwgJVthZGRyXSwgJVtsaW1pdF1cbiIKPj4gK8KgwqDCoCAiwqDCoMKgwqDCoMKgIGNz
ZXTCoMKgwqAgJVthZGRyXSwgbHNcbiIKPj4gK8KgwqDCoCA6IFthZGRyXSAiPSZyIiAocmV0KSwg
W2xpbWl0XSAiK3IiIChsaW1pdCkKPj4gK8KgwqDCoCA6IFtzaXplXSAiSXIiIChzaXplKSwgIjAi
IChhZGRyKQo+PiArwqDCoMKgIDogImNjIik7Cj4+IMKgIMKgwqDCoMKgwqAgcmV0dXJuIHJldDsK
Pj4gwqAgfQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
