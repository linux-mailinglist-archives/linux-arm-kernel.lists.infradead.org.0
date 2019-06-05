Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121D335775
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qu8zbL7p5XIHhRrkIvyCQzygfh7DYDvFCrhpP3sQt2U=; b=QP5c4dnFbRRiCD
	IVArc7LKWQmFgH5gpPvv7YKWi/Ksw+uTY0LvJmnb5bJNs3/nD9pMdWySB9OMezRa73BYVC+g01DnC
	T9RgPxaaBN77t4HB1bckd7ev4BYCIJcPjlnWzyOBv2UynwM6CJbATv2snIkXAPxO6SZPUHB7Sqyjs
	qlMMu7TM/DvN9kH9MlZ6uyqrgkzGOW9KTuWegVe3kDHGy5or4A6ILRRGwxoVKXu6DWKUFyS1pxS9K
	6/aOubJ/Cwn08WnXEtLln67gOEjrTjk3kOCaxYQ6IUO0aBBSEkWOa+5lXPA+aMqpkGlbQApbMlP5Z
	95/DqJiIcxmIYO3lKkmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQ3H-0001xV-7B; Wed, 05 Jun 2019 07:09:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQ3A-0001x8-6B
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:09:33 +0000
Received: by mail-wr1-x443.google.com with SMTP id d18so18264725wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 00:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=k36dAzNmgaqwmQvMa36IwjM04BTSr/wOoDP6exbi8UY=;
 b=x1WvdiqHLGUEpygoU7klJUijn/C602Fe/bjAvlUTzjx+mANGu6SbHM0cNO6C1aYO70
 cgE5M3tcJMZUb4aa2iNdpqyoRySDK3DOzLY5GYYBvnlXRAbERMKwJvO6PChqSsf1grbr
 lM1cAbcqFEloQ76z4a+rOMaDqeqlFIZ1AcQA3BufSn6WYNLsTeUUh8XbSM7MMI7XnGbm
 IVRpU1osdykJhxWGwjYopNceGQeWq6Q1TJ+qnbrzaa5Wi+9jNVJQEWI2/ZhWPwjdPNQJ
 UxEOQm5H4edvFoHK1Wk8x3DbaytJZIvDr+N0+Ck0k1WO/AkT3w1uc00d0s0YfgenW7AP
 Nw/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=k36dAzNmgaqwmQvMa36IwjM04BTSr/wOoDP6exbi8UY=;
 b=FOQ9F36gUbwGBxJBaldXCwCoxneVGNB5oHnyyh5aIrzWOqZOlwV+Yhyzt26HGujW0w
 GI2ycUtVJrnfjb/6PopUp1DyT9G9hWjRsG5q2iuPRwDx6gXUXsLFek6nFp82HP+azEzK
 xn9xpJ5AOL/bJnF5w0SSWRhjblJDOYEiT9tfMDH+WVZpeDDjDeh6Z+wEKlrOnls2Tv3c
 JGmRbm4zc2cIUgybJhOsxrXAOb+ETcswqxngNy+cw/Oatiaeny0T8v1khULcMof4C9RR
 SHr44zLyusjg6O7IvNcMe7mQuUcZj8az/9sIH81pTB4O5KJb3v3q9ERjuhDUcRfxdCth
 W7Bw==
X-Gm-Message-State: APjAAAVP6/3IslKWR2xfn2E8BCTNvot9FomfoiB2Hpg5wJ2GOVaUGkxm
 VNjpDeglxf7sjLub9vGx0GIcbw==
X-Google-Smtp-Source: APXvYqxh5AFxtIbzQZRmSAlo9FC/qrjqBKRgVLtmMT2NgG+CeZHe6g4bUCTSorRYhPeYfhTb5pZX+w==
X-Received: by 2002:a5d:690d:: with SMTP id t13mr6579006wru.93.1559718570730; 
 Wed, 05 Jun 2019 00:09:30 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id c129sm2405930wma.27.2019.06.05.00.09.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 00:09:30 -0700 (PDT)
Date: Wed, 5 Jun 2019 08:09:28 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 6/8] usb: dwc3: qcom: Add support for booting with ACPI
Message-ID: <20190605070928.GJ4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-6-lee.jones@linaro.org>
 <20190605063507.GM22737@tuxbook-pro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605063507.GM22737@tuxbook-pro>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_000932_227495_157018FA 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwNCBKdW4gMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBUdWUgMDQg
SnVuIDAzOjQ0IFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy91c2IvZHdjMy9kd2MzLXFjb20uYyBiL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1xY29tLmMK
PiBbLi5dCj4gPiBAQCAtMzczLDcgKzQxNiw3IEBAIHN0YXRpYyBpbnQgZHdjM19xY29tX2Nsa19p
bml0KHN0cnVjdCBkd2MzX3Fjb20gKnFjb20sIGludCBjb3VudCkKPiA+ICAKPiA+ICAJcWNvbS0+
bnVtX2Nsb2NrcyA9IGNvdW50Owo+ID4gIAo+ID4gLQlpZiAoIWNvdW50KQo+ID4gKwlpZiAoIWNv
dW50IHx8IEFDUElfSEFORExFKGRldikpCj4gPiAgCQlyZXR1cm4gMDsKPiAKPiBBZmFpY3QgeW91
IGNhbGwgdGhpcyB3aXRoIGNvdW50ID0gb2ZfY291bnRfcGhhbmRsZV93aXRoX2FyZ3MoKSwgd2hp
Y2gKPiBzaG91bGQgYmUgMC4gQnV0IHdoeSBub3Qgc2tpcCBjYWxsaW5nIHRoaXMgYXQgYWxsPwoK
QWN0dWFsbHkgY291bnQgY2FuIGJlIDwwLCB3aGljaCBpcyB3aHkgSSBtdXN0IGhhdmUgbmVlZGVk
IGl0IGF0IHRoZQpiZWdpbm5pbmcuICBUaGVyZSBpcyBhbm90aGVyIHBhdGNoIGluIHRoaXMgc2V0
IHdoaWNoIGNoZWNrcyBmb3IKZXJyb3JzLCB0aHVzIHRoZSBBQ1BJX0hBTkRMRSgpIGNhbGwgc2hv
dWxkIG5vdyBiZSBzdXBlcmZsdW91cy4gIEkKd2lsbCB0ZXN0IGFuZCByZW1vdmUgaXQuCgo+ID4g
IAlxY29tLT5jbGtzID0gZGV2bV9rY2FsbG9jKGRldiwgcWNvbS0+bnVtX2Nsb2NrcywKPiA+IEBA
IC00MDksMTIgKzQ1MiwyOCBAQCBzdGF0aWMgaW50IGR3YzNfcWNvbV9jbGtfaW5pdChzdHJ1Y3Qg
ZHdjM19xY29tICpxY29tLCBpbnQgY291bnQpCj4gPiAgCXJldHVybiAwOwo+ID4gIH0KPiA+ICAK
PiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGR3YzNfYWNwaV9wZGF0YSBzZG04NDVfYWNwaV9wZGF0
YSA9IHsKPiA+ICsJLnFzY3JhdGNoX2Jhc2Vfb2Zmc2V0ID0gU0RNODQ1X1FTQ1JBVENIX0JBU0Vf
T0ZGU0VULAo+ID4gKwkucXNjcmF0Y2hfYmFzZV9zaXplID0gU0RNODQ1X1FTQ1JBVENIX1NJWkUs
Cj4gPiArCS5kd2MzX2NvcmVfYmFzZV9zaXplID0gU0RNODQ1X0RXQzNfQ09SRV9TSVpFLAo+ID4g
KwkuaHNfcGh5X2lycV9pbmRleCA9IDEsCj4gPiArCS5kcF9oc19waHlfaXJxX2luZGV4ID0gNCwK
PiA+ICsJLmRtX2hzX3BoeV9pcnFfaW5kZXggPSAzLAo+ID4gKwkuc3NfcGh5X2lycV9pbmRleCA9
IDIKPiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYWNwaV9kZXZpY2VfaWQg
ZHdjM19xY29tX2FjcGlfbWF0Y2hbXSA9IHsKPiA+ICsJeyAiUUNPTTI0MzAiLCAodW5zaWduZWQg
bG9uZykmc2RtODQ1X2FjcGlfcGRhdGEgfSwKPiA+ICsJeyB9LAo+ID4gK307Cj4gPiArTU9EVUxF
X0RFVklDRV9UQUJMRShhY3BpLCBkd2MzX3Fjb21fYWNwaV9tYXRjaCk7Cj4gCj4gQW5hbG9nIHRv
IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgpIHRoZXJlIHNlZW1zIHRvIGJlIGEKPiBhY3BpX2Rl
dmljZV9nZXRfbWF0Y2hfZGF0YSgpLCBpZiB5b3UgdXNlIHRoaXMgeW91IHNob3VsZCBiZSBhYmxl
IHRvCj4gaGF2ZSB5b3UgYWNwaV9kZXZpY2VfaWQgYXJyYXkgbmV4dCB0byB0aGUgb2ZfZGV2aWNl
X2lkLgoKRG8geW91IG1lYW4gIkFuYWxvZ291cyI/CgpJIHdpbGwgdHJ5IHRvIGdyb3VwIHRoZW0s
IHRoYW5rcy4KCj4gPiArCj4gPiAgc3RhdGljIGludCBkd2MzX3Fjb21fcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiAKPiBJdCBzZWVtcyB0aGF0IGFsbCB0aGF0J3MgbGVmdCB1
bmNvbmRpdGlvbmFsIG9uIEFDUElfSEFORExFKCkgaW4gdGhpcwo+IGZ1bmN0aW9uIGFyZSB0aGUg
b3B0aW9uYWwgcGllY2VzIGFuZCB0aGUgdGFpbC4gV291bGRuJ3QgaXQgYmUgY2xlYW5lciB0bwo+
IHNwbGl0IGl0IG91dCBpbiBkaWZmZXJlbnQgZnVuY3Rpb25zPwoKVGhlcmUgYXJlIH41MCBsaW5l
cyBvZiBzaGFyZWQgY29kZSBpbiBkd2MzX3Fjb21fcHJvYmUoKSwgbW9zdCBvZiBpdCBpcwppbnRl
cnNwZXJzZWQgYmV0d2VlbiB0aGUgY29uZmlndXJhdGlvbiB0YWJsZSAoRFQsIEFDUEkpIHBpZWNl
cywgd2hpY2gKaXMgd2h5IGl0J3MgZm9ybWF0dGVkIGluIHRoZSBjdXJyZW50IHdheS4KCkkgY2Fu
IHNwbGl0IGEgZmV3IHRoaW5ncyBvdXQgaW50byBzZXBhcmF0ZSBmdW5jdGlvbnMgaWYgeW91IHRo
aW5rCml0J2xsIGhlbHAuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
