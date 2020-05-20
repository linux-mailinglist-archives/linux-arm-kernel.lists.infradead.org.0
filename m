Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFAD1DADF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAeF650G3+cUrxV90lWlrEVKyOrnzmtMkLDxI4iJnnU=; b=cBnl/rM9NLco7v
	ZCDS80qY+Rn4l4m8G3BXLEkRHtT8tXnIjuJhpw0CR3XLGKee/hLCntig9f3C5o2Kn2Mpt0Lf1lRdY
	SBz97/zqR8mOZEdgd4ShywIw3ceNjciH7OerNZIHOualAQEQ1wsuxUIeUUoviFzwdA5LAvgM/ahF3
	AkPQ9M+Echbyrw7nbojzj56z2c7zppUkP2RWODVQnFgH6Nf1qIbdCpyITv7LXvrSxD20b95UadQQH
	OX3nKog/u67qoBS4qs7cnvVEviHbiFriYVHbCYLzYOt7dnJpV8WhnCYMoxGiQj+vWNOB2cGMcCpuv
	5gR7R8jzcP0T/xkiLU4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKQg-00006W-9z; Wed, 20 May 2020 08:50:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKQH-0008W3-Qz
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:49:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id f134so1785662wmf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 01:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=NWaEHiofUdf6wDwIAUa4y4wi7tw1BiA51/qEMLgs6AU=;
 b=GuF8N+/dbPRSqOaevF9sTk9YryCPv4r7ZqF95iG8M/GZV046sf+1OpVYRUmJ752O9n
 tLXAERYZqA7k029FQshrGhBiG7tb2rtPY4ogy4K9IyTelhqOq+SVqMCmU49UIRwHlDxZ
 XJbwXHFhkhNqLBWhbTi4FFgUgCKGRUClXdUGodLuhTUp2TyZe4KEMoou11NlGQUA/wCq
 6IL8M5cqfbhyfM7K3u2w/YSXQG7ruenssF6HkITumCnwrTls78z0FPxhBCagma1UNfBB
 DNC8eumC5kfd7gwArsj/TdT7Kd0tYyKMNN79bt9sHM1SUcbk+xmLbHj+qCq/ltslGHEq
 D8zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=NWaEHiofUdf6wDwIAUa4y4wi7tw1BiA51/qEMLgs6AU=;
 b=cgzsRA6khvRuojlslQ+nl4d9E35xqO4sg3tvYd6MUiy7IPcBbNZe2HWLsqLQ787yac
 qs39vQVFeSQzwQRYHXoehDfqyrakNNnvqLIVaIRlSeczKXpIUrSHxFrJxFLVJFgHl69u
 Wlqek/PVmsA6Yrubs+jMJ7oephsJTH6G5B7i3Sj+0NR+V0rWvWj3Z/wLyzfWRbZYCUnE
 Q/I6msU5jI5hDUK25MPhRPuDqNNL0ojIzEjzVu9fn8ktZ1fneBt5olsaHEgVnpY0qpO/
 tM2m3jjLH8YLF8izb82lcWBF3T9ik0/Kmp4UEfVp5CJJHRGdJ9D13NljJKwTigWaI+gP
 kTJA==
X-Gm-Message-State: AOAM533Ykb+y9LObAs6PO/TGPY+JfYhHiIHcxok40F4LVV3ZG1HNgExe
 MKcbZ0SGOyU7ZVAiV3T6TB/uzw==
X-Google-Smtp-Source: ABdhPJyep+rJQfzqk9gMxRBnRY9lMOYkgMnXKzNjAD/1SMDl4Fj2JnyisEDn3M3lozBwoT6aLNE+pg==
X-Received: by 2002:a7b:c4d2:: with SMTP id g18mr3413772wmk.99.1589964595466; 
 Wed, 20 May 2020 01:49:55 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id s8sm2168440wrg.34.2020.05.20.01.49.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 01:49:54 -0700 (PDT)
Date: Wed, 20 May 2020 09:49:53 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v2] mfd: stm32-timers: Use dma_request_chan() instead
 dma_request_slave_channel()
Message-ID: <20200520084953.GC271301@dell>
References: <20200107105959.18920-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107105959.18920-1-peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_014957_879884_4A62EC6E 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwNyBKYW4gMjAyMCwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cgo+IGRtYV9yZXF1ZXN0
X3NsYXZlX2NoYW5uZWwoKSBpcyBhIHdyYXBwZXIgb24gdG9wIG9mIGRtYV9yZXF1ZXN0X2NoYW4o
KQo+IGVhdGluZyB1cCB0aGUgZXJyb3IgY29kZS4KPiAKPiBCeSB1c2luZyBkbWFfcmVxdWVzdF9j
aGFuKCkgZGlyZWN0bHkgdGhlIGRyaXZlciBjYW4gc3VwcG9ydCBkZWZlcnJlZAo+IHByb2Jpbmcg
YWdhaW5zdCBETUEuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVq
ZmFsdXNpQHRpLmNvbT4KPiAtLS0KPiBIaSwKPiAKPiBDaGFuZ2VzIHNpbmNlIHYxOgo+IC0gRmFs
bCBiYWNrIHRvIFBJTyBtb2RlIG9ubHkgaW4gY2FzZSBvZiBFTk9ERVYgYW5kIHJlcG9ydCBhbGwg
b3RoZXIgZXJyb3JzCj4gCj4gUmVnYXJkcywKPiBQZXRlcgo+IAo+ICBkcml2ZXJzL21mZC9zdG0z
Mi10aW1lcnMuYyB8IDMyICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKQXBwbGllZCwgdGhh
bmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2Fs
IExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZv
bGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
