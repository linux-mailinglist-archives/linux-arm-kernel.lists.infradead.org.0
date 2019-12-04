Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5103B1136DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 22:05:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zAFHXi/xaq36u6xoKu1Rt72ODnaZ8n2k/B5Fs0V+PnY=; b=mJaDvJuxFb5iWheMXp8gVv2M+r
	6TfheaqL56eud1WcBwCMtBFwVJ6jKmqxsICapgHlxtuGZjjLD5rEKGi0C6Jtu1osrpve9k4orjRqD
	bIwBfu3Z06KqvmNwUZPdacigDO1G8Df7/f14aFQzpc2+eN7C5At+A4AAiYVQet5UL6cMSZ/NqIP+T
	XGSSYxhewRtSp+XyG3W+DxGgV4Ju1overnXw70r9C7iERZjUJ+hyQQuXV+gqYFRb3+6UD9OaV0LKt
	R0E7OE4l84sEnFsQJu9jPGTWFV+dqsuni97aWayXv8FKfyzL0AL7G5VqizJf4vBZoEYQUsuqij6nH
	nemzCFTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbq2-00029z-DW; Wed, 04 Dec 2019 21:05:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbpv-00029f-95
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 21:05:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so954683wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 13:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pCvZJU1LLJvDUB1G3/9Ogy+cUN7IJ9DJnSumKiA4mLU=;
 b=iK9OwSXTtq5gOw+4oNEiAG+k3yAuysmjZBzRMoaWUEq9hjcZ9vp+W47ggFB+8jTwc1
 Nsem8wsR6xqBAQo1PfZ2+Qlh/WQVYLGLwI9cOKHO8DlvSdcMvYYVx3a14ruBWievqfV4
 kQzJdSXmK6tAWtJbithPWvTwZN7wGB+OwOKggdBmPFx0sd0KJ6m1cAVE284koUgRVMQ8
 30+LRAaVZdRQ+bE5R+H9uSlgLaI80VJb4sfy8dztN0WuOsxGZtYj+stWHOCQTGRvxDm8
 YsZkS2qrFrxs3Ush3EvxZ0JxQ8Y8YkuJt5/4h/pxhf/8QhIOsQu6ZklneTke1xP/2vMQ
 3gOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pCvZJU1LLJvDUB1G3/9Ogy+cUN7IJ9DJnSumKiA4mLU=;
 b=oFuGZm0a+qo5p1LlOmUQMDUJn8tFeE+4yGDq5PDAh4wdS4zG2tAXAiDrDvpIsY5Q95
 u7ixYeRiHnzKxCtK/g6aYvAabfGPo13mcVsCeyAa3bG84HNx25GnZBZffJYbjHPusuwx
 YGeIduQwki8/2W8N6RjWiS/RMzMXSf+IOJjqhyJzPrlbbzGSIRX2RCyRgSv4Yx9hzlN7
 +8ZZ1u0r/YDfI0J2O4VQcGztoUlveWApAGGlMnwQD0Rr5mL6TJYcXoLB6n7SoaM4Hu3l
 HlwbWQwxKKKP6WjRjXcf1qXRgwbvTeX5jsh8x4K2QBWOxTpD+NBICVstbOY89bKq5x+4
 WOow==
X-Gm-Message-State: APjAAAVYipqGSnfOh4PtfCA/72AUGYfxusJUPRkvRdPsmniitBjBJKQj
 JDsNhN7sCdq+BRMDUDIOLk8JdQ==
X-Google-Smtp-Source: APXvYqwTtSzbJkrzuZm6vwHchEHpIP9b3IKF5oT4sZk+LHvJ60h9TPftWWSrFwb0RbtGJc2IMg+vsA==
X-Received: by 2002:adf:dc86:: with SMTP id r6mr6752156wrj.68.1575493525175;
 Wed, 04 Dec 2019 13:05:25 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:d965:ceae:a314:6edb?
 ([2a01:e34:ed2f:f020:d965:ceae:a314:6edb])
 by smtp.googlemail.com with ESMTPSA id g9sm8457863wro.67.2019.12.04.13.05.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 13:05:24 -0800 (PST)
Subject: Re: [PATCH v2 1/5] thermal: stm32: remove hardware irq handler
To: Pascal Paillet <p.paillet@st.com>, rui.zhang@intel.com,
 edubezval@gmail.com, amit.kucheria@verdurent.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, david.hernandezsanchez@st.com,
 horms+renesas@verge.net.au, wsa+renesas@sang-engineering.com,
 linux-pm@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191104133020.8820-1-p.paillet@st.com>
 <20191104133020.8820-2-p.paillet@st.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <3b1b690b-71f1-95e7-704b-b3d0073c68de@linaro.org>
Date: Wed, 4 Dec 2019 22:05:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191104133020.8820-2-p.paillet@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_130527_352194_48DFB18E 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQvMTEvMjAxOSAxNDozMCwgUGFzY2FsIFBhaWxsZXQgd3JvdGU6Cj4gUmVtb3ZlIGhhcmR3
YXJlIGlycSBoYW5kbGVyIGJlY2F1c2UgaXQgaXMgbm90IG5lZWRlZCB0byBkaXNhYmxlIHRoZQo+
IGludGVycnVwdCBiZWZvcmUgdGhlIHRocmVhZGVkIGhhbmRsZXIuIFRoZSBnb2FsIGlzIHRvIHNp
bXBsaWZ5Cj4gdGhlIGNvZGUuCgpQbGVhc2UgZWxhYm9yYXRlIHRoZSBleHBsYW5hdGlvbiBoZXJl
LiBJIGd1ZXNzIGFsbCB0aGUgY29kZSByZW1vdmVkIGlzCmJlY2F1c2Ugb2Y6CgoJLyogcmVhZCBJ
VCByZWFzb24gaW4gU1IgYW5kIGNsZWFyIGZsYWdzICovCgl2YWx1ZSA9IHJlYWRsX3JlbGF4ZWQo
c2Vuc29yLT5iYXNlICsgRFRTX1NSX09GRlNFVCk7CgpSaWdodD8KCj4gQ2hhbmdlLUlkOiBJZGE5
NjdlODU0M2M4ZGFmYzZhMjQ1MDgwMDBmNjRmNjQwNWFkZDMxZAoKUmVtb3ZlIENoYW5nZS1JZC4K
Ck1pc3NpbmcgU29CLgoKPiAtLS0KPiAgZHJpdmVycy90aGVybWFsL3N0L3N0bV90aGVybWFsLmMg
fCAyNSArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMjQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1h
bC9zdC9zdG1fdGhlcm1hbC5jIGIvZHJpdmVycy90aGVybWFsL3N0L3N0bV90aGVybWFsLmMKPiBp
bmRleCBjZjlkZGM1MmYzMGUuLjMxYWE2M2ZiM2RiMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Ro
ZXJtYWwvc3Qvc3RtX3RoZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9zdC9zdG1fdGhl
cm1hbC5jCj4gQEAgLTk4LDIxICs5OCwxMCBAQCBzdHJ1Y3Qgc3RtX3RoZXJtYWxfc2Vuc29yIHsK
PiAgCXVuc2lnbmVkIGludCBsb3dfdGVtcF9lbmFibGVkOwo+ICAJaW50IG51bV90cmlwczsKPiAg
CWludCBpcnE7Cj4gLQl1bnNpZ25lZCBpbnQgaXJxX2VuYWJsZWQ7Cj4gIAl2b2lkIF9faW9tZW0g
KmJhc2U7Cj4gIAlpbnQgdDAsIGZtdDAsIHJhbXBfY29lZmY7Cj4gIH07Cj4gIAo+IC1zdGF0aWMg
aXJxcmV0dXJuX3Qgc3RtX3RoZXJtYWxfYWxhcm1faXJxKGludCBpcnEsIHZvaWQgKnNkYXRhKQo+
IC17Cj4gLQlzdHJ1Y3Qgc3RtX3RoZXJtYWxfc2Vuc29yICpzZW5zb3IgPSBzZGF0YTsKPiAtCj4g
LQlkaXNhYmxlX2lycV9ub3N5bmMoaXJxKTsKPiAtCXNlbnNvci0+aXJxX2VuYWJsZWQgPSBmYWxz
ZTsKPiAtCj4gLQlyZXR1cm4gSVJRX1dBS0VfVEhSRUFEOwo+IC19Cj4gLQo+ICBzdGF0aWMgaXJx
cmV0dXJuX3Qgc3RtX3RoZXJtYWxfYWxhcm1faXJxX3RocmVhZChpbnQgaXJxLCB2b2lkICpzZGF0
YSkKPiAgewo+ICAJdTMyIHZhbHVlOwo+IEBAIC00NjQsMTYgKzQ1Myw2IEBAIHN0YXRpYyBpbnQg
c3RtX3RoZXJtYWxfZ2V0X3RlbXAodm9pZCAqZGF0YSwgaW50ICp0ZW1wKQo+ICAJCQlpZiAocmV0
KQo+ICAJCQkJcmV0dXJuIHJldDsKPiAgCQl9Cj4gLQo+IC0JCS8qCj4gLQkJICogUmUtZW5hYmxl
IGFsYXJtIElSUSBpZiB0ZW1wZXJhdHVyZSBiZWxvdyBjcml0aWNhbAo+IC0JCSAqIHRlbXBlcmF0
dXJlCj4gLQkJICovCj4gLQkJaWYgKCFzZW5zb3ItPmlycV9lbmFibGVkICYmCj4gLQkJICAgIChj
ZWxzaXVzKCp0ZW1wKSA8IHNlbnNvci0+dGVtcF9jcml0aWNhbCkpIHsKPiAtCQkJc2Vuc29yLT5p
cnFfZW5hYmxlZCA9IHRydWU7Cj4gLQkJCWVuYWJsZV9pcnEoc2Vuc29yLT5pcnEpOwo+IC0JCX0K
PiAgCX0KPiAgCj4gIAlyZXR1cm4gMDsKPiBAQCAtNDkzLDcgKzQ3Miw3IEBAIHN0YXRpYyBpbnQg
c3RtX3JlZ2lzdGVyX2lycShzdHJ1Y3Qgc3RtX3RoZXJtYWxfc2Vuc29yICpzZW5zb3IpCj4gIAl9
Cj4gIAo+ICAJcmV0ID0gZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycShkZXYsIHNlbnNvci0+aXJx
LAo+IC0JCQkJCXN0bV90aGVybWFsX2FsYXJtX2lycSwKPiArCQkJCQlOVUxMLAo+ICAJCQkJCXN0
bV90aGVybWFsX2FsYXJtX2lycV90aHJlYWQsCj4gIAkJCQkJSVJRRl9PTkVTSE9ULAo+ICAJCQkJ
CWRldi0+ZHJpdmVyLT5uYW1lLCBzZW5zb3IpOwo+IEBAIC01MDMsOCArNDgyLDYgQEAgc3RhdGlj
IGludCBzdG1fcmVnaXN0ZXJfaXJxKHN0cnVjdCBzdG1fdGhlcm1hbF9zZW5zb3IgKnNlbnNvcikK
PiAgCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAKPiAtCXNlbnNvci0+aXJxX2VuYWJsZWQgPSB0cnVl
Owo+IC0KPiAgCWRldl9kYmcoZGV2LCAiJXM6IHRoZXJtYWwgSVJRIHJlZ2lzdGVyZWQiLCBfX2Z1
bmNfXyk7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3Jn
Lz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xs
b3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJv
b2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8v
d3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
