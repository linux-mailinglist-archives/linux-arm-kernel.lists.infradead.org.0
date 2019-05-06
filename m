Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3E4147C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kz0JpZERggdBYl/AD96pEg6ENUrsJJ5w+MAWW+0fMm4=; b=cQDWHQUGwbK0Jn
	AFjab+t6gk/qziVraXlefT0QgUOEFoIdWB6blZz1oTNWOqSpP63rX1Y5KPFNGkIhQmDk7Z4qCPHu9
	ApHNP1sclX2gfrWS0WCmtOkoSjzALL+0lj+4sZlaGW0s5E8i3vQV7IlaAtU6l16FSf/r3wojyTmTp
	UZN+FZTiZk023M5F2bCE1Z9jWo//Y31HQkTrScYzI1rZksMgjgPLrqRwWDlbz38m4MBz6zO7i+qBc
	zE+Vcyt/RMIJ1jOuU/4uCkUjgmMyLaBNoLkXzUb4iaOKJeZvIy+m6O8DaRtfgAIt8gHkyQLoJYZ2c
	R1CeoZULHXoyUbtPRY1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNa9T-0005RP-He; Mon, 06 May 2019 09:43:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNa9J-0005QF-22
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:43:07 +0000
Received: by mail-wr1-x443.google.com with SMTP id e11so3314906wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 02:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=oBRW4mzs2+gSuRgFKtSlAc3IAdXzqU5G7UW4zze+fv0=;
 b=HEXOulifYSD9r6cpc+favVP51KND98+0UEUwidmOZ+pPyUdRR5WR3JUzUuNSX2pxIF
 T/4MnQbM7IHWrbQVqbXyzeEWQWGuf3EgNQOiQp/8Hhvp87nNMZBMdlV3CVOrD3DaAn6J
 ZdKkCGrKwiobSJZASqPNEgw9E5TFxcOHKf66XxLgdMHFQYwNe8iDCqox9IVWvZoNcB3R
 FN2m2fG3G0pbWqFeWwBLoz1aFFCi45zvEnREThevLqPoiMMy5GOyH3B7zHm8YY1gtEn5
 Ry2lclt2WVw6oBz33J9/YxM6oK8O/HlZ7HC/kNFgEoBuDij+/bD2XuaJ0yzc006uQg8S
 zdIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oBRW4mzs2+gSuRgFKtSlAc3IAdXzqU5G7UW4zze+fv0=;
 b=WZhwDZ2dFmtNKlGlttHgse/YvukqM+JoanE1rMS0oZ6wJb5uBVD7c7wtrGUp/r4sdk
 pc82//Ol2riExXcL2YWjFSK/lCj4ujH2wEz9xaOVfNzixR8vefuIQuAG5LwQUl/ocg+n
 WFP8PMyQZPAsS/8R+tMKsbXXtCiuAGU4zJ9MXTsF06ol0vb8npSuvxZfUuNlYcJ8sT40
 6fKHPy7z57FLRWGViIk3ock0KNockrpnaj1U45BFf1a46nMOnJ4H/Ta/4UT6tF94CLDm
 FJE9AebuxV6nx4zJZVaNGyYJYvxeJU8S3iyknjciPdOWD42YVrOG3cvxaEIKL/i3sk8r
 kb9Q==
X-Gm-Message-State: APjAAAVe3LHWhoKB90EwwoJKPxpR1WVF2jarhXqR3PLQ2O7I3g5BgKiu
 tKSIZxUZmp10lmPUnW0YFeaO9g==
X-Google-Smtp-Source: APXvYqzERXrD9dfIppanGsG4vczgC5yAuidlgdRE0rB9x9uiRwmebaGhxtIZTRMTsNGX8g/83N2t8g==
X-Received: by 2002:a5d:52c6:: with SMTP id r6mr18035560wrv.131.1557135782760; 
 Mon, 06 May 2019 02:43:02 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id g5sm10623857wrh.44.2019.05.06.02.43.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 02:43:02 -0700 (PDT)
Subject: Re: [PATCH 1/8] arm64: dts: mt8183: add thermal zone node
To: "michael.kao" <michael.kao@mediatek.com>, fan.chen@mediatek.com,
 jamesjj.liao@mediatek.com, dawei.chien@mediatek.com, louis.yu@mediatek.com,
 roger.lu@mediatek.com, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-2-git-send-email-michael.kao@mediatek.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <8e0fad21-57d1-923c-fd8b-f5f2c47a5c94@linaro.org>
Date: Mon, 6 May 2019 11:43:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556793795-25204-2-git-send-email-michael.kao@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_024305_207383_028EFD82 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDIvMDUvMjAxOSAxMjo0MywgbWljaGFlbC5rYW8gd3JvdGU6Cj4gQWRkIHRoZXJtYWwgem9u
ZSBub2RlIHRvIE1lZGlhdGVrIE1UODE4MyBkdHMgZmlsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBN
aWNoYWVsIEthbyA8bWljaGFlbC5rYW9AbWVkaWF0ZWsuY29tPgo+IC0tLQoKSGkgTWljaGFlbCwK
CnRoZSBkZXZpY2UgdHJlZSBiaW5kaW5nIGZvciB0aGVybWFsIHNwZWNpZmllcyB0aGUgdGhlcm1h
bCB6b25lIG11c3QKZGVmaW5lIGEgY29vbGluZy1tYXBzIChpdCBpcyBhIHJlcXVpcmVkIGZpZWxk
KS4KCkFsbCB0aGUgdGhlcm1hbCB6b25lcyBiZWxvdyB0enRzMSwgdHp0czIsIGV0YyAuLi4gZG8g
bm90IGhhdmUgaXQuCgoKPiAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMuZHRz
aSB8IDY0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA2NCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
bWVkaWF0ZWsvbXQ4MTgzLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4
My5kdHNpCj4gaW5kZXggOTI2ZGY3NS4uYjkyMTE2ZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9tZWRpYXRlay9tdDgxODMuZHRzaQo+IEBAIC0zMzQsNiArMzM0LDY3IEBACj4gIAkJCXN0YXR1
cyA9ICJkaXNhYmxlZCI7Cj4gIAkJfTsKPiAgCj4gKwkJdGhlcm1hbDogdGhlcm1hbEAxMTAwYjAw
MCB7Cj4gKwkJCSN0aGVybWFsLXNlbnNvci1jZWxscyA9IDwxPjsKPiArCQkJY29tcGF0aWJsZSA9
ICJtZWRpYXRlayxtdDgxODMtdGhlcm1hbCI7Cj4gKwkJCXJlZyA9IDwwIDB4MTEwMGIwMDAgMCAw
eDEwMDA+Owo+ICsJCQlpbnRlcnJ1cHRzID0gPDAgNzYgSVJRX1RZUEVfTEVWRUxfTE9XPjsKPiAr
CQkJY2xvY2tzID0gPCZpbmZyYWNmZyBDTEtfSU5GUkFfVEhFUk0+LAo+ICsJCQkJIDwmaW5mcmFj
ZmcgQ0xLX0lORlJBX0FVWEFEQz47Cj4gKwkJCWNsb2NrLW5hbWVzID0gInRoZXJtIiwgImF1eGFk
YyI7Cj4gKwkJCXJlc2V0cyA9IDwmaW5mcmFjZmcgIE1UODE4M19JTkZSQUNGR19BT19USEVSTV9T
V19SU1Q+Owo+ICsJCQltZWRpYXRlayxhdXhhZGMgPSA8JmF1eGFkYz47Cj4gKwkJCW1lZGlhdGVr
LGFwbWl4ZWRzeXMgPSA8JmFwbWl4ZWRzeXM+Owo+ICsJCQltZWRpYXRlayxody1yZXNldC10ZW1w
ID0gPDExNzAwMD47Cj4gKwkJCW52bWVtLWNlbGxzID0gPCZ0aGVybWFsX2NhbGlicmF0aW9uPjsK
PiArCQkJbnZtZW0tY2VsbC1uYW1lcyA9ICJjYWxpYnJhdGlvbi1kYXRhIjsKPiArCQl9Owo+ICsK
PiArCQl0aGVybWFsLXpvbmVzIHsKPiArCQkJY3B1X3RoZXJtYWw6IGNwdV90aGVybWFsIHsKPiAr
CQkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDAwPjsKPiArCQkJCXBvbGxpbmctZGVsYXkg
PSA8MTAwMD47Cj4gKwo+ICsJCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0aGVybWFsIDA+Owo+ICsJ
CQkJc3VzdGFpbmFibGUtcG93ZXIgPSA8MTUwMD47Cj4gKwkJCX07Cj4gKwo+ICsJCQl0enRzMTog
dHp0czEgewo+ICsJCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDEwMDA+Owo+ICsJCQkJcG9s
bGluZy1kZWxheSA9IDwxMDAwPjsKPiArCQkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdGhlcm1hbCAx
PjsKPiArCQkJfTsKPiArCj4gKwkJCXR6dHMyOiB0enRzMiB7Cj4gKwkJCQlwb2xsaW5nLWRlbGF5
LXBhc3NpdmUgPSA8MTAwMD47Cj4gKwkJCQlwb2xsaW5nLWRlbGF5ID0gPDEwMDA+Owo+ICsJCQkJ
dGhlcm1hbC1zZW5zb3JzID0gPCZ0aGVybWFsIDI+Owo+ICsJCQl9Owo+ICsKPiArCQkJdHp0czM6
IHR6dHMzIHsKPiArCQkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDAwPjsKPiArCQkJCXBv
bGxpbmctZGVsYXkgPSA8MTAwMD47Cj4gKwkJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRoZXJtYWwg
Mz47Cj4gKwkJCX07Cj4gKwo+ICsJCQl0enRzNDogdHp0czQgewo+ICsJCQkJcG9sbGluZy1kZWxh
eS1wYXNzaXZlID0gPDEwMDA+Owo+ICsJCQkJcG9sbGluZy1kZWxheSA9IDwxMDAwPjsKPiArCQkJ
CXRoZXJtYWwtc2Vuc29ycyA9IDwmdGhlcm1hbCA0PjsKPiArCQkJfTsKPiArCj4gKwkJCXR6dHM1
OiB0enRzNSB7Cj4gKwkJCQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MTAwMD47Cj4gKwkJCQlw
b2xsaW5nLWRlbGF5ID0gPDEwMDA+Owo+ICsJCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0aGVybWFs
IDU+Owo+ICsJCQl9Owo+ICsKPiArCQkJdHp0c0FCQjogdHp0c0FCQiB7Cj4gKwkJCQlwb2xsaW5n
LWRlbGF5LXBhc3NpdmUgPSA8MTAwMD47Cj4gKwkJCQlwb2xsaW5nLWRlbGF5ID0gPDEwMDA+Owo+
ICsJCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0aGVybWFsIDY+Owo+ICsJCQl9Owo+ICsJCX07Cj4g
IAkJYXVkaW9zeXM6IHN5c2NvbkAxMTIyMDAwMCB7Cj4gIAkJCWNvbXBhdGlibGUgPSAibWVkaWF0
ZWssbXQ4MTgzLWF1ZGlvc3lzIiwgInN5c2NvbiI7Cj4gIAkJCXJlZyA9IDwwIDB4MTEyMjAwMDAg
MCAweDEwMDA+Owo+IEBAIC0zNjgsNiArNDI5LDkgQEAKPiAgCQkJY29tcGF0aWJsZSA9ICJtZWRp
YXRlayxtdDgxODMtZWZ1c2UiLAo+ICAJCQkJICAgICAibWVkaWF0ZWssZWZ1c2UiOwo+ICAJCQly
ZWcgPSA8MCAweDExZjEwMDAwIDAgMHgxMDAwPjsKPiArCQkJdGhlcm1hbF9jYWxpYnJhdGlvbjog
Y2FsaWJAMTgwIHsKPiArCQkJCXJlZyA9IDwweDE4MCAweGM+Owo+ICsJCQl9Owo+ICAJCX07Cj4g
IAo+ICAJCW1mZ2NmZzogc3lzY29uQDEzMDAwMDAwIHsKPiAKCgotLSAKIDxodHRwOi8vd3d3Lmxp
bmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNv
Q3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJv
PiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwK
PGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
