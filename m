Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93155E86C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlf9KXyvzrUZfnRY9fH3iQs5uqgJyG66p2tKAcO1WIw=; b=aCGUbGs0HimWbJ
	6y3Tmi4gli+u9Q2z2XmR5TfVa3h4pkaZfDnupGPUZxpjl2rABeyDaHtsiDFrA9atocgQB9od7m0Q3
	J6R0nDkDGm3OBlVFuZFdRCEFcXcJNoxVgAuWwHEm08Kv1Va/9jwBwWjApSgrgpD68JztPWaUIE4v9
	WbEKpz7yn89Aw1p0yGPhzeyKI78UtbaxmjKLsMbB29XYMA02n1C3hKms8a2RZ3zvSc36cDuA9pfQ+
	lLvHEwgZaH61EEsMW2i0j8fGWElJIP+LKWWg+akpc6XXnZej4dCzrlMt1wm7oRlk7Gws7SoVzqaUG
	IjiSU2o9NU3fux2ye+qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPeI-0005Cs-KI; Tue, 29 Oct 2019 11:26:54 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPWJ-00046u-Gx
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:18:40 +0000
Received: by mail-ed1-x544.google.com with SMTP id p59so10406944edp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 04:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=J1TIX7KBOhkEDUvUlXCGfzo0ftBx/02dSVP1EsfH5Yg=;
 b=dRF2HbKHVHZixPbPX+wgFMrl+ava9svy0g4H+AkjUAcPK0/X9wQNgWR7E4xc9rGnJJ
 Q8w1LWl7IpS143XNVa/X9gi74DroRujwtmaXM3cFuH5xJpUZCw1qvZsSKD7tAQjMToSd
 CrRqpsnKgB5FGnz+0yeyPaKDMjuXJaiEKX/aR01gm3uVzlZC1/KLX3TXuFM48rvPwYXb
 QO9rf1WaTR7vBt/wtpuAge1A+VnktpxZ+YwZRiOY89NLKIcam0zRgxniYjThF0njXyuT
 6FkIPf7LBst1dRg9OY75eSlSy0Cg05guoNJNXlnu6GCVvzD1xWZ6gztSL6b0W6e68lN5
 vPPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=J1TIX7KBOhkEDUvUlXCGfzo0ftBx/02dSVP1EsfH5Yg=;
 b=DFCFO9oV0DEzti7OPmwvUTxF0TAMZRGEz9zJ8LyZJCTvWyIOTRzalli9z+4PRneIsl
 TVQraUl8oULiElWYj/rHP1VU7qEfWDCpqJExcPofN1UbG1NLslsubIh6RcE+6vckUnjk
 67hcW76bUgXdJgqYz+g5aCq0gfXesICXA4GsxglGvWX4YGufkS8dGmMq+L8QagsSwMfY
 4ror42VDvBlHKa1ucNxbIX9IGZwgfLYjcLDmyRnxjGZ1CtOKOtZANbydn1dPru6X63lE
 4W3esKotb9o3+NH5NRurP2NCRDHc2KaYF1rUbsSikECpQkVVgew6empkIeq6ohmzap+r
 sA9Q==
X-Gm-Message-State: APjAAAVm5l2oDNoGEy80oQJimekWcOiQmGQjtBckpg1BUumX5h5698+0
 cVgadDFTyZSRQI/xVovp4T4cc2frvQT8ow==
X-Google-Smtp-Source: APXvYqxd0UnsWHkLoXCSeSyxR75r+FTK/wmY+wYx0WxrkEu7pYPLkgW0m0xq0i3miyTwErZqOzkjWw==
X-Received: by 2002:a50:9930:: with SMTP id k45mr25056228edb.134.1572347917211; 
 Tue, 29 Oct 2019 04:18:37 -0700 (PDT)
Received: from [192.168.27.135] ([37.157.136.206])
 by smtp.googlemail.com with ESMTPSA id g9sm420189edv.86.2019.10.29.04.18.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 04:18:36 -0700 (PDT)
Subject: Re: [PATCH v2 0/4] ARM: qcom: add defconfig items and dts nodes
To: Brian Masney <masneyb@onstation.org>, agross@kernel.org,
 bjorn.andersson@linaro.org
References: <20191024103140.10077-1-masneyb@onstation.org>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <49006809-0dde-ba24-4e91-0b210fe45599@linaro.org>
Date: Tue, 29 Oct 2019 13:18:35 +0200
MIME-Version: 1.0
In-Reply-To: <20191024103140.10077-1-masneyb@onstation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_041839_583234_40DAD331 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQuMTAuMTkg0LMuIDEzOjMxINGHLiwgQnJpYW4gTWFzbmV5IHdyb3RlOgo+IEhlcmUncyBh
IHNtYWxsIHBhdGNoIHNlcmllcyB0aGF0IGFkZHMgc29tZSBhZGRpdGlvbmFsIGZ1bmN0aW9uYWxp
dHkKPiB0byBxY29tX2RlZmNvbmZpZyBhbmQgdG8gcWNvbS1tc204OTc0LmR0c2k6IGludGVyY29u
bmVjdCwgb2NtZW0sCj4gYW5kIEhETUkgYnJpZGdlIChkZWZjb25maWcgb25seSkuCj4gCj4gU29t
ZSBoaWdoLWxldmVsIGNoYW5nZXMgc2luY2UgdjE6Cj4gLSBVcGRhdGVkIGludGVyY29ubmVjdCBz
dXBwb3J0LiBTZWUgcGF0Y2ggIzQgaW4gdGhpcyBzZXJpZXMgZm9yIGRldGFpbHMuCj4gLSBEcm9w
cGVkIG9jbWVtIGRlZmNvbmZpZyBzaW5jZSB0aGF0IGdvdCBtZXJnZWQuCj4gCj4gQnJpYW4gTWFz
bmV5ICg0KToKPiAgIEFSTTogcWNvbV9kZWZjb25maWc6IGFkZCBtc204OTc0IGludGVyY29ubmVj
dCBzdXBwb3J0Cj4gICBBUk06IHFjb21fZGVmY29uZmlnOiBhZGQgYW54Nzh4eCBIRE1JIGJyaWRn
ZSBzdXBwb3J0Cj4gICBBUk06IGR0czogcWNvbTogbXNtODk3NDogYWRkIG9jbWVtIG5vZGUKPiAg
IEFSTTogZHRzOiBxY29tOiBtc204OTc0OiBhZGQgaW50ZXJjb25uZWN0IG5vZGVzCj4gCj4gIGFy
Y2gvYXJtL2Jvb3QvZHRzL3Fjb20tbXNtODk3NC5kdHNpIHwgNzcgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysKPiAgYXJjaC9hcm0vY29uZmlncy9xY29tX2RlZmNvbmZpZyAgICAgfCAgNCAr
Kwo+ICAyIGZpbGVzIGNoYW5nZWQsIDgxIGluc2VydGlvbnMoKykKCkZvciB0aGUgc2VyaWVzOgpS
ZXZpZXdlZC1ieTogR2VvcmdpIERqYWtvdiA8Z2VvcmdpLmRqYWtvdkBsaW5hcm8ub3JnPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
