Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402631DC855
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 10:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/V2XXZUIkgcZMcWXLnxI5tU37P/WluAPSVkWVNCD6A=; b=TdI8vzB5R4kDcA
	zAqGmUw896LJISUWPdvjzxfKpbiPFU1xpEGr+/VkIwdPcQMB/1eSnGIKsZbYlvCH7wsQrHQcluT1H
	0dUkv+ARBYLWVP/uEWjlJNWMJ32gvveCPGjo29cUanQErlSV8RHxKpn/oAVaaAtanJqm+3dIEyDDv
	YGpB7qeo1ZTpUSraQAQM9a1W1Rel4gpgI2JHaI9YBXZO4joQ7KUQrgu4Lz1eaCIymqKOgxiYVzoev
	I3u6YKm7N1wGacB4YxLKANM75pHkoOpM4SdkPONXlG6LqExHao0jixqCNs3rRyIyUYUpeatOj/rAw
	lB2rNjX/zcw0yDzVCqEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbgNR-00044t-AG; Thu, 21 May 2020 08:16:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgNF-00043Q-Ld
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 08:16:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so1524801wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 01:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=KPDqb+DCYxxpSLeq6U5D/jKybkhAzjGZ8QLA5YedgMg=;
 b=fGuo2D4qqxs0LddmHxyYtVQK3DJjuNDPbTrhoeOfUGD4FH/OI2BX/z8FrTVVetWfeL
 yxSdMCpaMuE0CT59NPSdKGWvlF/wEwwbQIo/ENQXqs6MPPqzlC/hfUJ3ybypKqgN2S5M
 o/mvlR8mPiBPU+NJuQj2pwYDEzhalaTyOIGNdYlQJhhErXNjxuG9Jr41mL5qO2wLTlAk
 8jKD8MUO2AnEnULwDQ+r5sELmzj3LIdAlcvGtV/Ye4p5M8rstCcL499Gc/SDCczcfnCn
 U27GrGfii48SZIS+mbiHKcAl19InSZu9c9q8PSO1K6Rmk6MnZfOSiC2DrSOTeJm/M082
 QFKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=KPDqb+DCYxxpSLeq6U5D/jKybkhAzjGZ8QLA5YedgMg=;
 b=mwIaDE9B/WTFBtTNirZY7eMXdDxGNmpLIoTmI6uc8Yur1+VAGAPJCTu6xVdGnHTlfw
 tF2jASugWyGN9EkuAG99h8UcbReLtn9148wX2+wfH0rglhA0B5qN0Tm/mBRMIDd8B3Un
 94LDO3ZT+EajHAiBAL/W/DYidc+pcx4tHhmsp1PAI6Kla6nZC03d6w3ilU9Zi+lYh7zZ
 9DNKyXO8dSwX7ohE+wBX/0kN9AIu5Hd+xcmfqLTIHeEOjbSZiIFSTDUp/cu4nS9YxSWU
 Pfawq7DindhIdMniGp1tVeu+NozlSB4ntmVXsvsRD08ty7biGa8l8HoXkNZxJ58i8t9f
 v9rg==
X-Gm-Message-State: AOAM5306rGSRd71+/47rFoTjqj1jTjIECsdyTxn5IByS8bfWnuqT6WOf
 Mz5Qc6xxwSt4b9GtLCh0glSz0g==
X-Google-Smtp-Source: ABdhPJxUykPWBMpDxCLK97UyXMlHnRBvfRJh1k/pbvLfDpfppBXa1QMSqiirA7kcWucM6FnWvj4LJA==
X-Received: by 2002:adf:dcc8:: with SMTP id x8mr7439168wrm.404.1590048975850; 
 Thu, 21 May 2020 01:16:15 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id j190sm5848242wmb.33.2020.05.21.01.16.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 01:16:15 -0700 (PDT)
Date: Thu, 21 May 2020 09:16:12 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: [GIT PULL] Immutable branch between MFD, Power and RTC due for the
 v5.8 merge window
Message-ID: <20200521081612.GO271301@dell>
References: <1587438012-24832-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587438012-24832-1-git-send-email-hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_011617_709588_88C4CF32 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDhmM2Q5ZjM1NDI4Njc0
NWM3NTEzNzRmNWYxZmNhZmVlNmIzZjMxMzY6CgogIExpbnV4IDUuNy1yYzEgKDIwMjAtMDQtMTIg
MTI6MzU6NTUgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoK
CiAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2xlZS9tZmQu
Z2l0IGliLW1mZC1wb3dlci1ydGMtdjUuOAoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRv
IDI5ZWU0MDA5MWUyNzYxNTUzMGMwYmE3NzczYTI4NzlkODI2NjM4MWU6CgogIHJ0YzogbXQ2Mzk3
OiBBZGQgc3VwcG9ydCBmb3IgdGhlIE1lZGlhVGVrIE1UNjM1OCBSVEMgKDIwMjAtMDUtMjEgMDg6
NTU6NDggKzAxMDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCkltbXV0YWJsZSBicmFuY2ggYmV0d2VlbiBNRkQsIFBvd2Vy
IGFuZCBSVEMgZHVlIGZvciB0aGUgdjUuOCBtZXJnZSB3aW5kb3cKCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KSHNpbi1Ic2l1
bmcgV2FuZyAoNCk6CiAgICAgIG1mZDogbXQ2Mzk3OiBNb2RpZnkgc3VzcGVuZC9yZXN1bWUgYmVo
YXZpb3IKICAgICAgbWZkOiBtdDYzOTc6IFRyaW0gcHJvYmUgZnVuY3Rpb24gdG8gc3VwcG9ydCBk
aWZmZXJlbnQgY2hpcHMgbW9yZSBjbGVhbmx5CiAgICAgIGR0LWJpbmRpbmdzOiBtZmQ6IEFkZCBj
b21wYXRpYmxlIGZvciB0aGUgTWVkaWFUZWsgTVQ2MzU4IFBNSUMKICAgICAgbWZkOiBBZGQgc3Vw
cG9ydCBmb3IgdGhlIE1lZGlhVGVrIE1UNjM1OCBQTUlDCgpSYW4gQmkgKDEpOgogICAgICBydGM6
IG10NjM5NzogQWRkIHN1cHBvcnQgZm9yIHRoZSBNZWRpYVRlayBNVDYzNTggUlRDCgogRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0IHwgIDE0ICstCiBkcml2
ZXJzL21mZC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGRy
aXZlcnMvbWZkL210NjM1OC1pcnEuYyAgICAgICAgICAgICAgICAgICAgICAgICB8IDIzNSArKysr
KysrKysrKysrKysrKysrCiBkcml2ZXJzL21mZC9tdDYzOTctY29yZS5jICAgICAgICAgICAgICAg
ICAgICAgICAgfCAxMDEgKysrKy0tLS0KIGRyaXZlcnMvbWZkL210NjM5Ny1pcnEuYyAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAzNSArKy0KIGRyaXZlcnMvcG93ZXIvcmVzZXQvbXQ2MzIzLXBv
d2Vyb2ZmLmMgICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9ydGMvcnRjLW10NjM5Ny5jICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDE4ICstCiBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNTgv
Y29yZS5oICAgICAgICAgICAgICAgICAgfCAxNTggKysrKysrKysrKysrKwogaW5jbHVkZS9saW51
eC9tZmQvbXQ2MzU4L3JlZ2lzdGVycy5oICAgICAgICAgICAgIHwgMjgyICsrKysrKysrKysrKysr
KysrKysrKysrCiBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvY29yZS5oICAgICAgICAgICAgICAg
ICAgfCAgIDUgKwogaW5jbHVkZS9saW51eC9tZmQvbXQ2Mzk3L3J0Yy5oICAgICAgICAgICAgICAg
ICAgIHwgICA5ICstCiAxMSBmaWxlcyBjaGFuZ2VkLCA3OTkgaW5zZXJ0aW9ucygrKSwgNjIgZGVs
ZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvbXQ2MzU4LWlycS5jCiBj
cmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzU4L2NvcmUuaAogY3JlYXRl
IG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210NjM1OC9yZWdpc3RlcnMuaAoKLS0gCkxl
ZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJv
Lm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86
IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
