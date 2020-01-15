Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44C213CD8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 20:57:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+HRqk3tnNHok/qczVGsGmTfptNt9sDbxmGDI7nAOZ0=; b=XDTgx63k3UHzNu
	Snpe2oDHPkoGY4m4s1BfF73oe5yuhN0ADvOttwJHBaDd+LfQGByxOBfhUbJHufmBLRdCqYOVmYAPb
	9bX7fRjyovT//kAXYxa29opZEaihAsDfas1IZhbN1hWQVwS5lBANu1v1wyRsJmOiQifpSZ8wgKnxx
	6OyE3nutvHXaXLVHrnMG1W9ABahAJ435B5H4jwx0sxsX5DfQaYNgOhGaoGJwNeEgDYZrNSa+a8+6o
	oPABkPjTidF+oFE5+LKVThNOFqcnLqZf1PWqUA3UJ+KKUpuViQG23OSVErwpY5i8OUMyFdN2Fi1CI
	/I5X00OzuKIbt5ICbLuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ironD-0003YM-Vq; Wed, 15 Jan 2020 19:57:31 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iromr-0003NP-2q
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 19:57:13 +0000
Received: by mail-ed1-f68.google.com with SMTP id i16so16697265edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 11:57:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=jDNwCuolitAgDOrIDNPnw09f7iD4pjQDMUepa+LBBOA=;
 b=PbfT/YfkqmF8sBa7JYFFJ2huJ+HoEK3EZdLzMySO27sxXzkwslb93xYOT20jWmQHTE
 H6DSAgCM3F5+oqA2aI/OF6BmcFpHJOoqiD/3VEAItmGz/6z8qFnx4cTnGeGZm5nn2+NU
 NHGmznfOtE/D29C+ztOHvX2JV2PyjnVTFZ5QY3LThcKCRpzNQIdNiK8pqTZkEfJ+iAwC
 50C9s8ovyPB6v1BkYvwPVrtyxTu5HvVeWsPYGCxXhyTwDvAOWdBzkEJZG6g9HMfEjqJd
 +ujMQCH7YdHRZlqS06FYrLn60zIXKDpkfVYg9AHLeyFDVRr8BXnTkOt64qBvB/MyN/2Y
 u6Bw==
X-Gm-Message-State: APjAAAWW5jftEUH8AKIoVPN2yBwCL873CXNASlELLRRI6AUO91CRtufm
 n9sNpmd6UA4jYrcf+2RpzuSnEcX3Tu0=
X-Google-Smtp-Source: APXvYqywuJ3PR2OFKAoXjeJUN74qmwV/eBqYi90GLh6TA1Yppc7IIV33SnL1hPunPOgNaMuj/qGLCQ==
X-Received: by 2002:a17:906:b212:: with SMTP id
 p18mr30068484ejz.208.1579118227369; 
 Wed, 15 Jan 2020 11:57:07 -0800 (PST)
Received: from kozik-lap ([194.230.155.229])
 by smtp.googlemail.com with ESMTPSA id u29sm755644edb.22.2020.01.15.11.57.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Jan 2020 11:57:06 -0800 (PST)
Date: Wed, 15 Jan 2020 20:57:04 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v2 3/4] i2c: highlander: Use proper printk format for
 iomem pointer
Message-ID: <20200115195704.GB8661@kozik-lap>
References: <1578992765-1418-1-git-send-email-krzk@kernel.org>
 <1578992765-1418-3-git-send-email-krzk@kernel.org>
 <20200115174337.GH1239@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115174337.GH1239@ninjato>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_115709_121394_C3468387 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Jean Delvare <jdelvare@suse.de>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKYW4gMTUsIDIwMjAgYXQgMDY6NDM6MzdQTSArMDEwMCwgV29sZnJhbSBTYW5nIHdy
b3RlOgo+IE9uIFR1ZSwgSmFuIDE0LCAyMDIwIGF0IDEwOjA2OjA0QU0gKzAxMDAsIEtyenlzenRv
ZiBLb3psb3dza2kgd3JvdGU6Cj4gPiBpb21lbSBwb2ludGVycyBzaG91bGQgYmUgcHJpbnRlZCB3
aXRoIHBvaW50ZXIgZm9ybWF0IHRvIGhpZGUgdGhlCj4gPiBhY3R1YWwgdmFsdWUgYW5kIGZpeCB3
YXJuaW5ncyB3aGVuIGNvbXBpbGluZyBvbiA2NC1iaXQgcGxhdGZvcm0gKGUuZy4gd2l0aAo+ID4g
Q09NUElMRV9URVNUKToKPiA+IAo+ID4gICAgIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtaGlnaGxh
bmRlci5jOiBJbiBmdW5jdGlvbiDigJhoaWdobGFuZGVyX2kyY19zbWJ1c194ZmVy4oCZOgo+ID4g
ICAgIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtaGlnaGxhbmRlci5jOjMyNToyMjogd2FybmluZzoK
PiA+ICAgICAgICAgZm9ybWF0IOKAmCVk4oCZIGV4cGVjdHMgYXJndW1lbnQgb2YgdHlwZSDigJhp
bnTigJksCj4gPiAgICAgICAgIGJ1dCBhcmd1bWVudCAzIGhhcyB0eXBlIOKAmHNpemVfdCB7YWth
IGxvbmcgdW5zaWduZWQgaW50feKAmSBbLVdmb3JtYXQ9XQo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5
OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Cj4gCj4gV3JvbmcgY29tbWl0
IG1lc3NhZ2UuIGJ1Zl9sZW4gaXMgc2l6ZV90IGFuZCBub3QgYW4gaW9tZW0gcG9pbnRlci4KCkkn
bGwgZml4IGl0IHVwLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
