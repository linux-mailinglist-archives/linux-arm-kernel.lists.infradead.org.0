Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29191EB6FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mh+oK0ZwdVRGDD55q12gB3yEezXIVgpiYSVtmh+jYT0=; b=ErwfjyFBixhvqR
	0VxV7yzz859vfT8jk+P6S9OzM3odKBbq2T8c7vmP2ROkC1cL88byX1YfS2BOVLh2ZahYokyFDWpLO
	0imRfTvfCcqohR+AJtZqh5q/qmT3wjwhKftKGIGbUO9QgzTLJ6trKtIm3DsNsjGloUXS5p6inteoI
	/x+2GITUIfO3FabaKsY7PPfl00m2sLVCbYpXQFXEvqmce9tq7HC1AxUbfx8GjtVoTbJyFsSKOI4G8
	n+tzg4u7rqGqBOOql/RC9Vhsq7R2KDBYgI8KALsN+omAzKeO9efRbZPLjBlFMLWhsqqaf/ei1/FzK
	aFHweO9yttad+id58YiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg1vi-0007hl-Fq; Tue, 02 Jun 2020 08:05:50 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1vd-0007hO-0l
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 08:05:46 +0000
Received: by mail-ed1-f68.google.com with SMTP id w7so5651677edt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 01:05:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=SCR2cHiabRKqtkGaERDcoYhLdk1hHk/2OBBAMb5lQNY=;
 b=cGEINfghECujM7Ah0JP7HhJQth9+iNsmdIQyu+ziQKTSK7YlYkR5tfQnJTVePqnfTz
 13/wVwz+QjjiGCPFgkBMr1LXG3uqPO4BcnMYYgwSOWMhUWXTqKRJFjmOiLxIHKAnplaO
 M22VvW2C81HaNTodFJ0a6yRkoPrfx1xQ8ANs+9yVMGPu+bix4u+xeHkO3W80aknCsR6f
 qPjXQE0tH0L9X5/66Yo8gbsnX9XF3H1Rmz65enssD2Gq3lu7yT6GvZHdbmxXtWe+Udli
 rpyu4Md0SJsSsCz/k8RVPFYBDSNf936S5YI0c+yJKJIzs62iwQJ9eFnqRC4i3WhZ7kRD
 UWWw==
X-Gm-Message-State: AOAM531drKozgfFzUzdx+EijGMsb5WO0eUpJF1GrEcwxl4qax4ck+osP
 8v4nSvnEtEzlmBzWT8uBuq8=
X-Google-Smtp-Source: ABdhPJwZlPDhteUZ4oQPMQH3bkm+GkPpXcVWfKiuXmPmtRXf3HlXBuN/miC3BujdGRr/785rYqnlRQ==
X-Received: by 2002:a50:af85:: with SMTP id h5mr17930429edd.86.1591085141913; 
 Tue, 02 Jun 2020 01:05:41 -0700 (PDT)
Received: from kozik-lap ([194.230.155.118])
 by smtp.googlemail.com with ESMTPSA id u10sm1177397edb.65.2020.06.02.01.05.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 02 Jun 2020 01:05:41 -0700 (PDT)
Date: Tue, 2 Jun 2020 10:05:38 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [RFC PATCH v5 1/6] dt-bindings: exynos-bus: Add documentation
 for interconnect properties
Message-ID: <20200602080538.GA8216@kozik-lap>
References: <20200529163200.18031-1-s.nawrocki@samsung.com>
 <CGME20200529163219eucas1p2d127fe3936921f53f6fe7902e7d14a3e@eucas1p2.samsung.com>
 <20200529163200.18031-2-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529163200.18031-2-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_010545_059493_08DD2683 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sw0312.kim@samsung.com, a.swigon@samsung.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, inki.dae@samsung.com, cw00.choi@samsung.com,
 myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMjksIDIwMjAgYXQgMDY6MzE6NTVQTSArMDIwMCwgU3lsd2VzdGVyIE5hd3Jv
Y2tpIHdyb3RlOgo+IEFkZCBkb2N1bWVudGF0aW9uIGZvciBuZXcgb3B0aW9uYWwgcHJvcGVydGll
cyBpbiB0aGUgZXh5bm9zIGJ1cyBub2RlczoKPiBzYW1zdW5nLGludGVyY29ubmVjdC1wYXJlbnQs
ICNpbnRlcmNvbm5lY3QtY2VsbHMuCj4gVGhlc2UgcHJvcGVydGllcyBhbGxvdyB0byBzcGVjaWZ5
IHRoZSBTb0MgaW50ZXJjb25uZWN0IHN0cnVjdHVyZSB3aGljaAo+IHRoZW4gYWxsb3dzIHRoZSBp
bnRlcmNvbm5lY3QgY29uc3VtZXIgZGV2aWNlcyB0byByZXF1ZXN0IHNwZWNpZmljCj4gYmFuZHdp
ZHRoIHJlcXVpcmVtZW50cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5z
d2lnb25Ac2Ftc3VuZy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU3lsd2VzdGVyIE5hd3JvY2tpIDxz
Lm5hd3JvY2tpQHNhbXN1bmcuY29tPgo+IC0tLQo+IENoYW5nZXMgZm9yIHY1Ogo+ICAtIGV4eW5v
cyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGUgcmVuYW1lZCB0byBzYW1zdW5nLGludGVyY29ubmVj
dC1wYXJlbnQKPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZy
ZXEvZXh5bm9zLWJ1cy50eHQgfCAxNSArKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpBY2tlZC1ieTogS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
