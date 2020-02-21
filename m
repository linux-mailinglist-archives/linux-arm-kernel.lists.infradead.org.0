Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F8F167E1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:12:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hKM3wB4czO3/CWHOPAknfe/l3b38UU9AfmH4V9KPT0=; b=MGRaHT3EB+olLs
	uLAE6n1kdasCAWPZsCrUCfjXqluoIeEVOYoLiAezikZcbpFB08HTWLFSMKxoNmyCV2ogBkvqVZwMG
	77tjo1DCls5iGokEKitjgHuYKpz+dt5dH2STG936m+fFNY4VhIQwWPk4JCVLCnSfQvZHG6C36Q25Q
	7E2Y9cXh4b+xCkvuXmwgyodJLb5xCFBUuJHYoTbqLuym6ltSOXV9gNQuY1u1RTtQgs4w3n2P0nTre
	EhMNFSpC7s91yz4/y3+ZojGo5lDmLoygkfIskvkG4ukryYBCx71giSwy5/65JMqCNiP3jAg+8JFjP
	C9CVvnZ374oqbq4dcRWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j586j-0001oC-DC; Fri, 21 Feb 2020 13:12:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j586a-0001nr-GA
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:12:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id b17so1807164wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 05:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=a/KavHLvvULXfL2VP34j+gxXqKWZ5d3n9oQaqLdPQv4=;
 b=eib3Jfwyj+tZtw0Vz5eRWnOQiMb9kRoD6q2gN2p55T9aS3rgoCUuv4jkOzgSy6JAgQ
 LEjM/7bJFu5XAMFaMvFkgF8XI6h8ICSPxck1TJrj6R8L0TLPzxasmiTqaRBEuJSE492o
 xUPyAD7jB/fuLzt6Z6u8a/djHUo7qip9vuLowvh5OaxbICooz75RPYWXY584WFX80Hsq
 UecpvDo6HfzMYfFJjPppbxEhywhbLPSsEWUgzWENhmVwerLyCsfebJ75YhAi0BV6oT34
 gcEUPT4zy5xBisJiKhATgcWrOM/bv0x40XtU3oXOP8d4vAUNTTge4+2/pCIL965PidD5
 SzyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=a/KavHLvvULXfL2VP34j+gxXqKWZ5d3n9oQaqLdPQv4=;
 b=TgjHWdQd7fRUh2f49mxDRrmFX3qqwRh2sfhO2cwFdz7AiIiGgtHPUt+ma15rRGqZYZ
 M+HCnc/Ga+RGUdiP5/63lykTv/8In5JC0uEVv6N4uVyVmByENO5CuHznTj5tfMhWFB6X
 oRk7gYMlkQ6wo62cSDBnYcpebTkBMMpT2eSLnw6tugRRxnmMLnkVWWM0EVm3xOhbH0zx
 w9CAfpL5i/lCbk6gBTaUo1qskN6fhTFy5BxY+evpoMb4UmRd802GhPlSWSXpgD6Ww5/L
 qy5gAGo7npnrlXO3BjPe6c5eapjYcD0V0Ic6XbswAuOHcyqwsaB/GL4Bp/z0nG3H//bf
 42DQ==
X-Gm-Message-State: APjAAAVNiOpIJvzRstRroUupAGjKQO1dXpninkJS2yNMHQnmA81IeTCy
 nMM40OldR8/Bn+Ql8OwgYAIFGw==
X-Google-Smtp-Source: APXvYqx5emu1fdVAd6Tj3p81RSkBc6Mf5Yyr0nrkLGXMlG0khLLYOloIT2vAb1bEk0+GwUGFpzZSvQ==
X-Received: by 2002:a1c:4e02:: with SMTP id g2mr3929356wmh.131.1582290750388; 
 Fri, 21 Feb 2020 05:12:30 -0800 (PST)
Received: from linaro.org ([2a01:e34:ed2f:f020:2dfb:b5ce:9043:4adb])
 by smtp.gmail.com with ESMTPSA id c15sm3881537wrt.1.2020.02.21.05.12.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Feb 2020 05:12:29 -0800 (PST)
Date: Fri, 21 Feb 2020 14:12:26 +0100
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V15 RESEND 2/5] thermal: of-thermal: add API for getting
 sensor ID from DT
Message-ID: <20200221131226.GE10516@linaro.org>
References: <1582161028-2844-1-git-send-email-Anson.Huang@nxp.com>
 <1582161028-2844-2-git-send-email-Anson.Huang@nxp.com>
 <20200221091112.GA10516@linaro.org>
 <DB3PR0402MB39161BB726FE5413F30F0263F5120@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39161BB726FE5413F30F0263F5120@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_051232_533750_11068C74 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "krzk@kernel.org" <krzk@kernel.org>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBGZWIgMjEsIDIwMjAgYXQgMDk6MjY6MjlBTSArMDAwMCwgQW5zb24gSHVhbmcgd3Jv
dGU6Cj4gSGksIERhbmllbAo+IAo+ID4gPiAgICogICAgICAgYSB2YWxpZCAub2Zfbm9kZSwgZm9y
IHRoZSBzZW5zb3Igbm9kZS4KPiA+ID4gQEAgLTQ5OSwzNiArNTQ2LDIyIEBAIHRoZXJtYWxfem9u
ZV9vZl9zZW5zb3JfcmVnaXN0ZXIoc3RydWN0IGRldmljZQo+ID4gKmRldiwgaW50IHNlbnNvcl9p
ZCwgdm9pZCAqZGF0YSwKPiA+ID4gIAlzZW5zb3JfbnAgPSBvZl9ub2RlX2dldChkZXYtPm9mX25v
ZGUpOwo+ID4gPgo+ID4gPiAgCWZvcl9lYWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9ub2RlKG5wLCBj
aGlsZCkgewo+ID4gPiAtCQlzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzIHNlbnNvcl9zcGVjczsKPiA+
ID4gIAkJaW50IHJldCwgaWQ7Cj4gPiA+Cj4gPiA+ICAJCS8qIEZvciBub3csIHRoZXJtYWwgZnJh
bWV3b3JrIHN1cHBvcnRzIG9ubHkgMSBzZW5zb3IgcGVyCj4gPiB6b25lICovCj4gPiA+IC0JCXJl
dCA9IG9mX3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzKGNoaWxkLCAidGhlcm1hbC1zZW5zb3JzIiwK
PiA+ID4gLQkJCQkJCSAiI3RoZXJtYWwtc2Vuc29yLWNlbGxzIiwKPiA+ID4gLQkJCQkJCSAwLCAm
c2Vuc29yX3NwZWNzKTsKPiA+ID4gKwkJcmV0ID0gdGhlcm1hbF96b25lX29mX2dldF9zZW5zb3Jf
aWQoY2hpbGQsIHNlbnNvcl9ucCwgJmlkKTsKPiA+ID4gIAkJaWYgKHJldCkKPiA+ID4gIAkJCWNv
bnRpbnVlOwo+ID4gPgo+ID4gPiAtCQlpZiAoc2Vuc29yX3NwZWNzLmFyZ3NfY291bnQgPj0gMSkg
ewo+ID4gPiAtCQkJaWQgPSBzZW5zb3Jfc3BlY3MuYXJnc1swXTsKPiA+ID4gLQkJCVdBUk4oc2Vu
c29yX3NwZWNzLmFyZ3NfY291bnQgPiAxLAo+ID4gPiAtCQkJICAgICAiJXBPRm46IHRvbyBtYW55
IGNlbGxzIGluIHNlbnNvciBzcGVjaWZpZXIgJWRcbiIsCj4gPiA+IC0JCQkgICAgIHNlbnNvcl9z
cGVjcy5ucCwgc2Vuc29yX3NwZWNzLmFyZ3NfY291bnQpOwo+ID4gPiAtCQl9IGVsc2Ugewo+ID4g
PiAtCQkJaWQgPSAwOwo+ID4gPiAtCQl9Cj4gPiAKPiA+IFBsZWFzZSB0YWtlIGFsc28gdGhlIG9w
cG9ydHVuaXR5IHRvIGZhY3RvciBvdXQgdGhlIGZ1bmN0aW9uCj4gPiB0aGVybWFsX3pvbmVfb2Zf
c2Vuc29yX3JlZ2lzdGVyKCkuCj4gCj4gU29ycnksIEkgZG8gTk9UIHF1aXRlIHVuZGVyc3RhbmQg
dGVybXMgImZhY3RvciBvdXQgdGhlIGZ1bmN0aW9uIC4uLiIsIGNvdWxkIHlvdSBwbGVhc2UgYWR2
aXNlIG1vcmUgZGV0YWlsPwoKTmV2ZXIgbWluZCwgSSByZWFsaXplZCBJIHB1enpsZWQgbXlzZWxm
IHdpdGggdGhlIGNoYW5nZXMgaW4gdGhlIHNlcmllcyA6KQoKVGhhbmtzCgogIC0tIERhbmllbAoK
LS0gCgogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNl
IHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vi
b29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9s
aW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4g
QmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
