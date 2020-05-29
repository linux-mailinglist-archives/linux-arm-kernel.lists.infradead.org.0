Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA091E874C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z8ykgr2+520gy0XH7qFnsIPgH90pUiP/Hj5e/Fo3deg=; b=QzJQWqYgH+uDw3
	mY3vdswPv2FbvXJmLvN7NC2r5PJj7L4wxIFnkIBXS+lEvX35OdfT7ouMk1kMnA/Z0V/BCVWJC631R
	UC3tqAOfMMcYlsIGK9xkTIHFZ2JMKH2++u0b7iYn3qT2xdnI+ZeLNNV7JHHPOvJ2io9sN3dww0AUh
	v0LkEUY87+d/uWtlM484CTkIxv0/1IfVPkTcXo9CK4mIiF3mBDHYKDGKuIzx33ExcpZAQrLY8oB0C
	6JWAILc4vSxPThf0o+RONr2c0hlEYKvvhoYIEAJYXExukq+s2fKzfVlvv78eLEXCKXEibqvhEcELr
	VOPkA+szVIWxm0W1oK3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekNI-0005D9-Uh; Fri, 29 May 2020 19:09:00 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekN8-0005Bi-CN; Fri, 29 May 2020 19:08:51 +0000
Received: by mail-pl1-x643.google.com with SMTP id d3so1609327pln.1;
 Fri, 29 May 2020 12:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GI1G8YjdYC1/BVVh4xt8/46vLX7fto1AiKAB85tn/IA=;
 b=itTcRWHxC2KMPstmcRYoqLS+QQVVGGSmS7tq3ZFU0HVObAB58AQfGHoULlcCWTbrpW
 oNi9814k5tWtnJzOXn3Q9X2vYqaQSIodZzBeoe8tF5LtagndHxfTbJWVvPF028+hLPZJ
 rtSYRmcQTMMkSBKbRI8j9AUEZJqZ+WngEgkjqzl2v4ZuKFZWOLdg6b5fSyV8n9j6puY8
 rGRcUSe0VZEIiMvZDlIlCeb1VOprX/JIYo1G83oRBxqlC60keJNPffEmhuPHR12etRqz
 wlIZnphpBj6OCI8nYVYaqWStHKI1cCt5pl/cff3b5mfL4iY8vTDU5RLS63nS/FXk5ody
 0dBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=GI1G8YjdYC1/BVVh4xt8/46vLX7fto1AiKAB85tn/IA=;
 b=kS2rHHrJclJZQ/ScYPKNLGOEIqgdM7Bc+8+GAqeKmoMJdbiRWVv1LMXnAlrLa5bhLh
 bQpgf1VUNe/MJtomgENoP5QcxdbuF+u9LRqJ8tunJC0Rzj+AvU8TaV9YdZsTo77ehHEg
 vVNOTNhGPpTgNefaWJvo0FzeDM8MVR+nmRVcQgSI4sqTb6RHtcQBWr06j78nZoF4hnD2
 qLPtrLhyhbFjehzRQV344RqrbMK5hzkVkaZw6oJHsKGLRAIm/a7gXRv/389c26LOjt1N
 wGJsa8xfg6xp7TfA00GIOJzTqFYeF4V43s+wP7aSHn5CRyi7p/5lgryI0fXZDlrZJ2wS
 Ahww==
X-Gm-Message-State: AOAM531EWOEQmnI/sqMr5WqEWZa51/zOMbJx3/fcWP+nmwmAKrU7vHns
 PJ8rw8RVEnvXBjcdr9zegn0=
X-Google-Smtp-Source: ABdhPJyHV5xGLC87UW+F9nDZMYCJnbX5AfeeDURZAW851oj7hugQ2QwQ/lkIOGUs3EXvBn8f2RBZ+w==
X-Received: by 2002:a17:902:bb86:: with SMTP id
 m6mr9870951pls.341.1590779329529; 
 Fri, 29 May 2020 12:08:49 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 x11sm4433734pfm.196.2020.05.29.12.08.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 12:08:48 -0700 (PDT)
Subject: Re: [PATCH v4 04/11] thermal: Store device mode in struct
 thermal_zone_device
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
References: <20200529154205.GA157653@roeck-us.net>
 <5010f7df-59d6-92ef-c99a-0dbd715f0ad2@collabora.com>
 <a0c0310f-9870-47be-4ca3-c07e41c380fc@collabora.com>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <3776b295-eb43-ce3c-0d9a-c923a3bd5ffd@roeck-us.net>
Date: Fri, 29 May 2020 12:08:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <a0c0310f-9870-47be-4ca3-c07e41c380fc@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_120850_436014_2A7778E3 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gNS8yOS8yMCAxMDoyMSBBTSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IEhpIGFn
YWluLAo+IAo+IFcgZG5pdSAyOS4wNS4yMDIwIG/CoDE4OjA4LCBBbmRyemVqIFBpZXRyYXNpZXdp
Y3ogcGlzemU6Cj4+IEhpIEd1ZW50ZXIsCj4+Cj4+IFcgZG5pdSAyOS4wNS4yMDIwIG/CoDE3OjQy
LCBHdWVudGVyIFJvZWNrIHBpc3plOgo+Pj4gT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDk6MjA6
NDRQTSArMDIwMCwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+Pj4+IFByZXBhcmUgZm9y
IGVsaW1pbmF0aW5nIGdldF9tb2RlKCkuCj4+Pj4KPj4+IE1pZ2h0IGJlIHdvcnRod2hpbGUgdG8g
ZXhwbGFpbiAobm90IG9ubHkgaW4gdGhlIHN1YmplY3QpIHdoYXQgeW91IGFyZQo+Pj4gZG9pbmcg
aGVyZS4KPj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRy
emVqLnBAY29sbGFib3JhLmNvbT4KPj4+PiAtLS0KPj4+PiDCoCBkcml2ZXJzL2FjcGkvdGhlcm1h
bC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDE4ICsr
KysrKy0tLS0tLS0tLS0KPj4+PiDCoCAuLi4vZXRoZXJuZXQvbWVsbGFub3gvbWx4c3cvY29yZV90
aGVybWFsLmPCoMKgwqAgfCAyMSArKysrKysrLS0tLS0tLS0tLS0tCj4+Pj4gwqAgZHJpdmVycy9w
bGF0Zm9ybS94ODYvYWNlcmhkZi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTUg
KysrKysrLS0tLS0tLQo+Pj4+IMKgIGRyaXZlcnMvdGhlcm1hbC9kYTkwNjItdGhlcm1hbC5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDYgKystLS0tCj4+Pj4gwqAgZHJpdmVycy90aGVy
bWFsL2lteF90aGVybWFsLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDE3ICsr
KysrKystLS0tLS0tLQo+Pj4+IMKgIC4uLi9pbnRlbC9pbnQzNDB4X3RoZXJtYWwvaW50MzQwMF90
aGVybWFsLmPCoMKgIHwgMTIgKysrLS0tLS0tLS0KPj4+PiDCoCAuLi4vdGhlcm1hbC9pbnRlbC9p
bnRlbF9xdWFya19kdHNfdGhlcm1hbC5jwqDCoCB8IDE2ICsrKysrKystLS0tLS0tCj4+Pj4gwqAg
ZHJpdmVycy90aGVybWFsL3RoZXJtYWxfb2YuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfCAxMCArKystLS0tLS0KPj4+Cj4+PiBBZnRlciB0aGlzIHBhdGNoIGlzIGFwcGxpZWQg
b24gdG9wIG9mIHRoZSB0aGVybWFsICd0ZXN0aW5nJyBicmFuY2gsCj4+PiB0aGVyZSBhcmUgc3Rp
bGwgbG9jYWwgaW5zdGFuY2VzIG9mIHRoZXJtYWxfZGV2aWNlX21vZGUgaW4KPj4+IMKgwqDCoMKg
ZHJpdmVycy90aGVybWFsL3N0L3N0bV90aGVybWFsLmMKPj4+IMKgwqDCoMKgZHJpdmVycy90aGVy
bWFsL3RpLXNvYy10aGVybWFsL3RpLXRoZXJtYWwtY29tbW9uLmMKPj4+Cj4+PiBJZiB0aGVyZSBp
cyBhIHJlYXNvbiBub3QgdG8gcmVwbGFjZSB0aG9zZSwgaXQgbWlnaHQgbWFrZSBzZW5zZSB0byBl
eHBsYWluCj4+PiBpdCBoZXJlLgo+Pj4KPj4KPj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHRo
ZXNlIHR3byBhcmUgc2Vuc29yIGRldmljZXMgd2hpY2ggYXJlICJwbHVnZ2VkIgo+PiBpbnRvIHRo
ZWlyICJwYXJlbnQiIHRoZXJtYWwgem9uZSBkZXZpY2UuIFRoZSBsYXR0ZXIgaXMgdGhlICJwcm9w
ZXIiIHR6ZC4KPj4gVGhleSBib3RoIHVzZSB0aGVybWFsX3pvbmVfb2ZfZGV2aWNlX29wcyBpbnN0
ZWFkIG9mIHRoZXJtYWxfem9uZV9kZXZpY2Vfb3BzLgo+PiBUaGUgZm9ybWVyIGRvZXNuJ3QgZXZl
biBoYXZlIGdldF9tb2RlKCkuIFRoZSB0aGVybWFsIGNvcmUsIHdoZW4gaXQgY2FsbHMKPj4gZ2V0
X21vZGUoKSwgb3BlcmF0ZXMgb24gdGhlICJwYXJlbnQiIHRoZXJtYWwgem9uZSBkZXZpY2VzLgo+
Pgo+PiBDb25zZXF1ZW50bHksIHRoZSBkcml2ZXJzIHlvdSBtZW50aW9uIHVzZSB0aGVpciAibW9k
ZSIgbWVtYmVycyBmb3IKPj4gdGhlaXIgcHJpdmF0ZSBwdXJwb3NlLCBub3QgZm9yIHRoZSBwdXJw
b3NlIG9mIHN0b3JpbmcgdGhlICJwYXJlbnQiCj4+IHRoZXJtYWwgem9uZSBkZXZpY2UgbW9kZS4K
Pj4KPiAKPiBMZXQgbWUgYWxzbyBzYXkgaXQgZGlmZmVyZW50bHkuCj4gCj4gQm90aCBkcml2ZXJz
IHdoaWNoIHlvdSBtZW50aW9uIHVzZSBkZXZtX3RoZXJtYWxfem9uZV9vZl9zZW5zb3JfcmVnaXN0
ZXIoKS4KPiBJdCBjYWxscyB0aGVybWFsX3pvbmVfb2Zfc2Vuc29yX3JlZ2lzdGVyKCksIHdoaWNo
ICJ3aWxsIHNlYXJjaCB0aGUgbGlzdCBvZgo+IHRoZXJtYWwgem9uZXMgZGVzY3JpYmVkIGluIGRl
dmljZSB0cmVlIGFuZCBsb29rIGZvciB0aGUgem9uZSB0aGF0IHJlZmVyIHRvCj4gdGhlIHNlbnNv
ciBkZXZpY2UgcG9pbnRlZCBieSBAZGV2LT5vZl9ub2RlIGFzIHRlbXBlcmF0dXJlIHByb3ZpZGVy
cy4gRm9yCj4gdGhlIHpvbmUgcG9pbnRpbmcgdG8gdGhlIHNlbnNvciBub2RlLCB0aGUgc2Vuc29y
IHdpbGwgYmUgYWRkZWQgdG8gdGhlIERUCj4gdGhlcm1hbCB6b25lIGRldmljZS4iIFdoZW4gYSBt
YXRjaCBpcyBmb3VuZCB0aGVybWFsX3pvbmVfb2ZfYWRkX3NlbnNvcigpCj4gaXMgaW52b2tlZCwg
d2hpY2ggKHVzaW5nIHRoZXJtYWxfem9uZV9nZXRfem9uZV9ieV9uYW1lKCkpIGl0ZXJhdGVzIG92
ZXIKPiBhbGwgcmVnaXN0ZXJlZCB0aGVybWFsX3pvbmVfZGV2aWNlcy4gVGhlIG9uZSBldmVudHVh
bGx5IGZvdW5kIHdpbGwgYmUKPiByZXR1cm5lZCBhbmQgcHJvcGFnYXRlZCB0byB0aGUgb3JpZ2lu
YWwgY2FsbGVyIG9mCj4gZGV2bV90aGVybWFsX3pvbmVfb2Zfc2Vuc29yX3JlZ2lzdGVyKCkuIFRo
ZSBzdGF0ZSBvZiB0aGlzIHJldHVybmVkCj4gZGV2aWNlIGlzIG1hbmFnZWQgZWxzZXdoZXJlIChp
biB0aGF0IGRldmljZSdzIHN0cnVjdCB0emQpLiBUaGUgIm1vZGUiCj4gbWVtYmVyIHlvdSBhcmUg
cmVmZXJyaW5nIHRvIGlzIHRodXMgdW5yZWxhdGVkLgo+IAoKUXVpdGUgY29uZnVzaW5nLCBlc3Bl
Y2lhbGx5IHNpbmNlIHRoZSB0aS1zb2MgZHJpdmVyIGRvZXNuJ3Qgc2VlbSB0byB1c2UKdGhlIHZh
cmlhYmxlIGF0IGFsbCBhZnRlciBzZXR0aW5nIGl0LCBhbmQgdGhlIHN0bV90aGVybWFsIGRyaXZl
ciB1c2VzIGl0CnRvIHJlZmxlY3QgcG93ZXIgc3RhdHVzIGFzc29jaWF0ZWQgd2l0aCBzdXNwZW5k
L3Jlc3VtZS4gU28sIHllcywgSSBhZ3JlZQp0aGlzIGlzIGZpbmUuCgpUaGFua3MsCkd1ZW50ZXIK
Cj4gUmVnYXJkcywKPiAKPiBBbmRyemVqCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
