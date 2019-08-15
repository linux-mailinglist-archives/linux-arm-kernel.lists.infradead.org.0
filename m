Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEA08F03F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 18:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=09487TIsXAtJoRx7gsXGy0s5DnGK9pIuraHEAW2kDmw=; b=SSHAJ3khBTxzynd50BZpCyDH+g
	E5tgAQZRv1QoaRC02AZHHXGs6XCxgRrkyOpXqUfSJFEq8v7J/tieRgBJgftYwYOdWadrVUu5M8wdQ
	0JjDozSTFnpm7wDpX6+QATr2yYpz0rRxw8jf3Rwa51aiBB3SEO73UjJXZkB04prejyo85E74c8A2R
	MPdKUx3t7urxn+4/Ir98gG/z5o6povD/oRzg6+fNQSU9ZSCcdXi2ouyBeUju8x0SQWCtZ4LLOSsGJ
	7sMmvNjsZ1XxFX/qzSvrE/waVbBauPf2+intJqJllZIvivIMDbjs8RxWjaIvc+XIVSoimUVXl9/pr
	zA1PXg4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyINL-0006CT-7O; Thu, 15 Aug 2019 16:13:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyIN2-0006B8-Ny
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 16:13:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id z11so2705361wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 09:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lqiqYNpMEwE3vp9HpU1QGUTltN60oHlM1/c3puuxpJk=;
 b=eiC7bBGVZ39pEFW/EDFlf9ynLuq1YbN9SoqgXB+7p7+riposGCbB9b0vGUohZImO+8
 8PA6q0hgVUjO8eExZoXTf2qa7OVQjqKnCqtJk1+Wg15mclOqMrWU95i3XrPztxbcgkSK
 0yNTH4AujaQCyxFRKYxi4m1FaWoyuq80WCI2aDZfTVVuUXdkS2Nm36BHS3QwUTeT+WYu
 X9DUSGYRtYvZZcHDl8cAuLBS+6rsBHxvqn5e5A2zDNTXOfNs9uLGqYIlnSKfGwE5qnI/
 YM4so0pb9EOr8VI/v3l8hi8hDDjJkFbpEdW81efIx3VitriFyq3ov+x1pHA65G/rdi9F
 0GAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=lqiqYNpMEwE3vp9HpU1QGUTltN60oHlM1/c3puuxpJk=;
 b=HudH/f4YFvWOpy7mRrTI0EeSrApNkLYpO7YAIM/ZpdgYrrGJbom+a3R9OoA/uCHz1z
 1isnnE4GeL8gs/7RR0IhkPzJY14+gatyt9CPPieMT4j0TtSwm+grlfSqfOvcLPwwhrgx
 33CyAyEKwKqtxs26hTLwqs2Aec67dmY2BOKj/A9F3Vy0EVwiVjNymq0c9nWbUaxXhspk
 avyeD5Y0odV3EcZe/LXwxyaEQl2a7Z78svgX7LVbPnfaalsgyzBfOzS87u6sEvnCq0Di
 ZdvEq1B5CHWsEinbS/n9Cyh84Ss6AsCx7t02C8UlWo1FQ+mseUT7ripnwZWbn0Ic6Rue
 besQ==
X-Gm-Message-State: APjAAAVYvUY4m39qmIqwRk/kA8Vq3Zd6GwlH2IDomRDczABUjode9Bnv
 shYUw0j4F50K7tgP0Ij3lIX8Og==
X-Google-Smtp-Source: APXvYqyoeSWzfMHJxYuIR0JuauY1YoJyaqepJYnL78QPvsTh/t3747HGVi+MWLA6qCvGIC2pnXqVdA==
X-Received: by 2002:adf:e4c6:: with SMTP id v6mr5944264wrm.315.1565885572647; 
 Thu, 15 Aug 2019 09:12:52 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:d199:47e7:7c84:8d62?
 ([2a01:e34:ed2f:f020:d199:47e7:7c84:8d62])
 by smtp.googlemail.com with ESMTPSA id e4sm5392184wrh.39.2019.08.15.09.12.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 09:12:52 -0700 (PDT)
Subject: Re: [PATCH V5 5/5] arm64: dts: imx8mm: Enable cpu-idle driver
To: Anson.Huang@nxp.com, catalin.marinas@arm.com, will@kernel.org,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, tglx@linutronix.de, leonard.crestez@nxp.com,
 aisheng.dong@nxp.com, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 ccaione@baylibre.com, angus@akkea.ca, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20190710063056.35689-1-Anson.Huang@nxp.com>
 <20190710063056.35689-5-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <34c03d76-ae61-63b4-153f-3f9911cc962e@linaro.org>
Date: Thu, 15 Aug 2019 18:12:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190710063056.35689-5-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_091300_782853_50993060 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIEFuc29uLAoKc29ycnkgZm9yIHRoZSBsYXRlIHJldmlldywgSSd2ZSBiZWVuIHByZXR0eSBi
dXN5LgoKSWYgU2hhd24gaXMgb2ssIEkgY2FuIHBpY2sgdGhlIHBhdGNoZXMgMS00IGluIG15IHRy
ZWUgYW5kIHRoZW4gdGhpcyBvbmUKYWZ0ZXIgeW91IGZpeCB0aGUgY29tbWVudHMgYmVsb3cuCgpP
biAxMC8wNy8yMDE5IDA4OjMwLCBBbnNvbi5IdWFuZ0BueHAuY29tIHdyb3RlOgoKWyAuLi4gXQoK
PiArCQlpZGxlLXN0YXRlcyB7Cj4gKwkJCWVudHJ5LW1ldGhvZCA9ICJwc2NpIjsKPiArCj4gKwkJ
CWNwdV9zbGVlcF93YWl0OiBjcHUtc2xlZXAtd2FpdCB7CgpJcyB0aGF0IGEgcmV0ZW50aW9uIHN0
YXRlIG9yIGEgcG93ZXJkb3duPyBJdCBpcyBwcmVmZXJhYmxlIHRvIGNoYW5nZSB0aGUKbmFtZSB0
byB0aGUgaWRsZSBzdGF0ZSBuYW1pbmcgY29udmVudGlvbiBnaXZlbiBpbiB0aGUgUFNDSSBkb2N1
bWVudGF0aW9uClsxXSBwYWdlIDE2LTE3CgoKPiArCQkJCWNvbXBhdGlibGUgPSAiYXJtLGlkbGUt
c3RhdGUiOwo+ICsJCQkJYXJtLHBzY2ktc3VzcGVuZC1wYXJhbSA9IDwweDAwMTAwMzM+Owo+ICsJ
CQkJbG9jYWwtdGltZXItc3RvcDsKPiArCQkJCWVudHJ5LWxhdGVuY3ktdXMgPSA8MTAwMD47Cj4g
KwkJCQlleGl0LWxhdGVuY3ktdXMgPSA8NzAwPjsKPiArCQkJCW1pbi1yZXNpZGVuY3ktdXMgPSA8
MjcwMD47Cj4gKwkJCQl3YWtldXAtbGF0ZW5jeS11cyA9IDwxNTAwPjsKCkl0IGlzIHBvaW50bGVz
cyB0byBzcGVjaWZ5IHRoZSBlbnRyeSArIGV4aXQgKmFuZCogdGhlIHdha2V1cC1sYXRlbmN5IFsy
XS4KClRoYW5rcwoKICAtLSBEYW5pZWwKClsxXQpodHRwOi8vaW5mb2NlbnRlci5hcm0uY29tL2hl
bHAvdG9waWMvY29tLmFybS5kb2MuZGVuMDAyMmQvUG93ZXJfU3RhdGVfQ29vcmRpbmF0aW9uX0lu
dGVyZmFjZV9QRERfdjFfMV9ERU4wMDIyRC5wZGYKClsyXQpodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJz
L2NwdWlkbGUvZHRfaWRsZV9zdGF0ZXMuYyNuNDEKCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8u
b3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpG
b2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFj
ZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRw
Oi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
