Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2F5165EF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:37:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROo5apGlcV0JhjA0KSY7qpZTuKjPzcmqhtyejHzvs3Q=; b=dPCiBd/cT6EoYA
	NMFLKOfGfnye10yBxysbA20jRqsEU4y2TU4q+xH/HzOUu9a7bLzqyE5Addpvu/ZC4Pgjg3hONn7RS
	u3lGsMcrW3L/xUzFN4Yrfzw3qGu1uowklwMu2TdmxXu+JEhNHYBvBcUJ4crDvC5ZYbLZnpBQgR6e4
	SNts/lkAYRcQlbnCRD+LohdQIUOEWSky0cDx94AnYk90RAbO0Ye/VjnQUZ/WhEQYkOgqUHW1gKQD7
	k28eBc1Qf/8/WomH6+TfSmN9d42I7EKMf/o/9x09aD0RH6uW+XorwqHQrNosZs3BMdrWGFlOlXLXv
	aq87QR16MFyaTF99HjnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4m17-0001wx-R6; Thu, 20 Feb 2020 13:37:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4m0y-0001wM-7k
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:37:17 +0000
Received: by mail-wm1-x341.google.com with SMTP id a6so2074771wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 05:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=B4PLo7ULnoL8yyxNbBuvmhizTKdxVbJiDyyciEc36Lc=;
 b=qRt7DBLZBTVQjM1tmi4ELDLZ8ufVlBTbCqFqtzgJ9BHN030AEdAoh3uAIzOzj+XaUd
 qGcHTGaeJ7u4Pl392ptxOLZvSLUN/rNczq8f87EnApfyE1oEpsNf6NjIsXHqF5fGolJt
 QkIOU219N8LG8XCiKD7oZMb9rtkxOVG3H8u73O9Su5KwaQHYtYxU+uwx5d1PfHUk9kc5
 dy02FIlFosCGGi/uUmJmptrHNTYXjJqRw/xpzmM/yU0dNMmX7r9ys4t1FYLo2qQGTxo7
 lvREku+RWOMk7LtwEikUgSNvEUKxKzpKZdJ6jhDJXqKFqIdOkdeDSou4B6vHcWhVnOf8
 9tPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=B4PLo7ULnoL8yyxNbBuvmhizTKdxVbJiDyyciEc36Lc=;
 b=F4K5qsXAJsU1EZEMaSNrb0xq3fKW+SLsOCMusMOtZXNXbvPttsAqvPqNsD2vfqM2bS
 hG1zDxufXjIUNFbgpr+19DhNmWjZBgUutAqA1sZIElvzP3rrbn8Bksl+YAib0twxz60I
 LUWJj3VGvDus1EvqqNcqifxt+fCL2ssrQZ3uHfo82Bn4xAVAsYqPT48PmyTM8fjCaBMk
 E0EQUPRFyB9jejHr3AYcBkykVWb8dTQ+PHHsRkLwMvaURgucVrUQ/5Q0UGGgtr1/eOMl
 YXnX4VJ4C6xiLV1uUplsSD5+x85r0LS6IdPRtXDq2DcbzG1j8JT8LwkYMtPYN45gxuHK
 xjDA==
X-Gm-Message-State: APjAAAUUV4SGI8I23Rgr7LFqIXT7dP7jVCnDbS/FErHBS0eQJZiqGp+0
 ueT1b/iYYnwhamnqYqHAbrTzYuJSzEE=
X-Google-Smtp-Source: APXvYqxeEECe1zPsmH3M53hHGcqRTpW593ckp3/6EuRcU0KckGtsaWYA5KUQiu8gYOO5hhf+lwdcPg==
X-Received: by 2002:a05:600c:2c44:: with SMTP id
 r4mr4567137wmg.140.1582205833995; 
 Thu, 20 Feb 2020 05:37:13 -0800 (PST)
Received: from dell (89-145-231-170.xdsl.murphx.net. [89.145.231.170])
 by smtp.gmail.com with ESMTPSA id u14sm4551648wrm.51.2020.02.20.05.37.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 05:37:13 -0800 (PST)
Date: Thu, 20 Feb 2020 13:37:39 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v4 2/3] mfd: stm32: Add defines to be used for clkevent
 purpose
Message-ID: <20200220133739.GG3494@dell>
References: <20200217134546.14562-1-benjamin.gaignard@st.com>
 <20200217134546.14562-3-benjamin.gaignard@st.com>
 <e9f7eaac-5b61-1662-2ae1-924d126e6a97@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9f7eaac-5b61-1662-2ae1-924d126e6a97@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_053716_337051_4F96ADAB 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com, tglx@linutronix.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMCBGZWIgMjAyMCwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cgo+IAo+IEhpIExlZSwK
PiAKPiBPbiAxNy8wMi8yMDIwIDE0OjQ1LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+IEFk
ZCBkZWZpbmVzIHRvIGJlIGFibGUgdG8gZW5hYmxlL2NsZWFyIGlycSBhbmQgY29uZmlndXJlIG9u
ZSBzaG90IG1vZGUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxi
ZW5qYW1pbi5nYWlnbmFyZEBzdC5jb20+Cj4gCj4gQXJlIHlvdSBmaW5lIGlmIEkgcGljayB0aGlz
IHBhdGNoIHdpdGggdGhlIHNlcmllcz8KCkFja2VkLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0Bs
aW5hcm8ub3JnPgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVj
aG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBT
b0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
