Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 981B61202D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:43:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=miSHw8qrqpNMoBqh/auRREjMIJtDAp/iucVi7ues8h4=; b=NMnYoBYn9KPzf4
	aqtJqJ16fxydt/Ewn31venL1F4mSfOK8gcdkpiAx3hhH8Q9Tg5gbFM85v3470mR3CKWRMnPyEGpr6
	QujSI96OEwjdsMU75cIFMaTc/xGeKPc+Brzuh03FyL3kD+lCS36uiCDPVp1gM6iU6Q4ldSj2L6uTe
	xvY5fuPPtEcDHnn06sag4m+cfbLj3B+tCVkuzbJw1yJ7zxZl1bCO2GwaJMEzDGIwfDovDDbwHj/LH
	0KW1CGc0n4+ZVVOqopCod3yqFOfpsi5oiDKpXsh4TGhv6xIFLvA1fvFl3yDeJctVz1p3q/nhKqyS9
	WepjJi6/9QwNIR4bu5bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignqA-0003oL-7I; Mon, 16 Dec 2019 10:43:02 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignpz-0003ni-17
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:42:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so6158955wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 02:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=++Lt5Fr+RwIy1Ndr73jFO/gA9fjeqgMoPVWGoy6+iBA=;
 b=hIqxrVZIYiC6WKAtC1ImBqJ2ksj72SS90RjWVGpzSu+WVWxOxXjy5t8owPEiX8d9F/
 fRxEgPEdq1nGU5o228ROMHVcnbwXhyqghCoiNMO8dfnatxvmBl2WHHL2JZrvrg8QOizZ
 9yc+T6QudxtwpsoQ1O5EwLFzh8UumMtaAGar/nq8jwvagrSqVrCbaOa8mV5WrWSvltPB
 whlx7Qr1zRqf+wzhGbNSgnrBbjQza9N4zXxkPfca068hdfr4zH1Ddao77q0x6KInu4ml
 W9TsGVbyEFMTOPf2Q9TJAVwyXEoI+nSdJkEl3It2ulu+t5aLcfjp13dB1vipbXSxTVpo
 pQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=++Lt5Fr+RwIy1Ndr73jFO/gA9fjeqgMoPVWGoy6+iBA=;
 b=i3TuYw0m8KZFouwFAU4qHkw6rAoXAcVlXePKWuS5BntK/+B5uiIFQFV7yq02iuqhO8
 3/c7O+WhgNFGvSkhvkkXtgFCmWJYXn59rSGzu+N63WT9xm1YJ66uT+vZJM4ovUNQfq+R
 XJbXX4KgisNlxTKA/pDECheVNsnVg/8D2yXn4aEpM6OXUPDyzR8wMrcVdakEttyyRQgh
 x8VrVzl/d6nTIT2tCQQi6Bk01wRrY4mS3tK5cTUTmkjbMnnWG7nL1SXFcbJ9qksMTKXs
 i95N6G273QKRaeRL97jlMAygg5QVlDdn6CRi5bOdTcngJiHzRk08/8EDzyusEFnLb4a/
 CjlQ==
X-Gm-Message-State: APjAAAWT8yRYvED40nTaF/Zi7xJgjbJ4bjeEvt5EUM4pRBQSM+QLCPlZ
 kwuaVbBwtHEGo64wiyC1eucbzw==
X-Google-Smtp-Source: APXvYqzzwkX1ps0/zgn1aMQHOpmA2TSJ2eZ63E3HwGB4lr0SQVll7z6EkkJ2AHAdRx3f+aHoIWg9TQ==
X-Received: by 2002:a1c:407:: with SMTP id 7mr28746768wme.29.1576492968976;
 Mon, 16 Dec 2019 02:42:48 -0800 (PST)
Received: from dell ([2.27.35.132])
 by smtp.gmail.com with ESMTPSA id y20sm19628749wmi.25.2019.12.16.02.42.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 02:42:48 -0800 (PST)
Date: Mon, 16 Dec 2019 10:42:48 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: ab8500: Document AB8505 bindings
Message-ID: <20191216104248.GE3601@dell>
References: <20191117221053.278415-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191117221053.278415-1-stephan@gerhold.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_024251_183319_3873BC54 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAxNyBOb3YgMjAxOSwgU3RlcGhhbiBHZXJob2xkIHdyb3RlOgoKPiBBQjg1MDUgY2Fu
IG5vdyBiZSBjb25maWd1cmVkIGZyb20gdGhlIGRldmljZSB0cmVlLgo+IFRoZSBjb25maWd1cmF0
aW9uIGlzIGFsbW9zdCBpZGVudGljYWwgdG8gQUI4NTAwLCBzbyBqdXN0IGFkZCBhIG5vdGUKPiBm
b3IgdGhlIG5vZGVzL2NvbXBhdGlibGVzIHRoYXQgZGlmZmVyIGJldHdlZW4gdGhlIHR3byByZXZp
c2lvbnMuCj4gCj4gQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4K
PiBTaWduZWQtb2ZmLWJ5OiBTdGVwaGFuIEdlcmhvbGQgPHN0ZXBoYW5AZ2VyaG9sZC5uZXQ+Cj4g
LS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvYWI4NTAwLnR4dCB8
IDggKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJv
IFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3
YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
