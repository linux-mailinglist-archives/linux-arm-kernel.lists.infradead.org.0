Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B70E1362F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 23:01:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usd9dWJ2u15HoTpZmpzQp6vglWkfMyxMWUJi9TbKkuQ=; b=H0qiCGDgrvX3zq
	xTjAsWKVYFfy0coYFiTNBBC6pM6rgp9cQ0wyErBwlS2BWJOmozZmM6H5FplQ3jtE7YgeDhSkdw9YN
	AeLCsJqumJ+Rud6ufKON1RGnuVJDs6TJXcOA0Gc5Z1Vk/xJ6i+1Mav4JRrZB389D7/TOzCJFgoHzp
	s9OTq1azfiVr3670rXu0TJyvP/EBJvGOIUYcok0ZdTWTRxaNMYqJb0mETHkMUDu7oxc42H1KM10to
	nrhr5t4Bl9CBCcj0sVdaVLe4MrAflPVOicap2v7vmqaQAnwkXwFaDAWpf+1Ql0lp3fiD2G1d0i0Kf
	zEqHihNoZOkmnr1Z3gvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipfrh-0006Yj-FC; Thu, 09 Jan 2020 22:01:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipfrY-0006Xy-RU
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 22:01:10 +0000
Received: by mail-wr1-x442.google.com with SMTP id q6so9038194wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 14:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HYhKED7gjIosye2MaUk+v+lXpfi1rPRPPZ4smJ2ypTU=;
 b=UDwX8cAJYL+gbMbRi+eYQTD74y3UGftX4eqKEV52Z4bj1Sz9EehagSoE0r5zOnrs5P
 VvZ+p6507DSKzhz6GtdZj1RsPtI+oFSWydKcr8LVbGpw6IXqe7GpzrDSHdajyHGUygwS
 bgrV3ZBbTGfCeygvB9zRjRGVAuyL5nDHJTN2C6bvXUwpcuON6zZejkG5DtRy5LM/USBV
 b0NGHEStwWu3c1naep+9mYxDl9xrRFenqigWSoljCH8B0h8CIIKvstjeS8g3dXk2TtLA
 oDGiBY4CaAWQ1mlFR0nt4Zb4v0J4gxUIWzi1vYaoBd6hP7dlO2h+8yBAtuu2kpWXmajj
 hODw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HYhKED7gjIosye2MaUk+v+lXpfi1rPRPPZ4smJ2ypTU=;
 b=DG8G6gE26M2InLaX+SKhMC8k+f5Q445gn17918xOOP7i1LvCqK6IwjbibRocMwUOae
 8wjXxBea41UbgxvVMR81u8Qvy75QEC5QVtG71Zurpcf/Zh6Vo6X+DwXA14ayptpV9SMM
 qPOlOZJbr83TXBpDGFGZjP6x+FRlSJFqLnFPSL/uZFUURYkluUWjNK4mQXY0Cn+1M+AF
 Z1r75h8PpJI6iBQoQjcU/JMNFJCS/bnfFmu5AqOHFR4wU4EcAH3qew3Pp/ippJd/F5hO
 R/IVAiKr1cr2Z9WqxUqzBvCoDUAuXbX3OIvKqzHYEAVQ80NAb4HlxDxbxRVQOsSA7RTz
 17RQ==
X-Gm-Message-State: APjAAAUQPIX7FlddQ0q/yrynOGYwKcU1VmTWoQyBpWuFMgndeBroinGA
 XyOCSz7TZSFwEuV5dGKJfhBQ9A==
X-Google-Smtp-Source: APXvYqz5cERRuNL66+5/ZLcyck68yNOEs4dBfNIkA+OLlLoihHzNBE8eDy/JQRecYEfCFF5YO0aocA==
X-Received: by 2002:a5d:5267:: with SMTP id l7mr13975362wrc.84.1578607265516; 
 Thu, 09 Jan 2020 14:01:05 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:f1d5:61e0:e9d8:1c3d?
 ([2a01:e34:ed2f:f020:f1d5:61e0:e9d8:1c3d])
 by smtp.googlemail.com with ESMTPSA id x16sm4254202wmk.35.2020.01.09.14.01.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 14:01:04 -0800 (PST)
Subject: Re: [PATCH V3 1/4] dt-bindings: Add Broadcom AVS RO thermal
To: Stefan Wahren <wahrenst@gmx.net>, Zhang Rui <rui.zhang@intel.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <1578420957-32229-1-git-send-email-wahrenst@gmx.net>
 <1578420957-32229-2-git-send-email-wahrenst@gmx.net>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <f0e475fc-c155-7f03-5069-aa769b37b38d@linaro.org>
Date: Thu, 9 Jan 2020 23:01:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1578420957-32229-2-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_140108_889745_321A4EFB 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDcvMDEvMjAyMCAxOToxNSwgU3RlZmFuIFdhaHJlbiB3cm90ZToKPiBTaW5jZSB0aGUgQkNN
MjcxMSBkb2Vzbid0IGhhdmUgYSBBVlMgVE1PTiBibG9jaywgdGhlIHRoZXJtYWwgaW5mb3JtYXRp
b24KPiBtdXN0IGJlIHJldHJpZXZlZCBmcm9tIHRoZSBBVlMgcmluZyBvc2NpbGxhdG9yIGJsb2Nr
LiBUaGlzIGJsb2NrIGlzIHBhcnQKPiBvZiB0aGUgQVZTIG1vbml0b3Igd2hpY2ggY29udGFpbnMg
YSBidW5jaCBvZiByYXcgc2Vuc29ycy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTdGVmYW4gV2FocmVu
IDx3YWhyZW5zdEBnbXgubmV0Pgo+IFJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPgo+IFJldmlld2VkLWJ5OiBOaWNvbGFzIFNhZW56IEp1bGllbm5lIDxuc2FlbnpqdWxp
ZW5uZUBzdXNlLmRlPgo+ID0yRC0tCgpUaGVyZSBhcmUgc3B1cmlvdXMgY2hhcmFjdGVycyBpbiB0
aGUgcGF0Y2guCgo+ICAuLi4vYmluZGluZ3MvdGhlcm1hbC9icmNtLGF2cy1yby10aGVybWFsLnlh
bWwgICAgICB8IDQ1ICsrKysrKysrKysrKysrKysrPQo+ICsrKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA0NSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9icmNtLGF2cy1yby09Cj4gdGhlcm1hbC55YW1sCj4g
Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFs
L2JyY20sYXZzLXJvLXRoZXJtYWw9Cj4gLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdGhlcm1hbC9icmNtLGF2cy1yby10aGVybWFsLnlhbWwKPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+IGluZGV4IDAwMDAwMDAuLjk4ZTdiNTcKPiA9MkQtLSAvZGV2L251bGwKPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9icmNtLGF2cy1yby10
aGVybWFsLnlhbWwKPiBAQCAtMCwwICsxLDQ1IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ICslWUFNTCAxLjIKPiArLS0tCj4g
KyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvdGhlcm1hbC9icmNtLGF2cy1yby10
aGVybWFsLnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVt
YXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IEJyb2FkY29tIEFWUyByaW5nIG9zY2lsbGF0b3Ig
dGhlcm1hbAo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAgLSBTdGVmYW4gV2FocmVuIDx3YWhyZW5z
dEBnbXgubmV0Pgo+ICsKPiArZGVzY3JpcHRpb246IHwrCj4gKyAgVGhlIHRoZXJtYWwgbm9kZSBz
aG91bGQgYmUgdGhlIGNoaWxkIG9mIGEgc3lzY29uIG5vZGUgd2l0aCB0aGUKPiArICByZXF1aXJl
ZCBwcm9wZXJ0eToKPiArCj4gKyAgLSBjb21wYXRpYmxlOiBTaG91bGQgYmUgb25lIG9mIHRoZSBm
b2xsb3dpbmc6Cj4gKyAgICAgICAgICAgICAgICAiYnJjbSxiY20yNzExLWF2cy1tb25pdG9yIiwg
InN5c2NvbiIsICJzaW1wbGUtbWZkIgo+ICsKPiArICBSZWZlciB0byB0aGUgdGhlIGJpbmRpbmdz
IGRlc2NyaWJlZCBpbgo+ICsgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQv
c3lzY29uLnR4dAo+ICsKPiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgY29u
c3Q6IGJyY20sYmNtMjcxMS10aGVybWFsCj4gKwo+ICsgIHJlZzoKPiArICAgIG1heEl0ZW1zOiAx
Cj4gKwo+ICtyZXF1aXJlZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsKPiArZXhh
bXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICAgICAgYXZzLW1vbml0b3JAN2Q1ZDIwMDAgewo+ICsgICAg
ICAgICAgICAgICAgY29tcGF0aWJsZSA9M0QgImJyY20sYmNtMjcxMS1hdnMtbW9uaXRvciIsCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInN5c2NvbiIsICJzaW1wbGUtbWZkIjsKPiAr
ICAgICAgICAgICAgICAgIHJlZyA9M0QgPDB4N2Q1ZDIwMDAgMHhmMDA+Owo+ICsKPiArICAgICAg
ICAgICAgICAgIHRoZXJtYWw6IHRoZXJtYWwgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICBj
b21wYXRpYmxlID0zRCAiYnJjbSxiY20yNzExLXRoZXJtYWwiOwo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAjdGhlcm1hbC1zZW5zb3ItY2VsbHMgPTNEIDwwPjsKPiArICAgICAgICAgICAgICAg
IH07Cj4gKyAgICAgICAgfTsKPiArLi4uCj4gPTJELQo+IDIuNy40Cj4gCgoKLS0gCiA8aHR0cDov
L3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9y
IEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2Vz
L0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdp
dHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
