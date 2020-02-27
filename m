Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB25C1713C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 10:09:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7O0EAER+B0kIgpuHqx17WvMtMLfygtSTGFd8gk/GJw4=; b=IJ/kv00rbXfSAg
	7h1N1akwnP6C758dsyz3sglextmaLBQkrK2vBe++U1GLQEgf7eje2JzUMlLm7BYsSbRHjQ2UiWlfG
	U68NlZU+wvTLAIcrX5y2FmwFsI+PMC601ix0rLIxkADV7dv8SpSD+CAT4jkjcj0MItANJ9QrZ/JQp
	z9HiLz/UNkt5LiKPpI0jPajVO6vW+h+7T+PqOpYcAvfd6csZg3Qs4hpd1TKQkcBBYMvzZVxYe4S4q
	hgw960Ta14Ed/t6aivOGGMFyp7BthuLo206EFgl0A99h/ejr7/NYsRG6+TdtkXjfkH206e0zrcPJU
	ChSm8NFrCHWqzKxFGduQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7FAy-0007Al-Hb; Thu, 27 Feb 2020 09:09:48 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7FAk-000790-Qm
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 09:09:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id q9so2567286wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 01:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9d5XsXCVGpg6qu/wTS2MkCO23Bkow9gwYLOhiOzvq0w=;
 b=ZCYFGPMdIMqWIIqKs905YzODTI7e6WtmXFtj99H8vljntHp3TbOeemaufNUxrCcxqR
 zeFq2wtOG1pRKgM6YEQb+srVxhh0gm8fUFAV4I5FKv8Pd8PpvlXKfUuH5hnzgJ2lG5V/
 FbvYQaNnOgVGBMQTByNKHvWLJgm1E2FZn0FcBYpJ6pGwmjnaYNRnTs5CUr6SNm6qZ7Fl
 e4xGl0NHpJj1geTjnEok9GQB+Cdbai1/jhX9J6L9AHnpjG3EvkL8j4xldGHV/YpWKqpq
 IX/rOP0pJDNhIKu3tGx0Hlk1f1eoTmdHaAnh8Or+NRLkufWLDxQHh1aIXiLVTzzURIc1
 BHXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=9d5XsXCVGpg6qu/wTS2MkCO23Bkow9gwYLOhiOzvq0w=;
 b=jYrOCj6CJ46Sqh7OUtKX/256m7jOT0YfhiDOaSJv7JJOwA/ikjlzKYVKrTgogfTNFG
 6xyMG3rwCiugbBZLxVXMgKhR3z81uuChmLVz49vfBNZuywLxGTIl+miu2ScXTCxsCrBo
 1QAgth7k+t19WJvww1YmNgLBWinGvqCR9tL04jAIs9QURzZI8ufZ5Xee9m2h3fkLhshK
 HrvLph0qj/iCa4zy3BdKf4yeq7dIktNRl5J5c0T2B3de4ysU806YoNAwP2ns5b+65CJB
 T7X7pkWnTzHZsLm70Ro4gRe54QuHyn3qaZxMWlm3xXrAuiZ3bGsNuZkgDwmGI46wgSuE
 y6OA==
X-Gm-Message-State: APjAAAXTbf+4n/guLZrtXSagW7tz6Y9G37ZglhwXaTJT9PqijMh1x99i
 uR+OF6Q093IJLNZDPq83UCToRg==
X-Google-Smtp-Source: APXvYqyizxMVKRa7iARTRCj9b9lQhnQiE423uIKYcNYgEbblwSjNt1oaqNF93lYCZsnbn2KPApPsOw==
X-Received: by 2002:a7b:c5da:: with SMTP id n26mr3881431wmk.138.1582794571401; 
 Thu, 27 Feb 2020 01:09:31 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:d916:1723:c1c1:22d?
 ([2a01:e34:ed2f:f020:d916:1723:c1c1:22d])
 by smtp.googlemail.com with ESMTPSA id b18sm7076628wru.50.2020.02.27.01.09.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Feb 2020 01:09:30 -0800 (PST)
Subject: Re: [PATCH V16 1/5] dt-bindings: fsl: scu: add thermal binding
To: Anson Huang <Anson.Huang@nxp.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, rui.zhang@intel.com, amit.kucheria@verdurent.com,
 aisheng.dong@nxp.com, linux@roeck-us.net, srinivas.kandagatla@linaro.org,
 krzk@kernel.org, fugang.duan@nxp.com, peng.fan@nxp.com,
 daniel.baluta@nxp.com, bjorn.andersson@linaro.org, olof@lixom.net,
 dinguyen@kernel.org, leonard.crestez@nxp.com, marcin.juszkiewicz@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
References: <1582330132-13461-1-git-send-email-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <41da5dc1-9d46-da71-4893-5c23e6e3d96a@linaro.org>
Date: Thu, 27 Feb 2020 10:09:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1582330132-13461-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_010934_903108_8615D06D 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIvMDIvMjAyMCAwMTowOCwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gTlhQIGkuTVg4UVhQIGlz
IGFuIEFSTXY4IFNvQyB3aXRoIGEgQ29ydGV4LU00IGNvcmUgaW5zaWRlIGFzCj4gc3lzdGVtIGNv
bnRyb2xsZXIsIHRoZSBzeXN0ZW0gY29udHJvbGxlciBpcyBpbiBjaGFyZ2Ugb2Ygc3lzdGVtCj4g
cG93ZXIsIGNsb2NrIGFuZCB0aGVybWFsIHNlbnNvcnMgZXRjLiBtYW5hZ2VtZW50LCBMaW51eCBr
ZXJuZWwKPiBoYXMgdG8gY29tbXVuaWNhdGUgd2l0aCBzeXN0ZW0gY29udHJvbGxlciB2aWEgTVUg
KG1lc3NhZ2UgdW5pdCkKPiBJUEMgdG8gZ2V0IHRlbXBlcmF0dXJlIGZyb20gdGhlcm1hbCBzZW5z
b3JzLCB0aGlzIHBhdGNoIGFkZHMKPiBiaW5kaW5nIGRvYyBmb3IgaS5NWCBzeXN0ZW0gY29udHJv
bGxlciB0aGVybWFsIGRyaXZlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbnNvbiBIdWFuZyA8QW5z
b24uSHVhbmdAbnhwLmNvbT4KPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KPiBSZXZpZXdlZC1ieTogRG9uZyBBaXNoZW5nIDxhaXNoZW5nLmRvbmdAbnhwLmNvbT4K
CkknbGwgd2lsbCB0YWtlIHBhdGNoZXMgMSwgMiBhbmQgMwoKVGhhbmtzIQoKICAtLSBEYW5pZWwK
Cj4gLS0tCj4gTm8gY2hhbmdlLgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
ZnJlZXNjYWxlL2ZzbCxzY3UudHh0ICAgICAgICB8IDE2ICsrKysrKysrKysrKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mcmVlc2NhbGUvZnNsLHNjdS50eHQgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZyZWVzY2FsZS9mc2wsc2N1LnR4dAo+
IGluZGV4IGUwNzczNWE4Li43ZjQyY2MzIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vZnJlZXNjYWxlL2ZzbCxzY3UudHh0Cj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mcmVlc2NhbGUvZnNsLHNjdS50eHQKPiBA
QCAtMTY2LDYgKzE2NiwxNyBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ICAgICAgICAgICAgICAg
IGZvbGxvd2VkIGJ5ICJmc2wsaW14LXNjLWtleSI7Cj4gIC0gbGludXgsa2V5Y29kZXM6IFNlZSBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW5wdXQva2V5cy50eHQKPiAgCj4gK1Ro
ZXJtYWwgYmluZGluZ3MgYmFzZWQgb24gU0NVIE1lc3NhZ2UgUHJvdG9jb2wKPiArLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gKwo+
ICtSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ICstIGNvbXBhdGlibGU6CQkJU2hvdWxkIGJlIDoKPiAr
CQkJCSAgImZzbCxpbXg4cXhwLXNjLXRoZXJtYWwiCj4gKwkJCQlmb2xsb3dlZCBieSAiZnNsLGlt
eC1zYy10aGVybWFsIjsKPiArCj4gKy0gI3RoZXJtYWwtc2Vuc29yLWNlbGxzOglTZWUgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvdGhlcm1hbC50eHQKPiArCQkJCWZv
ciBhIGRlc2NyaXB0aW9uLgo+ICsKPiAgRXhhbXBsZSAoaW14OHF4cCk6Cj4gIC0tLS0tLS0tLS0t
LS0KPiAgYWxpYXNlcyB7Cj4gQEAgLTIzOCw2ICsyNDksMTEgQEAgZmlybXdhcmUgewo+ICAJCQlj
b21wYXRpYmxlID0gImZzbCxpbXg4cXhwLXNjLXdkdCIsICJmc2wsaW14LXNjLXdkdCI7Cj4gIAkJ
CXRpbWVvdXQtc2VjID0gPDYwPjsKPiAgCQl9Owo+ICsKPiArCQl0c2VuczogdGhlcm1hbC1zZW5z
b3Igewo+ICsJCQljb21wYXRpYmxlID0gImZzbCxpbXg4cXhwLXNjLXRoZXJtYWwiLCAiZnNsLGlt
eC1zYy10aGVybWFsIjsKPiArCQkJI3RoZXJtYWwtc2Vuc29yLWNlbGxzID0gPDE+Owo+ICsJCX07
Cj4gIAl9Owo+ICB9Owo+ICAKPiAKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5h
cm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5h
cm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8Cjxo
dHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGlu
YXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
