Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C8AE13DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 10:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCTZVq54/8R5PyH6P4ragKBMclfYkdWE1q5syd0jw5s=; b=FU1EJ66BiFCb9V
	I4TIXyr55ZgHlVBb3/Eqy6SWYYdMucXtj5z3m+TjBu7NqYcokdq2LCcPFpPPFL3ALxYzeU3sj6V89
	Irntmp3JJ+yGGzG8qeovHayT6Cs2HRjzI1uyD4SUlpyZ3FefGeMPzQg4gyYGVqgOD9ZLm8yC+cEs0
	7rXNBm52bcZTCY4/hdgSFlNAJZMqqzBPrDpChGm72NaFJkSotY+5aAtx5zur4ghEyBaQEVJW54hKn
	fWwqk1jIiwYIrRKdd+HL3NOc6Gs1o0loLSP7QlTkhFtCCHruKqbsR0pMdY6kSUa8rdDdEFDD7LskY
	f1Ip/ZbsX1vRt4TrVssw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNBp2-0000ge-Iy; Wed, 23 Oct 2019 08:16:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNBoq-0000fj-BZ
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 08:16:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id t16so15848857wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 01:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=WbxBtm15ehJ1RZCxqVQYmBoMODjzafh8sNAh0IrYMnM=;
 b=tMnxwFWOP+DcVkZ22BE7ijTUOqeQbAgS6s+w5MlY6cZt8IAg9346u14e+jpLXjfVoe
 nNV63+Mh1qSmiAemdLhj8f0NEj609/L9TyAGrHwSOuYs5EDiYOvxGmkfQ9N6jDM6CZTQ
 SmegHcsD4u1fUJq+6qYBIz2kRHFS80ufhexZYqJNXHSYRzKJqbn8I8sGb/ay52cVJni0
 dqLJINFUzFyfYiB/oWumJWK71rIDkuZ2owLwJZxbVygLMESk6Z+e4CHWID3cPgM/NQ4z
 kuTUsPhwyeiQnu1TGP36i6puPLJmPEiQbF11QZQpGsEDlUX6JQSNV6LIdy4tfP8Gv5kC
 JzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WbxBtm15ehJ1RZCxqVQYmBoMODjzafh8sNAh0IrYMnM=;
 b=SpluUy8rzVWNA107HgxR1ljVGJb9qwkFBW8pi544SWYjdSG3mWSCuypvS/lU6BVBk9
 os6zjWlWertKRnCWVEO7B7XbLZ0wL4SvsRSUmCeZifcbrNF5qr69rk2u+qQr8edfPb10
 x3JjwQRO/4h3p7Dnlc3Kjok5D9b/EQ9I5EIB7S+wejsyoU+7JRUBn7Fz/Qs0uYf+t5qe
 +WGD9m2Zt1p8VPEajZTq3iXdlhvESgvW4GSd4NutzwY0m4e4cESdhjsqMXaXdtpBqILu
 SzvZNKmI8z6elUxKMIVNT8QtlaC2iEFEo3373JyLwpWoHzY/LLObdEz7oMHOp2fQZM+R
 5TiA==
X-Gm-Message-State: APjAAAV3SrhbuGH2NrIW7twikbrRmAlqanjteDFgdfj5GpXCchFw/xCk
 lcdz6kqxLeGk6gn5xvQDNlGZcxMLpqs0NA==
X-Google-Smtp-Source: APXvYqyQLKTf56oSSBJJdMYaRgF+bUBUWCWlNytDptiBX3zCwn3VT/a7qS1uX2Zpp1qwQ1dd66prZQ==
X-Received: by 2002:a5d:4612:: with SMTP id t18mr6798024wrq.255.1571818592047; 
 Wed, 23 Oct 2019 01:16:32 -0700 (PDT)
Received: from [192.168.27.135] ([37.157.136.206])
 by smtp.googlemail.com with ESMTPSA id 37sm32673981wrc.96.2019.10.23.01.16.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Oct 2019 01:16:31 -0700 (PDT)
Subject: Re: [PATCH 2/5] ARM: qcom_defconfig: add msm8974 interconnect support
To: Brian Masney <masneyb@onstation.org>, agross@kernel.org,
 bjorn.andersson@linaro.org
References: <20191013080804.10231-1-masneyb@onstation.org>
 <20191013080804.10231-3-masneyb@onstation.org>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <0ec2aaa4-bd71-5e69-f8f0-6acbb032e7cb@linaro.org>
Date: Wed, 23 Oct 2019 11:16:30 +0300
MIME-Version: 1.0
In-Reply-To: <20191013080804.10231-3-masneyb@onstation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_011636_541719_DFA5859D 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQnJpYW4sCgpUaGFuayB5b3UgZm9yIHdvcmtpbmcgb24gdGhpcyEKCk9uIDEzLjEwLjE5INCz
LiAxMTowOCDRhy4sIEJyaWFuIE1hc25leSB3cm90ZToKPiBBZGQgaW50ZXJjb25uZWN0IHN1cHBv
cnQgZm9yIG1zbTg5NzQtYmFzZWQgU29DcyBpbiBvcmRlciB0byBzdXBwb3J0IHRoZQo+IEdQVSBv
biB0aGlzIHBsYXRmb3JtLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJyaWFuIE1hc25leSA8bWFzbmV5
YkBvbnN0YXRpb24ub3JnPgo+IC0tLQo+ICBhcmNoL2FybS9jb25maWdzL3Fjb21fZGVmY29uZmln
IHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybS9jb25maWdzL3Fjb21fZGVmY29uZmlnIGIvYXJjaC9hcm0vY29uZmlncy9x
Y29tX2RlZmNvbmZpZwo+IGluZGV4IGI2ZmFmNmYyZGRiNC4uMzJmYzhhMjRlNWM3IDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtL2NvbmZpZ3MvcWNvbV9kZWZjb25maWcKPiArKysgYi9hcmNoL2FybS9j
b25maWdzL3Fjb21fZGVmY29uZmlnCj4gQEAgLTI1Miw2ICsyNTIsOSBAQCBDT05GSUdfUEhZX1FD
T01fSVBRODA2WF9TQVRBPXkKPiAgQ09ORklHX1BIWV9RQ09NX1VTQl9IUz15Cj4gIENPTkZJR19Q
SFlfUUNPTV9VU0JfSFNJQz15Cj4gIENPTkZJR19RQ09NX1FGUFJPTT15Cj4gK0NPTkZJR19JTlRF
UkNPTk5FQ1Q9bQoKV2Ugd2FudCB0byBjaGFuZ2UgaXQgZnJvbSB0cmlzdGF0ZSB0byBib29sIFsx
XS4KCj4gK0NPTkZJR19JTlRFUkNPTk5FQ1RfUUNPTT15Cj4gK0NPTkZJR19JTlRFUkNPTk5FQ1Rf
UUNPTV9NU004OTc0PW0KPiAgQ09ORklHX0VYVDJfRlM9eQo+ICBDT05GSUdfRVhUMl9GU19YQVRU
Uj15Cj4gIENPTkZJR19FWFQzX0ZTPXkKPiAKCk90aGVyd2lzZSBsb29rcyBnb29kIHRvIG1lLgoK
VGhhbmtzLApHZW9yZ2kKClsxXQpodHRwczovL2xvcmUua2VybmVsLm9yZy9yL2I3ODljY2UzODhk
ZDFmMjkwNjQ5MmYzMDdkZWE2NzgwYzM5OGJjNmEuMTU2NzA2NTk5MS5naXQudmlyZXNoLmt1bWFy
QGxpbmFyby5vcmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
