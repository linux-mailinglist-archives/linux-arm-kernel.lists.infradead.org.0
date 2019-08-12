Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1E089C35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1S5E9OdpxXDGGZmgJp5VeRSblu0ZNTrdAH7U64uv2k=; b=nR13DKSPw+tgFK
	IOLWqXivTTBCcgTMjo7vV3dzwfd9jFlbcPPvtdDgF2KffWW3WXHGyWIw42mU9Z0iDnenpd8D0nTbE
	xiuaQWYGThkoDu8YChGPq5kbYOeDQomSYYCKZNCoRljU/wVH1+Scnjn7eY0A3BNS36u0FDd71A8e4
	QhMaBJAYprb6JyzdzOV6yPFhr9L1RMnneJ/GKD1MnwcS53QJWfeEuveYsj2jG2Q2w0ZOsKva5EduW
	cbC/wKaBhOgUnTgn13fhlasEgjqebCId8zKwKiUC7RIV6KnUuR2cuqSrw077tlE0RDT/3z4LHLxWc
	cp6vfQ1fPCiPbW6TRV7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx84r-0006dL-Ei; Mon, 12 Aug 2019 11:01:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx83U-0004pQ-NI
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 11:00:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id p13so29583569wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 04:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Se9XSbsfGDt4BhyzlQIMi1S9/MkvfhBPx11WicajSSg=;
 b=yaHiSpqBDdc2sT6zI2Dw8zIEtpSIuQSkOCCSmj9RJNlb1WEg3hBK3DieiAioZ8alKu
 AhP6xz8HC1xq2zeOzZD/CESJhRrdOgr9LS9ALNZnKZ7qQmpeLUV9bDwnT3EpLlwruIiP
 qw6Wfo9LBJzqQuQkLSFwdLolV8LwmnGKEdztwiHvhxo4Su+Amv+FnsR+5zM2D+cajBpc
 ylXscLIIU6eUjTydGSw0LQX8ETWkvZ56eeYt1TiS0+Pe7xUOVQiHuRDq1jqfF+s8ugmx
 Yb3gupA+zwYIsrVaxjBkVmzYbfHGadHGrRwNto9vTAoF1Gi8UzYRJPde3HbA0jbocbzQ
 ck9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Se9XSbsfGDt4BhyzlQIMi1S9/MkvfhBPx11WicajSSg=;
 b=q/lAwYpYfgjc6FWLZjP5K8vR0sE5YjtTsUOkqJnAFVZAP/Xch0ywRH7sc8c5d3NtJ2
 cIYQ9vQGS72doWHtGNHtCz4JOS/eozJ5prurm8kRQCfnWYc5eT7pbXUIerFV/GNFFwdG
 XElXYnp3Pw7OUKS4y3bPWofUskOWdcOKj6Fsz292J+o/9EZxXMT3FkkxsFJ62/LFOTl3
 ThItdqJzzBY9qLixGVYdoIn75daSvPSFfDAgZOwRVehxcl0QWh7nPiJS5682IGEGuQCE
 cd1a0YwZkRyXLyREfxdXsvRH+MuCWlPdR5ZGpmihJIWlWNkHsYDcNr+XY8Fpyi9wyg8V
 B6dg==
X-Gm-Message-State: APjAAAWepaYbT3CSkgba+AUixnMC9rzrAl6BODezuF/aZeLNdmqd8p3V
 HWlPJzcefzzEe4IQUq7Jrs/2mg==
X-Google-Smtp-Source: APXvYqz8c1NJgqCLXi1ZOgbjqMY0Kt0jc3i39Y6I1YxE2q8hdoWNcdXIgZA0cAg94/5QZFrH+80nhg==
X-Received: by 2002:adf:dc51:: with SMTP id m17mr41748135wrj.256.1565607599334; 
 Mon, 12 Aug 2019 03:59:59 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id a81sm5608087wma.3.2019.08.12.03.59.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:59:58 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:59:57 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v4 02/10] mfd: mt6397: extract irq related code from core
 driver
Message-ID: <20190812105957.GP26727@dell>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1564982518-32163-3-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564982518-32163-3-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_040000_848243_DB89DEAB 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Allison Randal <allison@lohutok.net>, linux-rtc@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwNSBBdWcgMjAxOSwgSHNpbi1Ic2l1bmcgV2FuZyB3cm90ZToKCj4gSW4gb3JkZXIg
dG8gc3VwcG9ydCBkaWZmZXJlbnQgdHlwZXMgb2YgaXJxIGRlc2lnbiwgd2UgZGVjaWRlIHRvIGFk
ZAo+IHNlcGFyYXRlIGlycSBkcml2ZXJzIGZvciBkaWZmZXJlbnQgZGVzaWduIGFuZCBrZWVwIG10
NjM5NyBtZmQgY29yZQo+IHNpbXBsZSBhbmQgcmV1c2FibGUgdG8gYWxsIGdlbmVyYXRpb25zIG9m
IFBNSUNzIHNvIGZhci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBIc2luLUhzaXVuZyBXYW5nIDxoc2lu
LWhzaXVuZy53YW5nQG1lZGlhdGVrLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUg
ICAgICAgICAgICB8ICAgMyArLQo+ICBkcml2ZXJzL21mZC9tdDYzOTctY29yZS5jICAgICAgIHwg
MTQ2IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvbWZkL210NjM5
Ny1pcnEuYyAgICAgICAgfCAxODEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvY29yZS5oIHwgICA5ICsrCj4gIDQgZmls
ZXMgY2hhbmdlZCwgMTkyIGluc2VydGlvbnMoKyksIDE0NyBkZWxldGlvbnMoLSkKPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL210NjM5Ny1pcnEuYwoKRm9yIG15IG93biByZWZlcmVu
Y2U6CiAgQWNrZWQtZm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4K
Ci0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFk
CkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cg
TGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
