Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB4532D00
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aX570c/kEbJmpgmWsnnf1OdxD6M+pZ9oMrDEO6+zv4A=; b=ksAgDYIM09wn7l
	RortAq3NjlOAq9qOJ+3bV7PwFxJHE0ZW87hGVSfo70GFkzXWRUWC95FNJp8Qakp5w6LiKiJN5Miro
	g4HycCd1lDTbxQVgOVBgYaIVkc5J7yYsMnkkJx38snR8hA9aYEZeHzxDhgjl+mBV2kdKdrubqKOPw
	6MBMT391TV/P1OIuBbs9Dw72+UCmGMJbcMSs3b53A52gyiVd0x8YRMjvLT+d21m1uKBSK4yCuIok7
	mLGpSAbSnZK9/2Y953XoUg9kPfcHMsJYHE4gLsxHuF+/BBddvPaRjsWf2xnDGhnVziw1TYG5ndEC/
	IygfqEEIsCDQGUEH5BsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjPL-0004So-Vj; Mon, 03 Jun 2019 09:37:35 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjP8-0004KL-RF
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:37:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id c6so7346481wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 02:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=FH8JY4qDdnuY/nkK+8zanlK0WEZXZ9PGux3V1jYWA74=;
 b=u7hHGQ1KPja0igPZ1tQ98KrQncJ3i/kWVJBQMj5wioahCD2F6NNSGXVa6KEe8UAz6Z
 gJQqqSLxLtpuqyJ2//fNfZAl2IPP8Up+FNSoAuOYYbGydJFZwu5Qn7tMmyYEy3PSlDUZ
 SgaP+9CWWIPqZcI+0kXQVzcMv/t0BLomvbmfKtvGE+XdkcY5gQbGk0JxbHH7fUGHaGsq
 UTPwzOBeLs08FKCm/+UhAA7NtHJare8rDbWaYyBpdLvLtmB0NVCj6oyc4I1xWtXXxMtD
 bJtM77uyXBGUbwBE2XKsZAHUssodxR2VHgiE9zICnhQyzLcc84TyZs7gWcmCp/Cbg9TL
 uo8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=FH8JY4qDdnuY/nkK+8zanlK0WEZXZ9PGux3V1jYWA74=;
 b=IKjmicddl1G7Jo5pOTYLeIZrtXqT4uyoN9bAtQwfKnJscnsxOEVf+CrP9UVFY3M4fO
 J/AfXQvrlQ3KmS1RfH2n+KTW5Cgb7uBVgM5X7+iEir27MjfqXsKrzecmqSUaQ1fTEKNk
 zj/zUghue6/dcFbZRPxooDFjOg70KM10+NG9CdmuSvxsqTra+NQP2f5dFtUxUf9bt84c
 Nmdy6X7fkhVC3wdPMUdPQKsGoMx+m+w+5gGhbstia7PCko4fCaTGgTIPhqjNyiX27FqW
 w0W+R8MKm1ceR6WVDmnWiCML5yttVZlY/Lde0UWkXa6XBTER/544AEZ+vGrwh5nddDhW
 y/ZQ==
X-Gm-Message-State: APjAAAWv0+u61xgwslqnPJ6J3tHflHHmnE4ZjD/bJnknRWHDf6r4jIX3
 jwBQC9aOQmOh1/5yPyuh9PEA5Q==
X-Google-Smtp-Source: APXvYqygOO4Xq5aGTdEvmHkgjQC2ck/mOA4BrLfs9cgwsIQoR6QldAKRhoLObHom678jS81nbgIypA==
X-Received: by 2002:a1c:5546:: with SMTP id j67mr1759767wmb.80.1559554641286; 
 Mon, 03 Jun 2019 02:37:21 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id b17sm6309777wmj.26.2019.06.03.02.37.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 02:37:20 -0700 (PDT)
Date: Mon, 3 Jun 2019 10:37:19 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH v3 3/5] dt-bindings: mfd: mt6397: Add bindings for MT6392
 PMIC
Message-ID: <20190603093719.GK4797@dell>
References: <20190515131741.17294-1-fparent@baylibre.com>
 <20190515131741.17294-4-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515131741.17294-4-fparent@baylibre.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_023722_951529_DE54F55B 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxNSBNYXkgMjAxOSwgRmFiaWVuIFBhcmVudCB3cm90ZToKCj4gQWRkIHRoZSBjdXJy
ZW50bHkgc3VwcG9ydGVkIGJpbmRpbmdzIGZvciB0aGUgTVQ2MzkyIFBNSUMuCj4gCj4gU2lnbmVk
LW9mZi1ieTogRmFiaWVuIFBhcmVudCA8ZnBhcmVudEBiYXlsaWJyZS5jb20+Cj4gUmV2aWV3ZWQt
Ynk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gCj4gVjM6Cj4gCSogTm8g
Y2hhbmdlCj4gCj4gVjI6Cj4gCSogTmV3IHBhdGNoCj4gCj4gLS0tCj4gIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvbXQ2Mzk3LnR4dCB8IDEyICsrKysrKysrKystLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCkZvciBteSBv
d24gcmVmZXJlbmNlOgogIEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxp
bmFyby5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNo
bmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNv
Q3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
