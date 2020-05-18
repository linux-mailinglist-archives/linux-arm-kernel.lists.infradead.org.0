Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 885F91D7F84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 19:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LBumyMV4be+G3WIkETTUWG+d1+dnF9xvhUipHq9yf8=; b=h/yNaDE8cabuxU
	mWhWT9mcBmObiYZ+X5wufp9Xu+2Kecm+/K78W2vlei0VTzgKGz3ufDO2rQdzeaXqL1qQyNz4pCo5X
	tgACRjV4kf/tzjBUh0w9fv/lOH7vnaovbTqZRzloElP/E+YI5tKPq/xa4DAVj317swkMaS4IQ+Ygg
	4hYoAsN/8thAuZdxb/CjR0NEjMvG5B6T6VxjWJTmfOkgw0QdHYVly+T0ZO6rXVIgu6dbI4P8tE1+l
	eZBSoSPj2TVRkVp4ExStTmp/kqCfmZFyDIxqoJGsRQrIp0lOP9EAgmZsSZqhVpajVhg1ArKK2LgpU
	kb4YyR3oCXRfWWBFeUUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaj9H-0000cF-7p; Mon, 18 May 2020 17:01:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaj92-0000an-Ov
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 17:01:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id e1so12735180wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 10:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=A6wVB9L5JuVcZQhVgNV1j0Bavs6H5jtfAqYurATa2Do=;
 b=bdA653P/QboIHjRsQ/kXQWemQ8gbXJMRQu3sewNP+YlMuTl/p+foWkhrLBStyDO3gs
 P2xavifo28Zofs/Rb7dMxZhbpgta+7Kk+bqr4BIbGuby4R3WDa5HKRGg2vGBBRVYB4YQ
 aEDQ+ayplQUHRW1UmsY0tBOxCcGFp4kf4pIW4vhdh0O3Vkmx23NrQLjGIW0bxNe7fNj3
 V7gc+n4557nQQNW5GXTQMVbWEL++D8cGjwykRK1eXP54o8As3O6011hEi6Ugivsi8Aeo
 m//EeAkt88jJOpWwhlanVeKgEjGYuzreqBkcqexXZUxp3lcCujAJH3Tu31bBPV06jEiR
 6l1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A6wVB9L5JuVcZQhVgNV1j0Bavs6H5jtfAqYurATa2Do=;
 b=es7axn9H49E5I76jAYMpGH3zOp4ZJazhhCmIEzcbSbLWgkFJueYR091W+WPXxT0PNx
 G30ZkAK4Gw2yu5SneVTEGKZNde/59PV5Xzp5VNSXg1gR8gQ2F9N0KtlNkrZNsrVPForH
 2Aojpf4BwYv8FIQm9NhW50ndTHLNcmzOeJ+GoLmrDQ7mfb2TQ3A/4+vqajlaCYSFVJJY
 4XGnfiKukf22eFyT6onGBCaZ2+AJU/5ESWtydn/Vsy9jegIvN3+IcL38uF+Iuj2ZBrHK
 6IV1j+HJCwdVxSU4nQQebqTSrl4yoI3OEklNLAata6FH7em8lvHv9utbWBnQGEQvUMTs
 /Bhg==
X-Gm-Message-State: AOAM532rNY1I1eEmevrcGPjUnr9oFEvB3PXsPeWYtUh7GfO2R7OdWcuA
 dNctM2j2sLYrRFDZPOTwKEoylA==
X-Google-Smtp-Source: ABdhPJxWOh06HcVOViu4DIpbbOhR0OOnnCEwdTI40X9By447kp5WfnRE1ew1W4UPHl9Gn9nhNxTnxg==
X-Received: by 2002:a5d:6283:: with SMTP id k3mr20606675wru.62.1589821299348; 
 Mon, 18 May 2020 10:01:39 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8?
 ([2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8])
 by smtp.googlemail.com with ESMTPSA id m13sm178601wmi.42.2020.05.18.10.01.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 10:01:38 -0700 (PDT)
Subject: Re: [PATCHv3 00/14] Update omaps to use drivers/clocksource timers
To: Tony Lindgren <tony@atomide.com>
References: <20200507172330.18679-1-tony@atomide.com>
 <340cdd4a-d996-073f-127d-89ce6c05f221@linaro.org>
 <20200518170059.GR37466@atomide.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <c2404711-af5e-e9a2-29c1-55378522ebd2@linaro.org>
Date: Mon, 18 May 2020 19:01:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518170059.GR37466@atomide.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_100140_806444_5B9E2AAD 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Lokesh Vutla <lokeshvutla@ti.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 Andreas Kemnade <andreas@kemnade.info>, Keerthy <j-keerthy@ti.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Brian Hutchinson <b.hutchman@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTgvMDUvMjAyMCAxOTowMCwgVG9ueSBMaW5kZ3JlbiB3cm90ZToKPiAqIERhbmllbCBMZXpj
YW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPiBbMjAwNTE4IDE2OjU5XToKPj4KPj4gSGkg
VG9ueSwKPj4KPj4gT24gMDcvMDUvMjAyMCAxOToyMywgVG9ueSBMaW5kZ3JlbiB3cm90ZToKPj4+
IEhpIGFsbCwKPj4+Cj4+PiBIZXJlJ3MgdjMgc2VyaWVzIHRvIHVkcGF0ZSBvbWFwcyB0byB1c2Ug
ZHJpdmVycy9jbG9ja3NvdXJjZSB0aW1lcnMgZm9yCj4+PiB0aGUgMzJrIGNvdW50ZXIgYW5kIGRt
dGltZXIsIGFuZCB0byByZW1vdmUgdGhlIG9sZCBsZWdhY3kgcGxhdGZvcm0gY29kZS4KPj4+IFBs
ZWFzZSByZXZpZXcgYW5kIHRlc3QuCj4+Pgo+Pj4gSSd2ZSB1cGRhdGVkIHRoZSB0aW1lci10aS1k
bS1zeXN0aW1lci5jIHBhdGNoIGJhc2VkIG9uIHRoZSBjb21tZW50cyBmcm9tCj4+PiBEYW5pZWwg
YW5kIFJvYiwgYW5kIGFkZGVkIHN1cHBvcnQgZm9yIHNlbGVjdGluZyB0aGUgcHJlZmVycmVkIHRp
bWVycyB0bwo+Pj4gdXNlLgo+Pj4KPj4+IFRoZW4gZm9yIG1lcmdpbmcgd2hlbiBmb2xrcyBhcmUg
aGFwcHkgd2l0aCB0aGlzIHNlcmllcywgRGFuaWVsIGlmIHlvdQo+Pj4gY2FuIHBsZWFzZSBhcHBs
eSB0aGUgZmlyc3QgdGhyZWUgcGF0Y2hlcyBpbnRvIGFuIGltbXV0YWJsZSBicmFuY2ggaXQKPj4+
IHdvdWxkIGJlIGdyZWF0Lgo+Pgo+PiBzbyB0aGUgY2xrIHBhdGNoIGFsc28gPwo+IAo+IE9vcHMg
c29ycnksIGp1c3QgZmlyc3QgdHdvIGFyZSBuZWVkZWQgYXMgd2Ugbm8gbG9uZ2VyIG5lZWQgdGhl
Cj4gZGV2aWNlIHRyZWUgYmluZGluZyBjaGFuZ2VzIDopCgpPawoKCi0tIAo8aHR0cDovL3d3dy5s
aW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBT
b0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFy
bz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8
CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
