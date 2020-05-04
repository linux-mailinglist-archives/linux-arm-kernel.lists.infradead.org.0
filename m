Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A207B1C34AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 10:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUFY/7RIiPEqAv8LTDY/LhYQAKIQvz0giZxzoT1nrMs=; b=lpwhXfrsGMYnvM
	NpwMI9YE2njg2FY83FX5NCBND/sCTifmVORPMqQ7QVHwwLm9SK6LnXwBiNAv8iIdsEuqY6N4maz9O
	RTnb/mdOMMO4O5uXlLKFvyJ+jqwwiD9MfDH2jWqhjL+0HfnwliDzQSJ5EbcJ9Fg9MTQRIsMmfyUKQ
	fca3ayR0WshObYthhJu9miZQcNIrJH35P5iXqJb08shOxxawFFq02VhcdygocZBzSO9bTNDtvmIyg
	zhaWHhC4gQUUb8UY5pMHMNYzRSHsk6LVAxp+zsxGZ4pmBnLjDyGbdfwuTUta1TU2NdwMVYvu/Vyyt
	mK9RdmufYJAlA2O0WL8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWfK-0007bK-MD; Mon, 04 May 2020 08:41:30 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWfD-0007ai-7V
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 08:41:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id x4so7489983wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 01:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=rdKfUixg+LFJTHTqa3PKVQKFg2zE6dmw0jAFtbyDiJs=;
 b=cuE/heKyV2d9ekz/X1fkSMMjTWPNktpggUVzdJv+nB7SMSBq72NvnZD3loKleyt3JG
 0P2mYHHN6zFmsP+QXGb5nqniv0ZXYdnqiwp8/K+Mug4RsxZDJL5DJVxfwFLJcOOSRWl/
 /srF7G0CCANdF1H93uVJUpcjCwddGNbEo5tcCnIbPzD1ikev6EpbmdS2mXp/wc6YWcln
 JoMUeoN3NeoONglJsk5jm52BtXYlBpy0kDEmhkLO92rKJ2PJX9QrGXBs7n6ZeHS+ZTtc
 EHmF6aE7wx0J9YIycTfP58cYXeIuprler0n2U5a22XpOJmpFszZdqLG3LOSUfgsQhRFN
 AN5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=rdKfUixg+LFJTHTqa3PKVQKFg2zE6dmw0jAFtbyDiJs=;
 b=kXXa8XB7IkDNC2AOkKGlCI02MGmuR4JXoASwvptT+IEaXp8W5yvpBK2mJgL3Ku3mBO
 nn3qgXwAbtR3RnmHcYmlj1xqYJ6F5S66heYKvUGXvr6TEC7Rgyunb2pyMg9UC0DcVng1
 jyLtYxFGOdQlgR9RRa2UnmMMf0I46RfDObiMPb3puxhhVvt9NNNpGLcDX8LruZwEFVE4
 YAnviEXtnqLrmRISgjcP4FtXcbEyBPfxOqV5i8+iG7qHjpiK8ciBoHJAwzz3SreQtBCn
 uXgJsxusi26JnAzz3shO52OQXy3qdroqr5S6LRFwHG6IUgMHG+4lPCRfxk8+1owvgORf
 PxnQ==
X-Gm-Message-State: AGi0PuapR5X4tuufLNd62vzX4UEAPGrO4t07EdFPcR/wOGDARDMm2yxB
 JX8MlE3eW6/kER+hB2nv6s8eSA==
X-Google-Smtp-Source: APiQypKhwDFaWmJEH4+kHc2vkBxBnKCa5KZa7Nrb1CWhdshEHOGTiaGxzTmqYFf7L/kOuzvdDyADdw==
X-Received: by 2002:a05:600c:c8:: with SMTP id
 u8mr14003209wmm.142.1588581680717; 
 Mon, 04 May 2020 01:41:20 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id t2sm12400815wmt.15.2020.05.04.01.41.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 01:41:20 -0700 (PDT)
Date: Mon, 4 May 2020 09:41:18 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 10/16] mfd: vexpress-sysreg: Use devres API variants
Message-ID: <20200504084118.GF298816@dell>
References: <20200429205825.10604-1-robh@kernel.org>
 <20200429205825.10604-11-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429205825.10604-11-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_014123_264726_1A5B7CB0 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

T24gV2VkLCAyOSBBcHIgMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IFVzZSB0aGUgbWFuYWdl
ZCBkZXZtX2dwaW9jaGlwX2FkZF9kYXRhKCkgYW5kIGRldm1fbWZkX2FkZF9kZXZpY2VzKCkKPiBp
bnN0ZWFkIG9mIHRoZWlyIHVubWFuYWdlZCBjb3VudGVycGFydHMuIFdpdGggdGhpcywgbm8gLnJl
bW92ZSgpIGhvb2sgaXMKPiBuZWVkZWQgZm9yIGRyaXZlciB1bmJpbmQuCj4gCj4gQ2M6IExpdml1
IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgo+IENjOiBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5o
b2xsYUBhcm0uY29tPgo+IENjOiBMb3JlbnpvIFBpZXJhbGlzaSA8bG9yZW56by5waWVyYWxpc2lA
YXJtLmNvbT4KPiBDYzogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgo+
IENjOiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IEFja2VkLWJ5OiBBcm5kIEJl
cmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+IEFja2VkLWJ5OiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVk
YXVAYXJtLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3Jn
Pgo+IC0tLQo+ICBkcml2ZXJzL21mZC92ZXhwcmVzcy1zeXNyZWcuYyB8IDQgKystLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKQWNrZWQtYnk6IExl
ZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9d
CkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVy
IHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
