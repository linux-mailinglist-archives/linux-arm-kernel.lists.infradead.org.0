Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 528291FEF4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:07:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bLH5omwCNgm9GyYmu8ZiWGlzLDxIVlrkepZaCyeoes=; b=YAoDNdVeyq5CeB
	IvYvY/GwGvzQRs4ZMYIRJn6squ6O3jcKOIKg1qV2KG2RVRzwiEMTY0/peSOrVpgAjZHATZxXk7DQH
	u5g/PglQVN7mCHPy0RTb6QPTCiKQ7toYgAXlmlVeHI8ivFsrZZ74UNMSDd9/f/7+DUn6TpRrfktls
	pSYydYq8XOtHrRUXT099V37jZX8eM1se/SH9ShJbx6wlE2JU1Zpm1dQHN5J/43gXJr3YUnazigbPi
	Qzj8DL2WgjuEnvTHeelM/fg9SRdL9kgf5W2XNi798toMhGnmmmNbFcO0RRbaf7R6W8sqHqxLzKQ4f
	lqwsE9ZJXlL2b2KIddnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrS1-0007EH-O7; Thu, 18 Jun 2020 10:07:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrRt-0007DH-JM
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 10:07:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id l11so5437258wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 03:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=CFOLMWfnNmFWmCXS3WsnXqGGhFh9R4n2y1mrs4wYTgA=;
 b=GgCF78UooGPORKj/H4XaMSc4Y4I+eLXTUWWmfn0WjNS8INYWIrt2KXINC3elkIU17Y
 Ska7Aks45lBvcbC1FcEJUtYMoo39TjLPdfNuIOF/ChQdvUIx6SGtNUOGK/EM+AOQX9ds
 rytLxdcpBhl+dXv4/FQIJxiDseItcrjjJwFLGYX9kjGmyRXijNMP3s/qaFpQ/6qDVUGh
 8rrsyawXqhnV8dfbE1IBdv1HX/o5zx1dGKErWNzrJhyfcwytBTf3dkP6iZv4pbmfg6Jg
 dszGi5s7g9xHYNvO0nHlDNuduhVht2B5Fuaznix9U6eJjGiO0/CwmYwXGilO6hV2rYE0
 z7Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=CFOLMWfnNmFWmCXS3WsnXqGGhFh9R4n2y1mrs4wYTgA=;
 b=p6pnvRhyU6GM2v4Y7B+0dR7DJ9dcbC/md8JRL0Mp8P+tyrI5rNMC9K9lL0K8r5+Nqb
 NVQHMpPEfjAJt9fCj3PGt/qHRmSpZ1/Dgrb298HY0M11Dnbme0r0utH0Qvzii4ngFNaS
 5TqlKqIBCnZgIhxk9n9kumHzc1E02KnSHFczt69b28N0wPGikmr7jBK9yYPzqzbuapTq
 ALeqZb8iMK1dBoZDO0auZYbh/AOdPAa6IF1r1wVoeER4M6kwLjGvVS05KImpwFo2+6sG
 OJl4ng3nl/wrrH4Yigfh/Dq0MHJvsF0FQGZpOkBt7emhBnjb6aEkjdgE0o3hSvrOoPpM
 xgsA==
X-Gm-Message-State: AOAM533ticg/JfxrxmrYoGciw6bJiZ/EFGiYdbYH8pDk9vNc6y9BDDV+
 y8wqdjlQYjVmxL7GxaOvDmquUA==
X-Google-Smtp-Source: ABdhPJzlq2IdBCf7tWdObGbMg3Qcc+qq3lOP6ca5ooyu3bmJhva9X2SKsFPQvT65ZKC1Nhcs24Bwmw==
X-Received: by 2002:a5d:45cb:: with SMTP id b11mr3582258wrs.235.1592474826529; 
 Thu, 18 Jun 2020 03:07:06 -0700 (PDT)
Received: from dell ([95.149.164.118])
 by smtp.gmail.com with ESMTPSA id c66sm3007519wma.20.2020.06.18.03.07.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 03:07:05 -0700 (PDT)
Date: Thu, 18 Jun 2020 11:07:04 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3 1/1] mfd: Add I2C based System Configuaration (SYSCON)
 access
Message-ID: <20200618100704.GC954398@dell>
References: <20200618080223.951737-1-lee.jones@linaro.org>
 <CAK8P3a3iRmXC2jDj92QHKqyD+x_UJ7rWU_KcGt=MFOD9UW38RA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3iRmXC2jDj92QHKqyD+x_UJ7rWU_KcGt=MFOD9UW38RA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_030709_640720_9BD68951 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: DTML <devicetree@vger.kernel.org>, gregkh <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, michael@walle.cc,
 Rob Herring <robh+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxOCBKdW4gMjAyMCwgQXJuZCBCZXJnbWFubiB3cm90ZToKCj4gT24gVGh1LCBKdW4g
MTgsIDIwMjAgYXQgMTA6MDMgQU0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3Jv
dGU6Cj4gPgo+ID4gVGhlIGV4aXN0aW5nIFNZU0NPTiBpbXBsZW1lbnRhdGlvbiBvbmx5IHN1cHBv
cnRzIE1NSU8gKG1lbW9yeSBtYXBwZWQpCj4gPiBhY2Nlc3NlcywgZmFjaWxpdGF0ZWQgYnkgUmVn
bWFwLiAgVGhpcyBleHRlbmRzIHN1cHBvcnQgZm9yIHJlZ2lzdGVycwo+ID4gaGVsZCBiZWhpbmQg
STJDIGJ1c3Nlcy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0Bs
aW5hcm8ub3JnPgo+IAo+IFRoZSBpbXBsZW1lbnRhdGlvbiBsb29rcyBmaW5lIHRvIG1lLCBidXQg
Y2FuIHlvdSBleHBsYWluIGhvdyB0aGlzIGlzIGdvaW5nIHRvCj4gYmUgdXNlZCwgYW5kIHdoYXQg
dGhlIGFkdmFudGFnZSBpcyBvdmVyIG9wZW4tY29kaW5nIHRoZSBkZXZtX3JlZ21hcF9pbml0X2ky
YygpCj4gaW4gZWFjaCBkcml2ZXIgdGhhdCB3b3VsZCB1c2UgdGhpcz8KCkRvZXMgUmVnbWFwIGxl
dCB5b3UgcmVnaXN0ZXIvaW5pdGlhbGlzZSBhbiBJMkMgYWRkcmVzcyBtb3JlIHRoYW4gb25jZT8K
CldoZW4gSSBhdHRlbXB0IGl0LCBJIGdldDoKClsgICAgMC41MjI5ODhdIGkyYyBpMmMtMDogRmFp
bGVkIHRvIHJlZ2lzdGVyIGkyYyBjbGllbnQgdG1wMTA1IGF0IDB4MzIgKC0xNikKWyAgICAwLjUy
MzM0MV0gaTJjIGkyYy0wOiBvZl9pMmM6IEZhaWx1cmUgcmVnaXN0ZXJpbmcgL2J1c0A0MDAwMDAw
L21vdGhlcmJvYXJkL2lvZnBnYUA3LDAwMDAwMDAwL2kyY0AxNjAwMC90ZW1wQDMyClsgICAgMC41
MjM2OTFdIGkyYyBpMmMtMDogRmFpbGVkIHRvIGNyZWF0ZSBJMkMgZGV2aWNlIGZvciAvYnVzQDQw
MDAwMDAvbW90aGVyYm9hcmQvaW9mcGdhQDcsMDAwMDAwMDAvaTJjQDE2MDAwL3RlbXBAMzIKCj4g
SXMgdGhpcyBhYm91dCB1c2luZyBwcm9wZXIgbG9ja2luZyB0aHJvdWdoIHRoZSByZWdtYXAgZnJh
bWV3b3JrIGZvcgo+IHNoYXJlZCBpMmMgY2xpZW50cywgb3IgdG8gcmVkdWNlIG1lbW9yeSBjb25z
dW1wdGlvbiB3aGVuIGxvdHMgb2YgZHJpdmVycwo+IGFjY2VzcyB0aGUgc2FtZSByZWdtYXA/CgpB
bGwgb2YgdGhvc2UgdGhpbmdzIGFyZSB2YWxpZC4KCk15IHVzZS1jYXNlIGlzIHJlZ2FyZGluZyBN
RkRzIHNoYXJpbmcgYW4gSTJDIGludGVyZmFjZWQgYWRkcmVzcyBzcGFjZQp3aXRoIHRoZWlyIGNo
aWxkcmVuLgoKPiBNeSBpbXByZXNzaW9uIG9mIHRoZSBleGlzdGluZyBzeXNjb24gY29kZSBpcyB0
aGF0IHRoZSBtYWluIHZhbHVlLWFkZCBvdmVyCj4gb3RoZXIgd2F5cyBvZiBkb2luZyB0aGUgc2Ft
ZSBpcyB0aGUgc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZSgpCj4gaW50ZXJmYWNlIHRo
YXQgZ2l2ZXMgb3RoZXIgZHJpdmVycyBhIG11Y2ggc2ltcGxlciB3YXkgb2YgZ2V0dGluZyB0aGUK
PiByZWdtYXAganVzdCBiYXNlZCBvbiB0aGUgRFQgbm9kZS4gQXJlIHlvdSBwbGFubmluZyB0byBh
ZGQgc29tZXRoaW5nCj4gbGlrZSB0aGF0IGhlcmUgYXMgd2VsbD8gQW4gaWRlYWwgZHJpdmVyIGlu
dGVyZmFjZSBtaWdodCBhbGxvdwo+IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUoKSB0
byB3b3JrIGZvciBib3RoIG1taW8gYW5kIGkyYwo+IGJhc2VkIHN5c2NvbnMsIG9yIGFkZGl0aW9u
YWwgb25lcyBhcyB3ZWxsLCBidXQgaW1wbGVtZW50aW5nIHRoaXMgd291bGQKPiBiZSByYXRoZXIg
dHJpY2t5IHdoZW4gdGhlIGkyYyBjb3JlIGlzIGEgbG9hZGFibGUgbW9kdWxlLgoKSSBleHBlY3Qg
dGhlIEFQSSB3b3VsZCBiZSBleHBhbmRlZCB0byBjb3ZlciBvdGhlciB1c2UtY2FzZXMuICBUaGlz
IGlzCmEgYmFyZSBib25lcyBpbXBsZW1lbnRhdGlvbiB3aGljaCBoYXMgYmVlbiBrZXB0IGFzIGF0
b21pYyBhcyBwb3NzaWJsZQpmb3IgZWFzZSBvZiByZXZpZXcuCgotLSAKTGVlIEpvbmVzIFvmnY7n
kLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzog
RmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
