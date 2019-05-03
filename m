Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D612213471
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 22:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86AJ9GtpH+IYDfAHzpl7Vh6MbwQjRsD7o9m2hj+Wu/0=; b=n/AUz9UcuDWz9S
	NPjxKfIYwYInN+AbLSlUfvZbUv4plh1vP8mIBypz11NxVsk0J+YbheXpHxb0oQ2GjgEkNSc9uf6F1
	hOQsPlVHZ7YE0yHCInBIu/8fvdo34rGnG9e6DMQ8PDg2aU7dHyRPvLs5t3Okh17XRgk3qbePFPU37
	2EFWnf9EVeXxeq+adP4c0OVa3y+uAMyieKF4gAEr7Vdf3e9TTaUwx53IZShNQe/SY6TkoZNrwdRn7
	0x3FTi6S2muqz6xEmsvY2Y0twtGysBvW+u1IezidZf7DdO5by0dxxZHmv060kQwQHxi+QdLOV5g/s
	TAQ3jm21+vcb7yCbVtuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMerC-0001Dx-RZ; Fri, 03 May 2019 20:32:34 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMer5-0001Ct-P5
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 20:32:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id d22so2229891wrb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 13:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yFWs26NyTQBBHnTLimY9fErMEAAd/wEGYGdh8uiAhr0=;
 b=bwsPLUjEVmFYODhU+c2MOxzIKK3emyjBG6iCWkMYBqFtQoZdtIYr6hP52/jRNoLJo3
 eWFwTsZ2fupPL6Yoij/cbTqbcsRY+MzOnQEEKtNsW53PcpsKck2s4WkmtNdIqAiaXUAy
 E3mzAvJqLybY/fO/hL8AAASs3qDmwPdkVMzVPx2N1Y41P4Mbq+zvb+n2nkupMjvO1YqX
 0kDWD4Vcls4ZVIQ5kCgjh7EeAMPRqNNgVglP9OP3zyMjI8L2apKkMVzj7JNQKHSmwlun
 gj4oDbVZVohDucTN1kUJOHCyBXUxoVk1ncVAOn3CjBu//3/hgcrBaoVvgGOLCygDOHzl
 nQrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yFWs26NyTQBBHnTLimY9fErMEAAd/wEGYGdh8uiAhr0=;
 b=YQoXTa2lv+qhjhzeFXwfbrFxNoZuUg2zU06Qx9weQyRq8gPKKs1TSQh0n+C6vV33D+
 /ii+yoywX1U9vwJsAc3LfRm4AsEERbXeykmQ3XT1qjlyDaHlEMgFc4AXoAzApG2qzs2m
 ZjqyEhFuIeMV2ugMbx57GKA61Dhb984Emp3zLqSQdd5XtXZuSpLbqDnogjKtBtw2C4Wr
 xHNwtd/og2yEFTM4iyDc6K4+/zCeuW/eK9klzFhQvf129toFo05mtfO6yqFz79tcvJiR
 CXlf4Ns02EsF+2iPCPxGqkCqIlVuX+AGiguEzHzQyZUI4DdIK4P6/8z0FB9iM2ahu+fC
 Hu/Q==
X-Gm-Message-State: APjAAAXpqR0o12TS9Rh9sX93gjfbbvQoeycyFGl8oimqtcUZqjz3YCdQ
 /SIbWLdO/TJEHcI1Zcnn3x8xwA==
X-Google-Smtp-Source: APXvYqydkBhECIudeVFVl1XOv4VNXeL9LFJR4eBdis9OQQ3nSkYQIomuAj4y2ShR8eFhfGxf0ZXcjA==
X-Received: by 2002:adf:fd04:: with SMTP id e4mr8683562wrr.145.1556915546193; 
 Fri, 03 May 2019 13:32:26 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id e8sm4779602wrc.96.2019.05.03.13.32.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 13:32:25 -0700 (PDT)
Subject: Re: [PATCH 7/7] clocksource/arm_arch_timer: Use
 arch_timer_read_counter to access stable counters
To: Valentin Schneider <valentin.schneider@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20190408154907.223536-1-marc.zyngier@arm.com>
 <20190408154907.223536-8-marc.zyngier@arm.com>
 <2a60a031-1eab-2d5e-89ff-b5d516545eeb@linaro.org>
 <bbe9b8c1-132f-bbfa-e3d0-ad10c4165ad7@arm.com>
 <cef220b8-f46d-0653-8249-a9d48b2efc48@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <c8449908-1f8a-a10e-bfce-95bd7415e523@linaro.org>
Date: Fri, 3 May 2019 22:32:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <cef220b8-f46d-0653-8249-a9d48b2efc48@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_133227_813204_E34DC0FC 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Russell King <linux@arm.linux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIFZhbGVudGluLAoKT24gMzAvMDQvMjAxOSAxNzozOSwgVmFsZW50aW4gU2NobmVpZGVyIHdy
b3RlOgo+IEhpLAo+IAo+IE9uIDMwLzA0LzIwMTkgMTY6MjcsIE1hcmMgWnluZ2llciB3cm90ZToK
PiBbLi4uXQo+Pj4+IEBAIC0zNzIsNiArMzkyLDcgQEAgc3RhdGljIHUzMiBub3RyYWNlIHN1bjUw
aV9hNjRfcmVhZF9jbnR2X3R2YWxfZWwwKHZvaWQpCj4+Pj4gIERFRklORV9QRVJfQ1BVKGNvbnN0
IHN0cnVjdCBhcmNoX3RpbWVyX2VycmF0dW1fd29ya2Fyb3VuZCAqLCB0aW1lcl91bnN0YWJsZV9j
b3VudGVyX3dvcmthcm91bmQpOwo+Pj4+ICBFWFBPUlRfU1lNQk9MX0dQTCh0aW1lcl91bnN0YWJs
ZV9jb3VudGVyX3dvcmthcm91bmQpOwo+Pj4+ICAKPj4+PiArc3RhdGljIGF0b21pY190IHRpbWVy
X3Vuc3RhYmxlX2NvdW50ZXJfd29ya2Fyb3VuZF9pbl91c2UgPSBBVE9NSUNfSU5JVCgwKTsKPj4+
Cj4+PiBXb3VsZG4ndCBtYWtlIHNlbnNlIHRvIFJFQURfT05DRSAvIFdSSVRFX09OQ0UgaW5zdGVh
ZCBvZiB1c2luZyBhbiBhdG9taWM/Cj4+Cj4+IEkgZG9uJ3QgdGhpbmsgKl9PTkNFIHNheXMgYW55
dGhpbmcgYWJvdXQgdGhlIGF0b21pY2l0eSBvZiB0aGUgYWNjZXNzLiBJdAo+PiBvbmx5IGluc3Ry
dWN0IHRoZSBjb21waWxlciB0aGF0IHRoaXMgc2hvdWxkIG9ubHkgYmUgYWNjZXNzZWQgb25jZSwg
YW5kCj4+IG5vdCByZWxvYWRlZC9yZXdyaXR0ZW4uCj4gCj4gRldJVyA3YmQzZTIzOWQ2YzYgKCJs
b2NraW5nOiBSZW1vdmUgYXRvbWljeSBjaGVja3MgZnJvbSB7UkVBRCxXUklURX1fT05DRSIpCj4g
cG9pbnRzIHRoaXMgb3V0LgoKSW50ZXJlc3RpbmcsIHRoYW5rcyBmb3IgdGhlIHBvaW50ZXIuCgog
IC0tIERhbmllbAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRw
Oi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0
dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xp
bmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
