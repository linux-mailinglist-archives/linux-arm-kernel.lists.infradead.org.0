Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B711DC7F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 09:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rydkF4dJLp9TtcxJIqrbF2yrcgF/ukAPeVSGJm3i8k=; b=dJMrSq9JX6KNYN
	qRmLjuXeF4Tcr4gyjUOd3+aYBB7dcYxZ8/giv5Ug1ZP9Qwn/Nnn5UUz0bm8mffSJ8U3c0y1gZDOwE
	0hlqTjTjy/xbgVKkgR8LRj2sb/txjJrHSzu4KF7S0xEw43pQ3pBbA0+uVlnR3gD5NBwV1EQrfDDOO
	6/iVIw02rb7KgMp+qFJGTXTp86wJ7m2Iu0PLP6ORG0Zet3Hl17rjElvvEWwLvui8f1TyrsME4fs2V
	0Ocrp3qvOppvOr2pUsA3nhb5Xourbq7innnaEBTJ99X5u9O8sYFJtZC0Dw//5JQx9fCGeWg83YCFs
	5rTRP6h3OBodVE38MSrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbfvb-0001r8-Sd; Thu, 21 May 2020 07:47:43 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbfvQ-0001pd-OZ
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 07:47:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id x14so305419wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 00:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=scVYFjBGBAzKQ/hMy8PhK3pElGqsrP2y83QVfuiAxH4=;
 b=vqpwnjz86M45u3Gnp4IxKufT5KEo7fxf+vl36qzM3nHslyhDCEJIEgQAXKyrOkPOzr
 sxkJdaadCkojgsCryJFV/NsqAGAwrjmBPRNvm9KBnA7Rh2O1j/zY5DwTpPhcFG/rXfkM
 6S23fM0SLLJ7TiHNbL0XWiLK7+upJ5+t62Ye2cO2Wkc0mHW9D9DAJ/WC/rz68M4FmrLX
 k27QqVbp3qP4CmlFWSn5xCNh4GWwvUfMdUElIrpD+rHd5Pa/4AMCOHm/zmAtjuENvG0C
 TUv6XE2S4gfjQ9slqcNHl1ztwdytcQWprTsMRJNpfjLkzetO4LLbY5K/5RpxkGAy8lfS
 nK7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=scVYFjBGBAzKQ/hMy8PhK3pElGqsrP2y83QVfuiAxH4=;
 b=soQb6s56Ckhj3SpQIDl/EXYLo9d0oUH/4TSDMlu74XvPfwbko64vJKYjJPZ5Qlucz+
 e7waWhHUsRnNzfjzXmtVdo82CSV1NklkiqegValfLkAu877+WXPZfnZcXzg8P+WLQ6VA
 OUsR2LQydIp4PmLZkWAw9dPO/hKS3jClFf6Y5fG6oWR6A/Mb0+m/4mUxdgVJjN/jeFOA
 1T1bEFR2DsZ09J7NOzX2zK7ywy6jQS4o+wFEXIVULiWPI8lV9V4ksBQpZpdsqDCxGZfS
 Ypae2t+XpKeyFdggzwERekro/dyjs0rYOAN5NyPUuxgV2xfT9au5vpB6WEIBITRYfo6x
 lckw==
X-Gm-Message-State: AOAM531RFNW3Tvzoo4ZuCR4HHJ58BaV4YOI2wbRYdXgcwf+ATtP/jM0r
 TPrmtirJLgwq6klHtGDM9pNedQ==
X-Google-Smtp-Source: ABdhPJxcZ6ZWteBLNFuVjrXs9CMtGph22AZeEwlyAM3AdFye7vHS83vjlNDUgEYM0NT1woW4CXf4Zg==
X-Received: by 2002:adf:9010:: with SMTP id h16mr7329094wrh.412.1590047241123; 
 Thu, 21 May 2020 00:47:21 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id h20sm5542798wma.6.2020.05.21.00.47.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 00:47:20 -0700 (PDT)
Date: Thu, 21 May 2020 08:47:18 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH v13 5/6] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
Message-ID: <20200521074718.GN271301@dell>
References: <1587438012-24832-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1587438012-24832-6-git-send-email-hsin-hsiung.wang@mediatek.com>
 <27c107b3-6ea8-e6f9-697c-7c3c4479008c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27c107b3-6ea8-e6f9-697c-7c3c4479008c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_004732_802653_0FAFB8C2 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCAxNiBNYXkgMjAyMCwgTWF0dGhpYXMgQnJ1Z2dlciB3cm90ZToKCj4gSGkgTGVlLAo+
IAo+IE9uIDIxLzA0LzIwMjAgMDU6MDAsIEhzaW4tSHNpdW5nIFdhbmcgd3JvdGU6Cj4gPiBGcm9t
OiBSYW4gQmkgPHJhbi5iaUBtZWRpYXRlay5jb20+Cj4gPiAKPiA+IFRoaXMgYWRkIHN1cHBvcnQg
Zm9yIHRoZSBNZWRpYVRlayBNVDYzNTggUlRDLiBEcml2ZXIgdXNpbmcKPiA+IGNvbXBhdGlibGUg
ZGF0YSB0byBzdG9yZSBkaWZmZXJlbnQgUlRDX1dSVEdSIGFkZHJlc3Mgb2Zmc2V0Lgo+ID4gVGhp
cyByZXBsYWNlIFJUQ19XUlRHUiB0byBSVENfV1JUR1JfTVQ2MzIzIGluIG10NjMyMy1wb3dlcm9m
Zgo+ID4gZHJpdmVyIHdoaWNoIG9ubHkgbmVlZGVkIGJ5IGFybXY3IENQVSB3aXRob3V0IEFURi4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogUmFuIEJpIDxyYW4uYmlAbWVkaWF0ZWsuY29tPgo+ID4g
U2lnbmVkLW9mZi1ieTogSHNpbi1Ic2l1bmcgV2FuZyA8aHNpbi1oc2l1bmcud2FuZ0BtZWRpYXRl
ay5jb20+Cj4gPiBSZXZpZXdlZC1ieTogTmljb2xhcyBCb2ljaGF0IDxkcmlua2NhdEBjaHJvbWl1
bS5vcmc+Cj4gPiBBY2tlZC1ieTogQWxleGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25p
QGJvb3RsaW4uY29tPgo+ID4gQWNrZWQtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzcmVAa2VybmVs
Lm9yZz4KPiA+IFJldmlld2VkLWJ5OiBZaW5nam9lIENoZW4gPHlpbmdqb2UuY2hlbkBtZWRpYXRl
ay5jb20+Cj4gCj4gV2UgaGF2ZSBBY2tlZC1ieSBmcm9tIHJ0YyBhbmQgcmVzZXQgZHJpdmVycyBt
YWludGFpbmVycy4gQXJlIHlvdSBPSyB0byB0YWtlIHRoZW0KPiB0aHJvdWdoIHlvdXIgbWZkIGJy
YW5jaD8KPiAKPiBBcmUgeW91IHBsYW5uaW5nIHRvIHF1ZXVlIHRoZW0gZm9yIHY1Ljg/Cj4gCj4g
SnVzdCBhc2tpbmcgYmVjYXVzZSBpZiBzbyBJJ2QgcXVldWUgcGF0Y2ggNiB0aHJvdWdoIG15IHRy
ZWUuCgpZZXMsIHBsZWFzZSB0YWtlIHBhdGNoIDYuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9d
CkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVy
IHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
