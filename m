Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA9219FA56
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iE3ZqyD7qawENISFVJaJj4zt0MJOhd2KcsbwABzi9gE=; b=rF55s1NSPQ6eHE
	mhEYclKrz1NMoxO/Ljy9vkSmwrXGLkU4ZzbI/ZxsLhzG4NnrdCuY1mLWJSo4W5C7PeFMQNlWHa30u
	Jmj0iFdoABfbLuAjM/YwSbeuKBA27XLNarAnkJnS7t3Hr+QbWXffo2Nb92G0aMSP999Y9qmNVL6Xs
	rjP4nLIhqs4huDfi+kzhDshFmwSW7ksZ/99XkVx7jZ1SErUJzyf2xmchEpYNvfmaEovYnuc+W2Y8L
	8OiBE2fYNKd+2nLnM43YuJY+O9kHWuptz4gIitvrcbAHQ4ApymVJXFBMxyI315IxHHWmrIfHT40l0
	RlFzTbwK/pANOi0Uez7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUnK-00011f-79; Mon, 06 Apr 2020 16:40:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUnD-000113-6v
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:40:13 +0000
Received: by mail-wr1-x441.google.com with SMTP id 31so215720wre.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 09:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NgLl7HHSoLMH6wWDMAS/slExign8Bsc9NbQ/c/sVCug=;
 b=aNvHE5D671GXZ8oV3SdiIYeuNCd6IxEYlIYPCTCYq0MmTbXw3gp/BQ0kbVc0zO0XEN
 8vmpAna2SLdH/vT4Wy5P2I6YgEiZCrWhWv+QSMhsec+5krD80cqLNRHP9WoBXJVf8g3O
 sijUrTyVkAAkhX6zkx8aZJHE7XlOf+0RiNdCyRZy63a3R1kR6CHJVPdeYgBOyt+dVppm
 fGc2VExSve5vmHykEsAC6pKnoJ99IZ9pd5gwXS6IQ5lgwIPRNdjUvWNrgDenHw+JT3GA
 pd0k0LZhn1sr9iVs7S+JSuxC/25O7yPgebagu1JGTxa+eIIZaRlW0wvcNLlROKZLgnoF
 dNBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=NgLl7HHSoLMH6wWDMAS/slExign8Bsc9NbQ/c/sVCug=;
 b=K04ORuW96I48UOK7Bd12SD5TTm3nEGUBtXCRfUeKX7VMXBNHFKoRrqj/btMHq3Qbsw
 XlKxMKCyfmS61b/lfeN790Tjhi1ng1AgTbDvsG5VKF0NDoa+cTCh2BFgjpZckJny9mNA
 1RX9avZZRzfl/oo2Ind9ECI2cwTyvhnAORMA2QgxSp+CgMFNZ16GdxXGMuMKrDWkV1f0
 9tE/+w+iMK5Ry0xj1aaCvGvw0+82wqSk/qtjPY/9JD9Q3lPQjT03kcHLprB8LS0ohREQ
 hNqRK/DYaByVHYQxls8S2xyj2qmmQ0oBnSXkoPXQOoW/Hn15goQLSYqWHWeoMpAjpxcl
 XHmg==
X-Gm-Message-State: AGi0PuaFDr0lQAgOafbffr/hcsLmioDTq+rEAWV20sod1a6qU3Zui3xe
 SiVV0ma7cXYIuLG26m0pEt3IMg==
X-Google-Smtp-Source: APiQypLzGRhZvCUulrdZtWRMfjVXOxZf54dtj2/PsNeoJ4slTbBhRzqUC3MaFxUjEqaBkHjrXolDmQ==
X-Received: by 2002:adf:f841:: with SMTP id d1mr22628wrq.381.1586191209261;
 Mon, 06 Apr 2020 09:40:09 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:b51c:42dc:1499:2880?
 ([2a01:e34:ed2f:f020:b51c:42dc:1499:2880])
 by smtp.googlemail.com with ESMTPSA id u22sm133042wmu.43.2020.04.06.09.40.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 09:40:08 -0700 (PDT)
Subject: Re: [PATCH v5 2/4] thermal: k3: Add support for bandgap sensors
To: Keerthy <j-keerthy@ti.com>, rui.zhang@intel.com, robh+dt@kernel.org
References: <20200331075356.19171-1-j-keerthy@ti.com>
 <20200331075356.19171-3-j-keerthy@ti.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <3dce9790-1414-0768-7e47-07cdfba52aab@linaro.org>
Date: Mon, 6 Apr 2020 18:40:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200331075356.19171-3-j-keerthy@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_094011_414797_56DABAA7 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gMzEvMDMvMjAyMCAwOTo1MywgS2VlcnRoeSB3cm90ZToKPiBUaGUgYmFuZGdhcCBwcm92aWRl
cyBjdXJyZW50IGFuZCB2b2x0YWdlIHJlZmVyZW5jZSBmb3IgaXRzIGludGVybmFsCj4gY2lyY3Vp
dHMgYW5kIG90aGVyIGFuYWxvZyBJUCBibG9ja3MuIFRoZSBhbmFsb2ctdG8tZGlnaXRhbAo+IGNv
bnZlcnRlciAoQURDKSBwcm9kdWNlcyBhbiBvdXRwdXQgdmFsdWUgdGhhdCBpcyBwcm9wb3J0aW9u
YWwKPiB0byB0aGUgc2lsaWNvbiB0ZW1wZXJhdHVyZS4KPiAKPiBDdXJyZW50bHkgcmVhZGluZyB0
ZW1wZXJhdHVyZXMgb25seSBpcyBzdXBwb3J0ZWQuCj4gVGhlcmUgYXJlIG5vIGFjdGl2ZS9wYXNz
aXZlIGNvb2xpbmcgYWdlbnQgc3VwcG9ydGVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEtlZXJ0aHkg
PGota2VlcnRoeUB0aS5jb20+Cj4gLS0tCgpbIC4uLiBdCgo+ICtzdGF0aWMgaW50IGszX2JhbmRn
YXBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiArewo+ICsJaW50IHJldCA9
IDAsIGNudCwgdmFsLCBpZCwgcmVnX2NudCA9IDA7CgpXZSBtaXNzZWQgJ3JlZ19jbnQnIHdoaWNo
IGlzIG5vdCB1c2VkLgoKWyAuLi4gXQoKPiArCS8qIFJlZ2lzdGVyIHRoZSB0aGVybWFsIHNlbnNv
cnMgKi8KPiArCWZvciAoaWQgPSAwOyBpZCA8IGNudDsgaWQrKykgewo+ICsJCWRhdGFbaWRdLnNl
bnNvcl9pZCA9IGlkOwo+ICsJCWRhdGFbaWRdLmJncCA9IGJncDsKPiArCQlkYXRhW2lkXS5jdHJs
X29mZnNldCA9IEszX1ZUTV9UTVBTRU5TMF9DVFJMX09GRlNFVCArCj4gKwkJCQkJaWQgKiBLM19W
VE1fUkVHU19QRVJfVFM7Cj4gKwkJZGF0YVtpZF0uc3RhdF9vZmZzZXQgPSBkYXRhW2lkXS5jdHJs
X29mZnNldCArIDB4ODsKPiArCj4gKwkJdmFsID0gcmVhZGwoZGF0YVtpZF0uYmdwLT5iYXNlICsg
ZGF0YVtpZF0uY3RybF9vZmZzZXQpOwo+ICsJCXZhbCB8PSAoSzNfVlRNX1RNUFNFTlNfQ1RSTF9T
T0MgfAo+ICsJCQlLM19WVE1fVE1QU0VOU19DVFJMX0NMUlogfAo+ICsJCQlLM19WVE1fVE1QU0VO
U19DVFJMX0NMS09OX1JFUSk7Cj4gKwkJdmFsICY9IH5LM19WVE1fVE1QU0VOU19DVFJMX0NCSUFT
U0VMOwo+ICsJCXdyaXRlbCh2YWwsIGRhdGFbaWRdLmJncC0+YmFzZSArIGRhdGFbaWRdLmN0cmxf
b2Zmc2V0KTsKPiArCj4gKwkJZGF0YVtpZF0udGlfdGhlcm1hbCA9Cj4gKwkJZGV2bV90aGVybWFs
X3pvbmVfb2Zfc2Vuc29yX3JlZ2lzdGVyKGRldiwgaWQsCj4gKwkJCQkJCSAgICAgJmRhdGFbaWRd
LAo+ICsJCQkJCQkgICAgICZrM19vZl90aGVybWFsX29wcyk7Cj4gKwkJaWYgKElTX0VSUihkYXRh
W2lkXS50aV90aGVybWFsKSkgewo+ICsJCQlkZXZfZXJyKGRldiwgInRoZXJtYWwgem9uZSBkZXZp
Y2UgaXMgTlVMTFxuIik7Cj4gKwkJCXJldCA9IFBUUl9FUlIoZGF0YVtpZF0udGlfdGhlcm1hbCk7
Cj4gKwkJCWdvdG8gZXJyX2FsbG9jOwo+ICsJCX0KPiArCj4gKwkJcmVnX2NudCsrOwo+ICsJfQoK
WyAuLi4gXQoKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93
d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIu
Y29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJv
LWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
