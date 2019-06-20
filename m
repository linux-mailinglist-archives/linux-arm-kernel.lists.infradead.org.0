Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E134D4C8BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 09:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWkEK8p+3D5qObNLkV7+s0J+NuinTwvGsy/qF7r7JqU=; b=NFPEAFhnDeGnWQ
	M/dFbYNnpGMgOri0yfOYiqc8XzgS9AxwIuCztOgJS2oI/fVDeOsxRJHQ3UNQU0HdJn+Z3cDVHv3cx
	Qa2sTDRoEhUSMOzpK38c2HoTLojqpB3W+0QPPwR9nnzf4RLjnifIvV5GkT5Vp6VNQv+Djzq8zy+1p
	6B//LS8NOeNOpOPjNWwPk4sO9Zfal3kCnpzQaaJAKANH398ChbM92M3QBM7XUiBVCkMJrxj0w4vit
	fLeOE2FsWVzktSDBoP70imyVLSpyUsZXLR09/Xcbn7mb9p3L1SsYwf24uHvig4eydbNNQk41ykcRH
	8Ogp1rp4PB0dRCE3N5kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrxA-0001aW-73; Thu, 20 Jun 2019 07:57:52 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrwv-0001Zm-Jy
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 07:57:38 +0000
Received: by mail-wm1-x344.google.com with SMTP id 207so2021978wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 00:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=YQGObdl7kH+wEvSqxa3FaWAQlmAcdn2aMFRJreWKZJ0=;
 b=Xbqowj37eqV+b9k1NLVHC7JwZDta/+JDzrrS82yOXNGCstfgYJjW6mwRqSqrUWlS3L
 1/8SQNYcmzWvXsmCzetHTO6JlLdz3Id/uddvH1551kLp+ptg+bQ1j50ILkH28rrlU0ZU
 jmN/HIDMQsfJr48uD3R5FYWLPdRDLx9CEWMcCc0/fjCBi2EPF1aVLt5OwzxKvYAXNuJX
 KshcHWrLBBHaXj/vr4PvVEkwDWNuzZB/F+QSnwDu5Is0r+N94SG1NiPuv7MwEILYddxF
 78pmCuwckrZVmiiLLofI6l1GLKG8ruskdYQAGYTcG4DGJrf2tEkVmS2jzMcclNRLJsVm
 oSKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=YQGObdl7kH+wEvSqxa3FaWAQlmAcdn2aMFRJreWKZJ0=;
 b=JaRQ8O2niT6xJhByxMERc5mycleXEeWI9MFJ1liYYFo1+/KDq94aFO9rCF0PMPBPHQ
 ZNREx0FGVQSs/V2WqWBMMizYJYxdUVuUEpE8HsFrJ5AwvkqSARfuge4nhmP2kD6/QLxE
 456TF5gPlg0n+vwx5j5lAGTDT0FW7w4b/J5MDVy6bEtjcuLP5Nm6MRu8FW6oD4exh9Dv
 WzHMQ9DJJ7faDmBPImNhho+RLylOSZxovq6whlavJO2pQrlEdpcqDdy3d+2mX/8MR/TR
 ZRxCW1U5mkahJzLq0oHR5mZbno8Kd65wF0vlsCePwchfyXpFkP3TFLXxtVRjG5mtz16B
 dQ4Q==
X-Gm-Message-State: APjAAAW2FM4r/S56QUF7ZLjX6Fa/qxuvY9ba5GRvsn7HFTsIgWXaFdpn
 0rnTQnCaaiOYO9g3tRv6aVvofubAXuM=
X-Google-Smtp-Source: APXvYqyVIG+SggD0Ywg3p6wX7nREHzj8RkzQTZNsXYDvoszka9op+STK5gM62OIDMaI2Pdh9fGFtxw==
X-Received: by 2002:a1c:cf0b:: with SMTP id f11mr1671215wmg.138.1561017454297; 
 Thu, 20 Jun 2019 00:57:34 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id x8sm3646616wmc.5.2019.06.20.00.57.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 00:57:33 -0700 (PDT)
Date: Thu, 20 Jun 2019 08:57:32 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [RFC PATCH] acpi/arm64: ignore 5.1 FADTs that are reported as 5.0
Message-ID: <20190620075732.GB4699@dell>
References: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
 <20190619122434.GA25656@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619122434.GA25656@e107155-lin>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_005737_667605_1FBD5E7B 
X-CRM114-Status: GOOD (  10.82  )
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
Cc: lorenzo.pieralisi@arm.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 catalin.marinas@arm.com, will.deacon@arm.com, leif.lindholm@linaro.org,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxOSBKdW4gMjAxOSwgU3VkZWVwIEhvbGxhIHdyb3RlOgoKPiBPbiBXZWQsIEp1biAx
OSwgMjAxOSBhdCAwMjoxODozMVBNICswMjAwLCBBcmQgQmllc2hldXZlbCB3cm90ZToKPiA+IFNv
bWUgUXVhbGNvbW0gU25hcGRyYWdvbiBiYXNlZCBsYXB0b3BzIGJ1aWx0IHRvIHJ1biBNaWNyb3Nv
ZnQgV2luZG93cwo+ID4gYXJlIGNsZWFybHkgQUNQSSA1LjEgYmFzZWQsIGdpdmVuIHRoYXQgdGhh
dCBpcyB0aGUgZmlyc3QgQUNQSSByZXZpc2lvbgo+ID4gdGhhdCBzdXBwb3J0cyBBUk0sIGFuZCBp
bnRyb2R1Y2VkIHRoZSBGQURUICdhcm1fYm9vdF9mbGFncycgZmllbGQsCj4gPiB3aGljaCBoYXMg
YSBub24temVybyBmaWVsZCBvbiB0aG9zZSBzeXN0ZW1zLgo+ID4gCj4gPiBTbyBpbiB0aGVzZSBj
YXNlcywgaW5mZXIgZnJvbSB0aGUgQVJNIGJvb3QgZmxhZ3MgdGhhdCB0aGUgRkFEVCBtdXN0IGJl
Cj4gPiA1LjEgb3IgbGF0ZXIsIGFuZCB0cmVhdCBpdCBhcyA1LjEuCj4gPiAKPiAKPiBNYWtlcyBz
ZW5zZSBhbmQgbG9va3Mgc2ltcGxlIHRvIG1lLgo+IAo+IEFja2VkLWJ5OiBTdWRlZXAgSG9sbGEg
PHN1ZGVlcC5ob2xsYUBhcm0uY29tPgoKQ291bGQgd2UgcGxlZWVlZWFzZSBoYXZlIHRoaXMgaW4g
Zm9yIHY1LjM/CgpXZSBoYXZlIGF2YWlsYWJsZSwgY29uc3VtZXItbGV2ZWwgcGxhdGZvcm1zIHRo
YXQgcmVseSBvbiB0aGlzIGNoYW5nZS4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJv
IFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3
YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
