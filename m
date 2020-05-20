Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945111DAE05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crIPAz2gTvW7bQXgmXko+pXu4GX/RZaNjp4XmLjoulU=; b=AUJZJycS1tCZdA
	2SSkhWs2ZXnyjtGsd1RiHXUU4c8fL0cPaVckwDJRT6AnJ/ME+CS4xAtKDfHAo++cQhth64MVNhshl
	CUSUe0bupX+n4EEzATuyB4DGKMZz861m6lrideN8RwaN8I6lw7vIvgp+3X1wVDeEROiv+yLyr9L2U
	BpZSNuR7S9c3gOp3pv+0IGrCecr2Z91+WVcozy7ax2ONAYcozDKWEREJogWyvMoWyOkdtQbXda8FC
	aKVwJs2j/ZgyKDESzWzBmDhSUgLcsNT0qS/I7qZH6wCb8Vrt2hq0oieGtVLNNhS0qydEoElf6kkrw
	HUkbZ7oZzVV/q1Ub7Gyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKSC-0003Lg-Sx; Wed, 20 May 2020 08:51:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKS2-0003Ky-9S
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:51:47 +0000
Received: by mail-wr1-x441.google.com with SMTP id h17so2265183wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 01:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=RfZdfcc2DeqiyN9D4GMHPVwfFuLz1SqPHKWyIxBlRQE=;
 b=N2PxVTmqc0PIilXf0tfgDq12qP6BuoYEi5jE083XOptOZ4MHgfU8BkVb4Grwgl4NIn
 fBU6HygqUt0Y7EayYWPUa2VQAXhsfWczsuBjBeatxRBzQqZ4c809mi0qNqhqXbfgz2cs
 6VkUVcngrKD1QpnKRDvaJyLXNS9LuPKXZsoKRGOPFkFO/fGiLaNKuvdP/ygjFmYfSi+W
 MPXTMQf5CjoEoYddICmiqJZRujH6+tgZCw/lQSvnA5ravJ9Xb/OJqU0cjm5bOqbn4ySD
 ytarfMarVW50RynUWKK0VjneG9HpAqs2QYT0NEXaq9tLXm+rrE68QzFKDAQdDnxD3+vN
 FMKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=RfZdfcc2DeqiyN9D4GMHPVwfFuLz1SqPHKWyIxBlRQE=;
 b=WhwFgcE89CL2fGjCWjLS4zlqELdd9oryxM0+SnY9IU2rk57910vkBA4NulJqm18yKt
 uWSLtyhVf/veEryf+uL9bp6oZRdOH+PXM2vyKdSlzro2xOGD4OGUGA3+KD5kahGKlAW2
 pmR1h5kH59r6tu8Zcxy4hH74hNSF5hzJTCMrjv2VQIDeBUUG9bQmh0QofnOHKge7tuzw
 cFX2uYdHhsPpjpWJn8MoHwWMF4dNOoWywOlHToXcP74RyiquvH+WSNxEgekj/BKmGVnB
 s5kHHmLe3dM9/t4JUxupb1BBTGG2DB4VCS6C6zTIebZXYot8RDnS7YZTJ56LsnscjD+J
 xQPA==
X-Gm-Message-State: AOAM532FPumixA54oUzd4IzuP2Bay9GX17pQj8yHKwIq6/zJ0qidIFz3
 UGtwPawwmO0TPBYudDOgo95Tig==
X-Google-Smtp-Source: ABdhPJy7vTQHZlsjHOUjjA1fY46F7xY4npimGLDwSi4Dq1QjAtAOE3tBVQxTxOSuaD03VnTeasE/QA==
X-Received: by 2002:adf:ee87:: with SMTP id b7mr3292204wro.104.1589964704775; 
 Wed, 20 May 2020 01:51:44 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id l9sm984089wrv.32.2020.05.20.01.51.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 01:51:44 -0700 (PDT)
Date: Wed, 20 May 2020 09:51:42 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3] dt-bindings: mfd: Convert stmfx bindings to json-schema
Message-ID: <20200520085142.GD271301@dell>
References: <20200220162246.8334-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220162246.8334-1-benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_015146_334426_3E0E3148 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.co, devicetree@vger.kernel.org, amelie.delaunay@st.com,
 alexandre.torgue@st.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMCBGZWIgMjAyMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cgo+IENvbnZlcnQg
c3RtZnggYmluZGluZ3MgdG8ganNvbi1zY2hlbWEKPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1p
biBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAc3QuY29tPgo+IC0tLQo+ICAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZmQvc3Qsc3RtZngueWFtbCAgICAgICAgICB8IDEyNCArKysrKysrKysr
KysrKysrKysrKysKPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zdG1m
eC50eHQgICAgfCAgMjggLS0tLS0KCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BpbmN0cmwv
cGluY3RybC1zdG1meC50eHQgIHwgMTE2IC0tLS0tLS0tLS0tLS0tLS0tLS0KCkxpbnVzLCBhbnl0
aGluZyBmcm9tIHlvdT8KCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTI0IGluc2VydGlvbnMoKyksIDE0
NCBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZmQvc3Qsc3RtZngueWFtbAo+ICBkZWxldGUgbW9kZSAxMDA2NDQgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zdG1meC50eHQKPiAgZGVsZXRlIG1v
ZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waW5jdHJsL3BpbmN0
cmwtc3RtZngudHh0CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBU
ZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJN
IFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
