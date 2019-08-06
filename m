Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3114E82FB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zCrNbTOx8NYGYJ1JqJxqqmTIHXifcV6Bt9WBemKpFJs=; b=mHxj2zXSedCE5/SkuLskTy8Af3
	HEeV0nB6Dp0XU2zEmYp1wlim+gJKgftJUYdKbA3NCLE8Ld0/JJo8zTZQnrnfxTftYzWjEMyFWIFva
	ouXJOpfMrDCKpIXomCGiF/Ln+F7uXcky4vbNgxv8HOwRZbaGweU+rEU/so4P+dVj0Rza0ADx+wWHy
	YTQlsd+6UHFGGLFw3SSb+c2P3XCaeLA2ole/gPldr0pcakm186jesgzR7D75UDtGNUnYXcb0f7Dcy
	Ksc8ju/Lep57yhyHfUaLM25flp6Y6Gjnwb8UXY7YgBoHJ8unf02Gc2tXk5TcejSwzJbZuVio5TIYA
	l6PdtOuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwhH-00076N-KF; Tue, 06 Aug 2019 10:28:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwhA-00075g-2H
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:27:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id l2so75868019wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 03:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3ENNWEjNdveoBFdFARD7mjfwAIRFVzgu16H/+0p0s3I=;
 b=jQrTjDt8I8HpXK0/juX3akv3mATvHi47gzAposJ2SWYp4IFsNmtg/8Ngbk7Y6HT/lQ
 0afBmhpOr2R/zBhjbqOzreAD4sdHQG73Sl/qIDNp9HlarW2srcaF1hvnnBcc0owxM0oc
 VODeglfcQqzzVulqCMyGnLzjG5gvIgbFEYf0XG+nz1W5FeObX8T+NPdyDkkmKWnRe9gv
 RcAhBAAardwJsstzppe/o6/B0PmYlwmBzSGogCDHhGFCqDrqI+patW0Tjl2wvlxWSWKz
 ct49GW07l/Jb53D6TGNQQ+xgAfPCRUIgFhuCfeKbJFRRyLqvuPN6jc0Ll2mHNW9KBZFo
 lk9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=3ENNWEjNdveoBFdFARD7mjfwAIRFVzgu16H/+0p0s3I=;
 b=YXX4dmdrn6iaeVgBs7k19aJ5Bgs5XBK8GI99LLU53Sd7dqbHg3xn4BEz2wm4QMANsb
 FdVUteec1GSvWhoRt/GvfDBT2r0s+BlwjYukjn7QYeDcoiAv/24ZemFo7CvJFXQSXs1e
 BVuKFmNsTjlzMaEn0L65uX+2xZhwXsumCXAbYIOjjK1jAwzietsbNSq9O7pCMxkz6wDt
 /hrZr1BUnrr/wOCkb9PsmGJoJV/40NuylEP9tPmXuONAca6rDSKDemBqUQLE/HYJoRdj
 HdSKJ520/eYUi7TS3Z6pCouuXDx5Rwzw7H2NLKbVloTp1Lm6xqbDrXDYscnlj4mLJdor
 gyMg==
X-Gm-Message-State: APjAAAUSuXZNXbgEMkUlQo/UTtyjOF48o6OYMZDa7KtI08LplrT1Ddc5
 NbitsUEGRm8o5vgGWJh/3xHHPw==
X-Google-Smtp-Source: APXvYqxBoY61ESAFbWyiiw9vnfz/1IBVKHakOwf4mrsXZLPpZd7m7W4CxdRj6VtoxvuOS7Kedum9iQ==
X-Received: by 2002:a05:600c:2189:: with SMTP id
 e9mr3813693wme.56.1565087274005; 
 Tue, 06 Aug 2019 03:27:54 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5d72:314c:4797:d781?
 ([2a01:e34:ed2f:f020:5d72:314c:4797:d781])
 by smtp.googlemail.com with ESMTPSA id k9sm62100150wmi.33.2019.08.06.03.27.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 03:27:53 -0700 (PDT)
Subject: Re: [PATCH V5 1/5] clocksource: imx-sysctr: Add internal clock
 divider handle
To: Anson Huang <anson.huang@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20190710063056.35689-1-Anson.Huang@nxp.com>
 <DB3PR0402MB3916B06E8907604A71169063F5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <7edad4d7-5ba2-d710-eb8d-b3ff97051a41@linaro.org>
Date: Tue, 6 Aug 2019 12:27:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB3916B06E8907604A71169063F5D50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_032756_108484_47C131C2 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYvMDgvMjAxOSAwMzo1NSwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gR2VudGxlIHBpbmcuLi4K
CkNvbWluZyBiYWNrIGZyb20gdmFjYXRpb24uIEl0IGlzIGluIHRoZSBwaXBlIC4uLiA6KQoKPj4g
RnJvbTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Cj4+Cj4+IFRoZSBzeXN0ZW0g
Y291bnRlciBibG9jayBndWlkZSBzdGF0ZXMgdGhhdCB0aGUgYmFzZSBjbG9jayBpcyBpbnRlcm5h
bGx5IGRpdmlkZWQKPj4gYnkgMyBiZWZvcmUgdXNlLCB0aGF0IG1lYW5zIHRoZSBjbG9jayBpbnB1
dCBvZiBzeXN0ZW0gY291bnRlciBkZWZpbmVkIGluIERUCj4+IHNob3VsZCBiZSBiYXNlIGNsb2Nr
IHdoaWNoIGlzIG5vcm1hbGx5IGZyb20gT1NDLCBhbmQgdGhlbiBpbnRlcm5hbGx5IGRpdmlkZWQK
Pj4gYnkgMyBiZWZvcmUgdXNlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbnNvbiBIdWFuZyA8QW5z
b24uSHVhbmdAbnhwLmNvbT4KPj4gLS0tCj4+IENoYW5nZXMgc2luY2UgVjQ6Cj4+IAktIHRvIHNv
bHZlIHRoZSBjbG9jayBkcml2ZXIgcHJvYmVkIGFmdGVyIHN5c3RlbSBjb3VudGVyIGRyaXZlciBp
c3N1ZSwKPj4gbm93IHdlIGNhbiBlYXNpbHkgc3dpdGNoIHRvCj4+IAkgIHVzZSBmaXhlZCBjbG9j
ayBkZWZpbmVkIGluIERUIGFuZCBnZXQgaXRzIHJhdGUsIHRoZW4gZGl2aWRlZCBieSAzIHRvCj4+
IGdldCByZWFsIGNsb2NrIHJhdGUgZm9yCj4+IAkgIHN5c3RlbSBjb3VudGVyIGRyaXZlciwgbm8g
bmVlZCB0byBhZGQgImNsb2NrLWZyZXF1ZW5jeSIgcHJvcGVydHkgaW4KPj4gRFQuCj4+IC0tLQo+
PiAgZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1pbXgtc3lzY3RyLmMgfCA1ICsrKysrCj4+ICAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2Nsb2Nrc291cmNlL3RpbWVyLWlteC1zeXNjdHIuYwo+PiBiL2RyaXZlcnMvY2xvY2tzb3VyY2Uv
dGltZXItaW14LXN5c2N0ci5jCj4+IGluZGV4IGZkN2Q2ODAuLmI3YzgwYTMgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItaW14LXN5c2N0ci5jCj4+ICsrKyBiL2RyaXZl
cnMvY2xvY2tzb3VyY2UvdGltZXItaW14LXN5c2N0ci5jCj4+IEBAIC0yMCw2ICsyMCw4IEBACj4+
ICAjZGVmaW5lIFNZU19DVFJfRU4JCTB4MQo+PiAgI2RlZmluZSBTWVNfQ1RSX0lSUV9NQVNLCTB4
Mgo+Pgo+PiArI2RlZmluZSBTWVNfQ1RSX0NMS19ESVYJCTB4Mwo+PiArCj4+ICBzdGF0aWMgdm9p
ZCBfX2lvbWVtICpzeXNfY3RyX2Jhc2U7Cj4+ICBzdGF0aWMgdTMyIGNtcGNyOwo+Pgo+PiBAQCAt
MTM0LDYgKzEzNiw5IEBAIHN0YXRpYyBpbnQgX19pbml0IHN5c2N0cl90aW1lcl9pbml0KHN0cnVj
dCBkZXZpY2Vfbm9kZQo+PiAqbnApCj4+ICAJaWYgKHJldCkKPj4gIAkJcmV0dXJuIHJldDsKPj4K
Pj4gKwkvKiBzeXN0ZW0gY291bnRlciBjbG9jayBpcyBkaXZpZGVkIGJ5IDMgaW50ZXJuYWxseSAq
Lwo+PiArCXRvX3N5c2N0ci5vZl9jbGsucmF0ZSAvPSBTWVNfQ1RSX0NMS19ESVY7Cj4+ICsKPj4g
IAlzeXNfY3RyX2Jhc2UgPSB0aW1lcl9vZl9iYXNlKCZ0b19zeXNjdHIpOwo+PiAgCWNtcGNyID0g
cmVhZGwoc3lzX2N0cl9iYXNlICsgQ01QQ1IpOwo+PiAgCWNtcGNyICY9IH5TWVNfQ1RSX0VOOwo+
PiAtLQo+PiAyLjcuNAo+IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzog
IDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6
Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8u
b3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
