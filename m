Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC1F1EA525
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 15:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Crf4GiISIznk8/gztaCM4SEZtCotePEan47Gp/Ce6GE=; b=aD4j3SL/Gkhr3u
	a4FDqm9EbEn0QCyldoI8bdUW4+yAN2Qw1F85/icDZphz7hAL1KaLS74sqzKwOOgNveeX1toIjdsUc
	UgL/ksJRuxmRT0AHH4ALmlAkQ2pgxQOCktNKO0U36Vcyou2kTiVW9oiQSON2wMRHGFgR5l6vz5oUa
	GBvotKX8C4wVpu+gxFRmDaOUbCw15j0zvGF/GEaZRMDuURVTNWrC7p48diNzo/uUY3bqFohkX7doY
	KJ44CSK/67YAS8opn9z8v2pBlEoJQO8buMdwdtyzEFTaN/DZF3zHlO/mVc1rqPOJZQaXdLSNKRrgi
	QINU1/Ttdi7S1i2la0LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfkfz-0000nx-41; Mon, 01 Jun 2020 13:40:27 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfkfo-0000K7-D1; Mon, 01 Jun 2020 13:40:17 +0000
Received: by mail-pf1-x441.google.com with SMTP id a4so3485308pfo.4;
 Mon, 01 Jun 2020 06:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=T+tbUzmqUtPdaDA66y4P6TRaUz7TGSaGcJXEbYmiSzg=;
 b=uLtD6u/XsIMVTNcATS2idiC4if137SRCOEPB45k8KxH13VvUwDWSAiISAG8jYS8on4
 4Btd2LjJH46nl8L4BDNSEKoUtMQoz/tmgdIq2erS9GZEBO8eDKqduJ2f+PbjhyrxXnob
 JSadCGwfAuXhxmuWp/kwWNRBYH0LWrbV6OlibwU+HBufVwFPpi1ZttgLz2rL7V685xRW
 WfoXhM+0M95NEiE9EQniCHzFmMa5Z9WCwzKR/Fs4Jw+tU47HKXGjOEfUaepQE96aSEvb
 tb7+uhR0LcmlYbf4lSQCj0Ki0esHpTikVtgdcWnmS2BDrCrAqGz1lsREF2rPVx3nqBiM
 RK5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=T+tbUzmqUtPdaDA66y4P6TRaUz7TGSaGcJXEbYmiSzg=;
 b=gYldk3wel8J91Oa6hGca/QRRWH1fEFF0vwDYnPO3/JA3v41GZiG3RqvRA/qC0BtvQz
 Ks6DitkvJZfiEj3WUztXsd2n6uPZVnglu7/VBH8diroGvUL4a+LZBnw9VZazMDzsrfUn
 I0SbA0MSRTs5cK/dMWmmEz5M/Q/0d+FfkpswC6Dyb302fob47H9LHHaHlwLvR0FNpXxK
 ufJmyNkNo2U/zl1AFiKsq0IwPuakjsuZjUnKnNCxhbLzTPeA3hm4fN6I4ye29WjgyqXU
 7o1kBRoe1dyd2MpdyePftiUZnBlaYeAovqjv44NAUjKVejL8lYQXOIEaZCZJhFv72xFr
 6Fjg==
X-Gm-Message-State: AOAM530oAIxEp4suVfallA8wjrOTa/BrHYu4CxZjSZD1CnNZnVGFihu3
 wQOxWbauNjc5GjitrSZcOlo=
X-Google-Smtp-Source: ABdhPJz9uZmUvDPe8JKDfXKHXvArOKo2nWSjDoBahLC2TKpkgYBovP1dvZKrdW+w+hKyGCgq2vUEew==
X-Received: by 2002:aa7:85c1:: with SMTP id z1mr19639747pfn.184.1591018814740; 
 Mon, 01 Jun 2020 06:40:14 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 3sm4088275pfe.85.2020.06.01.06.40.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 06:40:14 -0700 (PDT)
Subject: Re: [PATCH v4 06/11] thermal: Add mode helpers
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
References: <20200529155206.GA158553@roeck-us.net>
 <526286da-70d2-7c55-3c41-15fd2c969a39@collabora.com>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <c5780899-c471-4ce3-7581-5ab39a3cf219@roeck-us.net>
Date: Mon, 1 Jun 2020 06:40:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <526286da-70d2-7c55-3c41-15fd2c969a39@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_064016_457822_4271F57A 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Kalle Valo <kvalo@codeaurora.org>,
 linux-wireless@vger.kernel.org, Peter Kaestle <peter@piie.net>,
 platform-driver-x86@vger.kernel.org, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-rockchip@lists.infradead.org, Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Johannes Berg <johannes.berg@intel.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Intel Linux Wireless <linuxwifi@intel.com>, Ido Schimmel <idosch@mellanox.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 Jiri Pirko <jiri@mellanox.com>, Orson Zhai <orsonzhai@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Sebastian Reichel <sre@kernel.org>,
 linux-renesas-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Baolin Wang <baolin.wang7@gmail.com>, Len Brown <lenb@kernel.org>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi8xLzIwIDQ6MTYgQU0sIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPiBIaSBHdWVu
dGVyLAo+IAo+IFcgZG5pdSAyOS4wNS4yMDIwIG/CoDE3OjUyLCBHdWVudGVyIFJvZWNrIHBpc3pl
Ogo+PiBPbiBUaHUsIE1heSAyOCwgMjAyMCBhdCAwOToyMDo0NlBNICswMjAwLCBBbmRyemVqIFBp
ZXRyYXNpZXdpY3ogd3JvdGU6Cj4+PiBQcmVwYXJlIGZvciBtYWtpbmcgdGhlIGRyaXZlcnMgbm90
IGFjY2VzcyB0emQncyBwcml2YXRlIG1lbWJlcnMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQW5k
cnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4KPiAKPiA8c25pcD4K
PiAKPj4+ICsKPj4gTml0OiB1bm5lY2Vzc2FyeSBlbXB0eSBsaW5lLgo+Pgo+Pj4gK8KgwqDCoMKg
wqDCoMKgIHJldHVybiByZXQ7Cj4gCj4gPHNuaXA+Cj4gCj4+PiArwqDCoMKgIHJldHVybiB0aGVy
bWFsX3pvbmVfZGV2aWNlX3NldF9tb2RlKHR6LCBUSEVSTUFMX0RFVklDRV9FTkFCTEVEKTsKPj4+
ICt9Cj4+PiArRVhQT1JUX1NZTUJPTCh0aGVybWFsX3pvbmVfZGV2aWNlX2VuYWJsZSk7Cj4+Cj4+
IE90aGVyIGV4cG9ydHMgaW4gdGhlcm1hbC8gdXNlIEVYUE9SVF9TWU1CT0xfR1BMLgo+IAo+IE90
aGVyIHRoYW4gdGhhdCBkb2VzIGl0IGxvb2sgZ29vZCB0byB5b3U/CgpZZXMsIGl0IGRvZXMuCgo+
IEkgY2FuIHNlbmQgYSB2NSB3aGVyZSB0aGUgdHdvIGFib3ZlIHdpbGwgYmUgY29ycmVjdGVkLCBi
dXQgZGlkIHlvdSBoYXZlCj4gYSBjaGFuY2UgdG8gcmV2aWV3IHBhdGNoZXMgNy0xMT8KPiAKTm90
IHlldC4gSSBnb3QgZGlzdHJhY3RlZCwgc29ycnkuIEhvcGVmdWxseSBJJ2xsIGdldCB0byBpdAp0
b2RheSBvciB0b21vcnJvdy4KCkd1ZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
