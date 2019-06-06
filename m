Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D8F37986
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSe2ljwOoqRUpSW9HXvB0cjI6cisnSexAp5P5f+C6r8=; b=O1lVPE7OO4EgkI
	vMb5mzo4ZVT2pMuiXZf2jI4cBwr8y1rQxxGDvW59RLOrGBsgIjETOdTB3cWi5BGkOqFAJMWUDcfok
	Fexlz7f1RtkpK4XYvIlPPuW0VR7OrLMc86IH0Tty/oV0PsqfUSXjUH/mCClR2thoO3tDd88s9Cwz7
	9JTPBhnURXw9dQ66TPfAZm3Qcq63rK3adT8AFlU/qM5u9W1fzciAXrP+tSmtIeV4wU9m94xuDJrgm
	71/WqLLx+KD1Ihh7KkCx7iCFaXdK+aLASUvyhSKY9rumlYL4RnwGQ8UihZtbo1hmJSbycWhd0EGrO
	CItaWeMAR+ygNOVmxPqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvHV-0006Rf-Ot; Thu, 06 Jun 2019 16:30:25 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvHN-0006Qr-56
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:30:19 +0000
Received: by mail-io1-xd42.google.com with SMTP id k20so671556ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 09:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=d7LytwrxXouA0Zs6R/AiX1+NNXroNALfB+EP9vrU3ak=;
 b=CqDzhS28zOoXKqAmwZIGxqbShXAuwtqOzzqhggdfQVmXEfeJln82iHfrubi8vmVLfS
 yjJMYT3JBT/pMQKyZwotP9cvg2CPLI8iawIC3LlhyybNGEuMJPBZA+O+H2877aBFuMbL
 fowQ67ZuQZWNM0tESPs5I+ZMat9YSqOm1ldfdSI2UKOfdg6wUiV0O33De7/PxsH5+wSq
 l81xAi7PWhySQ6y27rt+nSwNwEM6scBeWf8/0MdhaHXNE2CqjVBMUTROQtLn9CxfCemq
 GhHxb/tduVEt73Elpc5FUhkGrzq0IKIOwLOF30IDZE9W7sPzQDwCvl53nvNTchjYHmPg
 EScA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=d7LytwrxXouA0Zs6R/AiX1+NNXroNALfB+EP9vrU3ak=;
 b=IPZSYmxFj+jsOOUXGo2DOOdZgXE2NYJ5FHzFYzT3L+hwhD/DYNhnNdJSjffQUa7VGq
 LjCspi6pFsqWGFTm1RWdsB56SXIRDcZGyRgAET0yPTYghI043i4sXBQ8TOPyJtRpPkYs
 zav6dde3Jkr6AlvTBeXcjqMtA2tNd9+GGtEu4bxD3p8N2wXEECoCObyBpbgD/RMZ27bQ
 Q/ThWbzaWbZQuAYGl6fvrkBOLOUtiKrPFj/Vng29shNBkDSwJeE81w7X2pmiGOAnHnry
 0wYnEj/TxPGs5D59keiuT1iQtQOPmebO4CARTBifMeQLtL1nxqblmKMJwJFNY+xSzQbY
 wzGw==
X-Gm-Message-State: APjAAAUpJQ3WvwNa1lhHim8obGyhYIM30nxnFjY5Hfmy0fBuGKeqGLeR
 hjz1HwawPjVZZH33ZILhqPg=
X-Google-Smtp-Source: APXvYqx6Y2P7X9DmDW6zWXGbATaWZwdPGt54+mRbNR9V0Z0IbrAHa9vJLSmEXZTPLGvVlVq2Z9SkCg==
X-Received: by 2002:a6b:8dcf:: with SMTP id p198mr33147282iod.46.1559838614878; 
 Thu, 06 Jun 2019 09:30:14 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.35.141])
 by smtp.googlemail.com with ESMTPSA id c100sm1217734itd.0.2019.06.06.09.30.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 09:30:14 -0700 (PDT)
Subject: Re: [PATCH V8 13/15] phy: tegra: Add PCIe PIPE2UPHY support
To: Vidya Sagar <vidyas@nvidia.com>, lorenzo.pieralisi@arm.com,
 bhelgaas@google.com, robh+dt@kernel.org, mark.rutland@arm.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
 catalin.marinas@arm.com, will.deacon@arm.com, jingoohan1@gmail.com,
 gustavo.pimentel@synopsys.com
References: <20190526043751.12729-1-vidyas@nvidia.com>
 <20190526043751.12729-14-vidyas@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <c81c5d42-4292-ba6d-b5ab-afe1a604115f@gmail.com>
Date: Thu, 6 Jun 2019 19:30:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190526043751.12729-14-vidyas@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_093017_197427_060EA58A 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjYuMDUuMjAxOSA3OjM3LCBWaWR5YSBTYWdhciDQv9C40YjQtdGCOgo+IFN5bm9wc3lzIERlc2ln
bldhcmUgY29yZSBiYXNlZCBQQ0llIGNvbnRyb2xsZXJzIGluIFRlZ3JhIDE5NCBTb0MgaW50ZXJm
YWNlCj4gd2l0aCBVbml2ZXJzYWwgUEhZIChVUEhZKSBtb2R1bGUgdGhyb3VnaCBhIFBJUEUyVVBI
WSAoUDJVKSBtb2R1bGUuCj4gRm9yIGVhY2ggUENJZSBsYW5lIG9mIGEgY29udHJvbGxlciwgdGhl
cmUgaXMgYSBQMlUgdW5pdCBpbnN0YW50aWF0ZWQgYXQKPiBoYXJkd2FyZSBsZXZlbC4gVGhpcyBk
cml2ZXIgcHJvdmlkZXMgc3VwcG9ydCBmb3IgdGhlIHByb2dyYW1taW5nIHJlcXVpcmVkCj4gZm9y
IGVhY2ggUDJVIHRoYXQgaXMgZ29pbmcgdG8gYmUgdXNlZCBmb3IgYSBQQ0llIGNvbnRyb2xsZXIu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogVmlkeWEgU2FnYXIgPHZpZHlhc0BudmlkaWEuY29tPgo+IC0t
LQo+IENoYW5nZXMgc2luY2UgW3Y3XToKPiAqIENoYW5nZWQgUDJVIGRyaXZlciBmaWxlIG5hbWUg
ZnJvbSBwY2llLXAydS10ZWdyYTE5NC5jIHRvIHBoeS10ZWdyYTE5NC1wMnUuYwo+IAo+IENoYW5n
ZXMgc2luY2UgW3Y2XToKPiAqIE5vbmUKPiAKPiBDaGFuZ2VzIHNpbmNlIFt2NV06Cj4gKiBBZGRy
ZXNzZWQgcmV2aWV3IGNvbW1lbnRzIGZyb20gVGhpZXJyeQo+IAo+IENoYW5nZXMgc2luY2UgW3Y0
XToKPiAqIE5vbmUKPiAKPiBDaGFuZ2VzIHNpbmNlIFt2M106Cj4gKiBSZWJhc2VkIG9uIHRvcCBv
ZiBsaW51eC1uZXh0IHRvcCBvZiB0aGUgdHJlZQo+IAo+IENoYW5nZXMgc2luY2UgW3YyXToKPiAq
IFJlcGxhY2VkIHNwYWNlcyB3aXRoIHRhYnMgaW4gS2NvbmZpZyBmaWxlCj4gKiBTb3J0ZWQgaGVh
ZGVyIGZpbGUgaW5jbHVzaW9uIGFscGhhYmV0aWNhbGx5Cj4gCj4gQ2hhbmdlcyBzaW5jZSBbdjFd
Ogo+ICogQWRkZWQgQ09NUElMRV9URVNUIGluIEtjb25maWcKPiAqIFJlbW92ZWQgZW1wdHkgcGh5
X29wcyBpbXBsZW1lbnRhdGlvbnMKPiAqIE1vZGlmaWVkIGNvZGUgYWNjb3JkaW5nIHRvIERUIGRv
Y3VtZW50YXRpb24gZmlsZSBtb2RpZmljYXRpb25zCj4gCj4gIGRyaXZlcnMvcGh5L3RlZ3JhL0tj
b25maWcgICAgICAgICAgICB8ICAgNyArKwo+ICBkcml2ZXJzL3BoeS90ZWdyYS9NYWtlZmlsZSAg
ICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL3BoeS90ZWdyYS9waHktdGVncmExOTQtcDJ1LmMg
fCAxMDkgKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTE3
IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L3RlZ3JhL3Bo
eS10ZWdyYTE5NC1wMnUuYwo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS9LY29u
ZmlnIGIvZHJpdmVycy9waHkvdGVncmEvS2NvbmZpZwo+IGluZGV4IGEzYjFkZTk1M2ZiNy4uYzU2
ZmM4NDUyZTAzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3RlZ3JhL0tjb25maWcKPiArKysg
Yi9kcml2ZXJzL3BoeS90ZWdyYS9LY29uZmlnCj4gQEAgLTYsMyArNiwxMCBAQCBjb25maWcgUEhZ
X1RFR1JBX1hVU0IKPiAgCj4gIAkgIFRvIGNvbXBpbGUgdGhpcyBkcml2ZXIgYXMgYSBtb2R1bGUs
IGNob29zZSBNIGhlcmU6IHRoZSBtb2R1bGUgd2lsbAo+ICAJICBiZSBjYWxsZWQgcGh5LXRlZ3Jh
LXh1c2IuCj4gKwo+ICtjb25maWcgUEhZX1RFR1JBMTk0X1AyVQo+ICsJdHJpc3RhdGUgIk5WSURJ
QSBUZWdyYTE5NCBQSVBFMlVQSFkgUEhZIGRyaXZlciIKPiArCWRlcGVuZHMgb24gQVJDSF9URUdS
QSB8fCBDT01QSUxFX1RFU1QKCkFSQ0hfVEVHUkEgaXMgYSBiaXQgdG9vIG11Y2gsIEFSQ0hfVEVH
UkFfMTk0X1NPQyBzaG91bGQgZml0IGJldHRlciBoZXJlLgoKLS0gCkRtaXRyeQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
