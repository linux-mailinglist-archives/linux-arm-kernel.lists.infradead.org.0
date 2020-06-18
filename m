Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27ED51FED53
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aowo7ne1VWCp9V274B5qU7XsPgJGnfv4dXdsnJHnGmQ=; b=LLdfxKcWCh03VH
	lmoRXXcQpada/oOenwnmPJp/VFb42iDIXx5qMes/fsSRhnq2RgnZYHxx6T4TtbfH6ObqyEfOYn3t2
	6k+4c5odHxNlME5sfGqAEDXiNrBmv+vbXZCP328gsXvLEe+ql3ViLXE9DToxzdYNfXG2D0VUonTh+
	9JaeeERsowiNF80Kf3NCOTqKUyXaKMSxV7x0loELBfzN8gisdRz3+SAmTSzCFni1m4ehced+GChIe
	gFu9QWT8c6G+j1OhqiZn8UxKII6YfHJc6TI2w6Ll2UoB3pQk0lli8NWubkVMtPBbbddaQlxHn7rLd
	ZjYFhiyHNXRAyz23t0FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlphz-00043c-Iw; Thu, 18 Jun 2020 08:15:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlphm-0003zl-1f
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:15:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id b6so5017089wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 01:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=VFAtsOIUbu3lSU/HEGGn9hrUEMDItq984a8uDB0vTG4=;
 b=OeeHyY+YKwWr2fRsYI11CjIJOMFFkdCm85UynZj7MpMoE9cp+TT0NoE8bPVmdKNSzf
 QTIAlb3B23TkGeN9VzxVOhsSJ1N47FjHc0HndFsFSgJunxiS3u/Xh0o6KkKOngoTOzQK
 mzSxMd7ej+ALbFugboPDoWizoX/iKpXRGYPK3I0cDW7KYMWWo/cVVI1DplpNBfOTrIFJ
 DFKek/jSOY2zOffnNr75HeaTp4uUyeotKBquwFBZwQTL7NIrn/D+1UUorehTACtmSScG
 6RsxLv6wCrP/2KFNpXHu95CoxXxBW3VT/5dUcI4iHiTz4sZF8UAEIQVnrQPCBO+p7cdT
 5kzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=VFAtsOIUbu3lSU/HEGGn9hrUEMDItq984a8uDB0vTG4=;
 b=I6aC2TgJ1IyWrca9tP1kqJ/D5L7/mN6Vu2Q5PFRXF42y8bsIqjlQmiU3cOL+BPUrVf
 phaQo9IXcy14aXck+ZdpQSdzCkFx8p0hTPR6ee4zpmK/nXQC+jLWCqpXwdscb5jE6nOe
 rUca3tz4QSi6RQYmE2sPc/vocWYtvN2liuNIOWun2DFYlsdgnw+zKZH/QA809vg/gLmF
 z/2BNdkkd0/9KgUq+pnEjBWqpajrRN92S0wKEYo0grHtLSFi1m263YND5Ttvh/y2yyZs
 VXKWeY+vyQ0LKsNWV9l6sVUWxrUOQZsVlb3OAC7VB5hhsSUVA/01Ruon2us78ELha/Ul
 63IA==
X-Gm-Message-State: AOAM532rNDs05P+H6BGqRu6LAAeJ7tRZnhmrjby7ms5/dJI420uH0H2G
 v2LVM8+JFKD0/IQNGwmZY4vPXw==
X-Google-Smtp-Source: ABdhPJw7v4a6RUSX4JeAquXGtY8pIltUKnas1QX4AmwEVUOoZpZugP52IHFdKrlL7jAb5gwUMH7j6A==
X-Received: by 2002:a5d:6809:: with SMTP id w9mr3485714wru.182.1592468119418; 
 Thu, 18 Jun 2020 01:15:19 -0700 (PDT)
Received: from dell ([95.149.164.118])
 by smtp.gmail.com with ESMTPSA id h203sm2112690wme.37.2020.06.18.01.15.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 01:15:18 -0700 (PDT)
Date: Thu, 18 Jun 2020 09:15:17 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v3 2/5] mfd: add support for the Khadas System control
 Microcontroller
Message-ID: <20200618081517.GA2608702@dell>
References: <20200608091739.2368-1-narmstrong@baylibre.com>
 <20200608091739.2368-3-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608091739.2368-3-narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_011526_102818_FE8A4784 
X-CRM114-Status: GOOD (  11.93  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwOCBKdW4gMjAyMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cgo+IFRoaXMgTWljcm9j
b250cm9sbGVyIGlzIHByZXNlbnQgb24gdGhlIEtoYWRhcyBWSU0xLCBWSU0yLCBWSU0zIGFuZCBF
ZGdlCj4gYm9hcmRzLgo+IAo+IEl0IGhhcyBtdWx0aXBsZSBib290IGNvbnRyb2wgZmVhdHVyZXMg
bGlrZSBwYXNzd29yZCBjaGVjaywgcG93ZXItb24KPiBvcHRpb25zLCBwb3dlci1vZmYgY29udHJv
bCBhbmQgc3lzdGVtIEZBTiBjb250cm9sIG9uIHJlY2VudCBib2FyZHMuCj4gCj4gVGhpcyBpbXBs
ZW1lbnRzIGEgdmVyeSBiYXNpYyBNRkQgZHJpdmVyIHdpdGggdGhlIGZhbiBjb250cm9sIGFuZCBV
c2VyCj4gTlZNRU0gY2VsbHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTmVpbCBBcm1zdHJvbmcgPG5h
cm1zdHJvbmdAYmF5bGlicmUuY29tPgo+IC0tLQoKQSBwYXRjaC1sZXZlbCBjaGFuZ2UgbG9nIG1h
a2VzIHJldmlld2luZyBlYXNpZXIuCgo+ICBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgICAgICAg
fCAgMjEgKysrKysKPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgIHwgICAxICsKPiAg
ZHJpdmVycy9tZmQva2hhZGFzLW1jdS5jICAgICAgIHwgMTQyICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9raGFkYXMtbWN1LmggfCAgOTEgKysr
KysrKysrKysrKysrKysrKysrCj4gIDQgZmlsZXMgY2hhbmdlZCwgMjU1IGluc2VydGlvbnMoKykK
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL2toYWRhcy1tY3UuYwo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQva2hhZGFzLW1jdS5oCgpOaWNlbHkgZG9uZS4K
CkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2hu
aWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNl
IHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIg
fCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
