Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BBC1AB815
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 08:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSLsIhst3wNH293H3Us3FMWRaT/UyL6kRGTvz/qz6GI=; b=nas9rumeRczxXh
	N9FEvj/Nzta14S24LWJhAYCGsr7ncegpfpIlL0BBgZUl8t4wQApH3kUykdqrIeAN/xcXHGp65V34y
	tndTtHMkZRTsPMH+lEiTg9qWbBwi/Nzx/zmrKPn5pG4z1B3WMcMIHFF40lxy0+hCgxGoXsyjGWxcS
	GUi/Azu4O0QhpTuxwpblVsK6dwFAsFqWqTaXoIatIVjK4VogT3Hhnh8zC7wYF94dDOwU1olQ5KClg
	NkVo5WLTZi7fjbNh/zhXWYMWMVWmLRcl8x/JZthVWYq5fkGgC/nowMDfMMen6G1rOBLw4lSK50QAS
	Q0VUDCuNVrKJiV9KRlkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOy6k-0000Pu-EO; Thu, 16 Apr 2020 06:34:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOy6b-0000PO-2s
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 06:34:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id t14so3380715wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 23:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=0zaVLvpq9xyTb6tnL5lflzeTc3OD1xVdDRy9b/kylC4=;
 b=mFdfZi8VBTlwLtP0JTgvvick+7svv6vG9/rG7kqJVdsx7j4WTAwfHqs6HIWFQomHeJ
 QRxfjpa18BSA4VXbHmcIUmuDtse9X/hdmh/XQiyJ7jEfV081PEJ9tosvNZ+odwiT5hxG
 fAuY4M7K7YRoqM3JJSExPdZ/FXUazHY4EY9pPLCpFSHR47L1O64WI4C5aFBHEZ1Bbbzk
 VyRiPRQ9GjOSEu5CKBTWAW/RasKWbr1bdS4jRAqXs0BovImMBsKywoXudzx+lrdfJqOr
 c4YxSwYJ7+crMFX9rHyCdduz7Zz4FRn76B6VprKnWQ/mwxNDcnFGS+A3ZiWZ4x0P/8LK
 xXQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=0zaVLvpq9xyTb6tnL5lflzeTc3OD1xVdDRy9b/kylC4=;
 b=L6DpB31lCUzvJqF86Eett5zdk82twqitNzWEepqwKn35BSZDL4ZueIpo7nXV2jxTtM
 lsN+c1P2u2TezGK619HdoOcL2df007vJvHNEP0Gbs9VahqjoAI/dlS+eD5xHZ9G5CuWX
 zUK1fRn/iFgDhegJc/e4YjMktzryvQ1J388IFbvtSfbVi45G+TZPmWBhH3ffYoq8iJ6J
 kSbhG1pj56CCgpUck/2kQuPltQyh8reVfjTQaZP4jzuWQ/c/AAGgXI9Hkc2M117plKkm
 3amDLo1r0OZ+t7fNRXnhcPnstC+lXLF+clcnmbSCqXld4YIcspRCC2RBBMBYIxhpRcmH
 mZmg==
X-Gm-Message-State: AGi0PubqdJ0xXg3AKMD30zEbLR7vzN6axCfjb9bNeqqPqOInB8gQsxwq
 N/36jjhq0gqXKlExJQsyWuEWjA==
X-Google-Smtp-Source: APiQypJEpTtqeTr9o0OHWVCd4YNULVp1q0q9U2Soz/KtkpNaaDcqmR9MRis2lZmNki6Q0+MIaix0pA==
X-Received: by 2002:a5d:5392:: with SMTP id d18mr12081099wrv.278.1587018870349; 
 Wed, 15 Apr 2020 23:34:30 -0700 (PDT)
Received: from dell ([95.149.164.124])
 by smtp.gmail.com with ESMTPSA id 5sm2419784wmg.34.2020.04.15.23.34.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 23:34:29 -0700 (PDT)
Date: Thu, 16 Apr 2020 07:35:19 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v6 1/6] dt-bindings: mfd: Document STM32 low power timer
 bindings
Message-ID: <20200416063519.GN2167633@dell>
References: <20200401083909.18886-1-benjamin.gaignard@st.com>
 <20200401083909.18886-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401083909.18886-2-benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_233433_135030_4749BD24 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, tglx@linutronix.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwMSBBcHIgMjAyMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cgo+IEFkZCBhIHN1
Ym5vZGUgdG8gU1RNIGxvdyBwb3dlciB0aW1lciBiaW5kaW5ncyB0byBzdXBwb3J0IHRpbWVyIGRy
aXZlcgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWln
bmFyZEBzdC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+
Cj4gLS0tCj4gdmVyc2lvbiA2Ogo+IC0gb25seSB1c2Ugb25lIGludGVycnVwdAo+IAo+IHZlcnNp
b24gNToKPiAtIHRoZSBwcmV2aW91cyBoYXMgYmVlbiBhY2tlZC1ieSBSb2IgYnV0IHNpbmNlIEkg
aGF2ZSBkb2N1bW1lbnRlZAo+ICAgaW50ZXJydXB0cyBhbmQgaW50ZXJydXB0LW5hbWVzIHByb3Bl
cnRpZXMgSSBoYXZlbid0IGFwcGxpZWQgaXQgaGVyZS4KPiAKPiB2ZXJzaW9uIDQ6Cj4gLSBjaGFu
Z2UgY29tcGF0aWJsZSBhbmQgc3Vibm9kZSBuYW1lcwo+IC0gZG9jdW1lbnQgd2FrZXVwLXNvdXJj
ZSBwcm9wZXJ0eQo+IAo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3Qsc3RtMzItbHB0
aW1lci55YW1sICAgfCAyMSArKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQs
IDIxIGluc2VydGlvbnMoKykKCkZvciBteSBvd24gcmVmZXJlbmNlOgogIEFja2VkLWZvci1NRkQt
Ynk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7n
kLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVu
IHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBU
d2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
