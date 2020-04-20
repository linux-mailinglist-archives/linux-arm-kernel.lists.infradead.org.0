Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BA41B05B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/tp/ep9igNV/Nif22lIuq+59LzMLG+d0DCUlWIEI7js=; b=XnXPeUU+6jq4bR
	CGCun+4Rm5OM5wqBL7VJGBMjtNejK/MAHAByXImxrji4IpSEqnpeyZdgAIcodKZOqU+v4jS1pWrOq
	TdMrt9FQ23vtX3KxYK2ttIa+y2SZS6P4PT3tHQFfKLRv1mSEWixJRoJgu6tDszt24hKTnEJ4ISV5z
	R9n44R+PzdyB2XTGBcfN4KZU+iGlZRNjY7+yQ1StvzacIn8sENK8uABijB5T0C4oyi519mynSlkTS
	WRPxpDVp9FyfLiLUu7oz8Uheq35CphFGST+sCx333AaqYAk1I5cFf01DpoedxScpeGamCrmmoL9ib
	HQI095fgLljjKu51z0oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSmM-0007va-9L; Mon, 20 Apr 2020 09:31:50 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSm9-0007tr-8U
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 09:31:39 +0000
Received: by mail-yb1-xb43.google.com with SMTP id b17so4861139ybq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 02:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QB5gJS0qiE6PU95ShLISgx4JjOeBA/gJe4w+VjEzZ+o=;
 b=r9YVCeWjT4PHscN7NcgAmiDKTphieHhO7kNM9SFO8rnJ5suS/zV49Vk1q/sxRhCFE2
 QRGEp8OHwzR0hoZVh7QAoZYJ3kI4DJvITfla+OuT3W+sFGEUFxI8HClojzgtzQLGVX5B
 VVkbgOWMcN9RW1LgsKPkqtdDobJNhK2WroghvNZgJUiHS3vfx3nQApTH07jQnW2/8KI/
 hsw7SvJxlIlT+lZNbEG1Akt8Na4WKu/gcIhKX+poqk0bv/GNVuRoeCbcjkYQRC+4w7N3
 qgigmfZSxEnH7J5rj1qGJC8aey7Oalz5CPms33ykgPWfI2kJkqnRaAEaM+SRbK3Lnwaa
 tx0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QB5gJS0qiE6PU95ShLISgx4JjOeBA/gJe4w+VjEzZ+o=;
 b=Wt3G3b/0eCxxFxFW7L0h5N1+jbUV/x9UGHMPgrQKNJ9fiAcNb5J/OOUZBMBfMa1gc0
 IbuD55qM3ULvQ0+AJUL3rv4Z8rAagokYJf7i8zrKX2FVFmxD2RiJyPxUq3fDIA/xqUo0
 WP7vyeX8VJfpMCrxHTzbpFWiW1bW0ie0XSRm/2RigPI6PkPUH9rC9Bhyn44kMO8IE7Hh
 COTRpjP8qyycXayFm8eblNThVmBMWrLQcPOh6xOaFcBHycBMkb3bfaMg8Zz9NVccNrI/
 tTwAi5brdS1Gxnahj6puSZZxS/FHEbIHTy6n851+TTLvhwc5RoO1w4Xk4piHC9Yf51jc
 cMEw==
X-Gm-Message-State: AGi0PuY/21ChgV0A1N8FtJTh+Cu/dadqpxSbLNhMjv8gUP9q40CW9FzS
 9W/n4jGsG05x3q5HdYNlEAyUJmDhyubpPg+9kVym8A==
X-Google-Smtp-Source: APiQypJ2/hJHIq11rXAe5vfJdZqTOYJHD/wWZba5U9CMmbXXTsuxYhh0EYNQt1f1r3BHUvwyNK8vaNjgtHItTBbO32I=
X-Received: by 2002:a25:9cc3:: with SMTP id z3mr18364664ybo.234.1587375095530; 
 Mon, 20 Apr 2020 02:31:35 -0700 (PDT)
MIME-Version: 1.0
References: <158735030084.17831.6159788305648251972.stgit@localhost>
 <20200420121403.aff9fb209ee0da7f20ed3ae2@linaro.org>
 <CAK7LNAT9y2A-dX2Z-2pAsbRvKReoypmoP0hdbWiCGR0G8CuK0w@mail.gmail.com>
In-Reply-To: <CAK7LNAT9y2A-dX2Z-2pAsbRvKReoypmoP0hdbWiCGR0G8CuK0w@mail.gmail.com>
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
Date: Mon, 20 Apr 2020 18:31:24 +0900
Message-ID: <CAA93ih3X46k7F0Mzv=-H0RRAVMemXmHFDc+trAKn2c1tLOQNHA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Akebi96 board support
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_023137_815030_139F01B7 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFtYWRhLXNhbiwKCjIwMjDlubQ05pyIMjDml6Uo5pyIKSAxODoyNiBNYXNhaGlybyBZYW1h
ZGEgPG1hc2FoaXJveUBrZXJuZWwub3JnPjoKPgo+IE9uIE1vbiwgQXByIDIwLCAyMDIwIGF0IDEy
OjE0IFBNIExpbmFybyA8bWFzYW1pLmhpcmFtYXRzdUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+Cj4g
PiBBZGQgdW5pcGhpZXItbGQyMC1ha2ViaTk2IGNvbXBhdGlibGUgc3RyaW5nIGZvcgo+ID4gQWtl
Ymk5NiBib2FyZCBzdXBwb3J0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hc2FtaSBIaXJhbWF0
c3UgPG1hc2FtaS5oaXJhbWF0c3VAbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4gIC4uLi9iaW5kaW5n
cy9hcm0vc29jaW9uZXh0L3VuaXBoaWVyLnlhbWwgICAgICAgICAgIHwgICAgMSArCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vc29jaW9uZXh0L3VuaXBoaWVyLnlhbWwgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3NvY2lvbmV4dC91bmlwaGllci55
YW1sCj4gPiBpbmRleCAxMTNmOTNiOWFlNTUuLjZjYWYxZjliZTM5MCAxMDA2NDQKPiA+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vc29jaW9uZXh0L3VuaXBoaWVy
LnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vc29j
aW9uZXh0L3VuaXBoaWVyLnlhbWwKPiA+IEBAIC01MSw2ICs1MSw3IEBAIHByb3BlcnRpZXM6Cj4g
PiAgICAgICAgLSBkZXNjcmlwdGlvbjogTEQyMCBTb0MgYm9hcmRzCj4gPiAgICAgICAgICBpdGVt
czoKPiA+ICAgICAgICAgICAgLSBlbnVtOgo+ID4gKyAgICAgICAgICAgICAgLSBzb2Npb25leHQs
dW5pcGhpZXItbGQyMC1ha2ViaTk2Cj4gPiAgICAgICAgICAgICAgICAtIHNvY2lvbmV4dCx1bmlw
aGllci1sZDIwLWdsb2JhbAo+ID4gICAgICAgICAgICAgICAgLSBzb2Npb25leHQsdW5pcGhpZXIt
bGQyMC1yZWYKPiA+ICAgICAgICAgICAgLSBjb25zdDogc29jaW9uZXh0LHVuaXBoaWVyLWxkMjAK
PiA+Cj4KPiBZb3VyIHBhdGNoIHN1Ym1pc3Npb24gaXMgc3RpbGwgc3RyYW5nZS4KPgo+IGh0dHBz
Oi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTE0OTgwMjUvCj4KPiBUaGlzIHBhdGNoIGlz
IGJyb2tlbi4KPgo+IFBsZWFzZSBtYWtlIHN1cmUgaXQgY2FuIGFwcGx5IHRvIHRoZSBtYWlubGlu
ZSBjb2RlLgoKQWgsIHNpbmNlIGl0IGlzIGJhc2VkIG9uIHRoZSBsaW51eC1uZXguCk9LLCBJJ2xs
IHVwZGF0ZSBpdCB0byB0aGUgbWFpbmxpbmUga2VybmVsLgoKPgo+Cj4gVGhlIGF1dGhvciBmaWxl
cyBpcyBhbHNvIG9kZDoKPiBGcm9tOiBMaW5hcm8gPG1hc2FtaS5oaXJhbWF0c3VAbGluYXJvLm9y
Zz4KCk9vcHMsIHNvcnJ5LCBpdCB3YXMgbXkgbWlzLWNvbmZpZ3VyZSBvZiBNVUEuLi4gT0ssIGZp
eGVkIGl0LgoKVGhhbmsgeW91IQoKLS0gCk1hc2FtaSBIaXJhbWF0c3UKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
