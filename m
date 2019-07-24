Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDF273797
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neD3paralHNs7RP7/GZIePYA0qDTpOMkbw1u9ChRBFo=; b=PWzWIc0A6aUAhJ
	KVLWEuEjAZQn3JX7G3GVkT7Jc2XCXLcqU8UtG0DH+W/mrjLMkCuHHEE8kUsn3Xu6axZmI/JCO981I
	6u8/8slfSysAiyJEVap8Z70gopYEAQ6xthBpF/KY8praNNCxIU8HqoKJlHtqB+fsxi5TdmiX4bMJM
	cHwKqqCJx/xswQgs7iVBoqfEJF0f9E6ZudpQMSMPTY14VwOxw6tXbD/HeYnM5tEC2DiJYuRgWHpKz
	08fERpVdR+T653C5v7bvVEoxDDLcl46v+uANzT0xtGo2TJ8+cFdne3gxYQxAEFw5c89uyyXpB2Cpe
	IS3TX5ZoH0QPqSa1BqMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMjx-0008F6-78; Wed, 24 Jul 2019 19:15:53 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMjh-0008EN-RN
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:15:39 +0000
Received: by mail-wm1-f68.google.com with SMTP id h19so34122639wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:15:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=PWx99XZq+fN9B+Oe8W7y8sLgenk5724DKP3Xv5BSiDY=;
 b=dDW58UV0Lu+JLGlETWlBSvBrBa/vTqQHZEhUZYLbrOrY9W4EV0OhDz+8IEVrHHJisZ
 X1gqKKrGx/40quVNZnyd4vRH2+88fjZZ9ZAqwIQTUE6tq2fYMtxiQMD3n9wJZavaksvU
 ZcSZo+eTMsCnbwE89qgnv+Dc9MnLfa2SsDh6G11KSBeHAtrru2u9zQM7xXYU5a8hi+2Z
 kHX1f+hnbswJTcOPkpiKcRDYtqCb40fO/veSUZ7iYvjDF7t5RUh4Zq6Ufb1GSU1+U5Vz
 cT4x7R4LxQBle2hSO3s2g8kVRHqrJ0fsqK0UluOqnGVRRxL1k1SqW/1MMzgRyIfrkWau
 ogTg==
X-Gm-Message-State: APjAAAVDPaJ7NQ42J3t0NQJstTgbrT1R3IftMm39Fyyoa96WrC5K+2Zo
 7rtFP4wliNA86DboD/lgeG0=
X-Google-Smtp-Source: APXvYqyyLA4OKohlQbHOKG/b+iP0vPhb3YzM7QiNcuaGJ/Ghmpo2+PH/lTWrGKV/KjM/oPB6uYz8QA==
X-Received: by 2002:a1c:be11:: with SMTP id o17mr75123545wmf.115.1563995736502; 
 Wed, 24 Jul 2019 12:15:36 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id t3sm37844851wmi.6.2019.07.24.12.15.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 12:15:35 -0700 (PDT)
Date: Wed, 24 Jul 2019 21:15:33 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
Subject: Re: [RFC PATCH 05/11] icc: Export of_icc_get_from_provider()
Message-ID: <20190724191533.GH14346@kozik-lap>
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122025eucas1p251df372451e0b27ad7f2e3c89df60b64@eucas1p2.samsung.com>
 <20190723122016.30279-6-a.swigon@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723122016.30279-6-a.swigon@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_121537_889472_7905BC38 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, sw0312.kim@samsung.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, inki.dae@samsung.com, cw00.choi@samsung.com,
 myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDI6MjA6MTBQTSArMDIwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gVGhpcyBwYXRjaCBtYWtlcyB0aGUgYWJvdmUgZnVuY3Rpb24gcHVibGljIChmb3Ig
dXNlIGluIGV4eW5vcy1idXMgZGV2ZnJlcQo+IGRyaXZlcikuCj4gCj4gU2lnbmVkLW9mZi1ieTog
QXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvaW50ZXJjb25uZWN0L2NvcmUuYyAgICAgICAgICAgfCAzICsrLQo+ICBpbmNsdWRlL2xp
bnV4L2ludGVyY29ubmVjdC1wcm92aWRlci5oIHwgNiArKysrKysKPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKClJldmlld2VkLWJ5OiBLcnp5c3p0b2Yg
S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
