Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E592C39961
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:08:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpabD1N7S99I31gUYJ8jhxDzfBo0aaqadqG+vM8VPks=; b=POKVLwGWuMI3p4
	hWy0jgPHTEiAdcMZHuPydIDTKX3I6jBDeU5Dtz2E+MP/Igoja6XC6WFoRyWd5XNGYJkKxCneyi9px
	a+4wGmTT0xmtt/IZz2/Y06hPIRafjnaSMBEyIisYd/7X0h5rIh8DC7SLtRg7/qcp+huvZEvZ9jIQu
	UwIeZDnq6TJmc7Np7oXDRt7zl5Irv/2fFPk7yFu/cRrA5sTzjiJWACOyE1+XGE1m9/ULRBRRUyBYq
	ugeBltrkbA98vVvUHCqQTuqP1y/Qfvwz9ZR/PgU8DF+ChewAp+V0WqirpYBa+EkJ+l9gCMwlzekWv
	lHIQ6i20NgyUQwaAVjCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNyR-0007nW-1h; Fri, 07 Jun 2019 23:08:39 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNyJ-0007nF-EU
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:08:32 +0000
Received: by mail-lj1-x242.google.com with SMTP id m15so3065097ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CJjAb+Z5ioBZ0AM/8mCFtzkkLn/OKSEL3IHSOtuKgfQ=;
 b=FkVCVtLwoVP2xNToV3V9nLLFBH8qK0uahCMEKeFCpaR2z9IF0rpEg8YFqnUmGXZsgq
 DfvxttPbgwKv51MItse2JF1YQ5TsRI5GCwNHRb9IYez7H3NYfXRNHgXB0gnp2gTndxNB
 LwkbDBxTrRmHrzyvFF13obVOy9KBAFVFFzTocL3+JUOgAFqMpgZ+U41+ABtrRyWnIodz
 eqN5ctPHY09xzgpkZFV2Tez9dxUvSL4e5wfFHFtt31VxWoUedzV9qMV9ZKUB51qacrdz
 tTCqV/urQYCK3kC4ka+GuQTTXl3BE0wjaSiIPmANYwxUqfk3h0q8w6gczsAnBL5+4gOe
 vC3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CJjAb+Z5ioBZ0AM/8mCFtzkkLn/OKSEL3IHSOtuKgfQ=;
 b=Sb9LQl6OQuW33v9N2sjhgF00GykvLv/U/sXYOts16f6o/X8ID6AiKLitmS1wZxS+AE
 tSh558ohMfutTxlv/bxVXMxiyOHJnapbkh5JdmXJWIEJzELc5PQlXQGs/Q83nX/yn6s6
 B1y6DHCGu+y9FZzyxIKrxk8a12LZtZNYpShdoKrgzxt5ymlC+QZ9ISKCqd6f6IeESoFA
 POwHT1P7Rh37S/taqQkzDdLltfwf/c1OyDDi8QB+bp0vd6ZaRJmQpSaItJOz2nOG7OV8
 oqqc75OkgSzgi/k5Wpw7d6rQ8/V+fg8CNQiwsBfpfb6v9CFmezd/SP7JDxI12pBN6UTZ
 R/VQ==
X-Gm-Message-State: APjAAAWZOzPLTksNkYrhwQZZZ6FYCklqHLLXvf1jWtOwApL+wHXoiytr
 V1ofWMIczLAuM09zgb8EZUWJ+yivXgeyQKcKQYAbzA==
X-Google-Smtp-Source: APXvYqxUOi2ComwroPYJqL0+HmrxnRaNzTbxCzwrLY351hzZwjGfd8PvKzmcThTDM6zJHWY6X2LcwPf0/66wKSkFxIw=
X-Received: by 2002:a2e:5bdd:: with SMTP id m90mr19985474lje.46.1559948910013; 
 Fri, 07 Jun 2019 16:08:30 -0700 (PDT)
MIME-Version: 1.0
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
In-Reply-To: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 8 Jun 2019 01:08:22 +0200
Message-ID: <CACRpkdbxUHR8Uo+M7+_0v77Pg6k_jmL79KeHKNzWmFhtq+mZXw@mail.gmail.com>
Subject: Re: [PATCH 0/6] Add minimal boot support for IPQ6018
To: Sricharan R <sricharan@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_160831_501575_30F25E38 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Stephen Boyd <sboyd@codeaurora.org>, Andy Gross <agross@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gNSwgMjAxOSBhdCA3OjE2IFBNIFNyaWNoYXJhbiBSIDxzcmljaGFyYW5AY29k
ZWF1cm9yYS5vcmc+IHdyb3RlOgoKPiBUaGUgSVBRNjAxOCBpcyBRdWFsY29tbeKAmXMgODAyLjEx
YXggU29DIGZvciBSb3V0ZXJzLAo+IEdhdGV3YXlzIGFuZCBBY2Nlc3MgUG9pbnRzLgo+Cj4gVGhp
cyBzZXJpZXMgYWRkcyBtaW5pbWFsIGJvYXJkIGJvb3Qgc3VwcG9ydCBmb3IgaXBxNjAxOC1jcDAx
Cj4gYm9hcmQuCj4KPiBTcmljaGFyYW4gUiAoNik6Cj4gICBwaW5jdHJsOiBxY29tOiBBZGQgaXBx
NjAxOCBwaW5jdHJsIGRyaXZlcgo+ICAgZHQtYmluZGluZ3M6IHFjb206IEFkZCBpcHE2MDE4IGJp
bmRpbmdzCgpJJ20gaGFwcHkgdG8gbWVyZ2UgdGhlc2UgdHdvIGlmIEkgY2FuIGdldCBhIHJldmll
dyBmcm9tCkJqb3JuIEFuZGVyc3NvbiBvbiB0aGVtLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
