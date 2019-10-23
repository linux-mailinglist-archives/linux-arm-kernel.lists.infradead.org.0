Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 634E5E1957
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 13:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJ2oufPgHDEn3nMbLC39dJd7jzLhQ6JmzAbbzQIqn9g=; b=ibVqZZwZQn1whf
	wYzxwO8GftzF6URSxI3UedUNBwe4V2bC7/SZXsp8O9rlNhID+7befgg9Wm23wqU4x5MDb3Deybswf
	Urqo6uVbaCEqMoGZPB2KOgtrL4TYL/dXV2pgG34Rr1ek2/uzSIP58qqBz7GutnSzMKaCp2Twmtgjf
	P+P/Mkr+Ly2yOoQdTSOgK+7VwGXfUnmFFezqmkcro3dxYvCyvL+8Fjul/q2kyxDUMhdb2fYEnfFqo
	aUHDbnch/M6epmWoLtCVlafH+hlUmsU8bFjVUWEFsbe5y+yTBMsKvP0/tmzeb3Wvb92B9j+27z5vE
	jk6tO3hFVEVqdudnU1+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNF9w-0004pW-J2; Wed, 23 Oct 2019 11:50:36 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNF9k-0004k2-0s
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 11:50:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id i13so5612273wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 04:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=wDYk9ecxVmBs+fLPH4NRWrGaP2z4tJFrCfIWmLCCUuk=;
 b=KaGKOlu8YrKxfNkM1N0LQQcM5xZYyJR+rVFsi0De4kZtD7uAZp8VWGNqlQVeo6Im52
 iPmveajFItIOTHJix9H0JOU+2IVkb3BXnkxcsGeB2IWfNLlGAoE9FCXLBHyKfqi002RB
 1EQMmowGvO9CHqnXHRlpH8E6VVat2qBPT3f9AZ1JJbuebnSSJltD7LldgvpkgjMEgP6M
 zSVgR0OQiBwAeECibJD/ho4PYMaQaVPRSqhQ26NBkxpRRAZd0X0S7Mk0OEeBwkOBYEh4
 BZGLuIEk96a2BdRQPZBV3JKVM19Bsy6TH88FO8K63nuOSCDEHaMpCn/5OHhgbZCWLO6g
 JTPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wDYk9ecxVmBs+fLPH4NRWrGaP2z4tJFrCfIWmLCCUuk=;
 b=rAGJa7ARp9Z7fEtQW88SBkX7GTo3pX4UY9IFSQLSdWXyC5eLN9Vj5AcMc+hYM3kPCF
 8aneQx09VKQ9Hvud5aVOdZB+ylUpWGlHSn6ybgVJZu/qCWDaHT25d1DbUXqFTrP+JMJ8
 1Dj+l43CY97W/hq23ut+TGi0QC9Q3DLPyj7AYejuPebc7NF7Jb6bN5rrJx3f1xFwR2ED
 4KfTHPi5RAfD5mFVAJdzo7aez1RmkAboiU1lqLXGG9uMyFMo4neiPzDq6wixv/HBasD6
 fmZccJ9h6q3HtyYCQqR4HFyhEnmQgamFGU2vpgvbad1OdCV3dl3cFMCVfcLwg13gesDP
 YnQQ==
X-Gm-Message-State: APjAAAXeQg2ixuQ0c7roninnVuzziVyqXm0gXm4XLKT7cnC3cQAh23RH
 TSHQS1vAHSsiuRko28fizQuOm3tCDe0tSg==
X-Google-Smtp-Source: APXvYqy/5LGwNsdjQoZRl8FIEKa93VFwqP0nK7ixRAhHPotJv2ZJeht3bwVZ2vma4fAkn5NDziu6+A==
X-Received: by 2002:a05:600c:2214:: with SMTP id
 z20mr7692758wml.10.1571831422367; 
 Wed, 23 Oct 2019 04:50:22 -0700 (PDT)
Received: from [192.168.27.135] ([37.157.136.206])
 by smtp.googlemail.com with ESMTPSA id j19sm38467203wre.0.2019.10.23.04.50.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Oct 2019 04:50:21 -0700 (PDT)
Subject: Re: [PATCH 5/5] ARM: dts: qcom: msm8974: add interconnect nodes
To: Brian Masney <masneyb@onstation.org>, agross@kernel.org,
 bjorn.andersson@linaro.org
References: <20191013080804.10231-1-masneyb@onstation.org>
 <20191013080804.10231-6-masneyb@onstation.org>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <d154b0c6-fc39-bebc-d1b5-cc179fb6055d@linaro.org>
Date: Wed, 23 Oct 2019 14:50:19 +0300
MIME-Version: 1.0
In-Reply-To: <20191013080804.10231-6-masneyb@onstation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_045024_072034_C57D576C 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

SGkgQnJpYW4sCgpUaGFua3MgZm9yIHRoZSBwYXRjaCEKCk9uIDEzLjEwLjE5INCzLiAxMTowOCDR
hy4sIEJyaWFuIE1hc25leSB3cm90ZToKPiBBZGQgaW50ZXJjb25uZWN0IG5vZGVzIHRoYXQncyBu
ZWVkZWQgdG8gc3VwcG9ydCBidXMgc2NhbGluZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCcmlhbiBN
YXNuZXkgPG1hc25leWJAb25zdGF0aW9uLm9yZz4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMv
cWNvbS1tc204OTc0LmR0c2kgfCA2MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2R0cy9xY29tLW1zbTg5NzQuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3Fjb20tbXNt
ODk3NC5kdHNpCj4gaW5kZXggYmRiZGU1MTI1YTU2Li5lZDk4ZDE0YTg4YjEgMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9hcm0vYm9vdC9kdHMvcWNvbS1tc204OTc0LmR0c2kKPiArKysgYi9hcmNoL2FybS9i
b290L2R0cy9xY29tLW1zbTg5NzQuZHRzaQo+IEBAIC0xLDYgKzEsNyBAQAo+ICAvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICAvZHRzLXYxLzsKPiAgCj4gKyNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9pbnRlcmNvbm5lY3QvcWNvbSxtc204OTc0Lmg+Cj4gICNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4gICNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9jbG9jay9xY29tLGdjYy1tc204OTc0Lmg+Cj4gICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9jbG9jay9xY29tLG1tY2MtbXNtODk3NC5oPgo+IEBAIC0xMTA2LDYgKzExMDcsNjAgQEAKPiAg
CQkJfTsKPiAgCQl9Owo+ICAKPiArCQliaW1jOiBpbnRlcmNvbm5lY3RAZmMzODAwMDAgewo+ICsJ
CQlyZWcgPSA8MHhmYzM4MDAwMCAweDZhMDAwPjsKPiArCQkJY29tcGF0aWJsZSA9ICJxY29tLG1z
bTg5NzQtYmltYyI7Cj4gKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MT47Cj4gKwkJCWNsb2Nr
LW5hbWVzID0gImJ1cyIsICJidXNfYSI7Cj4gKwkJCWNsb2NrcyA9IDwmcnBtY2MgUlBNX1NNRF9C
SU1DX0NMSz4sCj4gKwkJCSAgICAgICAgIDwmcnBtY2MgUlBNX1NNRF9CSU1DX0FfQ0xLPjsKPiAr
CQl9Owo+ICsKPiArCQljbm9jOiBpbnRlcmNvbm5lY3RAZmM0ODAwMDAgewo+ICsJCQlyZWcgPSA8
MHhmYzQ4MDAwMCAweDQwMDA+Owo+ICsJCQljb21wYXRpYmxlID0gInFjb20sbXNtODk3NC1jbm9j
IjsKPiArCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwxPjsKPiArCQkJY2xvY2stbmFtZXMgPSAi
YnVzIiwgImJ1c19hIjsKPiArCQkJY2xvY2tzID0gPCZycG1jYyBSUE1fU01EX0NOT0NfQ0xLPiwK
PiArCQkJICAgICAgICAgPCZycG1jYyBSUE1fU01EX0NOT0NfQV9DTEs+Owo+ICsJCX07Cj4gKwo+
ICsJCW1tc3Nub2M6IGludGVyY29ubmVjdEBmYzQ3ODAwMCB7Cj4gKwkJCXJlZyA9IDwweGZjNDc4
MDAwIDB4NDAwMD47Cj4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxtc204OTc0LW1tc3Nub2MiOwo+
ICsJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDE+Owo+ICsJCQljbG9jay1uYW1lcyA9ICJidXMi
LCAiYnVzX2EiOwo+ICsJCQljbG9ja3MgPSA8Jm1tY2MgTU1TU19TMF9BWElfQ0xLPiwKPiArCQkJ
ICAgICAgICAgPCZtbWNjIE1NU1NfUzBfQVhJX0NMSz47Cj4gKwkJfTsKPiArCj4gKwkJb2NtZW1u
b2M6IGludGVyY29ubmVjdEBmYzQ3MDAwMCB7Cj4gKwkJCXJlZyA9IDwweGZjNDcwMDAwIDB4NDAw
MD47Cj4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxtc204OTc0LW9jbWVtbm9jIjsKPiArCQkJI2lu
dGVyY29ubmVjdC1jZWxscyA9IDwxPjsKPiArCQkJY2xvY2stbmFtZXMgPSAiYnVzIiwgImJ1c19h
IjsKPiArCQkJY2xvY2tzID0gPCZycG1jYyBSUE1fU01EX09DTUVNR1hfQ0xLPiwKPiArCQkJICAg
ICAgICAgPCZycG1jYyBSUE1fU01EX09DTUVNR1hfQV9DTEs+Owo+ICsJCX07Cj4gKwo+ICsJCXBu
b2M6IGludGVyY29ubmVjdEBmYzQ2ODAwMCB7Cj4gKwkJCXJlZyA9IDwweGZjNDY4MDAwIDB4NDAw
MD47Cj4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSxtc204OTc0LXBub2MiOwo+ICsJCQkjaW50ZXJj
b25uZWN0LWNlbGxzID0gPDE+Owo+ICsJCQljbG9jay1uYW1lcyA9ICJidXMiLCAiYnVzX2EiOwo+
ICsJCQljbG9ja3MgPSA8JnJwbWNjIFJQTV9TTURfUE5PQ19DTEs+LAo+ICsJCQkgICAgICAgICA8
JnJwbWNjIFJQTV9TTURfUE5PQ19BX0NMSz47Cj4gKwkJfTsKPiArCj4gKwkJc25vYzogaW50ZXJj
b25uZWN0QGZjNDYwMDAwIHsKPiArCQkJcmVnID0gPDB4ZmM0NjAwMDAgMHg0MDAwPjsKPiArCQkJ
Y29tcGF0aWJsZSA9ICJxY29tLG1zbTg5NzQtc25vYyI7Cj4gKwkJCSNpbnRlcmNvbm5lY3QtY2Vs
bHMgPSA8MT47Cj4gKwkJCWNsb2NrLW5hbWVzID0gImJ1cyIsICJidXNfYSI7Cj4gKwkJCWNsb2Nr
cyA9IDwmcnBtY2MgUlBNX1NNRF9TTk9DX0NMSz4sCj4gKwkJCSAgICAgICAgIDwmcnBtY2MgUlBN
X1NNRF9TTk9DX0FfQ0xLPjsKPiArCQl9OwoKSXQgd291bGQgaGF2ZSBiZWVuIG5pY2UgdG8gaGF2
ZSB0aGUgRFQgbm9kZXMgc29ydGVkIGJ5IGFkZHJlc3MsIGJ1dCBpIHN1cHBvc2UgaXQKZG9lc24n
dCBtYWtlIG11Y2ggZGlmZmVyZW5jZSwgYXMgdGhlIHJlc3Qgb2YgdGhlIG5vZGVzIGluIHRoaXMg
ZmlsZSBhcmUgdW5zb3J0ZWQKYW55d2F5LgoKPiArCj4gIAkJbWRzczogbWRzc0BmZDkwMDAwMCB7
Cj4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAo+IEBAIC0xMTUyLDYgKzEyMDcsMTEgQEAK
PiAgCQkJCSAgICAgICAgICAgICAgImNvcmUiLAo+ICAJCQkJICAgICAgICAgICAgICAidnN5bmMi
Owo+ICAKPiArCQkJCWludGVyY29ubmVjdHMgPSA8Jm1tc3Nub2MgTU5PQ19NQVNfR1JBUEhJQ1Nf
M0QgJmJpbWMgQklNQ19TTFZfRUJJX0NIMD4sCj4gKwkJCQkgICAgICAgICAgICAgICAgPCZvY21l
bW5vYyBPQ01FTV9WTk9DX01BU19HRlgzRCAmb2NtZW1ub2MgT0NNRU1fU0xWX09DTUVNPjsKCldo
byB3aWxsIGJlIHRoZSByZXF1ZXN0aW5nIGJhbmR3aWR0aCB0byBERFIgYW5kIG9jbWVtPyBJcyBp
dCB0aGUgZGlzcGxheSBvciBHUFUKb3IgYm90aD8gVGhlIGFib3ZlIHNlZW0gbGlrZSBHUFUtcmVs
YXRlZCBpbnRlcmNvbm5lY3RzLCBzbyBtYXliZSB0aGVzZQpwcm9wZXJ0aWVzIHNob3VsZCBiZSBp
biB0aGUgR1BVIERUIG5vZGUuCgo+ICsJCQkJaW50ZXJjb25uZWN0LW5hbWVzID0gIm1kcDAtbWVt
IiwKPiArCQkJCSAgICAgICAgICAgICAgICAgICAgICJtZHAxLW1lbSI7CgpBcyB0aGUgc2Vjb25k
IHBhdGggaXMgbm90IHRvIEREUiwgYnV0IHRvIG9jbWVtLCBpdCBtaWdodCBiZSBiZXR0ZXIgdG8g
Y2FsbCBpdApzb21ldGhpbmcgbGlrZSAiZ3B1LW9jbWVtIi4KClRoYW5rcywKR2VvcmdpCgo+ICsK
PiAgCQkJCXBvcnRzIHsKPiAgCQkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiAgCQkJCQkjc2l6
ZS1jZWxscyA9IDwwPjsKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
