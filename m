Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A141C350F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 10:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hMW3Ghx4DjL/AVip+qvdYsyXcNAIa5cppCI/1Zbmf8=; b=gOgvKrd0SmTObd
	rLgKdk/axeCFUuwX9/zWSM67TZomFD56UL8HPvHh/bhkD+ZD28+Ji9y2cCnzFddzbVyFZf1DkpB6+
	5RdAUCyCXho2BuvhXbc+wYEOGnDxAG9ah1Ep8GSTGuWAspviTESZoAP10xVOltYeg+/3oBOFOGHuf
	gEsHaiC2V0MIGo9l/WyOAPwufKyRbi5nUn27T+Ge8yEysL2+97ZasNqOYqgjah/5uYbDZSsSMAE5E
	pizOZONIz+odcs/0cNuP/Qug7RmWoEfg6Gp/39F7tOF6Ncb62kzSBf7UR2M/P4qOLBzNjKt7mHRIU
	9UFGXJ1rAsLUEWE0NiXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWtm-00041v-S5; Mon, 04 May 2020 08:56:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWtf-000414-Vf
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 08:56:21 +0000
Received: by mail-wr1-x443.google.com with SMTP id y3so896166wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 01:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=cxb+ZWhOowouZHcr/9zGu47fpdlJUABxmhLddbqkDGo=;
 b=KjP/CPhVoyoVHxRfOZPYKJMbQbb1OH1X/SdQnlH6Sqv0GWA4AXO0GgW5eyxKsEyl/9
 acv63S4fAoTQKYX6VT01lF9GS8UmNMS+LcCPmBGoyVMwIorwJaWPrqY+n4t78za2Seev
 ir1YERXRmPk3MsUjiE4j0VI8FOXwUQdiPoiRdfeP7xGpV6M/FJveH7HfBc2befxjRg1L
 +0ChXAHT9j2WVzB/gemP33nvbA8hv760xmKScJN0oQcFbYv2+zHVVDP9HicmDaY9Wjnd
 FIsctLUhhIfn4O2wBNcsxeqxVjtW2+E9XgYH+NG9kSQa5z84w2RWWPhohpWYST2HG6gb
 QTRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=cxb+ZWhOowouZHcr/9zGu47fpdlJUABxmhLddbqkDGo=;
 b=gyqAdB1F9fdV1iiYy/kZ6JOO1uCdxZiQvpbZVJ1Iqb2D/MZQsbDjwlydB6w4qqelwm
 +xH7mq+wuKqG+w1zPaIIzThy5YnvR359GVifOvR2AbnuNF18z55lkk4ysTht+NqwuRcx
 X5K/eyXZB4Z7Nqd/6LxakuhITS6klLj+lwC5xn1YMf/fIXajtr8lwBTCGqNaxdSv6PZk
 Oi0U3BGFXI+21ivqQKbX1WBVkwmW34vVG/W5Y/25/ZjdJS4ME8fR3hu2RsSBczYid0MT
 ilEVFDL//RGZBLhXHUC90gcceQg82FtBdNixfgWVT2zV0JRkZrf9M1bAua96RIvF4nc6
 VvrA==
X-Gm-Message-State: AGi0PuZO7rcZHPSatJ/stNlILc9NhTfx46BY4wTeALfAFR6LKv8W0McD
 s1804dr+iwYOUPOocyUEwzchBg==
X-Google-Smtp-Source: APiQypIJA1Cxt7YOUF+68JT0W1SFjsyeUbBkN9uhvc9MdF+wh/6hR3+o3fvijZm+Tupqy5kyDXXe0w==
X-Received: by 2002:adf:f041:: with SMTP id t1mr4458998wro.346.1588582578720; 
 Mon, 04 May 2020 01:56:18 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id d5sm17646871wrp.44.2020.05.04.01.56.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 01:56:18 -0700 (PDT)
Date: Mon, 4 May 2020 09:56:16 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 01/16] ARM: vexpress: Move vexpress_flags_set() into
 arch code
Message-ID: <20200504085616.GI298816@dell>
References: <20200429205825.10604-1-robh@kernel.org>
 <20200429205825.10604-2-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429205825.10604-2-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_015620_022300_BB570889 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-pm@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyOSBBcHIgMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IHZleHByZXNzX2ZsYWdz
X3NldCgpIGlzIG9ubHkgdXNlZCBieSB0aGUgcGxhdGZvcm0gU01QIHJlbGF0ZWQgY29kZSBhbmQK
PiBoYXMgbm90aGluZyB0byBkbyB3aXRoIHRoZSB2ZXhwcmVzcy1zeXNyZWcgTUZEIGRyaXZlciBv
dGhlciB0aGFuIGJvdGgKPiBhY2Nlc3MgdGhlIHNhbWUgaC93IGJsb2NrLiBJdCdzIGFsc28gb25s
eSBuZWVkZWQgZm9yIDMyLWJpdCBzeXN0ZW1zIGFuZAo+IG11c3QgYmUgYnVpbHQtaW4gZm9yIHRo
ZW0uIExldCdzIG1vdmUgdmV4cHJlc3NfZmxhZ3Nfc2V0KCkgY2xvc2VyIHRvCj4gd2hlcmUgaXQg
aXMgYmVpbmcgdXNlZC4gVGhpcyB3aWxsIGFsbG93IGZvciB2ZXhwcmVzcy1zeXNyZWcgdG8gYmUg
YnVpbHQKPiBhcyBhIG1vZHVsZS4KPiAKPiBDYzogTG9yZW56byBQaWVyYWxpc2kgPGxvcmVuem8u
cGllcmFsaXNpQGFybS5jb20+Cj4gQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGlu
YXJvLm9yZz4KPiBDYzogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiBBY2tlZC1i
eTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiBBY2tlZC1ieTogTGl2aXUgRHVkYXUg
PGxpdml1LmR1ZGF1QGFybS5jb20+Cj4gUmV2aWV3ZWQtYnk6IFN1ZGVlcCBIb2xsYSA8c3VkZWVw
LmhvbGxhQGFybS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KPiAtLS0KPiAgYXJjaC9hcm0vbWFjaC12ZXhwcmVzcy9LY29uZmlnIHwgIDEgLQo+ICBh
cmNoL2FybS9tYWNoLXZleHByZXNzL2NvcmUuaCAgfCAgMSArCj4gIGFyY2gvYXJtL21hY2gtdmV4
cHJlc3MvZGNzY2IuYyB8ICAxICsKPiAgYXJjaC9hcm0vbWFjaC12ZXhwcmVzcy92Mm0uYyAgIHwg
MjMgKysrKysrKysrKysrKysrKysrKysrKysKCj4gIGRyaXZlcnMvbWZkL3ZleHByZXNzLXN5c3Jl
Zy5jICB8IDE5IC0tLS0tLS0tLS0tLS0tLS0tLS0KCkFja2VkLWJ5OiBMZWUgSm9uZXMgPGxlZS5q
b25lc0BsaW5hcm8ub3JnPgoKPiAgaW5jbHVkZS9saW51eC92ZXhwcmVzcy5oICAgICAgIHwgIDQg
LS0tLQo+ICA2IGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygt
KQoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExl
YWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxv
dyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
