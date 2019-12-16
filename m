Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2757D120366
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:12:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQU1Juajxlp7PdbCe0z3gjuWM0mChh7x9ReBhlA9V+0=; b=jmLC1hXihJwkyw
	4B2pWL6Bh7lFJF4IUlyMlq6lHX8Il5eAbuc1XJEmg9TDSON+PZGi4tClREkjjqaRIr0jvlT5vGuKI
	9xIuyKOVElARoc5+8C/HmAdtviPsFmGFiKU5AybJDQ8WaNR2IBkaQRBZgiuDoAtc9QmMwIXSwNvjy
	DAn30GHw8/j++PgDtFOF9GhVxUj4aan+7W9Rsw3q+ANVMSMp19rfxvNOntLo/0EaasViFlvArDwK8
	xNffAmss1UOnIBsnElHvmUYIrfuxaH43PjWQgvobWbsAGMGAVEphedkfH9BzscL5xUifiPHzLDQGF
	GXjKrY09S15aUHhfYMGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoIE-0000iN-W3; Mon, 16 Dec 2019 11:12:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoI4-0000hT-Ok
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:11:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so6740271wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 03:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=2dxoabKlBZGvbp4gfeIRY6j7pCmpniW5VhZdZM1jvSg=;
 b=gAzRCm/Mi70HEKFLVKwdw4o6dgW1+mLf9GMIm8nSgC7Qz7NVXFTtfe89fsNxF5IPwO
 sNRdlKFk1DehYMbFr3XQ+pzSGskhva5BA9u9F5N1Y+UyWNBPIWImKo/IOxWFzToLNjXz
 I7HXqTpp1ZR7c9w2GQKByZ+FLo7L14/KXzvlnLv99C3e1u2ojDXJu2LMgf+bEWt/aWGm
 5GYZubOutSIqq8w7Ef4Qv0BVyjXAJKWKOhfacE46OxeHUKmjbYzDTDM8SL/J+GayssjG
 pKQvwVNHZ5buP2ykKauqxNaYT4XEvhGGimm7YEeqZppb2oGCLnev0ZZnNcDUvRjkzstJ
 ImqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=2dxoabKlBZGvbp4gfeIRY6j7pCmpniW5VhZdZM1jvSg=;
 b=Y8YkxAq3YmLHSSppLoyp6/GatNGuUjmL269nY0M/cVe0zhAlmu22ZKvAqQGyZl4fGO
 SGXi767TZjjX102dOQsR9tXSl385U5VbrByOzecqkG+dRbNSkC6tUXtM+DsjA+McxvH8
 WAO1jPxAegNSSeLpLw4zzFmmgirZ/gAoZg4Y921auJT3ubqUYmEe6ePxeLIV9RfJHy4I
 OCc3i+4eE4CkId6bgHhYj+EtGm4ucenm2cOTqUxsFEZuBNSjiDHHmbjrTUrQoFE63qYm
 iFVGXlqNBghTDy7OG389jmeSlfCyXwf1hEYzDwtUF6AzuFRK2glxpVuoW9577DyB4Blm
 jdGg==
X-Gm-Message-State: APjAAAW1re4TQScJgjtfjaJSAJ/I62qHn2P0jWy2fFw8mhIdilZ6FEvC
 trypAkR+bUkUBrlcjHbAQvZEIg==
X-Google-Smtp-Source: APXvYqx8pA749AH1DqU2BLWtKrkPOyGDfdptUcuuJl8+7mbfN9t9G/HQd47nlhBpyBSIKall5Rya2w==
X-Received: by 2002:adf:bc87:: with SMTP id g7mr30557610wrh.121.1576494711131; 
 Mon, 16 Dec 2019 03:11:51 -0800 (PST)
Received: from dell ([2.27.35.132])
 by smtp.gmail.com with ESMTPSA id g25sm24456932wmh.3.2019.12.16.03.11.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 03:11:50 -0800 (PST)
Date: Mon, 16 Dec 2019 11:11:50 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [RFCv1 1/8] mfd: rk808: Refactor shutdown functions
Message-ID: <20191216111150.GA2369@dell>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <20191206184536.2507-2-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206184536.2507-2-linux.amoon@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_031152_810514_23A4A992 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Schultz <d.schultz@phytec.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAwNiBEZWMgMjAxOSwgQW5hbmQgTW9vbiB3cm90ZToKCj4gRnJvbTogRGFuaWVsIFNj
aHVsdHogPGQuc2NodWx0ekBwaHl0ZWMuZGU+Cj4gCj4gU2luY2UgYWxsIHNodXRkb3duIGZ1bmN0
aW9ucyBoYXZlIGFsbW9zdCB0aGUgc2FtZSBjb2RlLCBhbGwgbG9naWMKPiBmcm9tIHRoZSBzaHV0
ZG93biBmdW5jdGlvbnMgY2FuIGJlIHJlZmFjdG9yZWQgdG8gYSBuZXcgZnVuY3Rpb24KPiAicms4
MDhfdXBkYXRlX2JpdHMiLCB3aGljaCBjYW4gdXBkYXRlIGEgcmVnaXN0ZXIgYnkgYSBnaXZlbiBh
ZGRyZXNzCj4gYW5kIGJpdG1hc2sgYW5kIHZhbHVlLgo+IAo+IGxpbms6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC85Mzc0MDQvCj4gQ2M6IEhlaWtvIFN0dWVibmVyIDxo
ZWlrb0BzbnRlY2guZGU+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFNjaHVsdHogPGQuc2NodWx0
ekBwaHl0ZWMuZGU+Cj4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21h
aWwuY29tPgo+IC0tLQo+IFtyZWJhc2VkIG9uIGxhdGVzdCBrZXJuZWxdCj4gTW9kaWZpZWQgdGhl
IEFQSSB0byBzZXQgdGhlIHZhbHVlLgo+IFRoaXMgY2hhbmdlcyB3ZXJlIHN1Ym1pdGVkIHdpdGgg
YmVsb3cgcGF0Y2guCj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRj
aC85Mzc0MDQvCj4gLS0tCj4gIGRyaXZlcnMvbWZkL3JrODA4LmMgfCA4NyArKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDI2IGlu
c2VydGlvbnMoKyksIDYxIGRlbGV0aW9ucygtKQoKTm90IHN1cmUgd2hhdCdzIGhhcHBlbmluZyB3
aXRoIHRoZXNlIChjb21wZXRpbmc/KSBwYXRjaC1zZXRzLiAgSSdtIG5vdApwbGFubmluZyBvbiBn
ZXR0aW5nIGludm9sdmVkIHVudGlsIHlvdSBndXlzIGhhdmUgYXJyaXZlZCBhdCBhbmQgYWdyZWVk
CnVwb24gYSBzaW5nbGUgc29sdXRpb24uCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFy
byBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxv
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
