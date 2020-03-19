Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CD518B7EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 14:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/K20CaolJWFJOEPsuhuqPzKQ+FUgBYZQ/xhzB78CWw=; b=MiXmuiI5TVYxF/
	yZTBCBSm4YhvN7luUhV9gCTwWe36eynmWpOWqLBTOFyupRNdrE1Zz7VcqP6LCtcYwgV4EP3rJZaI3
	iKXuRWMaJ7gUEdtwHpd5MPLo1C30JIRDdnEgR7GkBgf4tfryRByPncYplW/LYhSJa922gmBEEtrM0
	yypXOQpwb/pRXoX4TzDYuX6+fRDdcg+Kvy+YxsbTCw7p6IjWpQEBsaqSqhoe/461Jn2TSrE3UeHvG
	PK+US8zgQEfBYgOhF6QPFJpzQBCnY0JdMrUp3DWQmaVX/D5unMshMoTtDiqByezDZY4ODTIgpd3DX
	AJxOR+N5NXL2PmZelqGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEvM5-0003P9-Q5; Thu, 19 Mar 2020 13:37:01 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEvLw-0003Oi-Px
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 13:36:55 +0000
Received: by mail-wm1-x331.google.com with SMTP id f130so1216799wmf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 06:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uEd9IVodt6fa58bsyLHIrVxIAopcFc2wB37Cyaqmow4=;
 b=VxtC05fWVlvcHihiVKFYmJhn/wlPWp3Xybqk6gt7lcl6FeX+sfeDhn1sGbpcgJbu3d
 kExv/0oyrfd8F/S+V2EZPxliE1pxk090HamF6dAh3KVNCalRwqa6Aqa2m751TYYj62yS
 DQ6VeD+GFIzm2Da8/hcBN829yACx/Jai0btH7LCpiVPXyA+x1l4lG0Xpqj0Xs4VDv0Nd
 Vs3iWw+tvI62xadbMi8flMMy/sWOI9CLG8Xj02ndVoQ6L9G/PsUOZ6SG+hk4/wApbc+l
 1r8+19uE/cSGlIiMLGl9mZfFbB9kcO0yADLZ2Ofc08ul8zZzIgMSRohrPPy4bvaZ4XJm
 vHQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=uEd9IVodt6fa58bsyLHIrVxIAopcFc2wB37Cyaqmow4=;
 b=EOcz+E6cXEMBe4d8fugfK3JcbSBglldBlLv3cVbfcmsBKsi1xLOJO0A3M6a4wEMZ+0
 jPWG6L7Hj1A9b6bkD1tjnVWVrV91bAmzZJR7eSdpd6ODfk7+oTjDhFC9gb0RGdDc+2AF
 QBeOEM8rB8wUsMTSTrEcH/5MRHefUjmX8QnDjDMYmAooLmSjGdIoEAoKrqDcAi15gxDH
 AEUlE7//rLgD55+RAjVFHXji/0JAvEfCAu1zGF/I26SrG8JEkwSqJy6xIuQfSzDe4CRT
 uSYrFnmdQIWI4t2hVRGoGLQAn9SLZEyC7qEUxOcWiP25K9oGAdPqJPZFA03PAR6/Y09O
 ADnw==
X-Gm-Message-State: ANhLgQ2e/9mu3DBkhPx+QPJwpQbmcdtAV2IKlITdd0QW5VSnupxvSphB
 4z42RTCafFR/a5vZmalLo0d03w==
X-Google-Smtp-Source: ADFU+vu1dFag4U4oZYG0BReV/F50kZwKNoJprOTG8xcl9vorDq/ViGEh+iUQkaBJbZrxgjhqXjyXWA==
X-Received: by 2002:a1c:9d41:: with SMTP id g62mr3937974wme.131.1584625010128; 
 Thu, 19 Mar 2020 06:36:50 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5d64:ea6:49bd:69d7?
 ([2a01:e34:ed2f:f020:5d64:ea6:49bd:69d7])
 by smtp.googlemail.com with ESMTPSA id e5sm3553535wru.92.2020.03.19.06.36.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 06:36:49 -0700 (PDT)
Subject: Re: [RESEND PATCH v4 2/4] thermal: k3: Add support for bandgap sensors
To: Keerthy <j-keerthy@ti.com>, rui.zhang@intel.com, robh+dt@kernel.org
References: <20200318083028.9984-1-j-keerthy@ti.com>
 <20200318083028.9984-3-j-keerthy@ti.com>
 <ea3b34dc-42e3-0b10-4b89-faf2621a4ee2@linaro.org>
 <03b837de-ff25-2308-8a56-15bc3377cd5f@ti.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <d8bff098-f852-4c55-0afc-d7fd043dd10a@linaro.org>
Date: Thu, 19 Mar 2020 14:36:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <03b837de-ff25-2308-8a56-15bc3377cd5f@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_063652_874176_52CC5540 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkvMDMvMjAyMCAxMzo1MiwgS2VlcnRoeSB3cm90ZToKPiAKPiAKPiBPbiAxOS8wMy8yMCA2
OjA4IHBtLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4gT24gMTgvMDMvMjAyMCAwOTozMCwgS2Vl
cnRoeSB3cm90ZToKPj4+IFRoZSBiYW5kZ2FwIHByb3ZpZGVzIGN1cnJlbnQgYW5kIHZvbHRhZ2Ug
cmVmZXJlbmNlIGZvciBpdHMgaW50ZXJuYWwKPj4+IGNpcmN1aXRzIGFuZCBvdGhlciBhbmFsb2cg
SVAgYmxvY2tzLiBUaGUgYW5hbG9nLXRvLWRpZ2l0YWwKPj4+IGNvbnZlcnRlciAoQURDKSBwcm9k
dWNlcyBhbiBvdXRwdXQgdmFsdWUgdGhhdCBpcyBwcm9wb3J0aW9uYWwKPj4+IHRvIHRoZSBzaWxp
Y29uIHRlbXBlcmF0dXJlLgo+Pj4KPj4+IEN1cnJlbnRseSByZWFkaW5nIHRlbXBlcmF0dXJlcyBh
bmQgY3JlYXRpbmcgd29yayB0byBwZXJpb2RpY2FsbHkKPj4+IHJlYWQgdGVtcGVyYXR1cmVzIGZy
b20gdGhlIHpvbmVzIGFyZSBzdXBwb3J0ZWQuCj4+PiBUaGVyZSBhcmUgbm8gYWN0aXZlL3Bhc3Np
dmUgY29vbGluZyBhZ2VudCBzdXBwb3J0ZWQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogS2VlcnRo
eSA8ai1rZWVydGh5QHRpLmNvbT4KPj4+IC0tLQoKWyAuLi4gXQoKPj4+ICtzdGF0aWMgY29uc3Qg
aW50IGszX2FkY190b190ZW1wW10gPSB7Cj4+PiArwqDCoMKgIC00MDAwMCwgLTQwMDAwLCAtNDAw
MDAsIC00MDAwMCwgLTM5ODAwLCAtMzk0MDAsIC0zOTAwMCwgLTM4NjAwLAoKWyAuLi4gXQoKPj4+
IDEyMzAwMCwKPj4+ICvCoMKgwqAgMTIzNDAwLCAxMjM4MDAsIDEyNDIwMCwgMTI0NjAwLCAxMjQ5
MDAsIDEyNTAwMCwKPj4+ICt9Owo+Pgo+PiBDYW4gYmUgdGhpcyBhcnJheSByZXBsYWNlZCBieSBh
biBpbml0aWFsaXphdGlvbiBhcnJheSB3aXRoIGEgZm9ybXVsYT8KPj4KPj4gV2h5IGRvIHdlIGhh
dmUgbW9zdCBvZiB0aGUgdGltZSBhIHN0ZXAgb2YgNDAwIHRoZW4gc3VkZGVubHkgNTAwIGFuZCA0
MDAKPj4gYWdhaW4/IGVnLiAzMDYwMCwgMzEwMDAsIDMxNDAwLCAzMTkwMCwgMzI1MDAsIDMzMDAw
LCAzMzQwMAo+IAo+IFRoaXMgaGFzIGNvbWUgZnJvbSBhIHBvbHlub21pYWwgZXF1YXRpb24gd2hp
Y2ggaSBkbyBub3Qgd2FudCB0bwo+IGNhbGN1bGF0ZSBldmVyeSB0aW1lIHdlIHJlYWQgdGhlIHRl
bXBlcmF0dXJlLiBIZW5jZSBwcmVmZXIgTG9vayB1cCB0YWJsZS4KCkFncmVlLCBpdCBtYWtlcyBz
ZW5zZSB0byBub3QgY2FsY3VsYXRlIGV2ZXJ5IHRpbWUgdGhlIHRlbXBlcmF0dXJlIGlzIHJlYWQu
CgpJIHdhcyBzdWdnZXN0aW5nIHRvIGZpbGwgdGhlIGFycmF5IGF0IGluaXQgdGltZSB3aXRoIHRo
aXMgcG9seW5vbWlhbApmb3JtdWxhIGluc3RlYWQgb2YgaGFyZGNvZGluZyBpdC4KClsgLi4uIF0K
Cj4+PiArCj4+PiArwqDCoMKgIC8qIEdldCB0aGUgc2Vuc29yIGNvdW50IGluIHRoZSBWVE0gKi8K
Pj4+ICvCoMKgwqAgdmFsID0gcmVhZGwoYmdwLT5iYXNlICsgSzNfVlRNX0RFVklORk9fUFdSMF9P
RkZTRVQpOwo+Pj4gK8KgwqDCoCBjbnQgPSB2YWwgJiBLM19WVE1fREVWSU5GT19QV1IwX1RFTVBT
RU5TX0NUX01BU0s7Cj4+PiArwqDCoMKgIGNudCA+Pj0gX19mZnMoSzNfVlRNX0RFVklORk9fUFdS
MF9URU1QU0VOU19DVF9NQVNLKTsKPj4+ICsKPj4+ICvCoMKgwqAgZGF0YSA9IGRldm1fa2NhbGxv
YyhkZXYsIGNudCwgc2l6ZW9mKCpkYXRhKSwgR0ZQX0tFUk5FTCk7Cj4+PiArwqDCoMKgIGlmICgh
ZGF0YSkgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldCA9IC1FTk9NRU07Cj4+PiArwqDCoMKgwqDC
oMKgwqAgZ290byBlcnJfYWxsb2M7Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgLyog
UmVnaXN0ZXIgdGhlIHRoZXJtYWwgc2Vuc29ycyAqLwo+Pj4gK8KgwqDCoCBmb3IgKGlkID0gMDsg
aWQgPCBjbnQ7IGlkKyspIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBkYXRhW2lkXS5zZW5zb3JfaWQg
PSBpZDsKPj4+ICvCoMKgwqDCoMKgwqDCoCBkYXRhW2lkXS5iZ3AgPSBiZ3A7Cj4+PiArwqDCoMKg
wqDCoMKgwqAgZGF0YVtpZF0uY3RybF9vZmZzZXQgPSBLM19WVE1fVE1QU0VOUzBfQ1RSTF9PRkZT
RVQgKwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlkICogSzNf
VlRNX1JFR1NfUEVSX1RTOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRhdGFbaWRdLnN0YXRfb2Zmc2V0
ID0gZGF0YVtpZF0uY3RybF9vZmZzZXQgKyAweDg7Cj4+PiArwqDCoMKgwqDCoMKgwqAgSU5JVF9X
T1JLKCZkYXRhW2lkXS50aGVybWFsX3dxLCBrM190aGVybWFsX3dvcmspOwo+Pgo+PiDCoMKgwqDC
oMKgwqDCoCBXaGF0IGlzIHN1cHBvc2VkIHRvIGRvID8KPiAKPiBQZXJpb2RpY2FsbHkgcG9sbCB0
ZW1wZXJhdHVyZS4gSSBrbm93IHRoZXJlIGlzIG5vIHBhc3NpdmUgY29vbGluZyBhZ2VudAo+IGxp
a2UgY3B1ZnJlcSBhdCB0aGUgbW9tZW50IGJ1dCBpIGRvIGhhdmUgYSBjcml0aWNhbCB0cmlwIGRv
IHlvdQo+IHJlY29tbWVuZCB0byByZW1vdmUgdGhhdD8KCkFjdHVhbGx5IEkgd2FzIHJlZmVycmlu
ZyB0byB0aGUgd29ya3Egd2hpY2ggaXMgaW5pdGlhbGl6ZWQsIHRoZSBjYWxsYmFjawpzZXQgYnV0
IGl0IGlzIG5ldmVyIGNhbGxlZC4gSXQgY2FuIGJlIHJlbW92ZWQuCgpQbGVhc2UgdGFrZSBhbHNv
IHRoZSBvcHBvcnR1bml0eSB0byB3cmFwIHRoZSBjYWxscyB0byB0aGUgcmVnaXN0ZXIgd2l0aAph
biBleHBsaWNpdCBoZWxwZXIgZnVuY3Rpb24gbmFtZS4KCkFuZCByZW1vdmUgcmVnX2NudCB3aGlj
aCBpcyB1bnVzZWQuCgpUaGFua3MKCiAgLS0gRGFuaWVsCgotLSAKCiA8aHR0cDovL3d3dy5saW5h
cm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0Nz
CgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4g
RmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8Cjxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
