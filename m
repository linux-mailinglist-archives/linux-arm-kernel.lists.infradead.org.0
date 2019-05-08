Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1146217646
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCpirDooITl0vYFrrc1WFtn4ngq7J+LxMyfgvbTkqmU=; b=Qs9tXP9PUkCupN
	2Gq7ku2x3mou4QKa2fnQZb5r2KHw4LC90qnLywgd1/0igUjXbl3/9U9wij0KE5htc1hD+TLb3jUZm
	rwpsgb/CwH19VvonxNCb2RFLkFlaxn+QNU7APD+8+tQ8jo4FGf8NYebAq/tr8znA6ql0r1BxdAECJ
	W19SKbn4Wos4EfRXddCyVbxUC/tL3N1254eUZqG/W0AAsJHo7rgErQPU4wfBvBJHiPohmjk/V8BLs
	xfRhhnGwoKAHO+Srl/uQVWoKzeROqvnwIn000GFqwk+bwxLoKxJaGUHvoKHb4lBbgwm4r0eblivop
	d/9xcBQRZpfjJVdiix8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKAP-0000Mw-7k; Wed, 08 May 2019 10:51:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKAH-0000M3-6u
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 10:51:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id e11so13520402wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 03:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=y8VN0Vi6CpqQOnZi4UqZkgCmBi+7eeFUzbOG8vHxp/A=;
 b=eRvJQ6aZJxIlKJQbUSyAO+/bVK7SPC19yXSYwj6ICNlqzizHzm5eKm2HsfeYkoGf6+
 bwr2lhvncqZwNsH0uc31grQ7Z/98bihRTiHZwicf4SlJwztdbdSYj1gsPs0ox+U57Nln
 RtwXVauuDMH8QPXwh2Z6jciUDa6fXmwg+WY3Sr1fePMX/hVjPA7wHbJ+wpOMJCnYfyK0
 tzqjQN0QMiZvz9S3+LvGMrRzmvm0hQD05o7DC5RTJAP+HXL/5N6dNMoWog7BbVoYB95U
 p8bKLehkxQIKD+PEOuStwCvb8x+htPDFMvuwMiM1nM/3UJ52u+3ujiALtxYxVniXfLVt
 LiEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=y8VN0Vi6CpqQOnZi4UqZkgCmBi+7eeFUzbOG8vHxp/A=;
 b=ufNxknhwoboyPo9iF/wOGvL9EgRnnxooMHwwlHZ0HvHputHSpV7ndIRAl4lHP+EGkx
 e4i32+4Hs6Fe3DZQ5kq5cjBSnNOAlJqI6LU2WGl2MuHg6AakymYHRMrPs6Ha5zw1TttB
 ASP2aVRKPupZjsK6D1wyIogxL6wWUeycnpcdgb56VoUQ7/YqnI2HfUGoECH++HQ9bu4L
 38P9RuhhyAGm3KUbwXksUDbQjWciWz74qYzIMtT5yL7P5DqtReetjrnmGI3iNZ+PLQAF
 W0bm6HEe39EeblU5BLvNqblqwROWM84p7pQiOS/XsnAxC7R8HjoNojWmZjSocMQGpf7U
 VFJw==
X-Gm-Message-State: APjAAAWe7YRhGVSLCs6dJmVXfHn35sp6ZFnzXtjmervDUAu+MN8yySpK
 oJkNNroz6IAhor9oCM+dcLC2lg==
X-Google-Smtp-Source: APXvYqwWdHYr63SNNae1/1sfK0Q7qpPib6h0WQ3orqE4uvt7cMScNp/lhITtexVmCsHi3NBx6H2lvw==
X-Received: by 2002:a5d:53c6:: with SMTP id a6mr3706990wrw.232.1557312667265; 
 Wed, 08 May 2019 03:51:07 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id o13sm30073683wrg.40.2019.05.08.03.51.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 03:51:06 -0700 (PDT)
Date: Wed, 8 May 2019 11:51:05 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: Applied "dt-bindings: mfd: atmel-usart: add DMA bindings for
 USART in SPI mode" to the spi tree
Message-ID: <20190508105105.GN3995@dell>
References: <20190505180646.1442-2-radu_nicolae.pirea@upb.ro>
 <20190508090857.B7CB344003F@finisterre.sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508090857.B7CB344003F@finisterre.sirena.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_035109_260182_2FE67A15 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Richard Genoud <richard.genoud@gmail.com>,
 Radu Pirea <radu_nicolae.pirea@upb.ro>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwOCBNYXkgMjAxOSwgTWFyayBCcm93biB3cm90ZToKCj4gVGhlIHBhdGNoCj4gCj4g
ICAgZHQtYmluZGluZ3M6IG1mZDogYXRtZWwtdXNhcnQ6IGFkZCBETUEgYmluZGluZ3MgZm9yIFVT
QVJUIGluIFNQSSBtb2RlCj4gCj4gaGFzIGJlZW4gYXBwbGllZCB0byB0aGUgc3BpIHRyZWUgYXQK
PiAKPiAgICBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9i
cm9vbmllL3NwaS5naXQgZm9yLTUuMwo+IAo+IEFsbCBiZWluZyB3ZWxsIHRoaXMgbWVhbnMgdGhh
dCBpdCB3aWxsIGJlIGludGVncmF0ZWQgaW50byB0aGUgbGludXgtbmV4dAo+IHRyZWUgKHVzdWFs
bHkgc29tZXRpbWUgaW4gdGhlIG5leHQgMjQgaG91cnMpIGFuZCBzZW50IHRvIExpbnVzIGR1cmlu
Zwo+IHRoZSBuZXh0IG1lcmdlIHdpbmRvdyAob3Igc29vbmVyIGlmIGl0IGlzIGEgYnVnIGZpeCks
IGhvd2V2ZXIgaWYKPiBwcm9ibGVtcyBhcmUgZGlzY292ZXJlZCB0aGVuIHRoZSBwYXRjaCBtYXkg
YmUgZHJvcHBlZCBvciByZXZlcnRlZC4gIAo+IAo+IFlvdSBtYXkgZ2V0IGZ1cnRoZXIgZS1tYWls
cyByZXN1bHRpbmcgZnJvbSBhdXRvbWF0ZWQgb3IgbWFudWFsIHRlc3RpbmcKPiBhbmQgcmV2aWV3
IG9mIHRoZSB0cmVlLCBwbGVhc2UgZW5nYWdlIHdpdGggcGVvcGxlIHJlcG9ydGluZyBwcm9ibGVt
cyBhbmQKPiBzZW5kIGZvbGxvd3VwIHBhdGNoZXMgYWRkcmVzc2luZyBhbnkgaXNzdWVzIHRoYXQg
YXJlIHJlcG9ydGVkIGlmIG5lZWRlZC4KPiAKPiBJZiBhbnkgdXBkYXRlcyBhcmUgcmVxdWlyZWQg
b3IgeW91IGFyZSBzdWJtaXR0aW5nIGZ1cnRoZXIgY2hhbmdlcyB0aGV5Cj4gc2hvdWxkIGJlIHNl
bnQgYXMgaW5jcmVtZW50YWwgdXBkYXRlcyBhZ2FpbnN0IGN1cnJlbnQgZ2l0LCBleGlzdGluZwo+
IHBhdGNoZXMgd2lsbCBub3QgYmUgcmVwbGFjZWQuCj4gCj4gUGxlYXNlIGFkZCBhbnkgcmVsZXZh
bnQgbGlzdHMgYW5kIG1haW50YWluZXJzIHRvIHRoZSBDQ3Mgd2hlbiByZXBseWluZwo+IHRvIHRo
aXMgbWFpbC4KPiAKPiBUaGFua3MsCj4gTWFyawo+IAo+IEZyb20gZjdiOTllNTk0OGU2YmU4Yjg1
MGVlY2JiMmRlMTk4NmQyNmE3NmIzNiBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKPiBGcm9tOiBS
YWR1IFBpcmVhIDxyYWR1X25pY29sYWUucGlyZWFAdXBiLnJvPgo+IERhdGU6IFN1biwgNSBNYXkg
MjAxOSAyMTowNjo0NSArMDMwMAo+IFN1YmplY3Q6IFtQQVRDSF0gZHQtYmluZGluZ3M6IG1mZDog
YXRtZWwtdXNhcnQ6IGFkZCBETUEgYmluZGluZ3MgZm9yIFVTQVJUIGluCj4gIFNQSSBtb2RlCj4g
Cj4gVGhlIGJpbmRpbmdzIGZvciBETUEgYXJlIG5vdyBjb21tb24gZm9yIGJvdGggZHJpdmVycyBv
ZiB0aGUgVVNBUlQKPiBJUC4KPiAKPiBUaGUgbm9kZSBnaXZlbiBhcyBhbiBleGFtcGxlIGZvciBV
U0FSVCBpbiBTUEkgbW9kZSBoYXMgYmVlbiB1cGRhdGVkIGluCj4gb3JkZXIgdG8gaW5jbHVkZSBE
TUEgYmluZGluZ3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFkdSBQaXJlYSA8cmFkdV9uaWNvbGFl
LnBpcmVhQHVwYi5ybz4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5l
bC5vcmc+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9hdG1lbC11c2FydC50
eHQgICB8IDIwICsrKysrKysrKysrKysrLS0tLS0KCkludGVyZXN0aW5nIQoKLS0gCkxlZSBKb25l
cyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDi
lIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vi
b29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
