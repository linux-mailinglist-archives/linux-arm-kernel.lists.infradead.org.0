Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 927271B4D0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 21:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PszOOTSrD6bTLQsDH0k7VqLrIyETk79zSDBy2Y5+cA0=; b=l6cTzWzHFLg9wh
	jMlY3D+uNzBQG0sxQmnb+BOUel+ryNxB7IyA3PBaS9x0e0lWZLgVZE/k7TGk5iDgCg9kRtOQ7YYdn
	vfPvXC/7ImoBWtWHUfbE6vPDttW/NrDJxMLAXNWYPBAt/LdrZdf8OKwzGIR1aec6nVnGW43WSudDS
	/Z8mH4UdldWV1F/FKj3x8id+2KhdMfpd01WaVmRJ/pWgRLrLxFyMbmiuFHSPSW+JDjLSZ5wyyA3OP
	DnHgHCYK2U9f01e8lCCTtj4Fq5HzKqxFz1h8sSdJt/xjWPEyH3KwlEmEdSmUKL7GuIZIxcquLRiq7
	Bs8tIrmvrrjGPopLbAUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRKjc-0005ar-BF; Wed, 22 Apr 2020 19:08:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRKjL-0005aC-Lc
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 19:08:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ECFAB1FB;
 Wed, 22 Apr 2020 12:08:18 -0700 (PDT)
Received: from bogus (unknown [10.37.12.118])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB40F3F6CF;
 Wed, 22 Apr 2020 12:08:14 -0700 (PDT)
Date: Wed, 22 Apr 2020 20:08:12 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 02/17] arm64: vexpress: Don't select
 CONFIG_POWER_RESET_VEXPRESS
Message-ID: <20200422190812.GB25585@bogus>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-3-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-3-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_120819_755620_A88AB43A 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDc6NTVQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gVGhlIFZFeHByZXNzIHBvd2VyLW9mZi9yZXNldCBkcml2ZXIgaXMgbm90IG5lZWRlZCBv
biA2NC1iaXQgcGxhdGZvcm1zIGFzCj4gUFNDSSBwb3dlci1vZmYgYW5kIHJlc2V0IGNhbiBiZSB1
c2VkIGluc3RlYWQuIFN0b3Agc2VsZWN0aW5nIGl0IHNvIGl0Cj4gY2FuIGJlIGRpc2FibGVkIGFu
ZCBub3QgYWx3YXlzIGJ1aWx0LWluLgo+CgpJbmRlZWQsIGRvZXNuJ3Qgc2V0IGdvb2QgZXhhbXBs
ZSB3aGVuIHdlIGFyZSBzaG91dGluZyBhdCBwZW9wbGUgZG9pbmcKbm9uLVBTQ0kgc3lzdGVtIHBv
d2Vyb2ZmL3Jlc2V0LiBJIGd1ZXNzIGp1c3QgcmVtbmFudHMgZnJvbSBpbml0aWFsIGFybTY0CnBv
cnQgYmVmb3JlIFBTQ0kgZGF5cyDwn5iECgo+IENjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4u
bWFyaW5hc0Bhcm0uY29tPgo+IENjOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+IENj
OiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4KPiBDYzogU3VkZWVwIEhvbGxhIDxz
dWRlZXAuaG9sbGFAYXJtLmNvbT4KClJldmlld2VkLWJ5OiBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5o
b2xsYUBhcm0uY29tPgoKLS0gClJlZ2FyZHMsClN1ZGVlcAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
