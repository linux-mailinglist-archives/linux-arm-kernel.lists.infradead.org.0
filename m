Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8061BA730
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 17:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4d6BlJaNSc117JkGyHYpTQQY3qF8/6/anpfWbpgqzCY=; b=gn6WbqMKo+H4MQ
	uTBTbBIU6mKnUWyQXdKDObhAkB9Fd9JSN98JMV3k0KTfWTrf4rYZweCZjMtVmGSHJfO+0if5swnDL
	xNjy6E0SAyVG4vE87efV6Q7fytKA2soxd09hG6FMk8vGDeNKuugJexZz4HXgymzSHr4J35NRl3175
	Nvvr8xPH0VTej43pTqVPWZgruR0c2v7QW/5VcCUrX8E4fy+yxSWnhZO3yPs4u/Ltc8r+bFZQYtdLY
	yB7HlYd5rUL2ThlmSNxuFOYWvWHYj4TrYVUCVr4TJO6KrYvC73fHdVMgQ4uGMtuTbAjplYQikU/k2
	iD9vv+8VrgEQgZQZCc6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT5Hp-0007cc-4s; Mon, 27 Apr 2020 15:03:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT5Gs-0007X2-Nn
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 15:02:12 +0000
Received: by mail-wr1-x444.google.com with SMTP id d15so19325631wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 08:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5am3rYLKN72sDpubB8boCkl41aXLjHfwb4K9gDzXZl4=;
 b=rSd0N9pZhwF+3XY/rPyovLCC5HIGkw9J4bi469iWjJE/eyvVhUukYF0vvSQW+heho9
 30b/2fwtE10ncV3C9PHyg3BzmekTAMfPHdV0H3mmBQfG7qrites/pD+7Qd72bsKyvGPO
 XDnC35aD4gln/Z68HZtr3H8XcrbM7aBHEpE+SXHpINWQ51bav4MPnMmrJx2/kWBFLTme
 PoRtmQUEuLnIWrPWa4IiLvf75QjqT2GM1OKFTITLI/VQRTdt2TFQvaAIMvH9geHsMsGY
 DE6Eb6xZ+RqwMAS+z0TCWwEWr2zAkc+PtWSTIog4eXxEH8DlcSOxpdAH09ho9XxPcdDi
 d7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5am3rYLKN72sDpubB8boCkl41aXLjHfwb4K9gDzXZl4=;
 b=H7fX0YtejfxIeMg+gbiZ37SOlH2IDQufh8xMI9ot3BZn+RFcEnXYz2Fi7AyMvByZXu
 puuEUIU5jls47bhnmBKLDF9he/IKvNE1j5TrSo2XHzUnvJvjcnIxCx2dZHZT2yHvVqM9
 Jb7aZ45EZzhWjxUWYQxqHqwflYNmarcTiO/HGiUHHLzW8wh7amC+b6cwhnVgZcfMoqkn
 O0pAPjcm3gax+S9igLg9FJty5ERtkyP6aHsJO7Hxcw1KQzP1lbbN51Vs8lTU05jrKHW4
 Cd8pAiD3db+fnm5Lgl4fsODM/QkxXOkCwNaJMztcSF3/RUuAGlMeCwNiydpFq8sjfar+
 jyDg==
X-Gm-Message-State: AGi0PubG8hPLbFE6CJsiGLxGH4BVzPIJhEpeMkN0i3eU1a0MTXdtRycm
 xuNXQh3dZzJgpE0812kokTmYhw==
X-Google-Smtp-Source: APiQypKRH9rdVdNM2v0Jh1dki7ggVnxw1D+G72UX+ta6jz6y6AhXKbGkwfOo+Ez+HlSZUjVbd6p2gQ==
X-Received: by 2002:adf:fcc6:: with SMTP id f6mr25050658wrs.388.1587999728856; 
 Mon, 27 Apr 2020 08:02:08 -0700 (PDT)
Received: from [192.168.0.41] (lns-bzn-59-82-252-135-148.adsl.proxad.net.
 [82.252.135.148])
 by smtp.googlemail.com with ESMTPSA id e11sm20748688wrn.87.2020.04.27.08.02.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 08:02:08 -0700 (PDT)
Subject: Re: [PATCH 02/14] clocksource/drivers/timer-ti-dm: Add clockevent and
 clocksource support
To: Tony Lindgren <tony@atomide.com>
References: <20200417165519.4979-1-tony@atomide.com>
 <20200417165519.4979-3-tony@atomide.com>
 <62be90e2-7dbe-410d-4171-c0ad0cddc7a3@linaro.org>
 <20200427143144.GQ37466@atomide.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <29f39839-b3ed-cac3-1dea-c137286320b1@linaro.org>
Date: Mon, 27 Apr 2020 17:02:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200427143144.GQ37466@atomide.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_080211_299317_97C5376C 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Lokesh Vutla <lokeshvutla@ti.com>,
 Keerthy <j-keerthy@ti.com>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcvMDQvMjAyMCAxNjozMSwgVG9ueSBMaW5kZ3JlbiB3cm90ZToKPiBIaSwKPiAKPiAqIERh
bmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPiBbMjAwNDI3IDA5OjE5XToK
Pj4gT24gMTcvMDQvMjAyMCAxODo1NSwgVG9ueSBMaW5kZ3JlbiB3cm90ZToKPj4+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aW1lci90aSx0aW1lci50eHQKPj4+ICsr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aW1lci90aSx0aW1lci50eHQK
Pj4+IEBAIC0xNCw2ICsxNCw4IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6Cj4+PiAgCQkJdGksb21h
cDU0MzAtdGltZXIgKGFwcGxpY2FibGUgdG8gT01BUDU0M3ggZGV2aWNlcykKPj4+ICAJCQl0aSxh
bTMzNXgtdGltZXIJKGFwcGxpY2FibGUgdG8gQU0zMzV4IGRldmljZXMpCj4+PiAgCQkJdGksYW0z
MzV4LXRpbWVyLTFtcyAoYXBwbGljYWJsZSB0byBBTTMzNXggZGV2aWNlcykKPj4+ICsJCQl0aSxk
bXRpbWVyLWNsb2NrZXZlbnQgKHdoZW4gdXNlZCBhcyBmb3IgY2xvY2tldmVudCkKPj4+ICsJCQl0
aSxkbXRpbWVyLWNsb2Nrc291cmNlICh3aGVuIHVzZWQgYXMgZm9yIGNsb2Nrc291cmNlKQo+Pgo+
PiBQbGVhc2UsIHN1Ym1pdCBhIHNlcGFyYXRlIHBhdGNoIGZvciB0aGlzLgo+Pgo+PiBCZWZvcmUg
eW91IHJlc2VuZCBhcyBpcywgdGhpcyB3aWxsIGJlIG5hY2tlZCBhcyBjbG9ja3NvdXJjZSAvIGNs
b2NrZXZlbnQKPj4gaXMgbm90IGEgaGFyZHdhcmUgZGVzY3JpcHRpb24gYnV0IGEgTGludXggdGhp
bmcuCj4+Cj4+IEZpbmRpbmcgYSB3YXkgdG8gY2hhcmFjdGVyaXplIHRoYXQgZnJvbSB0aGUgRFQg
aXMgYW4gZW5kbGVzcyBkaXNjdXNzaW9uCj4+IHNpbmNlIHllYXJzLCBzbyBJIHN1Z2dlc3QgdG8g
dXNlIGEgc2luZ2xlIHByb3BlcnR5IGZvciB0aGUgdGltZXIgZWcKPj4gPHRpLGRtdGltZXI+IGFu
ZCBpbml0aWFsaXplIHRoZSBjbG9ja3NvdXJjZSBhbmQgdGhlIGNsb2NrZXZlbnQgaW4gdGhlCj4+
IGRyaXZlci4KPiAKPiBIbW0gZ29vZCBwb2ludC4gV2Ugc3RpbGwgbmVlZCB0byBzcGVjaWZ5IHdo
aWNoIHRpbWVyIGlzIGEgY2xvY2tzb3VyY2UKPiBhbmQgd2hpY2ggb25lIGEgY2xvY2tldmVudCBz
b21laG93Lgo+IAo+IE1heWJlIHdlIGNvdWxkIGhhdmUgYSBnZW5lcmljIHByb3BlcnRpZXMgbGlr
ZSB0aGUgY2xvY2sgZnJhbWV3b3JrIHN1Y2ggYXM6Cj4gCj4gYXNzaWduZWQtc3lzdGVtLWNsb2Nr
c291cmNlCj4gYXNzaWduZWQtc3lzdGVtLWNsb2NrZXZlbnQKCkkgdGhpbmsgdGhhdCB3aWxsIGJl
IHRoZSBzYW1lIHByb2JsZW0gOi8KCklzIGl0IHBvc3NpYmxlIHRvIGNoZWNrIHRoZSBpbnRlcnJ1
cHQgZm9yIHRoZSBjbG9ja2V2ZW50ID8gQSB0aW1lciBub2RlCndpdGggdGhlIGludGVycnJ1cHQg
aXMgdGhlIGNsb2NrZXZlbnQsIHdpdGhvdXQgaXQgaXMgYSBjbG9ja3NvdXJjZS4KCgoKLS0gCjxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20v
cGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3Jn
PiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
