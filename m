Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C3016ACA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:06:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDzlFVF2q37l+e7iQRxG1M5rxP6/y0evh7rGIYTOZ/k=; b=qwsCePYbMbb0Ho
	AebsVRM3RHIFR8L9oDwyFvKdN1O4jDfSVYk5F/18RLQwWNFD3t6FgSp2Pen82OyMGMKDDzEffwNSb
	D1mfm8VMxYGebdme5x7DvJwtTP8uPCoraTXCMEINQ8UQeD9+upSZ5SvdHEoVzoEsP7w334Y+qFXAB
	RvRZj0gwOBUNtRlGxRQzAvtdYn41judHUnQupYkZaob/rjiG8BA6ESv8V8MRaa0G7LlkCze3Ty45V
	k1ifOzf1lf0pNZqdKTon2SDN3pP7tN3c+zMjNvP4hj+BBHXEMU5gty0llR9PkSdNd2OD/4dmwKwOl
	H0pq8IdoM7k/qBZCiJ0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HBh-0008Tc-MI; Mon, 24 Feb 2020 17:06:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HBY-0008Sw-HY
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:06:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so82644wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 09:06:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FV1+URIh0vJGkDR+Y3sgl5GcK5Z91KqhxIrgPs2m0DY=;
 b=P607In2Fd4CMWizhD2Dp+XgvX5J21OTVO3M/zrdlEnePBi1j+EdqlODhZk9VNI2RxS
 yV9vgn07rxiOxdi1oeTea2Vsanjsmsg3bW82s/rvoJoG6SgI8ZEbs8lCrjcUghuJGmxZ
 V68cEH3CyvgKFafmHF+ZfQH6hLLT/74AzJbQfCkCb6pjLtkw/aw7kdY6TzdqAShE7X+c
 0JrDF8xysaCATUr3QbFX4Sgjw7bkZ0Pdd+7KA1v4/2qi8+lO84pEeNlt1IqAkMjbthoy
 3tVV1RoKkOBtY8pQkss4G2RXfEakw1sJIPbvcIrOm544+8ebLT7GRCln9WOoLR+60HOO
 l8AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FV1+URIh0vJGkDR+Y3sgl5GcK5Z91KqhxIrgPs2m0DY=;
 b=M7oCvlsMWIRh8EMO1BCLiYHo2NaPI3HbItP8ik0TjAHvlZjA9KEtsgLZI28Sdavadc
 eMN6bjpCuYnxQoibszyiVmQyEVGxMbQ2J1+WG0l9BnTD6a7mqgesFUpR78nVqMTC2LGj
 1t77Zuk5Nrb49vBHSn30XoT31kh59TxnukFAm9r+n3CDa7S61G5qwYSYO7gi8AqvxvVN
 n8EViNbueoFCHNfOPaAnxLhGFzeImcXKzJrVEBvSNfJIoHw+WO7LoUDt+H4MMkQleW3s
 EmzB1xE63/O/UN1nTPBod9P6f+gn7qu4zYpjyE1mKwiArRSQzUdEYAmKQP9qTNLf0Gif
 9avw==
X-Gm-Message-State: APjAAAVcclCo/4j62PekwpwEakOqR61zjAR2DW3AdhNS83kylRg5P1u1
 RojTup1UGHKDnJYVEKYwhg0sxA==
X-Google-Smtp-Source: APXvYqyvdVU6XrIfybjn/aVZi9uPZ1QB0thGmlars9DoePVBy4bV+vuFggKy8v0x+56p9oi82M1+1g==
X-Received: by 2002:a1c:610a:: with SMTP id v10mr50621wmb.44.1582563982624;
 Mon, 24 Feb 2020 09:06:22 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:545a:2a71:2add:41f7?
 ([2a01:e34:ed2f:f020:545a:2a71:2add:41f7])
 by smtp.googlemail.com with ESMTPSA id c77sm44829wmd.12.2020.02.24.09.06.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 09:06:21 -0800 (PST)
Subject: Re: [PATCH v2] ARM: dts: sun8i-a83t: Add thermal trip points/cooling
 maps
To: Ondrej Jirman <megous@megous.com>, linux-sunxi@googlegroups.com
References: <20200224165417.334617-1-megous@megous.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <2e4213a6-2aaf-641c-f741-9503f3ffd5fe@linaro.org>
Date: Mon, 24 Feb 2020 18:06:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200224165417.334617-1-megous@megous.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_090624_603940_EC803F53 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDIvMjAyMCAxNzo1NCwgT25kcmVqIEppcm1hbiB3cm90ZToKPiBUaGlzIGVuYWJsZXMg
cGFzc2l2ZSBjb29saW5nIGJ5IGRvd24tcmVndWxhdGluZyBDUFUgdm9sdGFnZQo+IGFuZCBmcmVx
dWVuY3kuCj4gCj4gRm9yIHRoZSB0cmlwIHBvaW50cywgSSB1c2VkIHZhbHVlcyBmcm9tIHRoZSBC
U1AgY29kZSBkaXJlY3RseS4KPiAKPiBUaGUgY3JpdGljYWwgdHJpcCBwb2ludCB2YWx1ZSBpcyAz
MMKwQyBhYm92ZSB0aGUgbWF4aW11bSByZWNvbW1lbmRlZAo+IGFtYmllbnQgdGVtcGVyYXR1cmUg
KDcwwrBDKSBmb3IgdGhlIFNvQyBmcm9tIHRoZSBkYXRhc2hlZXQsIHNvIHRoZXJlJ3MKPiBzb21l
IGhlYWRyb29tIGV2ZW4gYXQgc3VjaCBhIGhpZ2ggYW1iaWVudCB0ZW1wZXJhdHVyZS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiAtLS0KPiAg
YXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktYTgzdC5kdHNpIHwgNjAgKysrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNTQgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKPiAKPiB2MjoKPiAtIGFkZGVkIG1vcmUgZGV0YWlsIHRvIHRoZSBjb21taXQgZGVz
Y3JpcHRpb24KPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktYTgzdC5k
dHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktYTgzdC5kdHNpCj4gaW5kZXggNzRhYzdlZTkz
ODNjZi4uNTNjMmI2YTgzNmYyNyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdW44
aS1hODN0LmR0c2kKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kKPiBA
QCAtNzIsNyArNzIsNyBAQCBjcHUwOiBjcHVAMCB7Cj4gIAkJCSNjb29saW5nLWNlbGxzID0gPDI+
Owo+ICAJCX07Cj4gIAo+IC0JCWNwdUAxIHsKPiArCQljcHUxOiBjcHVAMSB7Cj4gIAkJCWNvbXBh
dGlibGUgPSAiYXJtLGNvcnRleC1hNyI7Cj4gIAkJCWRldmljZV90eXBlID0gImNwdSI7Cj4gIAkJ
CWNsb2NrcyA9IDwmY2N1IENMS19DMENQVVg+Owo+IEBAIC04Myw3ICs4Myw3IEBAIGNwdUAxIHsK
PiAgCQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gIAkJfTsKPiAgCj4gLQkJY3B1QDIgewo+ICsJ
CWNwdTI6IGNwdUAyIHsKPiAgCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE3IjsKPiAgCQkJ
ZGV2aWNlX3R5cGUgPSAiY3B1IjsKPiAgCQkJY2xvY2tzID0gPCZjY3UgQ0xLX0MwQ1BVWD47Cj4g
QEAgLTk0LDcgKzk0LDcgQEAgY3B1QDIgewo+ICAJCQkjY29vbGluZy1jZWxscyA9IDwyPjsKPiAg
CQl9Owo+ICAKPiAtCQljcHVAMyB7Cj4gKwkJY3B1MzogY3B1QDMgewo+ICAJCQljb21wYXRpYmxl
ID0gImFybSxjb3J0ZXgtYTciOwo+ICAJCQlkZXZpY2VfdHlwZSA9ICJjcHUiOwo+ICAJCQljbG9j
a3MgPSA8JmNjdSBDTEtfQzBDUFVYPjsKPiBAQCAtMTE2LDcgKzExNiw3IEBAIGNwdTEwMDogY3B1
QDEwMCB7Cj4gIAkJCSNjb29saW5nLWNlbGxzID0gPDI+Owo+ICAJCX07Cj4gIAo+IC0JCWNwdUAx
MDEgewo+ICsJCWNwdTEwMTogY3B1QDEwMSB7Cj4gIAkJCWNvbXBhdGlibGUgPSAiYXJtLGNvcnRl
eC1hNyI7Cj4gIAkJCWRldmljZV90eXBlID0gImNwdSI7Cj4gIAkJCWNsb2NrcyA9IDwmY2N1IENM
S19DMUNQVVg+Owo+IEBAIC0xMjcsNyArMTI3LDcgQEAgY3B1QDEwMSB7Cj4gIAkJCSNjb29saW5n
LWNlbGxzID0gPDI+Owo+ICAJCX07Cj4gIAo+IC0JCWNwdUAxMDIgewo+ICsJCWNwdTEwMjogY3B1
QDEwMiB7Cj4gIAkJCWNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1hNyI7Cj4gIAkJCWRldmljZV90
eXBlID0gImNwdSI7Cj4gIAkJCWNsb2NrcyA9IDwmY2N1IENMS19DMUNQVVg+Owo+IEBAIC0xMzgs
NyArMTM4LDcgQEAgY3B1QDEwMiB7Cj4gIAkJCSNjb29saW5nLWNlbGxzID0gPDI+Owo+ICAJCX07
Cj4gIAo+IC0JCWNwdUAxMDMgewo+ICsJCWNwdTEwMzogY3B1QDEwMyB7Cj4gIAkJCWNvbXBhdGli
bGUgPSAiYXJtLGNvcnRleC1hNyI7Cj4gIAkJCWRldmljZV90eXBlID0gImNwdSI7Cj4gIAkJCWNs
b2NrcyA9IDwmY2N1IENMS19DMUNQVVg+Owo+IEBAIC0xMTg4LDEyICsxMTg4LDYwIEBAIGNwdTBf
dGhlcm1hbDogY3B1MC10aGVybWFsIHsKPiAgCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDA+
Owo+ICAJCQlwb2xsaW5nLWRlbGF5ID0gPDA+Owo+ICAJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRo
cyAwPjsKPiArCj4gKwkJCXRyaXBzIHsKPiArCQkJCWNwdTBfaG90OiBjcHUtaG90IHsKPiArCQkJ
CQl0ZW1wZXJhdHVyZSA9IDw4MDAwMD47Cj4gKwkJCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsKPiAr
CQkJCQl0eXBlID0gInBhc3NpdmUiOwo+ICsJCQkJfTsKPiArCj4gKwkJCQljcHUwX3ZlcnlfaG90
OiBjcHUtdmVyeS1ob3Qgewo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDEwMDAwMD47Cj4gKwkJCQkJ
aHlzdGVyZXNpcyA9IDwwPjsKPiArCQkJCQl0eXBlID0gImNyaXRpY2FsIjsKPiArCQkJCX07Cj4g
KwkJCX07Cj4gKwo+ICsJCQljb29saW5nLW1hcHMgewo+ICsJCQkJY3B1LWhvdC1saW1pdCB7Cj4g
KwkJCQkJdHJpcCA9IDwmY3B1MF9ob3Q+Owo+ICsJCQkJCWNvb2xpbmctZGV2aWNlID0gPCZjcHUw
IFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4gKwkJCQkJCQkgPCZjcHUxIFRI
RVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4gKwkJCQkJCQkgPCZjcHUyIFRIRVJN
QUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4gKwkJCQkJCQkgPCZjcHUzIFRIRVJNQUxf
Tk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD47Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICAJCX07Cj4g
IAo+ICAJCWNwdTFfdGhlcm1hbDogY3B1MS10aGVybWFsIHsKPiAgCQkJcG9sbGluZy1kZWxheS1w
YXNzaXZlID0gPDA+OwoKTm8gcG9sbGluZyB0byBtaXRpZ2F0ZT8KCj4gIAkJCXBvbGxpbmctZGVs
YXkgPSA8MD47Cj4gIAkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdGhzIDE+Owo+ICsKPiArCQkJdHJp
cHMgewo+ICsJCQkJY3B1MV9ob3Q6IGNwdS1ob3Qgewo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDgw
MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQkJCXR5cGUgPSAicGFzc2l2
ZSI7CgpJJ20gY3VyaW91cywgY2FuIHlvdSByZWFsbHkgcmVhY2ggdGhpcyB0ZW1wZXJhdHVyZSB3
aXRoIGEgY29ydGV4LWE3CnJ1bm5pbmcgYXQgMS4yR0h6IG1heD8KCj4gKwkJCQl9Owo+ICsKPiAr
CQkJCWNwdTFfdmVyeV9ob3Q6IGNwdS12ZXJ5LWhvdCB7Cj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8
MTAwMDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDA+Owo+ICsJCQkJCXR5cGUgPSAiY3JpdGlj
YWwiOwo+ICsJCQkJfTsKPiArCQkJfTsKPiArCj4gKwkJCWNvb2xpbmctbWFwcyB7Cj4gKwkJCQlj
cHUtaG90LWxpbWl0IHsKPiArCQkJCQl0cmlwID0gPCZjcHUxX2hvdD47Cj4gKwkJCQkJY29vbGlu
Zy1kZXZpY2UgPSA8JmNwdTEwMCBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAo+
ICsJCQkJCQkJIDwmY3B1MTAxIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4g
KwkJCQkJCQkgPCZjcHUxMDIgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPiwKPiAr
CQkJCQkJCSA8JmNwdTEwMyBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+Owo+ICsJ
CQkJfTsKPiArCQkJfTsKPiAgCQl9Owo+ICAKPiAgCQlncHVfdGhlcm1hbDogZ3B1LXRoZXJtYWwg
ewo+IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3
LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNv
bS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1i
bG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
