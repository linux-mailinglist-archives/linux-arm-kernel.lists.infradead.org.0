Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDAE1FB1D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQazgRNUGpBWAGQDnJeEtSvstZAqEi7fwWKkQdNGExY=; b=JL6rCCNbw/xB31
	pTf9dqRqdLpcOj6456BZUUpquJsIOYGUaTN1aINcR6ygd8ich4DIEeKTsRhXwXHNybDMGLlR9nAkx
	WsLffNQF3Xvzq0ySFdDhjv0hsPwhuT9nhXaZjexBjtJhio4yJFwjAIdw+n1iP61I8rLEodtr+68zf
	FMgK0atEtAe0cH6Ex8C2+jw/YwG6DVon/AkPJlBwgt8Kw2Uq1l6XjKYcDNwm1pTF26g8vQDicYzi1
	WBmA3n63qVi1zHnI0LZf2iOKnc6N/+4tyrzFPgCXemb3DVhk9dvOru9/V4/ZHGWMbikWUq6GBFeFk
	8vpuf7sVxmqBpjO6LrgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBTw-0003X8-CJ; Tue, 16 Jun 2020 13:18:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBTj-0003V0-74
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:18:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so20755390wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Ze0kyZ29y+iARyCZx88V33Mi0dNrmrq4icVH7Auu/rY=;
 b=VTqbi7AgunRcG+Rhou6MsFpBPw37VdaO1Z5DHr86KTYHz/+QoM+/Z4dtJg4mE1WP8x
 oxVDKAwoZE8hafGZnNu/7K6lOsnqBcddM++8NGwSboB6CbNMJQSplGWwXnE+a0Z9hOVX
 ZZRqyh5R2a8cCTouoCGXGYy26/UpuFEYpYGpPMYmLFEntOu814hWWVlpxhGC5QhOo/8q
 afdxO0Jd1AfdDqMxYQM5qiby4xeKVEjxze7THZg1YjN5SZ5Ea1KaRo2rZ8dq3ze9NJHL
 pVG3JVU0oQ5h4WRvJ/RpAiprCC4SybB3tmWIMWjeukItMxYrcI6aNCe+Cu6BzXzzjfeW
 oFYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Ze0kyZ29y+iARyCZx88V33Mi0dNrmrq4icVH7Auu/rY=;
 b=fl2ol5E31hzVe3D1LXe6Zf+tJblRU1iDB8depofSvIApwb8QHfmfwR7zxJKlVYUr9l
 SsCsNjpl7H+8lPRgQf90pIVYtJs3tgKRMM+acCBJSX6+asWhy3ptpfjzjtMMtpZ48RJY
 9EX56QUdj640tTT7mePfFJWiAWXkjIioO/WgJQkZALsHCqf+HeQ4YotJb+6Vxvok93zv
 5zZV/sUNxwkayS7RdGvaGg6aVM3pVrPIfhHlSkr60stMvUL5TD4JTMfft01uQlO1QpRo
 tio/SfJUQ58lCkDmnDquCNhfyDvPivUq87QxPNYelGFK/INQS523FUWkROVx2StTmkbq
 ir2g==
X-Gm-Message-State: AOAM531lkI5yquRweWNJOG+w+ElbMG1Mh5gFb3NmjjDphCzb8npqvmMQ
 BYUwYXdvgxZAzd2nP0q1K+zTJg==
X-Google-Smtp-Source: ABdhPJxqpKqsKZ/O9m5u2HJ1sllXpsbw+K74UxHuOlR2UOWeLkd2rY5NgIlELrm7Vqn3XEPpgKRt5w==
X-Received: by 2002:adf:f0d2:: with SMTP id x18mr3022162wro.250.1592313493614; 
 Tue, 16 Jun 2020 06:18:13 -0700 (PDT)
Received: from dell ([109.180.115.156])
 by smtp.gmail.com with ESMTPSA id l1sm32956809wrb.31.2020.06.16.06.18.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:18:13 -0700 (PDT)
Date: Tue, 16 Jun 2020 14:18:11 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Wen Su <Wen.Su@mediatek.com>
Subject: Re: [RESEND v2 2/4] mfd: Add for PMIC MT6359 registers definition
Message-ID: <20200616131811.GR2608702@dell>
References: <1582252746-8149-1-git-send-email-Wen.Su@mediatek.com>
 <1582252746-8149-3-git-send-email-Wen.Su@mediatek.com>
 <1592301485.30613.7.camel@mtkswgap22>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592301485.30613.7.camel@mtkswgap22>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_061815_254231_1F7E4C71 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxNiBKdW4gMjAyMCwgV2VuIFN1IHdyb3RlOgoKPiBEZWFyIFJldmlld2VycywgCj4g
Cj4gSSBhbSBzb3JyeSB0byBib3RoZXIgeW91LiBIb3cgc2hvdWxkIEkgcHJvY2VlZCBmb3IgdGhp
cyBwYXRjaCBzZXQgPwo+IFNpbmNlIHRoZSByZWd1bGF0b3IgZHJpdmVyIHdlcmUgYXBwbGllZCBh
bmQgZHJvcHBlZCBiZWNhdXNlIG9mIHRoZSBNRkQKPiBoZWFkZXIgZmlsZSBkZXBlbmRlbmN5IG9u
IHRoaXMgcGF0Y2guCj4gCj4gV2lsbCB0aGlzIG1mZCByZWdpc3RlcnMgZGVmaW5pdGlvbiBwYXRj
aCBhbmQgcmVndWxhdG9yIGRyaXZlciBwYXRjaCBiZQo+IGFwcGxpZWQgPyBQbGVhc2UgYWR2aWNl
LgoKT25jZSB5b3UgaGF2ZSBhbGwgb2YgeW91ciBBY2tzLCBpdCBzaG91bGQgYmUgYXBwbGllZCBh
cyBhIHNldC4KCkJlc3QgdGhpbmcgeW91IGNhbiBkbyBpcyBzdWJtaXQgYSBbUkVTRU5EXS4KCj4g
T24gRnJpLCAyMDIwLTAyLTIxIGF0IDEwOjM5ICswODAwLCBXZW4gU3Ugd3JvdGU6Cj4gPiBGcm9t
OiAiV2VuIFN1IiA8d2VuLnN1QG1lZGlhdGVrLmNvbT4KPiA+IAo+ID4gVGhpcyBhZGRzIE1lZGlh
VGVrIFBNSUMgTVQ2MzU5IHJlZ2lzdGVycyBkZWZpbml0aW9uIGZvciB0aGUKPiA+IGZvbGxvd2lu
ZyBzdWIgbW9kdWxlczoKPiA+IAo+ID4gLSBSZWd1bGF0b3IKPiA+IC0gUlRDCj4gPiAtIEludGVy
cnVwdAo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBXZW4gU3UgPHdlbi5zdUBtZWRpYXRlay5jb20+
Cj4gPiBBY2tlZC1mb3ItTUZELWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+
ID4gLS0tCj4gPiAgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzU5L3JlZ2lzdGVycy5oIHwgNTMxICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUz
MSBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZk
L210NjM1OS9yZWdpc3RlcnMuaAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVj
aG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3Vy
Y2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRl
ciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
