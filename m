Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3330D10E9EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 13:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OuJ6spDCk6WX0cNJrKPjCs+dzxN7IKOrDbYkCgpWMg=; b=KLEvFn/rhrPbJV
	W7E7P/mpIceLJyzZ3jh4uu0jbPFkdfWZ2VfRfM7xnQySse8htdZsuVrZAIXmfUyHDBMLNmzR+PlT6
	M1Vr2DTnmFaWzY3FxEYnIS+FCbpS5EkMGMH3tbFucB8ot1i/NfGMJf+ZBoeqwTpvYbpKZF32zGYcL
	UjF0jlk+i0vHGosXFECs6fisGBhCyAMF4GexJ0XiEF5YcEfotnZzpCYok3SimOaBiQFUBk0OoRAED
	jEHh/oqOT7PoXe8Z+AGufL7ESLMQH88P3WgnCfzn+RttqTolyzBHa3cxiXHDTCCZTP8F18SgIHVjZ
	70useUvYYXyn3070q0yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibkS2-0000vY-Er; Mon, 02 Dec 2019 12:05:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibkRn-0000hR-4x
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 12:05:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id n1so43942313wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 04:04:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=soNW5fohseRrYu9CQUXRU3A2LW40lxkkIsWjpHtjy+4=;
 b=SUG7XFQxmmslnG3yAcE+XfPV6jsM+pD0FOn/54XPlpukSkJwexaujXTj7VWCN9CS51
 K1BGEZpvuVusIAPNwGWYifr6QBV3Ofv4pimEXUe+U5dyoDivC/moJFyo7GSqhy6FLBzE
 WWeFROjbPyNLXD3Ms5kdMU3IRJEI7ZHRWvg6XrjX7ok5CeC3Ac+2cLeXhB6D9JI3Gqwy
 27A+Hp/ugNpWU9QCKhl8xOP3Fq7lXOWOI4LlRYonFmGczAd9+0uJkz7DoDYWZddCb0O4
 LP84Kbe0/+QVfD1OcPz8Aj/skgXs+GqAe4hzEhQR44AkCyfP06M0x65zCPiL2tsJnVzV
 ilGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=soNW5fohseRrYu9CQUXRU3A2LW40lxkkIsWjpHtjy+4=;
 b=qETmovo7OTG479bSPuaZh3Rex8tQ8N9CZMYFXv1p00+z6Y7EBuNvXicQrDwRvSZVcv
 hbpOyNf7yI3jTu/H30GvzE+6WP3SXIujLYZI8p8koxVxGc2m7PEfQUkZRGuV+sQEokdj
 WkPM1YpDHSLWtk+jNlzhCRoNmzNnibRWQmdKRgpLOZwXTwsGYskV5UFhiwBnEYNEzk+L
 GEg5vO8RJHlsXlmxy0cyAQp6LacR9xFiGG1beVCXQWf7a6+yTyyMHvgGou6xRyBXkaL7
 gxjqQwksl8QkUhjK9iAOyCdR+08y+voBGVOsNA48eHtOywAfk6fT1IsABi/I1ooLgMgu
 auSA==
X-Gm-Message-State: APjAAAXwMldvMdeerEi8z59cGp5w0cZslzk5cbXXlNwyn8qKmZG/9G1u
 jkK9OgJxXQZtgBsuJSWJLeh7Ag==
X-Google-Smtp-Source: APXvYqwOBVgqYt1ED9Zw7laHel2W8Pvb3keFWerq1L9G4LSaenpLO4wmf6lPLnHFD28jBsEIYgohAA==
X-Received: by 2002:adf:db86:: with SMTP id u6mr72454037wri.318.1575288293871; 
 Mon, 02 Dec 2019 04:04:53 -0800 (PST)
Received: from dell ([2.27.35.155])
 by smtp.gmail.com with ESMTPSA id 60sm40793963wrn.86.2019.12.02.04.04.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 04:04:53 -0800 (PST)
Date: Mon, 2 Dec 2019 12:04:42 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v3 0/6] DA9062 PMIC features
Message-ID: <20191202120442.GC14416@dell>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
 <CACRpkdaSmwORgetv7aZjtgk+2OchcvQR4SBjdWQ4KsRMHuUvSg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdaSmwORgetv7aZjtgk+2OchcvQR4SBjdWQ4KsRMHuUvSg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_040459_201751_94347303 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Support Opensource <support.opensource@diasemi.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Marco Felsch <m.felsch@pengutronix.de>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Sascha Hauer <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwMiBEZWMgMjAxOSwgTGludXMgV2FsbGVpaiB3cm90ZToKCj4gT24gRnJpLCBOb3Yg
MjksIDIwMTkgYXQgNjoyNSBQTSBNYXJjbyBGZWxzY2ggPG0uZmVsc2NoQHBlbmd1dHJvbml4LmRl
PiB3cm90ZToKPiAKPiA+IHRoaXMgc2VyaWVzIGFkZHJlc3MgYWxsIGNvbW1lbnRzIG1hZGUgb24g
WzFdLiBQYXRjaCAiZ3BpbzogYWRkIHN1cHBvcnQKPiA+IHRvIGdldCBsb2NhbCBncGlvIG51bWJl
ciIgaXMgc3BsaXR0ZWQgaW50bzoKPiA+ICAtICJncGlvOiB0cmVld2lkZSByZW5hbWUgZ3Bpb19j
aGlwX2h3Z3BpbyB0byBncGlvZF90b19vZmZzZXQiCj4gPiAgLSAiZ3BpbzogbWFrZSBncGlvZF90
b19vZmZzZXQoKSBhdmFpbGFibGUgZm9yIG90aGVyIHVzZXJzIgo+ID4gUGxlYXNlIGNoZWNrIHRo
ZSBkaXNjdXNzaW9uIFsxXSBmb3IgbW9yZSBpbmZvcm1hdGlvbi4gWW91IG5lZWQgdG8gYXBwbHkK
PiA+IFsyXSB0byB0ZXN0IHRoZSBuZXcgZmVhdHVyZXMuCj4gCj4gSSBhbSB2ZXJ5IGhhcHB5IHdp
dGggdGhlIHNoYXBlIG9mIHBhdGNoZXMgKDEpIGFuZCAoMikuCj4gCj4gSSBjYW4gYXBwbHkgdGhl
c2Ugb24gYW4gaW1tdXRhYmxlIGJyYW5jaCBhbmQgbWVyZ2UgaW50byB0aGUKPiBHUElPIHRyZWUg
YXQgdjUuNS1yYzEgYW5kIG9mZmVyIHRvIG90aGVyIHN1YnN5c3RlbSBtYWludGFpbmVycwo+IHRv
IHB1bGwgaW4gc28gdGhleSBjYW4gbWVyZ2UgdGhlIHJlc3Qgb2YgdGhlIHBhdGNoIHNlcmllcyBv
bgo+IHRvcC4KPiAKPiBBbHRlcm5hdGl2ZWx5IEkgY2FuIG1lcmdlIGFsbCB0aGUgcGF0Y2hlcyBp
bnRvIHRoZSBHUElPIHRyZWUuCj4gCj4gSSBzdXBwb3NlIHRoaXMgaXMgbm90IHNvIG11Y2ggb2Yg
YSBNRkQgYnVzaW5lc3MgYXQgdGhpcwo+IHBvaW50IHNvIHdoYXRldmVyIHRoZSByZWd1bGF0b3Ig
bWFpbnRhaW5lciBwcmVmZXJzIEkgc3VwcG9zZT8KCkFja2VkLWJ5OiBMZWUgSm9uZXMgPGxlZS5q
b25lc0BsaW5hcm8ub3JnPgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2Vydmlj
ZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9y
IEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
