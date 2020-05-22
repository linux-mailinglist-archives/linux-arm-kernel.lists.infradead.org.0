Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867801DEDC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 18:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0m6rm/XGiSf5bkLGcTfELvOpZndNu+dG8t7GsXi1KYA=; b=VypTVKbGH6cW8x
	aAYJTbPADj/4KK3AXpw49j7+86oVhcTDsICRBWqXYHS9VJ/IVJ9V1Wo4tEBBA+JDMygoZ/cEg5sgj
	YcVv4Y22XLANtqnwcqlv0ZxsXDpfS9b9dx1zLoXxJe4My4nB1md0wXkoQsd2TNlMh7SIYBYWplIrt
	2+22+jEZ0e+RB+2nkXJLaLPeKIwqYzRS5TRbUaiE1nwXkdUj7gChmCTfyjziJDSOJ7CLyYbyJFRHs
	/6PZx2YAvgDn8bMb5ekJ7T01CnMz2+HJdrFeajks4ZJWIYY17Fdb/xZHp1mfJlBWT7RcXj5rhAAGh
	7SrzuDEKrwxV6iDPU6rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcAzK-0000vM-Eg; Fri, 22 May 2020 16:57:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcAz7-0000uF-UM
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 16:57:27 +0000
Received: by mail-wm1-x341.google.com with SMTP id h4so9251621wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 09:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=H0fk+YgnvJQdHJy1RoTIxISz+5f4dnnX1kWqMJdIiTs=;
 b=mJgRhNZUV8CHq1RmFWq7pxbyvsO0FpeEolI6sdLDMYOWVj7bN0R5fgJTzTQh2UAcMf
 W7g3g4Oi45lMempvhGJgtWGWviaNUQedF2O0PzS+CbjwXpt7q5HpHU5Fb9W/uVFkPd67
 X9f5FjJczWK80YgE51DwsqlAaMmapRlzlt2jZ2eBvFNCPZS7ouR+YOyc4YAIpS8xk318
 EXFub2WKjTNwwryAYe6wi8LYvaMb8CpMJgdNc7g3yKPqicUOJACJNLkUDgqS3tUY87PX
 kM3KUiwSsBRtX4d2YfXKdTZ63ZdlrExIimJuo8wxEGasLH5lrVq9ZoYGyBjjNAmPOCzF
 czvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H0fk+YgnvJQdHJy1RoTIxISz+5f4dnnX1kWqMJdIiTs=;
 b=aO1lb5NceHRoJt4SIvNPp5uwgtGgazw7xYH9lnjdaFwbNAEefbXiQZmRpd7DKX2sVI
 LK/wiNjj85BzjhRtDRtdl+BhbBKB8BSfpbjpDOqAxxR67NgBTpiLtS573IuYiOYhto85
 PBeuA27S7HwP9Mwfbv01r6rjyCcDEwCz+qNcuFVy8F9v45bR9gsbXLwGs7ayJFzUI2vn
 eAh60VOwgPj1gj1xkir/Tcg2GE9ys2izE0vNitSulBugLKiJMMAC75HsK7iUviaSflRt
 f1nNLW1xCmLrrWAj2Ut1BcVkmGgXcxLM4y6V1lWiW4GqjbUBNw3f6WLorVTFQL5B39Vo
 QVkA==
X-Gm-Message-State: AOAM53129xKQ7XvMaF6wLcaPLHOTEyT1hje7KZGdXy4T+pgpQuzvs0L6
 cfxfDOD4YRto8kuThwutXywVtQ==
X-Google-Smtp-Source: ABdhPJzc7gjWBkYuh9qSlhxc3eMgYPGZvCjw95agKu8mdcnuOAzuJsZb0eW/lo8vLU77CVVsDE60BQ==
X-Received: by 2002:a1c:5685:: with SMTP id k127mr14863903wmb.50.1590166640540; 
 Fri, 22 May 2020 09:57:20 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:a82f:eaec:3c49:875a?
 ([2a01:e34:ed2f:f020:a82f:eaec:3c49:875a])
 by smtp.googlemail.com with ESMTPSA id t14sm9673168wrb.56.2020.05.22.09.57.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 09:57:19 -0700 (PDT)
Subject: Re: [PATCH 4/4] thermal: qoriq: Add platform dependencies
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Jens Axboe <axboe@kernel.dk>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Zhang Rui <rui.zhang@intel.com>
References: <20200507112955.23520-1-geert+renesas@glider.be>
 <20200507112955.23520-5-geert+renesas@glider.be>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <e4a72b09-52e5-d145-2b64-50e5d636527a@linaro.org>
Date: Fri, 22 May 2020 18:57:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507112955.23520-5-geert+renesas@glider.be>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_095725_982280_3837CF5C 
X-CRM114-Status: GOOD (  11.82  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDcvMDUvMjAyMCAxMzoyOSwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+IFRoZSBRb3JJ
USBUaGVybWFsIE1vbml0b3JpbmcgVW5pdCBpcyBvbmx5IHByZXNlbnQgb24gRnJlZXNjYWxlIEU1
MDBNQwo+IGFuZCBMYXllcnNjYXBlIFNvQ3MsIGFuZCBvbiBOWFAgaS5NWDggU29Dcy4gIEFkZCBw
bGF0Zm9ybSBkZXBlbmRlbmNpZXMKPiB0byB0aGUgUU9SSVFfVEhFUk1BTCBjb25maWcgc3ltYm9s
LCB0byBhdm9pZCBhc2tpbmcgdGhlIHVzZXIgYWJvdXQgaXQKPiB3aGVuIGNvbmZpZ3VyaW5nIGEg
a2VybmVsIHdpdGhvdXQgc3VwcG9ydCBmb3IgYW55IG9mIHRoZSBhZm9yZW1lbnRpb25lZAo+IFNv
Q3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2Fz
QGdsaWRlci5iZT4KCkFwcGxpZWQsIHRoYW5rcwoKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9s
bG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vi
b29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDov
L3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
