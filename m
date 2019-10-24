Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03615E2BF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 10:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGwsRZfbK+JNCPL+p3mVwI969v5uQw61b065bz0tImE=; b=or8gJ5GX5iqBR5
	qQizey2h3C5NNoJvheupXnmsB9CaKWokI9VsaRCSXumENOMmKmEJUqMOo3MsCpT7cIGJVSeAzb0jM
	mZKoUnZUbUFUxj9dQ2qgXdHRaPQu3NW4dL0fBw7C30cmfTHg1LQD6U+haSo/mkvUdLVQ6TqfCQ+uL
	8r7zvZkGNKOIQb2HyMFlwnK6Oo5eTMhAizO3B11MWSHXGpXYfs+ftjqZc7QWPnFIEltl1O6hJQcNG
	LZXonZM7r0aUMELj3oGacDHTprZlVtClMM3Dhd/+uIJI5IDBZNW1tjoiCPxDgUdYI9F0pCplJdpp5
	uvHLLcn8CX+6yvYfcl0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNYLL-0001jj-OO; Thu, 24 Oct 2019 08:19:39 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNYLA-0001XG-8R
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 08:19:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id o28so24963931wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 01:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=bwpDjxlqC/mR626oiSg3Rt01CrIhV7qqzUguEfa254s=;
 b=rctbzubuNGhdxVH1cHUWtH6wBzi8gxCG7yptBsEwlS4gWYi5kvsNmT5BF4Sx07qp03
 58+QCW2JdBBoM9MZBOrilx3qjwt1pb3RAsdbjhrSXDYYFb4wml6EVX3Bs/aywQ4UNhG8
 g19cVHb9HkAZ9rUULh4jSiUc2yNbtPugmpoip64TkSO4UIAAG18+IJE9hjxcq2qm8KJL
 e2ayVuB/OBKuH/SKnTWW1287Id3pdrM8Kq8mS6QRWQ+9KMQAWQLgo0JsGf2XDVB07rnm
 ovkLyNEZQ+K3iQzF/ep2WCT0oIDVsJbkvCmePPccdB22nf8flh0RBaX0s5BG6ckHuscZ
 9Gug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=bwpDjxlqC/mR626oiSg3Rt01CrIhV7qqzUguEfa254s=;
 b=p3Hz9OCtdNtsmHMeMNzpzfTO1bONgSvi6+0ORj9wFkLe0BkU39Bzd1f+MmatZcoofu
 x8f181+xzQV1Ms8knb/rh7qd2F5WJwqsWbk0U+tP4e7x46HWiQfWmtG+4+apHqvyp5Rm
 8yj5ktE0u/1UK+QBewCSWOckZN6FfcA1fiHlrXVGR1dKBQpU6uW09J4seDgfkjvTrxKY
 9mtHe8imRQbsy5vhGCxwsKMIGgBzq1D00kKj51VoQXYc6jllTmdD48OUdUku0we6bW8K
 KoI7kek/UzlYhL5pu6UlxfQ18SBD2T5+XSwa8t0ERPoZmtGfr8nBYDTic2MKbZ2KGOuI
 gBLg==
X-Gm-Message-State: APjAAAWevbXOXW7nmoVK2oeMLRZyApNHqtEPWdZZaUHFtpLEXNdKM5Rz
 KiUCdf7wRYAT9QLi6DQw/NKAFg==
X-Google-Smtp-Source: APXvYqzeWDHSLcoAOmOaHrCuIDnceXDiEw2PFxiRUtr8YD5A9NrQvgKoaJB8J6nksskgcWcq450hBA==
X-Received: by 2002:adf:c448:: with SMTP id a8mr2657636wrg.233.1571905165370; 
 Thu, 24 Oct 2019 01:19:25 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id u1sm35262518wru.90.2019.10.24.01.19.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 24 Oct 2019 01:19:24 -0700 (PDT)
Date: Thu, 24 Oct 2019 09:19:23 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: [GIT PULL] Immutable branch between MFD, Power and RTC due for the
 v5.5 merge window
Message-ID: <20191024081923.GJ15843@dell>
References: <20190910070446.639-1-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910070446.639-1-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_011928_296385_AC9B9A4E 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>, Alessandro Zummo <a.zummo@towertech.it>,
 linux-pm@vger.kernel.org, Josef Friedl <josef.friedl@speed.at>,
 linux-kernel@vger.kernel.org, Tianping Fang <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Sebastian Reichel <sre@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDU0ZWNiOGY3MDI4YzVl
YjNkNzQwYmI4MmIwZjFkOTBmMmRmNjNjNWM6CgogIExpbnV4IDUuNC1yYzEgKDIwMTktMDktMzAg
MTA6MzU6NDAgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoK
CiAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2xlZS9tZmQu
Z2l0IGliLW1mZC1wb3dlci1ydGMtdjUuNQoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRv
IDlkMDg2M2JhZmY0OTc4ODBjMTQyN2QzZWE3Yjg5YjMwM2FjZTk2NzU6CgogIE1BSU5UQUlORVJT
OiBhZGQgTWVkaWF0ZWsgc2h1dGRvd24gZHJpdmVycyAoMjAxOS0xMC0yNCAwOTowNDowMCArMDEw
MCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KSW1tdXRhYmxlIGJyYW5jaCBiZXR3ZWVuIE1GRCwgUG93ZXIgYW5kIFJUQyBk
dWUgZm9yIHRoZSB2NS41IG1lcmdlIHdpbmRvdwoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpKb3NlZiBGcmllZGwgKDYpOgog
ICAgICBkdC1iaW5kaW5nczogcnRjOiBtZWRpYXRlazogYWRkIG1pc3NpbmcgbXQ2Mzk3IHJ0Ywog
ICAgICBydGM6IG10NjM5NzogbW92ZSBzb21lIGNvbW1vbiBkZWZpbml0aW9ucyBpbnRvIHJ0Yy5o
CiAgICAgIHJ0YzogbXQ2Mzk3OiBpbXByb3ZlbWVudHMgb2YgcnRjIGRyaXZlcgogICAgICBydGM6
IG10NjM5NzogYWRkIGNvbXBhdGlibGUgZm9yIG10NjMyMwogICAgICBwb3dlcjogcmVzZXQ6IGFk
ZCBkcml2ZXIgZm9yIG10NjMyMyBwb3dlcm9mZgogICAgICBNQUlOVEFJTkVSUzogYWRkIE1lZGlh
dGVrIHNodXRkb3duIGRyaXZlcnMKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ydGMvcnRjLW10
NjM5Ny50eHQgICAgICAgICB8ICAyOSArKysrKysKIE1BSU5UQUlORVJTICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsrCiBkcml2ZXJzL3Bvd2VyL3Jlc2V0L0tj
b25maWcgICAgICAgICAgICAgICAgICAgICAgICB8ICAxMCArKwogZHJpdmVycy9wb3dlci9yZXNl
dC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9wb3dlci9y
ZXNldC9tdDYzMjMtcG93ZXJvZmYuYyAgICAgICAgICAgICAgfCAgOTcgKysrKysrKysrKysrKysr
KysrKwogZHJpdmVycy9ydGMvcnRjLW10NjM5Ny5jICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAxMDcgKysrKy0tLS0tLS0tLS0tLS0tLS0tCiBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcnRj
LmggICAgICAgICAgICAgICAgICAgICB8ICA3MSArKysrKysrKysrKysrKwogNyBmaWxlcyBjaGFu
Z2VkLCAyMzYgaW5zZXJ0aW9ucygrKSwgODYgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3J0Yy9ydGMtbXQ2Mzk3LnR4dAog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcG93ZXIvcmVzZXQvbXQ2MzIzLXBvd2Vyb2ZmLmMK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcnRjLmgKCi0tIApM
ZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFy
by5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJv
OiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
