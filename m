Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0223587A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+c7xCu7RpZAxZIDVEaXfiDOg4dJ50MaYo/MtOHDlnLk=; b=gKAqVUp3JtFGkN
	5sc8s88VT4OioIx4nhXZy5SotLLNOi2mps6m/Xu3mvZd9HUhYMhB8KjuCGgg6UkywKj6NRKHkK1p0
	TCq5hRJ287nEv7SFbiQMlMpc3ZX5BzzVV6xSQNPFn1rdybfZTxR6cFZoSQZv2Z6tvsFTcgoBjLs0D
	nJXS5BJM+XDbXmKSpZCwxeVCxsUMDI4i9S40F6MmiJVThv8br//B9F+caGbab9QR9XUxr76quW8MA
	uvggN6QssWhXhHWqln8f21/QZ16L7lOEmsEqBgmqp+8bXrxQK6g72YlqWUBiYQZjxa6WKstKzhkIe
	2SGcHJqw6kgSzOSGhg7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRCt-0006No-7Y; Wed, 05 Jun 2019 08:23:39 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRCm-0006N9-9p
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:23:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id v22so1297871wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 01:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=KB8B36tEhg7g9/5o0/vbeuwsLyG7Xckc2xGFAP6zc6U=;
 b=UqEtGE+iGLEv5a8+dhYUt/TpItZVF7YutlO2qMc8O+pmYdpG03c90Q518SSLMajSWX
 f40/pwGMGtZCV4kbgbWm0h1VBrWAX3B+JhWGEJIOiQNTAxpC6a0767jdQXd2NJSczqCn
 Rs9t3jhO9MHLwTczbKWos+GUz2T/hyu1HSM1lGIRsKGEHcChMtA2FgZodaGlisIRYavh
 73kSTJkBWr2HxbeHeJcnCdjbOB6Pjxpscko+f36AOaVmL1y652yazuLNBrB8XoqUiqb2
 YrzeXXMfW0z4uJDCH9Px7WTFnuY7s4VmVe8yBfYOi4IiJpYCUjXKiUTI5F+B+Q1eyAVc
 Ts+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=KB8B36tEhg7g9/5o0/vbeuwsLyG7Xckc2xGFAP6zc6U=;
 b=jgkKUqk6e1E3gsD9UAM3cZh/1kK/3mv6Qps9ZK3maixMXM2oj0ypMZ0rh2617HTDG+
 QzD8a8jZXALdCl/Ur425sgohFG85oFhEa0UaU058aEzpKza1OGaQzAJxlCeG9nYPN30k
 hkqrM9iA19HGKbYuucL2tHAkQPUiTAI7uvPeLJw9beQUtvhWSkrI0JIK7ZC+egadK184
 e+RTdU2jTcbLisEAtwXWnDSt8td3sTXEMfJ8dkCs5e+ep4SXLojLYHGbiRKGMMaB9FI4
 cYj26v4ZhMqmXJ56T3B1DNHMcvH6gdEHmdtPDmvlSXMlpquo/ZYczKkBE0SFy4CUzYhK
 UN9Q==
X-Gm-Message-State: APjAAAXeLiF8XCcwQIBR7OuJCAThe2q4uGbkneiy0x4lQaganu5VFodC
 dtssYzFTM46zAhSfN6FHBjy6jA==
X-Google-Smtp-Source: APXvYqyn7r2Og6MqHzF9tB1GS7hQSk2g0XHprHTvLKG654EdQDiLEPjf16VyH9JzBnK035IC2hV9qw==
X-Received: by 2002:a1c:f311:: with SMTP id q17mr20555885wmq.2.1559723010516; 
 Wed, 05 Jun 2019 01:23:30 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id d2sm14874801wmb.9.2019.06.05.01.23.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 01:23:29 -0700 (PDT)
Date: Wed, 5 Jun 2019 09:23:27 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190605082327.GN4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
 <20190605062020.GL22737@tuxbook-pro> <20190605071625.GK4797@dell>
 <CAKv+Gu_YcdePUkkCGdP5DC9rxCUAshgOzU32pViAp2CbmAaJuw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_YcdePUkkCGdP5DC9rxCUAshgOzU32pViAp2CbmAaJuw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_012332_481434_CD9745F4 
X-CRM114-Status: GOOD (  27.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, David Brown <david.brown@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, wsa+renesas@sang-engineering.com,
 alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNSBKdW4gMjAxOSwgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cgo+IE9uIFdlZCwgNSBK
dW4gMjAxOSBhdCAwOToxNiwgTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6
Cj4gPgo+ID4gT24gVHVlLCAwNCBKdW4gMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgo+ID4K
PiA+ID4gT24gVHVlIDA0IEp1biAwMzo0NCBQRFQgMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgo+ID4g
Pgo+ID4gPiA+IFRoZSBRdWFsY29tbSBHZW5pIEkyQyBkcml2ZXIgY3VycmVudGx5IHByb2JlcyBz
aWxlbnRseSB3aGljaCBjYW4gYmUKPiA+ID4gPiBjb25mdXNpbmcgd2hlbiBkZWJ1Z2dpbmcgcG90
ZW50aWFsIGlzc3Vlcy4gIEFkZCBhIGxvdyBsZXZlbCAoSU5GTykKPiA+ID4gPiBwcmludCB3aGVu
IGVhY2ggSTJDIGNvbnRyb2xsZXIgaXMgc3VjY2Vzc2Z1bGx5IGluaXRpYWxseSBzZXQtdXAuCj4g
PiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8u
b3JnPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXFjb20tZ2Vu
aS5jIHwgMiArKwo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gPiA+
ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmku
YyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcWNvbS1nZW5pLmMKPiA+ID4gPiBpbmRleCAwZmE5
M2I0NDhlOGQuLmUyNzQ2NmQ3Nzc2NyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2kyYy9i
dXNzZXMvaTJjLXFjb20tZ2VuaS5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2ky
Yy1xY29tLWdlbmkuYwo+ID4gPiA+IEBAIC01OTgsNiArNTk4LDggQEAgc3RhdGljIGludCBnZW5p
X2kyY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiA+ICAgICAgICAg
ICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gICAgIH0KPiA+ID4gPgo+ID4gPiA+ICsgICBkZXZfaW5m
bygmcGRldi0+ZGV2LCAiR2VuaS1JMkMgYWRhcHRvciBzdWNjZXNzZnVsbHkgYWRkZWRcbiIpOwo+
ID4gPiA+ICsKPiA+ID4KPiA+ID4gSSB3b3VsZCBwcmVmZXIgdGhhdCB3ZSBkbyBub3QgYWRkIHN1
Y2ggcHJpbnRzLCBhcyBpdCB3b3VsZCBiZSB0byBhY2NlcHQKPiA+ID4gdGhlIGRvd25zdHJlYW0g
YmVoYXZpb3VyIG9mIHNwYW1taW5nIHRoZSBsb2cgdG8gdGhlIHBvaW50IHdoZXJlIG5vIG9uZQo+
ID4gPiB3aWxsIGV2ZXIgbG9vayB0aHJvdWdoIGl0Lgo+ID4KPiA+IFdlIHNob3VsZCBiZSBhYmxl
IHRvIGZpbmQgYSBtaWRkbGUgZ3JvdW5kLiAgU3BhbW1pbmcgdGhlIGxvZyB3aXRoIGFsbAo+ID4g
c29ydHMgb2YgZGV2aWNlIHNwZWNpZmljIGluZm9ybWF0aW9uL2RlYnVnIGlzIG9idmlvdXNseSBu
b3QKPiA+IGNvbnN0cnVjdGl2ZSwgYnV0IGEgc2luZ2xlIGxpbmVyIHRvIGFkdmVydGlzZSB0aGF0
IGFuIGltcG9ydGFudAo+ID4gZGV2aWNlL2NvbnRyb2xsZXIgaGFzIGJlZW4gc3VjY2Vzc2Z1bGx5
IGluaXRpYWxpc2VkIGlzIG1vcmUgaGVscGZ1bAo+ID4gdGhhbiBpdCBpcyBoaW5kZXJvdXMuCj4g
Pgo+ID4gVGhpcyBwcmludCB3YXMgYWRkZWQgZHVlIHRvIHRoZSBzaWxlbnQgaW5pdGlhbGlzYXRp
b24gY29zdGluZyBtZQo+ID4gc2V2ZXJhbCBob3VycyBvZiBkZWJ1Z2dpbmcgQUNQSSBkZXZpY2Uv
ZHJpdmVyIGNvZGUgKGFsYmVpdCBsZWFybmluZyBhCj4gPiBsb3QgYWJvdXQgQUNQSSBhcyBJIGdv
KSBqdXN0IHRvIGZpbmQgb3V0IHRoYXQgaXQgd2FzIGFscmVhZHkgZG9pbmcgdGhlCj4gPiByaWdo
dCB0aGluZyAtIGp1c3QgdmVyeSBxdWlldGx5Lgo+ID4KPiAKPiBJIGFncmVlLgo+IAo+IFRoZXJl
IGFyZSBudW1lcm91cyBFSENJIGRyaXZlcnMgSUlSQyB3aGljaCwgaWYgY29tcGlsZWQgaW4sCj4g
dW5jb25kaXRpb25hbGx5IHByaW50IHNvbWUgYmx1cmIsIHdoZXRoZXIgeW91IGhhdmUgdGhlIGhh
cmR3YXJlIG9yCj4gbm90LCB3aGljaCBpcyBwcmV0dHkgYW5ub3lpbmcuCj4gCj4gSW4gdGhpcyBj
YXNlLCBob3dldmVyLCBoYXZpbmcgYSBzaW5nbGUgbGluZSBwZXIgc3VjY2Vzc2Z1bGx5IHByb2Jl
ZAo+IGRldmljZSAoY29udGFpbmluZyB0aGUgZGV2X25hbWUgYW5kIHBlcmhhcHMgdGhlIE1NSU8g
YmFzZSBhZGRyZXNzIG9yCj4gc29tZSBvdGhlciBpZGVudGlmeWluZyBmZWF0dXJlKSBpcyBwcmV0
dHkgdXNlZnVsLCBhbmQgc2hvdWxkbid0IGJlCj4gcmVnYXJkZWQgYXMgbG9nIHNwYW1taW5nIGlt
by4gZGV2X2luZm8oKSBob25vdXJzIHRoZSAncXVpZXQnIGtlcm5lbAo+IGNvbW1hbmQgbGluZSBw
YXJhbWV0ZXIsIGFuZCBzbyB5b3Ugd2lsbCBvbmx5IHNlZSB0aGUgbWVzc2FnZSBpZiB5b3UKPiBh
Y3R1YWxseSBsb29rIGF0IHRoZSBsb2cuCgorOTk5CgpUaGlzIGlzIGV4YWN0bHkgYXMgSSBzZWUg
aXQuCgpJZiBwZW9wbGUgd2FudCBhIHF1aWV0IGxvZy9mYXN0IGJvb3QtdXAgdGltZXMsIHRoZXkg
Y2FuIHJlcXVlc3QgaXQuCk90aGVyd2lzZSwgaXQncyBmYXIgbW9yZSB1c2VmdWwgdG8gdHJhZGUg
YSBzZWNvbmQgb3IgdHdvIGZvcgppbXBvcnRhbnQgaW5mb3JtYXRpb24gc3VjaCBhcyB3aGljaCBk
ZXZpY2VzIGFyZSBwcmVzZW50L2VuYWJsZWQgb24gYQpwbGF0Zm9ybS4KCi0tIApMZWUgSm9uZXMg
W+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9v
ayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
