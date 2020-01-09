Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1C8135809
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:32:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2977r0tzXQuoPBFnG4wDP3P7cYS66w0KWaMERt162KA=; b=CN8NpWnqTLaBeC
	H8ZSzSjQT5FJb6Xr1It4VdJx5A5GuqQlyQ04I+8q9Hkm5EfOBzyhDRMyBD7Xcqzh7tL6c2sTx/Zwy
	5gJlsrsGK6w4Np0hucrKrJv1tW448fyay5/Ph6vqm1n6LdpKypMeavHR2iNFi6ABbvY4iXhY6vLxh
	xWAoExSJT2X3EqJsVyCqbMLy17/rK8g95J81S1C8VFPYSCSlb6HODgvKDFrqrr5qZMeLRFWzekqOU
	b5RmHDSszE/QXe0HsU3qrbFxJKEXc8/sYB9D/JBWGKni1neiRBe2u0EqeC2Lr4GZqppmEsYf2yYVg
	etFyP3tbEbTAoh4J2zNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipW2g-0007bb-SL; Thu, 09 Jan 2020 11:31:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipW2S-0007Zd-39
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:31:46 +0000
Received: by mail-wm1-x341.google.com with SMTP id w5so1832021wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 03:31:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OOxWvQMLp4ZsWkTKSAbMncAsJ5cLIJsRh2QXIRd9sbw=;
 b=stC15YtXpa19hc/XU1EULn5dJxJHw29cNAi9MbvUSkQwZ2LxgxfvK617m/N+9IF/y8
 nxqKt+qehHAMFBf20Y74TjSrDbWaD+3xYdidSNl/bNTQItPGO4HPKDP3eQRoodS7ZnEl
 7RonP001QbmQke4qqTjUbznUDF5Th23P7sJVL0woYjgatpjdRAyNx0kVRxFfMvD6j7t4
 ugUiKskztwwi4akdectS8v4McBdxXg/z8s9rWNXy+QfcIfx38v0vkAxCgURhdbE1XyMF
 pDqMJCCZFE8+3J9F3vvk4DQczsNtlrOdPlTWd0B3CUF0L2LqZogRvUrZRRjRFetkPkLE
 wN1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=OOxWvQMLp4ZsWkTKSAbMncAsJ5cLIJsRh2QXIRd9sbw=;
 b=oH5tmIeETLOPB5ANF9VuG1yGgTxccPS5IOoXF0vZNzXnYY8ov5BuQ7K1syMna/Yq69
 4T55h4G24QPIZHbg8xUHSQoeYqUy0PdCtNnYOZXTk/LiJWU9viGNLu6qPWYBbaaf6CcV
 nKlIG8YGyeZTG77Mf5AJYpt16sOjFdPZnw3MCsdql5r59/wI0dzI7sQaJLv4oAiI0aZx
 GL6xuyhxBQyTEoXp2rYbetkdLFK9MsCcCDr08hYaVpbhgIcNvLdiTo80UuwOdXMgY0/z
 f7+aQxRZLW0OxMGlTf0bnvFGpq9q01ivPE01eseqjTxZaNO7ckOrS27Jr7mKcAIphfOR
 Fz0g==
X-Gm-Message-State: APjAAAViKNl9eJU4LPjmRo+o6q/eZSwQmSoWUBavUGwzYKEG7wAb3O8w
 pu6+PR7M4VI1r4XF8rpvTlOtqA==
X-Google-Smtp-Source: APXvYqw7k0jKzu0T1tLI+IVHX318TWsNdPPilv6KUY1LTD4g4cHjebf2/7Y9dJuKMk7JNsz45Vp1NA==
X-Received: by 2002:a1c:44d5:: with SMTP id r204mr4465543wma.122.1578569501802; 
 Thu, 09 Jan 2020 03:31:41 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:f1d5:61e0:e9d8:1c3d?
 ([2a01:e34:ed2f:f020:f1d5:61e0:e9d8:1c3d])
 by smtp.googlemail.com with ESMTPSA id z123sm2660179wme.18.2020.01.09.03.31.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 03:31:41 -0800 (PST)
Subject: Re: [PATCH v3,1/8] arm64: dts: mt8183: add thermal zone node
To: Michael Kao <michael.kao@mediatek.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, hsinyi@chromium.org,
 linux-pm@vger.kernel.org, srv_heupstream@mediatek.com
References: <20200103064407.19861-1-michael.kao@mediatek.com>
 <20200103064407.19861-2-michael.kao@mediatek.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <00c8be46-3ba1-571a-0230-7c722ce1901e@linaro.org>
Date: Thu, 9 Jan 2020 12:31:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200103064407.19861-2-michael.kao@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_033144_139545_94E3BB21 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDMvMDEvMjAyMCAwNzo0NCwgTWljaGFlbCBLYW8gd3JvdGU6Cj4gRnJvbTogIm1pY2hhZWwu
a2FvIiA8bWljaGFlbC5rYW9AbWVkaWF0ZWsuY29tPgo+IAo+IEFkZCB0aGVybWFsIHpvbmUgbm9k
ZSB0byBNZWRpYXRlayBNVDgxODMgZHRzIGZpbGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFl
bCBLYW8gPG1pY2hhZWwua2FvQG1lZGlhdGVrLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290
L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzaSB8IDg1ICsrKysrKysrKysrKysrKysrKysrKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgODUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9tZWRpYXRlay9tdDgxODMuZHRzaQo+IGluZGV4IDEwYjMyNDcxYmM3Yi4uYTI3OTNjZjNkOTk0
IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0c2kK
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My5kdHNpCj4gQEAgLTU3
MCw2ICs1NzAsODggQEAKPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCQl9Owo+ICAKPiAr
CQl0aGVybWFsOiB0aGVybWFsQDExMDBiMDAwIHsKPiArCQkJI3RoZXJtYWwtc2Vuc29yLWNlbGxz
ID0gPDE+Owo+ICsJCQljb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE4My10aGVybWFsIjsKPiAr
CQkJcmVnID0gPDAgMHgxMTAwYjAwMCAwIDB4MTAwMD47Cj4gKwkJCWludGVycnVwdHMgPSA8MCA3
NiBJUlFfVFlQRV9MRVZFTF9MT1c+OwoKV2hhdCBpcyB0aGlzIGludGVycnVwdCBmb3I/Cgo+ICsJ
CQljbG9ja3MgPSA8JmluZnJhY2ZnIENMS19JTkZSQV9USEVSTT4sCj4gKwkJCQkgPCZpbmZyYWNm
ZyBDTEtfSU5GUkFfQVVYQURDPjsKPiArCQkJY2xvY2stbmFtZXMgPSAidGhlcm0iLCAiYXV4YWRj
IjsKPiArCQkJcmVzZXRzID0gPCZpbmZyYWNmZyAgTVQ4MTgzX0lORlJBQ0ZHX0FPX1RIRVJNX1NX
X1JTVD47Cj4gKwkJCW1lZGlhdGVrLGF1eGFkYyA9IDwmYXV4YWRjPjsKPiArCQkJbWVkaWF0ZWss
YXBtaXhlZHN5cyA9IDwmYXBtaXhlZHN5cz47Cj4gKwkJCW1lZGlhdGVrLGh3LXJlc2V0LXRlbXAg
PSA8MTE3MDAwPjsKPiArCQkJbnZtZW0tY2VsbHMgPSA8JnRoZXJtYWxfY2FsaWJyYXRpb24+Owo+
ICsJCQludm1lbS1jZWxsLW5hbWVzID0gImNhbGlicmF0aW9uLWRhdGEiOwo+ICsJCX07Cj4gKwo+
ICsJCXRoZXJtYWwtem9uZXMgewo+ICsJCQljcHVfdGhlcm1hbDogY3B1X3RoZXJtYWwgewo+ICsJ
CQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDEwMDA+Owo+ICsJCQkJcG9sbGluZy1kZWxheSA9
IDwxMDAwPjsKClsgLi4uIF0KCgoKCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGlu
YXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8
aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3Lmxp
bmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
