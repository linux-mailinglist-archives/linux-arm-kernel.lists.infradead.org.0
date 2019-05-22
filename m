Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B458D263DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 14:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0RilvjZAiKmxuEKZtzP0Gfgk848EqjkVuXKSoKykSY=; b=DFL+BdhDHsfudX
	DJPjCCLCd8G47HNYxHYI83QZW0UHbQZ+3nrggadfcx8UG9UvrjgIottBXKVLHFoXVR/wV2T1VWtPF
	7mX/qC8l6DBhN1j4frPCaYnj+BkpkK8qFCNNFe3eqaRiqg50NqApjaIw5be2X4mF2nro5DXsWLwSD
	CqJci0QQkyYa6xCn2p7S/upyNutw1lKwojg2WaOEzTIhKxFrGVB4Uv+JKNRsYORZ71DIQA3kbbuJ2
	0T8yncHlEQf85BKIViS/OXHGZowYE6JNUoye08Fqscxpbb7CN4gYsCPBq5cWbqwKgDkeOQgf1ozy4
	OOHfnSsfViqMVRxbQe6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTQO2-000481-TH; Wed, 22 May 2019 12:30:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTQNv-00047M-No
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 12:30:21 +0000
Received: by mail-wm1-x344.google.com with SMTP id n25so2010798wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 05:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bWFk7Dku220BSIRMzb9u9QC4G1aGkz5eeVURI5VAO6k=;
 b=g96lwHJ1ode6GDHOpCNuIGXm9CyJMyL30+7sF/XHZsGNh83VKrt4oHQElsVQcq3Px6
 BOLZCXg2OkSQeBvD3hxSeV4p2mhTpmNUGC5+Hk9dDKEZ2kCwnFtdO3vkgr14OreE2lST
 el4z4ZbLjBnZDmCh9cbIxr5CVw4rtQtIgsScMOQB7jjEHWklwSnumvckNFx9JoklMZdT
 Pagwhsw3cJsXOGpV22J+QEU5RyEKqs5w/+Nmh5uFkwv9vQ5LGI2FSuj3qYd/u0u6rlVC
 9YVaMPU1e9ul/YO63BYEVxcUJFXVRQjaOAlw1VdSX/bIM/KVJjpW9PCFv7aHz6XbHE2Z
 EysA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bWFk7Dku220BSIRMzb9u9QC4G1aGkz5eeVURI5VAO6k=;
 b=EBoprF9HPstruFLzHwyEZCQGK56GeNGcVNHXwb1AtFDpLBOxawSGSiKcLrZhMrJxbO
 5twWU74Ggxutw5eYLWR8VchN90ocb4IBE/AfOYnomJyOFX4jK5fMjVh+Tz96CiA0GsVH
 g7okRxPEWYctsw8FDlPMyFoRixVp03mHXki8VxDvi8XcKFbUZRmH88InsCkuB9Sphsbo
 tqjHlJVtZwfPOxKl97pCPv3gyMJF6/akr5xLao67IuowgBXXAGdRwBW+WuQFQDwFRxyr
 owOrbA2xvcCSgbSB5acYDWM2AzJv9T9xMz0NVDAGrQKu192FXLWqCtZF9FyRFHqoLahj
 V/hg==
X-Gm-Message-State: APjAAAWg3zf/AbeWFBwvGE23ZEIf3XcRoeqZ2SGIEOL+i0AZc4cNsPB1
 dVaifB2zwdoEbepSIcct9pPgOQ==
X-Google-Smtp-Source: APXvYqwcEWVPtTAR2IKfdlPTMN56ztuBh3i4KBntxk3eiRbthNztynbpp3p0eM5amjYVUHiszLA3qQ==
X-Received: by 2002:a1c:eb18:: with SMTP id j24mr7077335wmh.32.1558528218123; 
 Wed, 22 May 2019 05:30:18 -0700 (PDT)
Received: from [10.1.203.87] (nat-wifi.sssup.it. [193.205.81.22])
 by smtp.googlemail.com with ESMTPSA id y4sm3952952wmj.20.2019.05.22.05.30.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 05:30:17 -0700 (PDT)
Subject: Re: [PATCH v3 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
To: Heiko Stuebner <heiko@sntech.de>,
 Enric Balletbo Serra <eballetbo@gmail.com>
References: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
 <785392a0-282a-1e51-a4d6-a6d5ca478949@linaro.org>
 <CAFqH_53nbiwzQKctNa7MBzgCcsRFn1p8g31Xgvo3E9k6eA8AKw@mail.gmail.com>
 <2174314.1vfUlvne1O@phil>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <f0581341-126a-5733-3c4b-8e6f67bfc32e@linaro.org>
Date: Wed, 22 May 2019 14:30:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2174314.1vfUlvne1O@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_053019_779898_1FC6E9E1 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Doug Anderson <dianders@chromium.org>, huangtao@rock-chips.com,
 Linux PM list <linux-pm@vger.kernel.org>, xxx@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, vicencb@gmail.com,
 xf@rock-chips.com, Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIvMDUvMjAxOSAxNDoyNywgSGVpa28gU3R1ZWJuZXIgd3JvdGU6CgpbIC4uLiBdCgo+PiBB
cyB0aGlzIGNoYW5nZSBpcyBub3cgaW4gbWFpbmxpbmUgYW5kIGlzIGNhdXNpbmcgdmV5cm9uIHRv
IGhhbmcgSSdkCj4+IHN1Z2dlc3QgcmV2ZXJ0aW5nIHRoaXMgY2hhbmdlIGZvciBub3cuIEV2ZW4g
Zml4aW5nIHRoZSByb290IGNhdXNlCj4+IChtYXliZSB0aGUgb25lIEkgcG9pbnRlZCBhYm92ZSkg
YWZ0ZXIgdGhpcyBwYXRjaCB3ZSB3aWxsIGhhdmUgdGhlCj4+IHRoZXJtYWwgZHJpdmVyIHRvIGZh
aWwgYmVjYXVzZSAiZ3BpbyIgYW5kICJvdHBvdXQiIHN0YXRlcyBhcmUgbm90Cj4+IGRlZmluZWQg
bm9yIGRvY3VtZW50ZWQgKGEgY2hhbmdlIG9uIHRoaXMgd2lsbCBuZWVkIHNvbWUgcmV2aWV3cyBh
bmQKPj4gYWNrcyBhbmQgdGltZSBJIGd1ZXNzKS4KPiAKPiBJIGRlZmluaXRseSBhZ3JlZSBoZXJl
LiBIYW5kbGluZyArIGNoZWNraW5nIHRoZSBiaW5kaW5nIGNoYW5nZQo+IGFzIHdlbGwgYXMgbmVl
ZGVkIGZhbGxiYWNrIGNvZGUgaXMgZGVmaW5pdGx5IG5vdCBtYXRlcmlhbCBmb3IgLXJjLWtlcm5l
bHMKPiBzbyB3ZSBzaG91bGQganVzdCByZXZlcnQgZm9yIG5vdyBhbmQgbGV0IEVsYWluZSBmaXgg
dGhlIGlzc3VlcyBmb3IgNS4zLgo+IAo+IEFueW9uZSB2b2x1bnRlZXJpbmcgZm9yIHNlbmRpbmcg
YSByZXZlcnQtcGF0Y2ggdG8gRWR1YXJkbz8gOi0pCgpJIGNhbid0IHJpZ2h0IG5vdyA6LwoKCi0t
IAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNv
ZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29r
LmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5h
cm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxv
ZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
