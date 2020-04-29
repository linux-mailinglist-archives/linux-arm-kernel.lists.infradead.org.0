Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E26FB1BE6B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSE7y0NfRGwuZyrdOsL/Ibv4GSr+ux8rcJtsawqJnvg=; b=qHsgZX1iIJkUmE
	eLRHcHH3tev6chEqBXKBfm+idrfv2Qd0XaZ6toZRfV/QODr/Abf0vNTDN+2vVdaSnPPzi0UgHg404
	FOc52exLUjVo1Hml7Dg0HWE5aFoQ04RMWYsJsnr3AKlYVusdjCoL37Yn6BtXE0Y2ljJ6TRKn6c8Jm
	b0mgBOw6NFK4Y7HJ23L1ejKx6TFvHBVlRPvXMDJtAT+JiJ1cf5wkZBGj8G2JGZILd8wxIZ8ykvO62
	VrTIzDjQzxbtOEF+1/ScYSDK8ESaUyIX0Df0FKurOjluavhCX8I2TbVHx/FhO2NvIWmhgOkvPMUdm
	gaiTdGFuDV707Gm+UONg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTrrr-0000jX-Nj; Wed, 29 Apr 2020 18:55:35 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrrH-0000SM-5b
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:55:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id k12so3223473wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 11:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=6YnbwWiKQ4Iao946t7dKTYYwMaT6iBCQ8RAc8IdgDxQ=;
 b=tF3Vfaj1HFl7qz5JJnZNlQQE0SjQ2PHHoZ2ssai5WnKiSXAWErxybdq60FuDs58EAe
 G5U5L5dIia+6TiCvPFmZp8dbxJBomRK78ZClIuWHuftf52F/SRz2mYQN6nGwJM/q3xtJ
 lHd5F2VXnl4eRtUdbpfsYjwGDJrblP+iLmkvb8QuYubddfNy970WhYgERnuwy/dfQS52
 TfbSLUsf8NDXrn5xjgvfrn9rNKDEysBo1fQrXCR/RdhzLcozDHeR9efgpoQKZO4MQJce
 LWQAEvmNO1tVxCqzY3DHaPV4ABgeoJWfXJePfWvJeNOYTx158NISh+hdLKN34kT9cakV
 +pVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=6YnbwWiKQ4Iao946t7dKTYYwMaT6iBCQ8RAc8IdgDxQ=;
 b=IUDJqbWPSNxQd45tfUe+t0Q1Z5Vqb8ozgnS9oqTgC2kFoPTAQK/kwwSFuI9LHFgk5R
 GLCDF+ttV31tuPA+loFlr/levsgeL4Xbm4iLM/OE3nmbTGiRGstDRkv0/pvXeq8BMb1e
 AksBETHjhEUgNBbWsNqllQqsX1gzfvIuEn9c5oigGfeOyWWO+lbAhQebW5IOwfzsLwqC
 I4WbD990FEdFg813fnhMrtcZVoy7rKIlCA3UOG66Jazk0+BT5nkysv8mrvMCqdcTLpUc
 voSxySz32ox6SzA4HorcmOz9KJkiVNBU5YfW96arLVHqA0uOH2uVl6tX1ON8Bq0CCPKS
 iO3w==
X-Gm-Message-State: AGi0PuZCbnXa7xaOiNyeOOBmjwy5ddgnbgmBpFMwU2Nju3SHr54OKpvV
 RVuxU+UPbC0Ti5CLIerckErXkg==
X-Google-Smtp-Source: APiQypLtXfk/wATMJxqBb2Qp5z3oODZe/lOdUgqR3v5FpRdEcmAOBgKUT58slykEAG9h6bg83V3fZw==
X-Received: by 2002:a05:600c:2f88:: with SMTP id
 t8mr4665841wmn.46.1588186496920; 
 Wed, 29 Apr 2020 11:54:56 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id f18sm276841wrq.29.2020.04.29.11.54.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 11:54:56 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH v4] arm64: dts: meson: S922X: extend cpu opp-points
In-Reply-To: <2A9D3FBA-917A-42C7-9757-4316D6B3D284@gmail.com>
References: <20200426162119.GA23268@imac>
 <1ja72x2t7w.fsf@starbuckisacylon.baylibre.com>
 <2A9D3FBA-917A-42C7-9757-4316D6B3D284@gmail.com>
Date: Wed, 29 Apr 2020 11:54:53 -0700
Message-ID: <7hd07qktqa.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_115459_210785_F9F0D4BE 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, joy.cho@hardkernel.com,
 narmstrong@baylibre.com, linux-kernel@vger.kernel.org,
 Tim Lewis <elatllat@gmail.com>, robh+dt@kernel.org, tobetter@gmail.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hyaXN0aWFuIEhld2l0dCA8Y2hyaXN0aWFuc2hld2l0dEBnbWFpbC5jb20+IHdyaXRlczoKCj4+
IE9uIDI3IEFwciAyMDIwLCBhdCAxOjA2IHBtLCBKZXJvbWUgQnJ1bmV0IDxqYnJ1bmV0QGJheWxp
YnJlLmNvbT4gd3JvdGU6Cj4+IAo+PiBPbiBTdW4gMjYgQXByIDIwMjAgYXQgMTg6MjEsIFRpbSBM
ZXdpcyA8ZWxhdGxsYXRAZ21haWwuY29tPiB3cm90ZToKPj4gCj4+PiBBZGQgZXh0cmEgY3B1IHBv
cCBwb2ludHMgdG8gYWxsb3cgbWlsZCBvdmVyY2xvY2sgb24gUzkyMlguIFRoZSBvcHAKPj4+IHBv
aW50cyBhcmUgZm91bmQgaW4gSGFyZGtlcm5lbCBOMiBzb3VyY2VzIFsxXSBhbmQgdGVzdGluZyBz
aG93cyBubwo+Pj4gb2J2aW91cyBpc3N1ZXMgb24gb3RoZXIgUzkyMlggZGV2aWNlcy4gVGhlcm1h
bCB0aHJvdHRsaW5nIHNob3VsZAo+Pj4ga2VlcCB0aGluZ3MgaW4tY2hlY2sgaWYgbmVlZGVkLgo+
PiAKPj4gVGhlIE9kcm9pZC1OMiBoYXMgYSBtYXNzaXZlIGhlYXRzaW5rIG1vdW50ZWQuCj4+IERv
IHdlIGhhdmUgYW55IGlkZWEgaWYgdGhpcyBhcHBsaWVzIChpcyBzYWZlKSBvbiBhbnkgb3RoZXIg
UzkyMngKPj4gZGV2aWNlID8KPgo+IEnigJl2ZSB0ZXN0ZWQgaXQgb24gc2V2ZXJhbCBTOTIyWCBi
b3ggZGV2aWNlcyB0aGF0IEkgaGF2ZSwgYW5kIGFsc28gdGhlCj4gb3JpZ2luYWwgUzkyMlggdmVy
c2lvbiBvZiB0aGUgVklNMyAtIGFsbCBoYXZlIHNpbWlsYXIgc2l6ZWQgcGFzc2l2ZQo+IGhlYXRz
aW5rcyBhYm91dCAyMCUgdGhlIHNpemUgb2YgdGhlIE4yIG9uZS4gTm8gb2J2aW91cyBpc3N1ZXMg
d2l0aAo+IEtvZGkgc29mdHdhcmUgZGVjb2RpbmcgdG8gaW5jcmVhc2UgQ1BVIHVzYWdlLiBOQjog
VGhlIG9yaWdpbmFsIHBhdGNoCj4gc3VibWlzc2lvbiB3YXMgTjIgc3BlY2lmaWMgYW5kIHRoZW4g
cmV3b3JrZWQgdG8gYXBwbHkgdG8gYWxsIFM5MjJYCj4gZGV2aWNlcyBhdCBOZWls4oCZcyBzdWdn
ZXN0aW9uIChhZnRlciBteSBUQiBhbmQgZWFybGllciBjb21tZW50cykuCgpZZXMsIHdlIGFsc28g
aGF2ZSBPUFAgbG93ZXJpbmcgZW5hYmxlZCBieSBkZWZhdWx0ICh3aGljaCBJIHRoaW5rIE5laWwK
bWVudGlvbmVkIGVhcmxpZXIpIHNvIHRoaXMgc2hvdWxkIGJlIHNhZmUgKGVub3VnaCkgdG8gYXBw
bHkuCgpRdWV1aW5nIGZvciB2NS44LAoKS2V2aW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
