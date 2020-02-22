Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB8A168D50
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 08:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v09rBeC1qXseqEfS/XDVGOr1L7zdUpzQmMwd2rxlOBI=; b=LuwWos2xfav32/
	qn3RaqK01W7rVugA9aPmMqT8gNwJg86xMwdoSS1limdK/XdWAqzszGphRf7f2qyqcFYnt/oN6KHvK
	hj3Fs+MLLB2rVW+FC10++XlpULw5KthxueIjRsUoAuGm8Bg7z/VT0Z/kenlS53G0BLfkmyQRFkKEP
	7nElCyKADVx8bTPtn9aLbwogsEPcPS5WesLLH9fiwykHZ2VzUdCAOwS4Qr1KtMrAm0FgA2PnUmazO
	G/xZdW6FbkSDv1sEHl+281x8EW0C6YoXCtJ+a1KB3/4Vgk2tQLB7R4VAfyhgenfBi5U78R2F4GOZc
	RM/B5q3hM7mM6/qd2jLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Pa9-0007KN-7n; Sat, 22 Feb 2020 07:52:13 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Pa0-0007Ja-BX
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 07:52:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id e8so4544452wrm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 23:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QUtHKT7e8Py7ijOYzzIEt46tkkQ7iGc4YaN3KsSFBLM=;
 b=Q79JC3DECAOa5y6wlykoNBhfn7WKO7SbH70qdgTm2pCFXoO6i2OiqalqD9C7d5kNGV
 /zr7pI/kje9kHg31Q1G7nEuV6hOIS1rOJnLyaq+YCXOjzer3DGSl9Ndkh+AOLqrhYs32
 bqahe4B/z6U+hxWISnwsvHkV5qxd9gF85YJEqRyAkYM0ENpgTZ5SbyvU2yXUuo7XMvUx
 iMLfTnSSEfCz+SUrkDbcMe8iVR2/6tqdN6ty/H1psx5TrLvJgCHELJ3165FSh3Wb8q/A
 dihUQgkYn0qLWz5hGC6hDOiTZOaAgq3GjbYMt1gE6WwcIJBg588CamMnqlqLXr3wHIYM
 +DkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=QUtHKT7e8Py7ijOYzzIEt46tkkQ7iGc4YaN3KsSFBLM=;
 b=FjI0nq8UXLROgDSjKYN2Dxm/OqMcLn4SI9f5ZpeoKeztROIr+tB/GeLvs8TyZE2t8c
 EtBwevbAsmJSNWyVmNOVV8mSarvOa8thdTWcbLUqVpT9jFuE6G8sXKem7+YvshPBm18u
 WneXLYsMUt6uUeYq/GpCl1CIJzeW2DLzym5IHckxxDewTa/hMX/w4BjXDMmNebSxeddH
 hMjNVLMQ/SKjTh7iVxkvT+1d062sbz6aht3jApB09PZnas0PPaOmXaEdWxP/y7UJdT2T
 rjxoDqLt35E1W3hJrHpMMCfkiWLL8dHUl6nHvaeFQQVTnHmooq0Z0hy4SM4XzqYPkx3f
 591w==
X-Gm-Message-State: APjAAAX4LMetD2k1iatVAJricJYtw9z79P/kNhhsx/Ih6+yhKKrT4Z/X
 l6Orh/ENuBEV2HqzrN/f4oa8qA==
X-Google-Smtp-Source: APXvYqzBZw6U9SQJ/DL73MMLA6PSr+uS16G3wh9wgcOUAhYt9tB+b1B4hmC4GaCY/tHpstV3bZFeIQ==
X-Received: by 2002:a5d:5221:: with SMTP id i1mr49845193wra.44.1582357920292; 
 Fri, 21 Feb 2020 23:52:00 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:903b:a048:f296:e3ae?
 ([2a01:e34:ed2f:f020:903b:a048:f296:e3ae])
 by smtp.googlemail.com with ESMTPSA id r6sm7514006wrp.95.2020.02.21.23.51.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Feb 2020 23:51:59 -0800 (PST)
Subject: Re: [PATCH V15 RESEND 5/5] arm64: dts: imx: add i.MX8QXP thermal
 support
To: Anson Huang <anson.huang@nxp.com>
References: <1582161028-2844-1-git-send-email-Anson.Huang@nxp.com>
 <1582161028-2844-5-git-send-email-Anson.Huang@nxp.com>
 <20200221130448.GC10516@linaro.org>
 <DB3PR0402MB39163B3EC2B6077C51D821DEF5120@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <59784965-dba6-5878-68fa-5657f3e5f02e@linaro.org>
Date: Sat, 22 Feb 2020 08:51:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB39163B3EC2B6077C51D821DEF5120@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_235204_426787_AAD9C3E7 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "krzk@kernel.org" <krzk@kernel.org>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIvMDIvMjAyMCAwMDo1MywgQW5zb24gSHVhbmcgd3JvdGU6Cj4gSGksIERhbmllbAo+IAoK
WyAuLi4gXQoKPj4+ICsKPj4+ICsJdGhlcm1hbF96b25lczogdGhlcm1hbC16b25lcyB7Cj4+PiAr
CQljcHUtdGhlcm1hbDAgewo+Pj4gKwkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwyNTA+Owo+
Pj4gKwkJCXBvbGxpbmctZGVsYXkgPSA8MjAwMD47Cj4+PiArCQkJdGhlcm1hbC1zZW5zb3JzID0g
PCZ0c2VucyBJTVhfU0NfUl9TWVNURU0+Owo+Pj4gKwkJCXRyaXBzIHsKPj4+ICsJCQkJY3B1X2Fs
ZXJ0MDogdHJpcDAgewo+Pj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8MTA3MDAwPjsKPj4+ICsJCQkJ
CWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4+PiArCQkJCQl0eXBlID0gInBhc3NpdmUiOwo+Pj4gKwkJ
CQl9Owo+Pgo+PiBNYXkgYmUgeW91IGNhbiBhZGQgYSAnaG90JyB0cmlwIHBvaW50IGJlZm9yZSAn
Y3JpdGljYWwnIGZvciBmdXR1cmUgdXNlIGJlZm9yZQo+PiByZWFjaGluZyB0aGUgZW1lcmdlbmN5
IHNodXRkb3duLgo+IAo+IFRoZSAncGFzc2l2ZScgdHJpcCBpcyBhY3R1YWxseSB0aGUgJ2hvdCcg
dHJpcCBwb2ludCB5b3UgbWVudGlvbmVkLCBhbmQgSSBoYXZlIGNvbWJpbmVkIGl0IHRvCj4gYmVs
b3cgY29vbGluZyBtYXAgd2hpY2ggd2lsbCB0aHJvdHRsZSBjcHUtZnJlcSB3aGVuIHBhc3NpdmUg
KGhvdCkgcG9pbnQgaXMgcmVhY2hlZC4KPiBXZSBhbGwgdXNlICdwYXNzaXZlJyBhcyAnaG90JyBh
bGFybSBhbmQgdHJpZ2dlciBjcHUtZnJlcSB0aHJvdHRsZSBvbiBpLk1YIHBsYXRmb3Jtcy4gCgpT
b3JyeSwgSSdtIG5vdCBzdXJlIHRvIGdldCB0aGUgcG9pbnQuIEEgJ2hvdCcgdHJpcCBwb2ludCBp
cyBub3QgYQoncGFzc2l2ZScgdHJpcCBwb2ludC4gVGhlICdob3QnIHRyaXAgcG9pbnQgaXMgYSBj
cml0aWNhbCB0ZW1wZXJhdHVyZSBhbmQKYSBub3RpZmljYXRpb24gaXMgcmFpc2VkIFsxXVsyXS4K
Ckl0IGlzIHRoZSBsYXN0IGNoYW5jZSBmb3IgdGhlIHN5c3RlbSB0byBkbyBzb21ldGhpbmcgYmVm
b3JlIHRoZSBuZXh0CnRyaXAgcG9pbnQgJ2NyaXRpY2FsJyBpcyByZWFjaGVkIGFuZCB3aGVyZSBh
biBlbWVyZ2VuY3kgc2h1dGRvd24gaXMgZG9uZS4KClRoZSAncGFzc2l2ZScgdHJpcCBwb2ludCBp
cyB0aGUgdGFyZ2V0IHRlbXBlcmF0dXJlIGZvciBtaXRpZ2F0aW9uIGluIGEKbm9ybWFsIHNpdHVh
dGlvbiB3aGVuIHRoZSBzeXN0ZW0gaXMgbG9hZGVkLgoKWzFdCmh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZl
cnMvdGhlcm1hbC90aGVybWFsX2NvcmUuYyNuMjg4ClsyXQpodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJz
L3RoZXJtYWwvdGhlcm1hbF9jb3JlLmMjbjQyMAoKCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8u
b3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpG
b2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFj
ZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRw
Oi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
