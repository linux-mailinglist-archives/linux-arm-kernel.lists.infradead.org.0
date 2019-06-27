Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0887A58408
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 16:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bgLMGQ68H/Q6taBQTMGYtDr9LgcWtDu00dz6ssxmBY=; b=GOsgljEG97DpAX
	CLqTKO3NS6YctOQ7vIEqkhuTbl45WSb9qs/g4acnxmveCgkUxZGaBbxIrTHsZHaWRUId+5slaG3+u
	Nu+kUPmUB46Sjcx7zf/v0wXDAvek2JGeSfPtuWMbLY85rPRU3wlOgp7pjI744USYikBK7cmCZMznl
	2WMlNjxhZzd5vbPAZbi5MmSmT7oUtt4uoncloN1BYtHGtrNsFmDzBIWvbzfkrhtClf83el/+wYi9F
	u7N09awZcMoSReRFrDb2VDA5QcTUSLPSSpJwUp+Bea62sB/aGH4WPcVCB1R6t6h+Y5Tt6ggoayads
	7tje/XPq7t0rnX+t7Jmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUwi-00086T-Qi; Thu, 27 Jun 2019 14:00:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUwL-00083v-Nu
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 13:59:55 +0000
Received: by mail-wm1-x344.google.com with SMTP id u8so5799529wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 06:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=HZ7QyNPTvF6/RgnmII34ur/JGsTqdFkUnUKXTuvqG/w=;
 b=ooazNoLWOxU7IwbCJhoA5ND74omxfkNA0U1UpIkyKlNt0uKAfdvPmkJmQH421o+src
 vHLl/RyQplDDT1tW40Dp93vFXUKuqLfSJXg+XUzCJcoYTZZGO4+o0KU/ZfLagw0bgegz
 wZBSx99uweaNbb2vAFhf51jahF3xYUMLdJMKzZid2NhISCpPSl25DVCmAaHc/iCEvqzt
 V15JjUpQIM1tcn7pXWbEW6dhtbporZSui1zZxUUr7YTVTg347Lia76DJHNyeo5Dbwg1w
 hv1riHzjcdEwAokiYUSBUrUU76pCTDr2HpASIT86s3UXxmXaVYUxyRFIB2OcBe61Dt1L
 f56Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=HZ7QyNPTvF6/RgnmII34ur/JGsTqdFkUnUKXTuvqG/w=;
 b=Yqo9HD/azp/8JtybyRaDYu0uq4kvxKm94NNBMAQeldnDop2OrbDvf5XjNCCpw/mlEP
 W9C1JCt+Kov3VSXeRXpiyOCgGKuiqoDLP5F8GWNCVtPDohX9l0IWf6OLwbDeSauOMc3O
 0AVYkHc5rn/OP8R0vvMDI3r+DfYPfMxtuWLW98jxtyhL4cET3Svs72J5Al+AQyYMOO2y
 tgNqwAkPIivymeXoHJ017iVfM4AzG2qHEnC8MUaeTxdPIs8PDWsnNrlqh9LBL4sCqgVS
 F37HgSpSQA+UwQpbAkLsNUWnUlWdrbNSSv4fOUXrLusdVEBY4xTJXGVeNPgwVSVRUcxL
 zirA==
X-Gm-Message-State: APjAAAUGmZG9ikOBbpxZQIPCA8NnMq/g/yUwrYFg/Eu96sr89ymVtRNT
 b/+Gj1uT4t0rK6K+zEWg7A66Pg==
X-Google-Smtp-Source: APXvYqwaxWiKD/K7An3E8jt0LE3Y8mQ4GeKWfysCY8bRIdbz0ryFrlEPnonTiu8gbtoYhCpar5TrSg==
X-Received: by 2002:a1c:b146:: with SMTP id a67mr3282875wmf.124.1561643989260; 
 Thu, 27 Jun 2019 06:59:49 -0700 (PDT)
Received: from dell ([2.27.35.164])
 by smtp.gmail.com with ESMTPSA id y184sm5473350wmg.14.2019.06.27.06.59.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Jun 2019 06:59:48 -0700 (PDT)
Date: Thu, 27 Jun 2019 14:59:46 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Tony Xie <tony.xie@rock-chips.com>
Subject: [GIT PULL] Immutable branch between MFD, Clk, Regulator and RTC due
 for the v5.3 merge window
Message-ID: <20190627135946.GI2000@dell>
References: <20190621103258.8154-1-tony.xie@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621103258.8154-1-tony.xie@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_065953_785457_7758EA0C 
X-CRM114-Status: GOOD (  10.88  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 huangtao@rock-chips.com, heiko@sntech.de, devicetree@vger.kernel.org,
 sboyd@kernel.org, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, xsf@rock-chips.com, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, chenjh@rock-chips.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGExODgzMzljYTVhMzk2
YWNjNTg4ZTU4NTFlZDdlMTlmNjZiMGViZDk6CgogIExpbnV4IDUuMi1yYzEgKDIwMTktMDUtMTkg
MTU6NDc6MDkgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoK
CiAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2xlZS9tZmQu
Z2l0IGliLW1mZC1jbGstcmVndWxhdG9yLXJ0Yy12NS4zCgpmb3IgeW91IHRvIGZldGNoIGNoYW5n
ZXMgdXAgdG8gOGVkMTQ0MDE5NzQ4MzBmMzE2YTQxOWIwNzNlNThlZjc1YTQ3M2E2MzoKCiAgY2xr
OiBSSzgwODogQWRkIFJLODA5IGFuZCBSSzgxNyBzdXBwb3J0LiAoMjAxOS0wNi0yNyAxNDo1Nzo1
OSArMDEwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KSW1tdXRhYmxlIGJyYW5jaCBiZXR3ZWVuIE1GRCwgQ2xrLCBSZWd1
bGF0b3IgYW5kIFJUQyBkdWUgZm9yIHRoZSB2NS4zIG1lcmdlIHdpbmRvdwoKLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpIZWlr
byBTdHVlYm5lciAoMSk6CiAgICAgIHJlZ3VsYXRvcjogcms4MDg6IEFkZCBSSzgwOSBhbmQgUks4
MTcgc3VwcG9ydC4KClRvbnkgWGllICg0KToKICAgICAgbWZkOiByazgwODogQWRkIFJLODE3IGFu
ZCBSSzgwOSBzdXBwb3J0CiAgICAgIGR0LWJpbmRpbmdzOiBtZmQ6IHJrODA4OiBBZGQgYmluZGlu
ZyBpbmZvcm1hdGlvbiBmb3IgUks4MDkgYW5kIFJLODE3LgogICAgICBydGM6IHJrODA4OiBBZGQg
Uks4MDkgYW5kIFJLODE3IHN1cHBvcnQuCiAgICAgIGNsazogUks4MDg6IEFkZCBSSzgwOSBhbmQg
Uks4MTcgc3VwcG9ydC4KCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3Jr
ODA4LnR4dCB8ICA0NCArKwogZHJpdmVycy9jbGsvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDkgKy0KIGRyaXZlcnMvY2xrL2Nsay1yazgwOC5jICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgIDY0ICsrLQogZHJpdmVycy9tZmQvS2NvbmZpZyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgIDYgKy0KIGRyaXZlcnMvbWZkL3JrODA4LmMgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMTkyICsrKysrKy0KIGRyaXZlcnMvcmVndWxhdG9yL0tjb25maWcgICAg
ICAgICAgICAgICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL3JlZ3VsYXRvci9yazgwOC1yZWd1
bGF0b3IuYyAgICAgICAgICAgICB8IDY0NiArKysrKysrKysrKysrKysrKysrKysrKy0KIGRyaXZl
cnMvcnRjL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA0ICstCiBkcml2
ZXJzL3J0Yy9ydGMtcms4MDguYyAgICAgICAgICAgICAgICAgICAgICAgICB8ICA2OCArKy0KIGlu
Y2x1ZGUvbGludXgvbWZkL3JrODA4LmggICAgICAgICAgICAgICAgICAgICAgIHwgMTc1ICsrKysr
KysKIDEwIGZpbGVzIGNoYW5nZWQsIDExNTYgaW5zZXJ0aW9ucygrKSwgNTYgZGVsZXRpb25zKC0p
CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVh
ZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93
IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
