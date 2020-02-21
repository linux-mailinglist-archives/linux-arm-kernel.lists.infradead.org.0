Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F732167DF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:05:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DV/r/sX/cNscfFyp+2xLRl7mqYlLFMQkMdOKUAB70iw=; b=rAzmOAvuoZlpDU
	SE0VKnB/hyyIe7VJWMk/FX6md/y8DD+Oo1aUFruu3qXEIiWKsKvkH+vEE9KzubRNRyZaByiRzOTCp
	xPTVd+u8H1wP+BtQzU1DRiEOO4geYmkNBNBnXYe2ZRYQdJXKZ1rIe1WLUwBTozCiHQv8mf0vVZe8z
	6L5MOn91+isuA9M9YVakgqgfS7VK/AyY0qkXwMb94RvDWj0LY4z7gDcZvTEjtCcpLbsVgfGWiNq50
	QUAFKL0iDP3nX3kEIRNdDU+s0UECqVN+PUQshRGGd0RAnwG5mDPrw47Wv7GanFqz/fvM6DFqf0wdX
	gONpJKbbibQWYeQSQCGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j57zY-0005zl-1z; Fri, 21 Feb 2020 13:05:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j57zC-0005zC-OF
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:04:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id b17so1774171wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 05:04:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=bJNVzMRkFtXXYPsTt3SQwSqc9RpddqkHKGG4HJkeN0I=;
 b=jkgvwEvxyvKjU2Titynfam24eXLGYSEaz4oiQM93hFTl4Jb4XLMaJcbX31PBGNr7S4
 MfS43Igd6k6jCuZzDeWQ/4h204Y84NqG/NxkRws+7Vd1aqGx+rLpsIDijDI9YZUblMYQ
 SAhRpyFYdkWEG2Radn/TtiRKHmfjcVcALIu5A0NbeLfuKvQWyhigGDbvzYoutsWfwMcW
 r3DnA9sqddt7ur7yiPziRvAZlcGuEEFx782y7WHjH2JrzEww9hKjB4lncsJUbOT3ZF2F
 hYNMVWHJRqeUEhM/fSIOyrGp3p5D3BlJFn3jbvtc1r/h2UPfXCW9p1KdWT+TUByJfH1O
 4pxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=bJNVzMRkFtXXYPsTt3SQwSqc9RpddqkHKGG4HJkeN0I=;
 b=EGBj+7zNUaNPiLSS27XTTNbr5ATST3BqrXwS5AdD9M3wgdEWg5qVgwUfwL27o479pi
 B5cITpaiTyItiufsm9T94njh6a3XGfnsS3RQowX+wBTnIi2WIfnCvqUwDP+JlaEf6cgX
 8S8JsBbH/z908r31j+dJFeqNqsHmF0k/bcMTPow35FYtmyymzc3uuQRM0TvPmEi5+H7j
 a9Y6x3zWRwVBKTvAsetfhidO++lryhTBmDM1uHwtlfHKKQ9RLfaSXxAaqp9sRsq8LX7J
 nGMwwK9jxrwKv9zeS3s3wH0iMBsMB1ToD+gnH/GFdqsZjBh3gMXtTgRF1ajSVCBys3Q5
 l9BQ==
X-Gm-Message-State: APjAAAWmbd5aNStc+qVz06gcvlkacjF8zDzpW8qmy4sWKwnzahfV2T1U
 9Y+tusGucbAl2VN8UWJBeh35OA==
X-Google-Smtp-Source: APXvYqwrCwOw/nJYCU07QgEOQnMfnFDja/YSvf9ktRaNNnMixM8MO9y/tOJAK/QRxV9OsIfVPeM/zw==
X-Received: by 2002:a1c:20d6:: with SMTP id g205mr3942457wmg.38.1582290292313; 
 Fri, 21 Feb 2020 05:04:52 -0800 (PST)
Received: from linaro.org ([2a01:e34:ed2f:f020:2dfb:b5ce:9043:4adb])
 by smtp.gmail.com with ESMTPSA id z10sm3561868wmk.31.2020.02.21.05.04.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Feb 2020 05:04:51 -0800 (PST)
Date: Fri, 21 Feb 2020 14:04:48 +0100
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V15 RESEND 5/5] arm64: dts: imx: add i.MX8QXP thermal
 support
Message-ID: <20200221130448.GC10516@linaro.org>
References: <1582161028-2844-1-git-send-email-Anson.Huang@nxp.com>
 <1582161028-2844-5-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582161028-2844-5-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_050454_792894_88F2540F 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, peng.fan@nxp.com, catalin.marinas@arm.com,
 bjorn.andersson@linaro.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com, will@kernel.org, amit.kucheria@verdurent.com,
 festevam@gmail.com, krzk@kernel.org, marcin.juszkiewicz@linaro.org,
 Linux-imx@nxp.com, rui.zhang@intel.com, linux@roeck-us.net,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, s.hauer@pengutronix.de,
 robh+dt@kernel.org, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 fugang.duan@nxp.com, linux-kernel@vger.kernel.org, dinguyen@kernel.org,
 kernel@pengutronix.de, olof@lixom.net, shawnguo@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBGZWIgMjAsIDIwMjAgYXQgMDk6MTA6MjhBTSArMDgwMCwgQW5zb24gSHVhbmcgd3Jv
dGU6Cj4gQWRkIGkuTVg4UVhQIENQVSB0aGVybWFsIHpvbmUgc3VwcG9ydC4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4KPiAtLS0KPiBObyBjaGFu
Z2UuCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaSB8
IDM2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMzYg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4cXhwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4cXhw
LmR0c2kKPiBpbmRleCBmYjVmNzUyLi4wYTE0ZmU0IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvZnJlZXNjYWxlL2lteDhxeHAuZHRzaQo+IEBAIC0xMSw2ICsxMSw3IEBACj4gICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9pbnB1dC9pbnB1dC5oPgo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50
ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGlu
Y3RybC9wYWRzLWlteDhxeHAuaD4KPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3RoZXJtYWwvdGhl
cm1hbC5oPgo+ICAKPiAgLyB7Cj4gIAlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+Owo+IEBAIC0x
ODksNiArMTkwLDExIEBACj4gIAkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhxeHAtc2Mtd2R0Iiwg
ImZzbCxpbXgtc2Mtd2R0IjsKPiAgCQkJdGltZW91dC1zZWMgPSA8NjA+Owo+ICAJCX07Cj4gKwo+
ICsJCXRzZW5zOiB0aGVybWFsLXNlbnNvciB7Cj4gKwkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhx
eHAtc2MtdGhlcm1hbCIsICJmc2wsaW14LXNjLXRoZXJtYWwiOwo+ICsJCQkjdGhlcm1hbC1zZW5z
b3ItY2VsbHMgPSA8MT47Cj4gKwkJfTsKPiAgCX07Cj4gIAo+ICAJdGltZXIgewo+IEBAIC01ODYs
NCArNTkyLDM0IEBACj4gIAkJCSNjbG9jay1jZWxscyA9IDwxPjsKPiAgCQl9Owo+ICAJfTsKPiAr
Cj4gKwl0aGVybWFsX3pvbmVzOiB0aGVybWFsLXpvbmVzIHsKPiArCQljcHUtdGhlcm1hbDAgewo+
ICsJCQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MjUwPjsKPiArCQkJcG9sbGluZy1kZWxheSA9
IDwyMDAwPjsKPiArCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0c2VucyBJTVhfU0NfUl9TWVNURU0+
Owo+ICsJCQl0cmlwcyB7Cj4gKwkJCQljcHVfYWxlcnQwOiB0cmlwMCB7Cj4gKwkJCQkJdGVtcGVy
YXR1cmUgPSA8MTA3MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQkJCXR5
cGUgPSAicGFzc2l2ZSI7Cj4gKwkJCQl9OwoKTWF5IGJlIHlvdSBjYW4gYWRkIGEgJ2hvdCcgdHJp
cCBwb2ludCBiZWZvcmUgJ2NyaXRpY2FsJyBmb3IgZnV0dXJlIHVzZSBiZWZvcmUKcmVhY2hpbmcg
dGhlIGVtZXJnZW5jeSBzaHV0ZG93bi4KCj4gKwkJCQljcHVfY3JpdDA6IHRyaXAxIHsKPiArCQkJ
CQl0ZW1wZXJhdHVyZSA9IDwxMjcwMDA+Owo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4g
KwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsJCQljb29saW5n
LW1hcHMgewo+ICsJCQkJbWFwMCB7Cj4gKwkJCQkJdHJpcCA9IDwmY3B1X2FsZXJ0MD47Cj4gKwkJ
CQkJY29vbGluZy1kZXZpY2UgPQo+ICsJCQkJCQk8JkEzNV8wIFRIRVJNQUxfTk9fTElNSVQgVEhF
Uk1BTF9OT19MSU1JVD4sCj4gKwkJCQkJCTwmQTM1XzEgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFM
X05PX0xJTUlUPiwKPiArCQkJCQkJPCZBMzVfMiBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9f
TElNSVQ+LAo+ICsJCQkJCQk8JkEzNV8zIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1J
VD47Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsJCX07Cj4gKwl9Owo+ICB9Owo+IC0tIAo+IDIuNy40
Cj4gCgotLSAKCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cu
ZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29t
LyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJs
b2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
