Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753931D9BE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fl4ozF64IRmEZs2z//9PHPsptPct654EHm2dlYMkU4=; b=gZufNhgDqwmwGQ
	W6LeEdbc5IdDV8A8UbqyDh9mybH0aX+ub5Zv15RyLL9t11YrH/QXdGG9YL9I0NUVLFL1LbsXOxYAr
	oY2pjKUC1/+ii0wHqffT5gLO8QujAExuQoXNUDUuqdCPyCd3ncNsDmHehITGXjz7Er9ugKNrdal9E
	b1M1uoDcDQJO+q9qxWOHy41ZU21gAs9mydaLj7I89Au2SbsSPq0HwQBROeqv7L+x0AR/cttSq1Jqi
	BJV+a+8+6YnGsb/Q2Y1ooOndBr8dr5CSKwHSLuO+AqHqFMSpmUnCDcdJuvA78hiRSV2vG+QMGl/4p
	l3r6qZXZKAbtCmMpNsFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4fl-0000K5-J0; Tue, 19 May 2020 16:00:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4fc-0000JC-CN
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:00:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id h17so16486169wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 09:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZgDKc3HEYEnyhOTY+wQvny/RRZ2rvIz9Ed6CzUywMNk=;
 b=Eq23zFrKqsJEF7WMk37RL9HDAg5eeAfNuJoLllOPXJZq5k3oneQ1YtMrHYsi4z39AL
 o4cJg/JHwMEUVYwWSoezsqcaXsMxGYv+nDOdlVBMgUI2MkOroGxR1QrYvy6VNMFqSnkM
 Xn+a2BnBAYcDYuYI8d1EdoYk8lxCoqkVhukHJSji8Q++Ywzqdt2eHIFg9K8GqFQ2R9Dg
 NnRYperS/dEp68p/jHcIdzoGjMVcCbW9I96vR/+S5CKl9kqL74rUj6nLWaAe/XWkILlv
 ngsJFGKW4rS0GS9ODLBTp7vdAJQGkQeque5riA0PgYITWqi2BRO847/Y1hNCfxaC5Cts
 UzJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZgDKc3HEYEnyhOTY+wQvny/RRZ2rvIz9Ed6CzUywMNk=;
 b=pnyVZ0kA7Gk3Eo6WUKvELFE41EB/n6B/AMscgtrTis+GPFYhik84HPKEs31oRYGNFh
 WwSE80sAaFvYyxn2clWz0qbHdc8UqzvvIl3w1v6yNGoLB4GPPnuXcCb1t/AVGZNtyLZP
 LXQNY3FqjqexLjXfSbAf4WpzFonoaGQLEpqN7K1H5J4/Rlsr+BaBuiZ2VKCZZ1Xv4zeE
 Q78t3VILMioDDmQUxFFl0jRBIT0suNByH5N1Cso4Fi7zsJx9hLPVyCchxiuH7pMwUzpX
 B8viWjJ+uzF6DbUmrYtHI/be4qQi/UQ40xPzg1820uuOwdVvey6v9pA9n/DxzDPCsiSq
 XvhA==
X-Gm-Message-State: AOAM532IDw5fLO/3L+eQAoDgQNhm00ShhYmHyefaPLs3viQqN/evKXDO
 DkSn93GzcjLSKoWT8XXNA/0xnw==
X-Google-Smtp-Source: ABdhPJxGVpesohvaaRIa7+vBgDYIMXNEEmp86gTxM/Sz51g4e2Mut4SoxAPLfwG5D/qKdaXzK/rZ9g==
X-Received: by 2002:adf:e951:: with SMTP id m17mr26966121wrn.352.1589904042372; 
 Tue, 19 May 2020 09:00:42 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:e504:4297:986:ffb0?
 ([2a01:e34:ed2f:f020:e504:4297:986:ffb0])
 by smtp.googlemail.com with ESMTPSA id c17sm21759979wrn.59.2020.05.19.09.00.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 09:00:41 -0700 (PDT)
Subject: Re: [PATCH] clocksource/drivers/timer-ti-dm: Fix warning for set but
 not used
To: Tony Lindgren <tony@atomide.com>, Thomas Gleixner <tglx@linutronix.de>
References: <20200519155157.12804-1-tony@atomide.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <2f67a110-e52f-94fc-fae2-c3171a67bb8a@linaro.org>
Date: Tue, 19 May 2020 18:00:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200519155157.12804-1-tony@atomide.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_090044_524003_69960D77 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkvMDUvMjAyMCAxNzo1MSwgVG9ueSBMaW5kZ3JlbiB3cm90ZToKPiBXZSBjYW4gZ2V0IGEg
d2FybmluZyBmb3IgZG10aW1lcl9jbG9ja3NvdXJjZV9pbml0KCkgd2l0aCAncGEnIHNldCBidXQK
PiBub3QgdXNlZC4gVGhpcyB3YXMgdXNlZCBpbiB0aGUgZWFybGllciByZXZpc2lvbnMgb2YgdGhl
IGNvZGUgYnV0IG5vCj4gbG9uZ2VyIG5lZWRlZCwgc28gbGV0J3MgcmVtb3ZlIHRoZSB1bnVzZWQg
cGEgYW5kIG9mX3RyYW5zbGF0ZV9hZGRyZXNzKCkuCj4gTGV0J3MgYWxzbyBkbyBpdCBmb3IgZG10
aW1lcl9jbG9ja2V2ZW50X2luaXQoKSB0aGF0IGhhcyBhIHNpbWlsYXIgaXNzdWUuCj4gCj4gUmVw
b3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IFRvbnkgTGluZGdyZW4gPHRvbnlAYXRvbWlkZS5jb20+Cj4gLS0tCgpBcHBsaWVkLCB0aGFu
a3MKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZh
Y2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8j
IS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9n
Lz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
