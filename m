Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFCF120F1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwGNzgOTU7rbAJxThrJ0brvChQsDmw6IBenYpHX00c8=; b=edINlMwhsr6Rxx
	Qz3MO12AMFLzDgqdFX2spmn9I1Q2Dqwo5kZDb6c0wc+BZgAP5YuHX9gxSBZxsjSyjPNnI6T3MUGxD
	FnIYd1yVXPwsMlW7QcuHIvA065m8FfGh2Riwt3dv4UoEoXbdJT4DHRbh8Fn0hJFuq14GqDZ731Sjz
	McQvgPy7IoXxyKKwymgEWwO/XjT58M2egYG0zzFSVepWsy+yHkTJAKsik1JA1B/L7f8VHlDcjH6WS
	GwL7CqdzAM6qbHTfV4IGk6GolbdHo5q3HjZpjquI2BAlm29muxTgnafpNw8geooMlVQ3m4dHS0iM5
	hqP642DtlVWZxCVM9cqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igt4G-0006zt-ES; Mon, 16 Dec 2019 16:17:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igt3Z-00065h-76
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:17:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so7981730wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 08:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=r3ZGFYVqEiHwYj/KwvD5Pu4+HTWz/KZ7Kiw/TxOn57I=;
 b=xbo/lwqOQy1FS7C+xsYSQcx5bgukzpffD2E22Gt2BGvjQIeMuv0YnpsfV8OlRk/c1l
 lUKBWCY89izvWtL2Li/GnK0jVcO43iIwYYs7qsAzvTxsADEWbW5yYZuEXMIdfm5DnExM
 6ri7EUiveI2iMptBammNBQI0/nmcfXVf8XIQsxCicVH0cGr6cXIuPfgCiyMeQaR90EL7
 2d82MtLPM7zZVM6FQil0MXXwM5f3v8ZfrSNnmcM8mRYr4i/VDi8V5yG9NbnIq5WJCi6J
 KWa06ztKcC9ETLPv7kwKNtrvE+Viu0W+R8Rd01swoaBcJYuP1tDb4BAHg0LrheAsUksJ
 4keA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=r3ZGFYVqEiHwYj/KwvD5Pu4+HTWz/KZ7Kiw/TxOn57I=;
 b=OY7mTzU3SOi7EXgLTymIipNe05XwJT8sM7Mmw4JWDR42/MdJhbSg3DohX0e7VxRcwt
 zlR9rrkQcRBjAtGQkrQEMFHVni/HNIDEJ7Xk1nIxCQ5skpayayiwMAr/BeR6ufc+IHEJ
 Nh0AUw+BM3WO/mHsSaA/bJRsVLaVHzRHUh+aZPRszf+P820/7JmwM0SsA5OAz3PTaDvj
 cGDSAN2hNWThDF6AcMjNFGNvoCJNnsYZCPibnnI65UQ9Z1uO7lpKlG/LnesRFEUcRrAj
 DMfkk6kffM2ESbMB6ZWwox+fiXMZV0990/Tvea9Y/Vw0PCvPWmWByDPGvu7qoZtQzqwl
 o4HA==
X-Gm-Message-State: APjAAAX6afTaf88XVoDTlhZd4ArUdV+DMO2M68rnpozEaP+yDGgdqhhY
 027bavZQBEfy0dL8sF0UNoXKTA==
X-Google-Smtp-Source: APXvYqziVssigAv2YlptZeqjNq6fPlpxFmzjNGrhVJGnWBGQLzm5s6+4MSYn72RUTN5cM6L52pW9eQ==
X-Received: by 2002:adf:dfd2:: with SMTP id q18mr31049989wrn.152.1576513031335; 
 Mon, 16 Dec 2019 08:17:11 -0800 (PST)
Received: from dell ([185.17.149.202])
 by smtp.gmail.com with ESMTPSA id o66sm18121839wmo.20.2019.12.16.08.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 08:17:10 -0800 (PST)
Date: Mon, 16 Dec 2019 16:17:10 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 3/6] mfd: atmel-hlcdc: add struct device member to
 struct atmel_hlcdc_regmap
Message-ID: <20191216161710.GO2369@dell>
References: <1576249496-4849-1-git-send-email-claudiu.beznea@microchip.com>
 <1576249496-4849-4-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576249496-4849-4-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_081713_299510_6DA57558 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: alexandre.belloni@bootlin.com, bbrezillon@kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, daniel@ffwll.ch, sam@ravnborg.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxMyBEZWMgMjAxOSwgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cgo+IEFkZCBzdHJ1Y3Qg
ZGV2aWNlIG1lbWJlciB0byBzdHJ1Y3QgYXRtZWxfaGxjZGNfcmVnbWFwIHRvIGJlCj4gYWJsZSB0
byB1c2UgZGV2XyooKSBzcGVjaWZpYyBsb2dnaW5nIGZ1bmN0aW9ucy4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBDbGF1ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWFAbWljcm9jaGlwLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9tZmQvYXRtZWwtaGxjZGMuYyB8IDMgKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKykKCkZvciBteSBvd24gcmVmZXJlbmNlOgogIEFja2VkLWZvci1NRkQtYnk6
IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzm
lq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNv
dXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0
dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
