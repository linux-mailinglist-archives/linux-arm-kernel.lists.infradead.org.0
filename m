Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6721FBCBE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QjzU4B7fEg4vU/plRI/cM8LHRjzWEdPv13T89zcBvHY=; b=jBBvGR3SiYP86PvZHigJUTZLU6
	pRZ6aMq7tTLcWX76dDu6rzI9K3BwKfjuGEkhwDyWpAuP/Hfh3hg1VtWtQePoT4zcxIbrkBcs0izrk
	tN7KtAEOq+I2tOba2apl9wLxKHVxdqHORZFkrrxhuPVzFi2ZIaLjV1+yZ7XCpvCQOi2aK9A46t7Vv
	/FM6mVhHZmy0e002i/LZtq1NuBon26Uyfkn+u7MS9d7aTO9BiRS21HzUUuRJU7H1tA7+vOboaHO2O
	aUEPSeWnv9r4vg2pOuJpWBU9wM4MWp8nd86RIG6mD6bHwHKNblUEzkhrHPwvpvfYhetCYBhO1vKsq
	WYDVdlNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFIU-0002at-1u; Tue, 16 Jun 2020 17:22:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFII-0002Zv-6S
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:22:43 +0000
Received: by mail-wm1-x341.google.com with SMTP id q25so3941168wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 10:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=POTjqByYRbOQ/frF7/yQePjpbGaXYUQJP5UNWUEfE/A=;
 b=vUzJDQoez6aAImGZ/7qFnlj161x30/bcv/CWnbyyJHffgcAbvcCmPyG2ougMK0bkBk
 Lem+Y/krz2KJxsrI2uer1kVXQT/Nu41TV49Kwj7RyUXkeVS8IB5fIGQK4C+kDaeqgSee
 WoI1iglnXVia5EbPNYmU6WKknanzO6ruWjvKToFh2mAoS6/UwZCtRrYiYhcUYNL4U4bz
 sR6rXevrj8RMJ5GBCPa10DBLG2q/PGW9ZX14ohKz6u+ak/YyO09IQedycYeq6rJOEFdm
 BAuuTG57ySKJfCKhc64pXMrwzByxZgKAvGlgmx4yWQ4z0YayIZMwFzJnBvgj0gfErn7+
 tKBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=POTjqByYRbOQ/frF7/yQePjpbGaXYUQJP5UNWUEfE/A=;
 b=blA+gUNIz4AXhWnZ3yXxE+kbyBXCQ0FpkXLVF640Y49oX5S8aUl0guux2a7lO/Esea
 7d6jByu66wSm5zuuwli9FXt2qbarqNeevNEkptccRDQ5jIcC9HB2+5vsHkZaWfVis/5h
 I0kOwpgTQMkPXjaMrL93PyVItQA4xbI+1n+vP2qLLZInUwtBwPAeP7HSmfVDuWkzIpPU
 uQPxkNctBYJJodB8YWo5NQoXFRagp9928rwyY15gCj1u5fImA5hAe4FMIhZrkzIzovg1
 pkSi59VZxa+4NXZnAlEV9A1FI3y4DyDfapTlzQmydjiAglCadqnnsnaKDjm02Jy1NI2W
 rh/A==
X-Gm-Message-State: AOAM530Qh5499BoglBohSGy+itqXWjrW76GMWcbxEABGrUxM7d7T3vn5
 6N+lBrIRprkoTJZWBZdL9tDOP8pW
X-Google-Smtp-Source: ABdhPJwXYB3vpq5S0weVHDq18Q9f5udtu01CzES1KJEMynkfpLzjqhQwmogX6HHJDPtPvWECnmOrUw==
X-Received: by 2002:a7b:c186:: with SMTP id y6mr4597556wmi.82.1592328160618;
 Tue, 16 Jun 2020 10:22:40 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 i8sm29066319wru.30.2020.06.16.10.22.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 10:22:39 -0700 (PDT)
Subject: Re: [PATCH 2/2] phy: bcm63xx-usbh: Add BCM63xx USBH driver
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200616083408.3426435-1-noltari@gmail.com>
 <20200616083408.3426435-3-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <338262f0-bfe6-759c-c7f9-af7b62f5144d@gmail.com>
Date: Tue, 16 Jun 2020 10:22:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616083408.3426435-3-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_102242_259870_D9A3F325 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

CgpPbiA2LzE2LzIwMjAgMTozNCBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEFkZCBCQ002M3h4IFVTQkggUEhZIGRyaXZlciBmb3IgQk1JUFMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KClRoaXMgbG9v
a3MgZ29vZCB0byBtZSBhdCBmaXJzdCBnbGFuY2UsIGp1c3QgYSBmZXcgY29tbWVudHMgYmVsb3cu
Cgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9icm9hZGNvbS9LY29uZmlnICAgICAgICAgICAgfCAgMTAg
Kwo+ICBkcml2ZXJzL3BoeS9icm9hZGNvbS9NYWtlZmlsZSAgICAgICAgICAgfCAgIDEgKwo+ICBk
cml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtNjN4eC11c2JoLmMgfCA0NjMgKysrKysrKysrKysr
KysrKysrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgNDc0IGluc2VydGlvbnMoKykKPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1iY202M3h4LXVzYmguYwo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9icm9hZGNvbS9LY29uZmlnIGIvZHJpdmVycy9w
aHkvYnJvYWRjb20vS2NvbmZpZwo+IGluZGV4IGIyOWYxMWMxOTE1NS4uODk2NTA2YzdiMWY4IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2Jyb2FkY29tL0tjb25maWcKPiArKysgYi9kcml2ZXJz
L3BoeS9icm9hZGNvbS9LY29uZmlnCj4gQEAgLTIsNiArMiwxNiBAQAo+ICAjCj4gICMgUGh5IGRy
aXZlcnMgZm9yIEJyb2FkY29tIHBsYXRmb3Jtcwo+ICAjCj4gK2NvbmZpZyBQSFlfQkNNNjNYWF9V
U0JICj4gKwl0cmlzdGF0ZSAiQkNNNjN4eCBVU0JIIFBIWSBkcml2ZXIiCj4gKwlkZXBlbmRzIG9u
IEJNSVBTX0dFTkVSSUMgfHwgQ09NUElMRV9URVNUCj4gKwlkZXBlbmRzIG9uIE9GCgpJIGRvIG5v
dCB0aGluayB5b3UgbmVlZCB0byBhZGQgdGhlIGRlcGVuZHMgb24gT0YgaGVyZSBpZiB5b3UgdXNl
CmRldmljZV9nZXRfbWF0Y2hfZGF0YSgpIGluc3RlYWQgb2Ygb2ZfZGV2aWNlX2dldF9tYXRjaF9k
YXRhKCkgYW5kCmRldm1fb2ZfcGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKCkgaGFzIGFuIGlubGluZSBz
dHViIHByb3ZpZGVkIHdoZW4KQ09ORklHX09GPW4uCgpbc25pcF0KCj4gK3N0YXRpYyBpbnQgX19p
bml0IGJjbTYzeHhfdXNiaF9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiArewo+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiArCXN0cnVjdCBiY202
M3h4X3VzYmhfcGh5CSp1c2JoOwo+ICsJY29uc3Qgc3RydWN0IGJjbTYzeHhfdXNiaF9waHlfdmFy
aWFudCAqdmFyaWFudDsKPiArCXN0cnVjdCByZXNvdXJjZSAqcmVzOwo+ICsJc3RydWN0IHBoeSAq
cGh5Owo+ICsJc3RydWN0IHBoeV9wcm92aWRlciAqcGh5X3Byb3ZpZGVyOwo+ICsKPiArCXVzYmgg
PSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnVzYmgpLCBHRlBfS0VSTkVMKTsKPiArCWlmICgh
dXNiaCkKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCj4gKwl2YXJpYW50ID0gb2ZfZGV2aWNlX2dl
dF9tYXRjaF9kYXRhKGRldik7CgpXZSBjYW4gdXNlIGRldmljZV9nZXRfbWF0Y2hfZGF0YSgpIHRv
IGJlIE9GIGluZGVwZW5kZW50LgoKPiArCWlmICghdmFyaWFudCkKPiArCQlyZXR1cm4gLUVJTlZB
TDsKPiArCW1lbWNweSgmdXNiaC0+dmFyaWFudCwgdmFyaWFudCwgc2l6ZW9mKCp2YXJpYW50KSk7
CgpJIHdvdWxkIGp1c3QgYXZvaWQgbWFya2luZyB0aGUgdmFyaWFudCB0YWJsZXMgd2l0aCBfX2lu
aXRjb25zdCwgYW5kIGp1c3QKcmVmZXJlbmNlIHRoZW0gZGlyZWN0bHkgaGVyZS4KCj4gKwo+ICsJ
cmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKPiAr
CXVzYmgtPmJhc2UgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoZGV2LCByZXMpOwo+ICsJaWYgKElT
X0VSUih1c2JoLT5iYXNlKSkKPiArCQlyZXR1cm4gUFRSX0VSUih1c2JoLT5iYXNlKTsKPiArCj4g
Kwl1c2JoLT5yZXNldCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXQoZGV2LCBOVUxMKTsKPiArCWlm
IChJU19FUlIodXNiaC0+cmVzZXQpKSB7Cj4gKwkJaWYgKFBUUl9FUlIodXNiaC0+cmVzZXQpICE9
IC1FUFJPQkVfREVGRVIpCj4gKwkJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGdldCByZXNldFxu
Iik7Cj4gKwkJcmV0dXJuIFBUUl9FUlIodXNiaC0+cmVzZXQpOwo+ICsJfQo+ICsKPiArCWlmICh2
YXJpYW50LT5oYXNfdXNiX2Nsaykgewo+ICsJCXVzYmgtPnVzYmhfY2xrID0gZGV2bV9jbGtfZ2V0
KGRldiwgInVzYmgiKTsKCllvdSBjYW4gdXNlIGRldm1fY2xrX2dldF9vcHRpb25hbCgpIHdoaWNo
IHdvdWxkIHNhdmUgeW91IGZyb20gaGF2aW5nIHRvCnJlY29yZCB3aGV0aGVyIHRoZSBjbG9jayBp
cyBuZWVkZWQgb3Igbm90LgoKPiArCQlpZiAoSVNfRVJSKHVzYmgtPnVzYmhfY2xrKSkgewo+ICsJ
CQlpZiAoUFRSX0VSUih1c2JoLT51c2JoX2NsaykgIT0gLUVQUk9CRV9ERUZFUikKPiArCQkJCWRl
dl9lcnIoZGV2LCAiZmFpbGVkIHRvIGdldCB1c2JoIGNsb2NrXG4iKTsKPiArCQkJcmV0dXJuIFBU
Ul9FUlIodXNiaC0+dXNiaF9jbGspOwo+ICsJCX0KPiArCX0gZWxzZSB7Cj4gKwkJdXNiaC0+dXNi
aF9jbGsgPSBOVUxMOwo+ICsJfQo+ICsKPiArCWlmICh2YXJpYW50LT5oYXNfdXNiX3JlZl9jbGsp
IHsKPiArCQl1c2JoLT51c2JfcmVmX2NsayA9IGRldm1fY2xrX2dldChkZXYsICJ1c2JfcmVmIik7
CgpMaWtld2lzZS4KLS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
