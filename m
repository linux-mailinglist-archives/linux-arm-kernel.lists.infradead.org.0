Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 042361E1CB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 09:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GG1cDFWxsEVYDLghOudykH0jzz8zmADnCIU93L1iy3Y=; b=ncFK/t5xusOsvM
	l71+3nxPmyYF8zfqts6vQgXyst7zxL2UKLRfvOU6oC69yLRmz6KF94gJ2ZjONCeSnC0R75LPEyYii
	QWMUq0mMLcrWhqlxceI/hblwPd0X1Xi4BtGaQWjS9zHZN7cvNWkY0CopEQ1/OJJqSQD4/EcClATmW
	a1TITdpcMY1UJJC4wnWz0nwrtOD96x1S7SHEHkFmT2l6PdU3auY8/Bj+cdzcnYSzV7YPrAsvG7oCe
	zHAN+DEe4ZyHjjbEzJ3r+maagDvQ34H75XeFA6V1TCHiX8WzJ33DJFJIVXVlQWNhHbKc8chZDh/mc
	nDVdQzGRdgYK1YgCtYvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdUUV-0000AB-FU; Tue, 26 May 2020 07:59:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdUUL-00009Z-K6
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 07:59:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id l11so19476653wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 00:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=zYdjgpNGKkhHUaPVM1/nhRkNBCVbxfKW4NHkKWtwJ2Y=;
 b=n/dXU9fyQ+2u0G9SXzRKn0Sd6pJTChNHgO3T/qJJlCgWgMb4CS573tIEQx+xoycpt5
 ZH5fEO/STnba6a5noZgK+uleLYZg24fRK4RpI+M93bAfb7iWvfyTECnKeAx3Hs1Nyy8z
 3k6qYlbQlDVjbj7whcev/TQosfr+iCL0jQikOosi/J4RO2+fyTg6NguWXboOJsI/tsAm
 8p2GrWuV0sCQbUNji569BEikqLrJI2tJSONaEZf5CDhmIWZwRenMEDB1rC10eiprVUO7
 djKXcWdnhf+v+kzsegrbQjmBD4aVi//DZxmrvgOt1Z4TYdJ9h3i+v/dLSIU26jWEA2gk
 sp8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zYdjgpNGKkhHUaPVM1/nhRkNBCVbxfKW4NHkKWtwJ2Y=;
 b=GyJ7gHFcBP4FTFcJXI6nMznBqBh1uKW+VMGWKRibslAfK7vjMYKPv0KkdyrBw6TlLT
 p2fS6CimjnR8cNNW/bxNS/vi02OyI7bwloup8SRiGC4WlxX4FL7dfnrUmKoawVyKWjjv
 rzJUvDmN21rzpKJZqNpyCmlzrO48mDibGK8Fv4Qyk99OU7srsS7H8R7PnPGvZjJA9H18
 t/ohFx/lYn9ukr857OGidhnD24cg7vITUSb1ZXEGZg6VaHwgyZqIc5CAFJhRAEnZlOw9
 OsRZV1fn0/wCdJ9IsWg+DVl4vDxke8/Hc88DdkwNALsRhtTJcVpougghGFkn/vUugdTi
 wqlA==
X-Gm-Message-State: AOAM530jR6KJbJHffrlfLeFIntsLte9zn45WKZ9ZTH0U0q/JavLGL75C
 uD8KrUDkFn08bKGMRSMdBZzcJg==
X-Google-Smtp-Source: ABdhPJzjh8siprJLpdOwjtzMP60lf7tTZJoWmJAVMzTka0tpDJqO/GhIRtY1OB3npRBX5C5TYEDnUw==
X-Received: by 2002:adf:a51c:: with SMTP id i28mr1970108wrb.78.1590479943335; 
 Tue, 26 May 2020 00:59:03 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id d6sm22344913wrj.90.2020.05.26.00.59.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 00:59:02 -0700 (PDT)
Date: Tue, 26 May 2020 08:59:01 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH 3/3] mfd: stmfx: disable irq in suspend to avoid spurious
 interrupt
Message-ID: <20200526075901.GG3628@dell>
References: <20200422090833.9743-1-amelie.delaunay@st.com>
 <20200422090833.9743-4-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422090833.9743-4-amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_005905_661113_620ABD5F 
X-CRM114-Status: GOOD (  10.90  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMiBBcHIgMjAyMCwgQW1lbGllIERlbGF1bmF5IHdyb3RlOgoKPiBXaGVuIFNUTUZY
IHN1cHBseSBpcyBzdG9wcGVkLCBzcHVyaW91cyBpbnRlcnJ1cHQgY2FuIG9jY3VyLiBUbyBhdm9p
ZCB0aGF0LAo+IGRpc2FibGUgdGhlIGludGVycnVwdCBpbiBzdXNwZW5kIGJlZm9yZSBkaXNhYmxp
bmcgdGhlIHJlZ3VsYXRvciBhbmQKPiByZS1lbmFibGUgaXQgYXQgdGhlIGVuZCBvZiByZXN1bWUu
Cj4gCj4gRml4ZXM6IDA2MjUyYWRlOTE1NiAoIm1mZDogQWRkIFNUIE11bHRpLUZ1bmN0aW9uIGVY
cGFuZGVyIChTVE1GWCkgY29yZSBkcml2ZXIiKQo+IFNpZ25lZC1vZmYtYnk6IEFtZWxpZSBEZWxh
dW5heSA8YW1lbGllLmRlbGF1bmF5QHN0LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZmQvc3RtZngu
YyAgICAgICB8IDYgKysrKysrCj4gIGluY2x1ZGUvbGludXgvbWZkL3N0bWZ4LmggfCAxICsKPiAg
MiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApM
ZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFy
by5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJv
OiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
