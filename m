Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A92B35731
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psueDaKfUPTkMP4gjm8d/0iCHdLsfk8w8ysBPtFMds4=; b=eah0Jg3EgSqoBT
	60+Szt45HLEI07R4OegslcE8J5xMQill++74yby/LUm7TNC2pGQ2/We1Edt8MR5S6qp3x23HAjwEe
	lu2YYZQXjeWDAdAcjY1rh1n+gtbhvkv+ncEtHusWnltyafKCG0rY+YRJ6zzkqrb5bu1U8Kt76VFgI
	eikXGN/kOol/JJ9URnxdnAhOk/dZ7uFhEk5AP0ImfOcdBf79xcVymmvzfFc2KIDeZF2aBIJm6m2+A
	mYV5JBqW78e8UBTRHsqDlHG6kJsBvnliKO13P1WbePTgsZI6BQAmeC63zQjJemA+frvNJffBVBJEY
	dFHbIVn5GIapNtSvtqdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPkT-0002g2-4i; Wed, 05 Jun 2019 06:50:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPk8-0002WW-8r
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:49:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so3493154wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 23:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Aa9SiEOP57dMUPIPXZ4uRkPtqSgf6jJ4AGTncZG28+8=;
 b=zi+4AOGqVMCKl+mid40KDQdfPs+xU211Ce0sh8e2CuDwew50rwR7HmE9RNsXOpW38J
 7nnLm9odQTjC/LvSmcEj3vtRmQ0dK+u2BHtiWxamIssDnHEsuvkR9OdSBvkKwltKKILD
 YIqkE3sdv4UGDkYJIfhmh2vYVKOLpEXRD0bEV1YB3GAZlTQZpLJApMRHd+Knh2tb3kYv
 Tr/5XLuDlozOjb/5OGBOh2EDP71Ysw9vzOHMeSQZmoveZpw1Oo3LEEgP16hPmkbb+nQ0
 Ur+k/LHdXxpVmQJLDfgoejyaW6uiZdPgGrfWtIcaet7s1PmOmI2b5Y1NW8XHmSTPZMqh
 SEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Aa9SiEOP57dMUPIPXZ4uRkPtqSgf6jJ4AGTncZG28+8=;
 b=WW0mf2ZJc1I+qhd5H8QG/n7oOmGVC7M8HB0jeYG4v8Q55gYQn5ZC/TFCZhW0jkZ1Uy
 9/a3vcqmD+zfedFxHoq9HKTBeGaZJPzIJMrtB+irzTkJwuT/FeWfou/CztBhf87vjv8S
 Yv8O9Fa19CQF3DlI0kjZSHTEJlnySvJlOtMmxPPJmReIznAkSgk9Jf/txZGzzxb9XIYc
 qPw2XqOqdtxbCunBjjaRDryFrrm8B45aVRnQdK9/CQSSIaFmJcgwj6HuPpX5A7ciTm9U
 OAlUSmIcqp/F4UpnFmLpVstiQFPWVMhgRmHwDFcZaZGWz5EM+qO9RrdVrNk0kcfYTrKf
 Y8/g==
X-Gm-Message-State: APjAAAWcjuIaGu5b/qNh6ZoxE33wxE7K8FMjrspVx3kp/AEzCK+hbkmo
 4GF8PGr4+7CeQxo1kvPFUdl7bA==
X-Google-Smtp-Source: APXvYqwajN0uRRCoaJnBR/tXaECbZNfMRnmng7+jNtUyT+LwmBN5T6WdLNxU3OssrQaDRvfxZEYoPQ==
X-Received: by 2002:a5d:6406:: with SMTP id z6mr8042948wru.87.1559717390470;
 Tue, 04 Jun 2019 23:49:50 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id s9sm17126517wmc.1.2019.06.04.23.49.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 23:49:49 -0700 (PDT)
Date: Wed, 5 Jun 2019 07:49:48 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu.Beznea@microchip.com
Subject: Re: [RESEND][PATCH v3 0/6] add LCD support for SAM9X60
Message-ID: <20190605064948.GI4797@dell>
References: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556195748-11106-1-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_234952_567289_2C64ECAD 
X-CRM114-Status: GOOD (  18.65  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 bbrezillon@kernel.org, airlied@linux.ie, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 thierry.reding@gmail.com, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyNSBBcHIgMjAxOSwgQ2xhdWRpdS5CZXpuZWFAbWljcm9jaGlwLmNvbSB3cm90ZToK
Cj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhQG1pY3JvY2hpcC5jb20+Cj4g
Cj4gSGksCj4gCj4gVGhlc2UgcGF0Y2hlcyBhZGRzIHN1cHBvcnQgZm9yIFNBTTlYNjAncyBMQ0Qg
Y29udHJvbGxlci4KPiAKPiBGaXJzdCBwYXRjaGVzIGFkZCBvcHRpb24gdG8gc3BlY2lmeSBpZiBj
b250cm9sbGVyIGNsb2NrIHNvdXJjZSBpcyBmaXhlZC4KPiBTZWNvbmQgcGF0Y2ggYXZvaWQgYSB2
YXJpYWJsZSBpbml0aWFsaXphdGlvbiBpbiBhdG1lbF9obGNkY19jcnRjX21vZGVfc2V0X25vZmIo
KS4KPiBUaGUgM3JkIGFkZCBjb21wYXRpYmxlcyBpbiBwd20tYXRtZWwtaGxjZGMgZHJpdmVyLgo+
IFRoZSA0dGggcGF0Y2ggZW5hYmxlcyBzeXNfY2xrIGluIHByb2JlIHNpbmNlIFNBTTlYNjAgbmVl
ZHMgdGhpcy4KPiBTcGVjaWZpYyBzdXBwb3J0IHdhcyBhZGRlZCBhbHNvIGluIHN1c3BlbmQvcmVz
dW1lIGhvb2tzLgo+IFRoZSA1dGggcGF0Y2ggYWRkcyBTQU05WDYwJ3MgTENEIGNvbmZpZ3VyYXRp
b24gYW5kIGVuYWJsZWQgaXQuCj4gCj4gSSB0b29rIHRoZSBjaGFuZ2VzIG9mIHRoaXMgc2VyaWVz
IGFuZCBpbnRyb2R1Y2VkIGFsc28gYSBmaXgKPiAodGhpcyBpcyB0aGUgNnRoIHBhdGNoIGluIHRo
aXMgc2VyaWVzKSAtIGlmIHlvdSB3YW50IHRvIHNlbmQgaXQgc2VwYXJhdGVseQo+IEkgd291bGQg
Z2xhZGx5IGRvIGl0Lgo+IAo+IEkgcmVzZW5kIHRoaXMgdG8gYWxzbyBpbmNsdWRlIExlZSBKb25l
cyBmb3IgcHdtLWF0bWVsLWhsY2RjIGNoYW5nZXMuCj4gCj4gVGhhbmsgeW91LAo+IENsYXVkaXUg
QmV6bmVhCj4gCj4gQ2hhbmdlcyBpbiB2MzoKPiAtIGtlZXAgY29tcGF0aWJsZSBzdHJpbmcgb24g
cGF0Y2ggMy82IG9uIGEgc2luZ2xlIGxpbmUgKEkga2VlcCBoZXJlIGEgdGFiCj4gICBpbiBmcm9u
dCBvZiAiLmNvbXBhdGlibGUiIHRvIGJlIGFsaWduZWQgd2l0aCB0aGUgcmVzdCBvZiB0aGUgY29k
ZSBpbgo+ICAgYXRtZWxfaGxjZGNfZHRfaWRzW10pCj4gLSBwYXRjaGVzIDQvNyBhbmQgMy83IGZy
b20gdjIgd2VyZSBhcHBsaWVkIHNvIHJlbW92ZSB0aGVtIGZyb20gdGhpcyB2ZXJzaW9uCj4gLSBh
ZGQgYSBmaXggZm9yIGF0bWVsX2hsY2RjIChwYXRjaCA2LzYpCj4gCj4gQ2hhbmdlcyBpbiB2MjoK
PiAtIHVzZSAifCIgb3BlcmF0b3IgaW4gcGF0Y2ggMS83IHRvIHNldCBBVE1FTF9ITENEQ19DTEtT
RUwgb24gY2ZnCj4gLSBjb2xsZWN0IEFja2VkLWJ5LCBSZXZpZXdlZC1ieSB0YWdzCj4gCj4gQ2xh
dWRpdSBCZXpuZWEgKDQpOgo+ICAgZHJtOiBhdG1lbC1obGNkYzogYWRkIGNvbmZpZyBvcHRpb24g
Zm9yIGNsb2NrIHNlbGVjdGlvbgo+ICAgZHJtOiBhdG1lbC1obGNkYzogYXZvaWQgaW5pdGlhbGl6
aW5nIGNmZyB3aXRoIHplcm8KPiAgIHB3bTogYXRtZWwtaGxjZGM6IGFkZCBjb21wYXRpYmxlIGZv
ciBTQU05WDYwIEhMQ0RDJ3MgUFdNCj4gICBkcm0vYXRtZWwtaGNsY2RjOiByZXZlcnQgc2hpZnQg
YnkgOAo+IAo+IFNhbmRlZXAgU2hlcmlrZXIgTWFsbGlrYXJqdW4gKDIpOgo+ICAgZHJtOiBhdG1l
bC1obGNkYzogZW5hYmxlIHN5c19jbGsgZHVyaW5nIGluaXRhbGl6YXRpb24uCj4gICBkcm06IGF0
bWVsLWhsY2RjOiBhZGQgc2FtOXg2MCBMQ0QgY29udHJvbGxlcgo+IAo+ICBkcml2ZXJzL2dwdS9k
cm0vYXRtZWwtaGxjZGMvYXRtZWxfaGxjZGNfY3J0Yy5jICB8ICAxOCArKy0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9hdG1lbC1obGNkYy9hdG1lbF9obGNkY19kYy5jICAgIHwgMTIwICsrKysrKysrKysr
KysrKysrKysrKysrLQo+ICBkcml2ZXJzL2dwdS9kcm0vYXRtZWwtaGxjZGMvYXRtZWxfaGxjZGNf
ZGMuaCAgICB8ICAgMiArCj4gIGRyaXZlcnMvZ3B1L2RybS9hdG1lbC1obGNkYy9hdG1lbF9obGNk
Y19wbGFuZS5jIHwgICAyICstCj4gIGRyaXZlcnMvcHdtL3B3bS1hdG1lbC1obGNkYy5jICAgICAg
ICAgICAgICAgICAgIHwgICAxICsKPiAgNSBmaWxlcyBjaGFuZ2VkLCAxMzIgaW5zZXJ0aW9ucygr
KSwgMTEgZGVsZXRpb25zKC0pCgpXaHkgaXMgdGhpcyBiZWluZyBzZW50IHRvIG1lPwoKLS0gCkxl
ZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJv
Lm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86
IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
