Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5500105135
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 12:14:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yLdWLxLFhjHV0aVOHxIyXKAdu+1qlIzjtrIXqr9FB8=; b=r+YXLOBflYhr8F
	EOFcJG0UVF30t5FOjFpZv3zxiDYmb4IEd7/OkzvShJb91zWQG/u9C8ZKvDHkq59yaC7qp4D/4fRl8
	ROpXrjsv/XrepIO89wppzZdIsQVZy29Ol/hK3C2aoCxmh1xjqg9fVX+dujIlnH1TdeloaTjvCfz+k
	7BuX8IYEVN73qGUEo7aKaS0aCD7ll5+uvi8cucTJmvCGTzjUa81+DmFXR6rF5gX8gkkG/yIQ3NXo6
	cD0+8tnMWHecwvIdVcRNtFjTWqfHkr1IShgdZyeO344gNYUphh6tHLvvlMclu9oaRFDZQLTVLQKmw
	iyU8RArHbmXLtPhGZuZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXkQJ-0000xO-SU; Thu, 21 Nov 2019 11:14:55 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXkQB-0000wg-Fg
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 11:14:48 +0000
Received: by mail-wm1-x342.google.com with SMTP id t26so3208836wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 03:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+XKnyLW7EkXsYW0OJmmjEyRkfOHk15VlPRrsfW5K/GQ=;
 b=nGG0G4TDZ07B5ePVOevmNed8Et1MxEL8/RLS2CZCsI3i2+dw5ppqEaLBa0/XU+Hn9C
 vwj7h6rhsaO1fP/VpRHyiZxu97Qg7Vh8Lg/EV0EN7KDxAKyjscm+ivNN0nR7Hq16zlDn
 UxBoWD4TOdk0M0dAwS61sQJmIQr4v5mu4zt8bTficpjzxGVqXiRBHOdEECVs2cO2bVDP
 36MN5auC1PKorNXd5Acq/UTBB3TnKhvbn7UabyyG0Ba+D4jAN1F+LNccAFm7reJG7Psl
 OH1rlHrIR3vDmCqgS5mwQrmL4GtPN6vQkri9GRQD3LdnOClpiS3cx3C/O+NBui3nBRhs
 jNxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+XKnyLW7EkXsYW0OJmmjEyRkfOHk15VlPRrsfW5K/GQ=;
 b=r7dGSHsXOMWuWrhdBE9TtbHG2E4FK10FKaq21niT+wv9e/ONTmg8uUpY6vO0WTcDe3
 grPlEIvWjcuX1f3sI4VG9kk9e+qIqwMNqbXKSBOMQTFkwjgE/EzdsX9+BMqCSLzQcVmk
 u04hL6ATlmq+vKlozWq80LsteR5yfOJygnZtD5SLysyPgnQY7QHDKr9lJb/HD4quyF9s
 eoWJ1zflIrohpVOmEd3O2LfuXOtwBxFiUJ3tBAr3VZmBhdsJ43d1D7Al9a7IWz7SjiCh
 Pgfn6uajC+26YOdxOEFXDcZpr9Q4ScZEQsrNfW8wEj5RQlmIpyUyVzI6wDJ27enMvSg3
 cw3g==
X-Gm-Message-State: APjAAAWNz/C0CUtoNhA2sMp1fS03UAR6NLsM2vM9OL9yK4SJ7ae9Au9g
 10eLMBUglzUHRORqipTVzaDZkiTVqTbltl0B4C0=
X-Google-Smtp-Source: APXvYqy4gWhRFyEMy2eA/GJL+WSgZR1v22hDCvHKX8RxCdIYCTXzWX/G5nJmVbFrWcNa9M53KSqxoxL+RA6fDm/PDhg=
X-Received: by 2002:a1c:a512:: with SMTP id o18mr8822754wme.4.1574334885350;
 Thu, 21 Nov 2019 03:14:45 -0800 (PST)
MIME-Version: 1.0
References: <20191119175319.16561-1-peron.clem@gmail.com>
 <20191119175319.16561-5-peron.clem@gmail.com>
 <20191121072829.vitly7altcvlt4sj@pengutronix.de>
In-Reply-To: <20191121072829.vitly7altcvlt4sj@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 21 Nov 2019 12:14:34 +0100
Message-ID: <CAJiuCceMjLGsFW8sVsHO3iz+rOXpvGfSYUDDOsbhx3A159cZQg@mail.gmail.com>
Subject: Re: [PATCH v7 4/8] pwm: sun4i: Add an optional probe for bus clock
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_031447_546929_87A99B52 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gVGh1LCAyMSBOb3YgMjAxOSBhdCAwODoyOCwgVXdlIEtsZWluZS1Lw7ZuaWcK
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBIZWxsbyBDbMOpbWVu
dCwKPgo+IE9uIFR1ZSwgTm92IDE5LCAyMDE5IGF0IDA2OjUzOjE1UE0gKzAxMDAsIENsw6ltZW50
IFDDqXJvbiB3cm90ZToKPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBXZSdyZSBrZWVwaW5nIHRo
ZSBidXMgY2xvY2sgb24gZm9yIHRoZSBzYWtlIG9mIHNpbXBsaWNpdHkuCj4gPiArICAgICAgKiBB
Y3R1YWxseSBpdCBvbmx5IG5lZWRzIHRvIGJlIG9uIGZvciBoYXJkd2FyZSByZWdpc3RlciBhY2Nl
c3Nlcy4KPiA+ICsgICAgICAqLwo+ID4gKyAgICAgcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHB3
bS0+YnVzX2Nsayk7Cj4gPiArICAgICBpZiAocmV0KSB7Cj4gPiArICAgICAgICAgICAgIGRldl9l
cnIoJnBkZXYtPmRldiwgIkNhbm5vdCBwcmVwYXJlIGFuZCBlbmFibGUgYnVzX2Nsa1xuIik7Cj4K
PiBNYXliZSBhZGQgdGhlIGVycm9yIGNvZGUgdG8gdGhlIG1lc3NhZ2U/CgpPayBJIHdpbGwgY2hh
bmdlIGl0IGZvciB0aGUgcmVzZXQgY29udHJvbCBkZWFzc2VydCBpZiB5b3UgYWdyZWUuCgpDbGVt
ZW50Cgo+Cj4gQmVzdCByZWdhcmRzCj4gVXdlCj4KPiAtLQo+IFBlbmd1dHJvbml4IGUuSy4gICAg
ICAgICAgICAgICAgICAgICAgICAgICB8IFV3ZSBLbGVpbmUtS8O2bmlnICAgICAgICAgICAgfAo+
IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHBzOi8vd3d3
LnBlbmd1dHJvbml4LmRlLyB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
