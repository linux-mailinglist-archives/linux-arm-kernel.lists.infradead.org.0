Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A508155F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66lyrcvBbAaG2T6N6wQQ7SLpnFe8UraiZ+Y/VKwCVNw=; b=WvuS0NevoX3nCk
	NTMNRhrvlCYCHXtUvXrjOrkqdYOMU+H4KiNIGLO/t6wvXYTaL8yKrXG9DdWDaDcOIxhsaa0MxTHE8
	dzxR648n7kDBEc9vBZagwMihh1I8CF8GaE9i8xrHb7u0VSpZ3KXD2lWGdPiLeTWBqXtFdk5nKtgyI
	6O0gBg0dUSjQLBTHfuftd+5craB8BW0eODtGGPXZa4pDKht0zZEEmDuwYysyUEpSlg3iN3N65PfaB
	EH34MfOCGa7M9AOjpcAyCswDZUMWVH29YLeVRGw2naJZf7rD3gjm5knILgn/7J41z+AjjmGLh9vvz
	3B5RTasN3JWj4fR+XgVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZDH-0003iB-AC; Mon, 05 Aug 2019 09:23:31 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZCq-0003YD-Q3
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:23:06 +0000
Received: by mail-wr1-x42e.google.com with SMTP id p13so9073545wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 02:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=UceuZkyNB/SNP28wgBmeBUxcH1fnnOSUF6PN0MpDJhY=;
 b=UwuLXwx2nNEcMy4GOy+VsK+0EE7Am53pHi7l61ynA4oX5wjw9HJYE8wQS/85ZELDJX
 KPodRMhq2evKJF1uzwZOdr0Tlm/b+vt0U0UiYtmoPC/lHsLoKiKvFeHMAzliUxaw0hD8
 iUBAvRXhTzui8JKPmY8wMive/3y8yMBsrF8zYRs66jLiFGKPzHUnaFAuVMxFTTQgZMhk
 NiA1btr1gJZ3LLWCnS71WPxA6p4bRWkwSfBLh++/MAVEfXKlC3JvgWhFp1HVGKa8X2lC
 IxjIrqEIwD+jYzf9aO1zc7G2SsG7yHVfNMXG26nyrghiAVdwo1zQ7ibU9qolVSegEilr
 B5KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=UceuZkyNB/SNP28wgBmeBUxcH1fnnOSUF6PN0MpDJhY=;
 b=o7S6Ij1PoGji9dZ7B95X5iWLM9ZeQohJbB55XZSt3xyieN6Q5+354O5lkvhJP5Usqc
 FqmT1bWfDSuvK3H6HGvQtBProkx9+u96VlAFeiGeDrBOiJXeff8J5FaPSUUVyfSxzInU
 jyOsyJjUGQTzGDViPtOCX5ye5vXQHLzcN4Kjj66nOX3q8D1GFEa6Mk+wqEFZLO7ik1vi
 GEm6Ia/zCuhl+FDVOyGVlh/X+utEnAnF5VuydNDHNlbjPsg7MC38880ZlbMW8168ecw7
 UGaUYf6hDWmgfwbkMf2VBUIXanFOEOlCspqtIDAExoZf7lsenTsw1S5Q67ZB+9/vBEFj
 Hkow==
X-Gm-Message-State: APjAAAURUK4+qXLVZ8tkKwzN+EZgN3xXrPu5nWbuGfi27ez+NLq6ueMt
 Abzc89qoQV9+fj9A8GaT2outXw==
X-Google-Smtp-Source: APXvYqyHwbYqFuJqowqhueisThYmKb9X5gVUh7Doowu1SkAfJlvkkvmAJtNOE+Wji8j+MkphKsxhOA==
X-Received: by 2002:adf:ed4a:: with SMTP id u10mr77769016wro.284.1564996983206; 
 Mon, 05 Aug 2019 02:23:03 -0700 (PDT)
Received: from dell ([109.180.115.177])
 by smtp.gmail.com with ESMTPSA id p3sm67182971wmg.15.2019.08.05.02.23.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 02:23:02 -0700 (PDT)
Date: Mon, 5 Aug 2019 10:23:01 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
Message-ID: <20190805092301.GB4739@dell>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
 <20190731103934.GA4369@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731103934.GA4369@sirena.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_022304_839232_D6B44615 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>, Timur Tabi <timur@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiA+IFNvIGlmIE9GIGFuZCBBQ1BJIGlzIGFjdGl2YXRlZCBhdCB0aGUgc2FtZSB0aW1lIChjYW4g
dGhhdCBoYXBwZW4/KQo+IAo+IE5vdCByZWFsbHkuICBUaGVyZSBpcyBhIHN0dWIgRFQgdXNlZCB0
byBwYXNzIEFDUEkgdG8gdGhlIGtlcm5lbC4KClJpZ2h0LiAgSSB0aGluayBpdCdzIGEgY2hvaWNl
IHRoZSBrZXJuZWwgbWFrZXMgb24gYm9vdC4gIEJvdGggY2FuIGJlCnByb3ZpZGVkLCBidXQgdGhl
IGtlcm5lbCB3aWxsIHBpY2sgdG8gcnVuIHdpdGggb25lIG9yIHRoZSBvdGhlci4KCi0tIApMZWUg
Sm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBG
YWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
