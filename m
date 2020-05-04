Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4309E1C346E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 10:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fY60SYyHUbITQH6SbvUKuLluWAvynrntJ0fdB/TIosc=; b=QAJNEZPDq4M4W1
	KHcygZWUPxsuVcXifRQkqIk6baaR4bJ6k/d6l2h6lMcKM16Sh5wxWlVbzpq5vQTlES+LGNSDLyGXx
	TgASSUTZseOLKY11hkU2LHqxl79qjeVnT89DoCj8QGwRpC6SXpugoF34SyGNrsDAhI1Z7te9poI6j
	4961hWDhJnDtXeA63ozLyBaSuRNipaEZNjo4B0mPb+x4WtC7Ks3/mwcsmZ3pCkA/b3O50+Ag968b6
	ClMBifXtYb++ZiGDU28YRlKiozl+pfTmO2HydnHgYdJRbAwEyW4zlwsPqlu/8nXISwi7mbjoCGzQh
	9hYUUlNJzlD6cdEszXuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWSf-0005oS-1l; Mon, 04 May 2020 08:28:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWQX-0003sj-Lj
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 08:26:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id y3so784661wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 01:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=n5utVexByIlwVa1JUCEUjzVIUGqWjCE4M8uVE3TwE+M=;
 b=Jd8QRL+zgOFdBJ/lk24W5lhMdSFlhDdyG8mvpzpm40aTmd75dT6sSm+3fMmxLWJQ5J
 2mHq6FlEDHtKKlj5cyDoY1invckZFXsinicmYZhicr/2IlBmPdgdoDt8gnHxhf0CZm2I
 v9XIwGE04CZNSU45B3Sysd+F17nL6xtmmS05YNIjeN3GuGO/DTe0IPHq5ru2mLT9l/46
 C2cl/drmKkBVdKps2u+TdqAWtXqpoXSwl6g/yFnQt0iIkRd413zULDaBmKwE25VczgGX
 nWi5RQ4TZUjMrq8QMJs8baZNJqMfQNBr9DJbrPMlv4B/t6vw6Z2xtggnwSoH6DoIJQ/R
 S5gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=n5utVexByIlwVa1JUCEUjzVIUGqWjCE4M8uVE3TwE+M=;
 b=j7e0228MxcicjqnwoywDKiOaqeyoS7Lo86OxT109nEnW7J4qDGhJ6HCE+6JNqtkIPT
 Ts4Z0h/tn1YKeHXoYRKAOIZ4wXADReRZDjqbO5x3BD7lNCLApw+f0RZE8NLc7s6JTALd
 k3D+nqz8wG8u6u9TmmYYPBZd5AL5MVANZM9h5/4kb6oPjnjcKzq4RZ53n6n4PCAU+JTz
 hKbF1tUvo47QYiYO2JxxJsg2XVLg9LeBwnkz5U5OsnFV/D4KMYr/81fXsJq9HZh4QlHQ
 8aswl6EDovFcCpvoLClrP+9nkIrv10wBkxft6unK4ecAX9qqmcU2KYrb/CW9TBXXg2PR
 td1w==
X-Gm-Message-State: AGi0PuYIzpnjojjyi7Bql3zbONIevtpj5TYBDr3rlvEmpmCfy9s4ipo0
 nI7XSpD4PhenIgf59hNOD1CDHQ==
X-Google-Smtp-Source: APiQypIHlXgPkJWkD3nLibz6TxOMDF7gc3HUQFdp/Sz/FeUzFc3kLlLDwe91THddYROIubCtA0BPBg==
X-Received: by 2002:adf:ab18:: with SMTP id q24mr17475648wrc.214.1588580770615; 
 Mon, 04 May 2020 01:26:10 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id r20sm11910698wmh.26.2020.05.04.01.26.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 01:26:09 -0700 (PDT)
Date: Mon, 4 May 2020 09:26:08 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 14/16] vexpress: Move setting master site to
 vexpress-config bus
Message-ID: <20200504082608.GD298816@dell>
References: <20200429205825.10604-1-robh@kernel.org>
 <20200429205825.10604-15-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429205825.10604-15-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_012613_883728_2B6B7A23 
X-CRM114-Status: GOOD (  11.23  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gV2VkLCAyOSBBcHIgMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IFRoZXJlJ3Mgb25seSBh
IHNpbmdsZSBjYWxsZXIgb2YgdmV4cHJlc3NfY29uZmlnX3NldF9tYXN0ZXIoKSBmcm9tCj4gdmV4
cHJlc3Mtc3lzcmVnLmMuIExldCdzIGp1c3QgbWFrZSB0aGUgcmVnaXN0ZXJzIG5lZWRlZCBhdmFp
bGFibGUgdG8KPiB2ZXhwcmVzcy1jb25maWcgYW5kIG1vdmUgYWxsIHRoZSBjb2RlIHRoZXJlLiBU
aGUgcmVnaXN0ZXJzIG5lZWRlZCBhcmVuJ3QKPiB1c2VkIGFueXdoZXJlIGVsc2UgZWl0aGVyLiBX
aXRoIHRoaXMsIHdlIGNhbiBnZXQgcmlkIG9mIHRoZSBwcml2YXRlIEFQSQo+IGJldHdlZW4gdGhl
c2UgMiBkcml2ZXJzLgo+IAo+IENjOiBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xsYUBhcm0uY29t
Pgo+IENjOiBMb3JlbnpvIFBpZXJhbGlzaSA8bG9yZW56by5waWVyYWxpc2lAYXJtLmNvbT4KPiBD
YzogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgo+IENjOiBMZWUgSm9u
ZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdr
aEBsaW51eGZvdW5kYXRpb24ub3JnPgo+IEFja2VkLWJ5OiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVk
YXVAYXJtLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3Jn
Pgo+IC0tLQo+IHYyOgo+ICAgLSBSZXdvcmQgc3ViamVjdAo+IC0tLQo+ICBkcml2ZXJzL2J1cy92
ZXhwcmVzcy1jb25maWcuYyB8IDM3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0t
Cgo+ICBkcml2ZXJzL21mZC92ZXhwcmVzcy1zeXNyZWcuYyB8IDI1ICstLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCgpBY2tlZC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCj4gIGlu
Y2x1ZGUvbGludXgvdmV4cHJlc3MuaCAgICAgIHwgIDkgLS0tLS0tLS0tCj4gIDMgZmlsZXMgY2hh
bmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwgMzcgZGVsZXRpb25zKC0pCgotLSAKTGVlIEpvbmVzIFvm
nY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBP
cGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sg
fCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
