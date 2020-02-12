Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EF615ADB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 17:51:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RG+d18ziyZWBiOuNpzd1p91TYlqwj/3RjGSOV43ilm8=; b=us0hzUGx5oVy5u
	LXkmuNb/hdgDmltk6tYzLTY+1osSGHYqwu+3JI3oCx8U60nU0611pGmWurd9UU26eKbuTE/3dwHaQ
	MS8VIVazt0vk8oA3v5z8KdWVXRB6HaNSt/0bLPmWMFdmeqxsj36hAtHJn0r5rRzMZfSiIhRe4CxvP
	HGpOn9sVE0jVFGXoKbJgZFunYaky6m2d3CvzxxlgD1CeI1SCXBJIImn0JFCH0JHDEwopseXTJCUSj
	PAEGV3eobCUI5Dnsi8MDhyGnkUxpnndfG6NG6UR13flHrNAZanxxeuZ9xX8OA9in4bRPTmriU6e31
	vaIS6pBGDamb+1H9eCtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vEY-0000gl-Ly; Wed, 12 Feb 2020 16:51:30 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vES-0000gC-8S
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 16:51:25 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so3110481wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 08:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=jcwPPW7Ev1718UkfNVS1QPUEtrgq4T5wb5lfvsIk75g=;
 b=pI/Uj+NgpJWyw/bZYwtPk+y/p3f+bjnqhsf8M+jreGoDwlvfSIp0kKgJ/NXDiB6E89
 Bu9Xt2W8awx7LY82+2OPhr5WoA6TZ7m1QAofSx6SSBeKEES0V3LOdiJWuon4eSRA8ADW
 teK/s6epYxohcYgvuHxiVdLZffI/QEUeA7dGy9191u8cCLVFHNOpSmcRj+kTazI4NAe/
 //1Q/7Xved6L7E2FLtgkbvg7BX+x1xil6Mo4LJY3SZWEvHX+wN/kdQtdXgCEpHMKjqul
 nTxLeGpGB4fxtrRa/ZxNDNeHreeN+1U2KzTXNocgLX1hRKRcNATOiTZ+Aw9PB7cKaa+u
 HI5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=jcwPPW7Ev1718UkfNVS1QPUEtrgq4T5wb5lfvsIk75g=;
 b=uTXe5jElukk3zEGe3O8Akn36e+VlIX5WZOn0w8imanJ9hhS06+Ge+SBCaa5ErvArgO
 +a7V+wRxrsiGzGXyQL6QaIGyG7ry45Zk+0TSTDwaVWnW6hD2srGN/w9xiqn7LNfdc5mo
 At4M+8/4UJTB+gpQvXp5Q/GVeq3MbC4qYVoGixGhcXkqQ4vkN0sDI6jYW2FQ5N4YQH4o
 9XkDpSUUuA20tKAemmJFcHdATLvkAuqRQVjoNBW5YcPVYeLcuW0nXVOtuoNffwyO36X2
 m07Y7n1KnpedrhREYD0MO9cacChEMcgVrxi9S4ttKJr1pxfN92aRE7aKT1FRMnPAU4ZW
 EhbA==
X-Gm-Message-State: APjAAAU2v9YmZU002NdgU0XndtSW31p7C3yBZvxI/PEW/3tTgZVLecxG
 bwVAxbsvZnWBrUvWms1vtF8Kxw==
X-Google-Smtp-Source: APXvYqy/kKObZd2NSS6kusayeRjgm+RKUhmrp/l8q6AIlEspwd/NpCOmscu5Kd/J+WQB2skteKA6PQ==
X-Received: by 2002:a1c:113:: with SMTP id 19mr14147384wmb.95.1581526280567;
 Wed, 12 Feb 2020 08:51:20 -0800 (PST)
Received: from linaro.org (14.red-88-14-208.dynamicip.rima-tde.net.
 [88.14.208.14])
 by smtp.gmail.com with ESMTPSA id a184sm1365854wmf.29.2020.02.12.08.51.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 08:51:19 -0800 (PST)
Date: Wed, 12 Feb 2020 17:51:16 +0100
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: mfd: Document STM32 low power
 clkevent bindings
Message-ID: <20200212165116.GA2949@linaro.org>
References: <20200128120702.26166-1-benjamin.gaignard@st.com>
 <20200128120702.26166-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128120702.26166-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_085124_334967_7E049F36 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linus.walleij@linaro.org, linux@armlinux.org.uk, p.paillet@st.com,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com, tglx@linutronix.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gMjgsIDIwMjAgYXQgMDE6MDc6MDFQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4gQWRkIGEgc3Vibm9kZSB0byBTVE0gbG93IHBvd2VyIHRpbWVyIGJpbmRpbmdz
IHRvIHN1cHBvcnQgY2xrZXZlbnQgZHJpdmVyCgpjbGtldmVudCBpcyBMaW51eCBzcGVjaWZpYy4K
Cj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQHN0
LmNvbT4KPiAtLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N0LHN0bTMyLWxwdGlt
ZXIueWFtbCAgICAgICAgICB8IDE0ICsrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
NCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZmQvc3Qsc3RtMzItbHB0aW1lci55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21mZC9zdCxzdG0zMi1scHRpbWVyLnlhbWwKPiBpbmRleCAxYTRjYzVm
M2ZiMzMuLjUzNWUwYjQwY2RmOSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWZkL3N0LHN0bTMyLWxwdGltZXIueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3Qsc3RtMzItbHB0aW1lci55YW1sCj4gQEAgLTgx
LDYgKzgxLDE2IEBAIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+ICAgICAgcmVxdWlyZWQ6Cj4gICAgICAg
IC0gY29tcGF0aWJsZQo+ICAKPiArICBjbGtldmVudDoKPiArICAgIHR5cGU6IG9iamVjdAo+ICsK
PiArICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgY29uc3Q6
IHN0LHN0bTMyLWNsa2V2ZW50LWxwCj4gKwo+ICsgICAgcmVxdWlyZWQ6Cj4gKyAgICAgIC0gY29t
cGF0aWJsZQo+ICsKPiAgcmVxdWlyZWQ6Cj4gICAgLSAiI2FkZHJlc3MtY2VsbHMiCj4gICAgLSAi
I3NpemUtY2VsbHMiCj4gQEAgLTExNSw2ICsxMjUsMTAgQEAgZXhhbXBsZXM6Cj4gICAgICAgIGNv
dW50ZXIgewo+ICAgICAgICAgIGNvbXBhdGlibGUgPSAic3Qsc3RtMzItbHB0aW1lci1jb3VudGVy
IjsKPiAgICAgICAgfTsKPiArCj4gKyAgICAgIGNsa2V2ZW50IHsKPiArICAgICAgICBjb21wYXRp
YmxlID0gInN0LHN0bTMyLWNsa2V2ZW50LWxwIjsKPiArICAgICAgfTsKPiAgICAgIH07Cj4gIAo+
ICAuLi4KPiAtLSAKPiAyLjE1LjAKPiAKCi0tIAoKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBM
aW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8
CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cu
bGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
