Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFDE33042
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 14:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxQtsfhM+nZma3L9rrbtUge4GAHJecYCiEOVs4QER1I=; b=SQma/ZTM20Z0W5
	6pkfai2vtzYthsctId4shvIPOnO4S1sWUIXGK8tRfbTuqNYfb4LW7uXugDnRCjs+qyIy6bjJwVODz
	J5RwkZ7KG4ggGzBK+4OsS5wPkQitFDgHzgJaM1ymexrGm+2rn+9yxEQk80yzCjumanPfLlGYH9fwx
	2e/f3/MEWxHFyFuxPJKGYGXLpWZpWEl8hzfCqHm6b7P4xqL+J/eTwxjnidXXnCN7Bs9Rp1hI9sGtw
	47IaPE3zcVbB5AQM84elukmWZlkkZTydHTmAhgDxbiC36hc5TdIWTptOh6m8tVUYjnaZmidXJIC/l
	AQPsG2VUdzL9I9e76mdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmQv-0001mZ-TS; Mon, 03 Jun 2019 12:51:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmQm-0001id-Pu
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 12:51:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id d9so11978654wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 05:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=jsMpxnqxK8frZSqOrZD/0A+WkhLEqjBJFcI4ZCeL/uE=;
 b=QXvIEbwvXMSNRkFIA1bzr81r5XRK8mXQYXcseYCsjIi650V5P3SXLV6GmzUwmCwnjv
 mYqOt6pIeOHAz2xqnc//RA/oBLKeLWF+5a200r5Nu096DVXTO7um/VkBmjo/3SVDOgir
 SZEd1cVW/qwD6p2yh3PpLBDmr5aZZmscP944jA3+qiNmkuXu7oJngHiXepBZmPSdQZpa
 00LEU05fgMj0UurQaXmTmiwT2yHhvblhOUxQwHML8mNuosAM2Ezw068KZXWRxTNbdvJH
 3ht9C1/ox4EiUZN/cSE8izoRsv6gSGtuKQPZB3D5JOCUOIRL4g551/lI0mYjjLVLu9Fv
 l+Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=jsMpxnqxK8frZSqOrZD/0A+WkhLEqjBJFcI4ZCeL/uE=;
 b=KOndqgS9DccvBio8BVE+O5uzm743U0IRSa+nqe0KBJ9/l/TDIJ0giUCs4lYo0MXFVd
 DXUP1Wwrzn/dibnL55WCalPtJsplHzjQ3u6ymDMVWt3PE0LQYnKfT8Z1Rm7PEaIwn0mG
 g1AarKnFTFMwk/r26Zu4VcjFAE4CVFGbHLNq2LV6TYHeZ4xm9hdTbDxopybiJU2jBDee
 axhCJsEDG8doSxuw6AEsHqBQLpHKaKTvJnm4Wk0t46EeXGLDjVHvIvM/4RPMWPNVXb+P
 f+4x+IZUgqJQ9aZm+0qIVRJFv/tTXlm1xXeH3YHQ2K7ZAWP4xXZLWzCP8MDohlnwwo1c
 0P9A==
X-Gm-Message-State: APjAAAVenKNnKMVuzs87heP1jZHp8iOriWOj2VlUqGqLXavt1ChTwphU
 FR8HzeV55hskgyio9AvT1quPqg==
X-Google-Smtp-Source: APXvYqwgspWNVyd0zuHg0777mfe9qEOYJ3e6u6KyKlLbsJhZC803m2nAN6HWXS6QNEHARnqbL9DtCg==
X-Received: by 2002:a5d:6748:: with SMTP id l8mr16423743wrw.199.1559566275338; 
 Mon, 03 Jun 2019 05:51:15 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id r9sm15180030wrq.0.2019.06.03.05.51.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 05:51:14 -0700 (PDT)
Date: Mon, 3 Jun 2019 13:51:13 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: mfd: Document short/long press
 duration for bd718x7
Message-ID: <20190603125112.GR4797@dell>
References: <cover.1558471150.git.leonard.crestez@nxp.com>
 <ec750ff0021c942b3c477e1cc7dc35f957600c96.1558471150.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec750ff0021c942b3c477e1cc7dc35f957600c96.1558471150.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_055116_854712_2B5F57D5 
X-CRM114-Status: GOOD (  10.33  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Angus Ainslie <angus@akkea.ca>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMSBNYXkgMjAxOSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgoKPiBUaGVzZSB2YWx1
ZXMgY2FuIGJlIG92ZXJ3cml0dGVuIGF0IHByb2JlIHRpbWUuCj4gCj4gU2lnbmVkLW9mZi1ieTog
TGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPiBBY2tlZC1CeTogTWF0
dGkgVmFpdHRpbmVuIDxtYXR0aS52YWl0dGluZW5AZmkucm9obWV1cm9wZS5jb20+Cj4gLS0tCj4g
IC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2htLGJkNzE4MzctcG1pYy50eHQgICAgICAg
ICB8IDggKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKQXBwbGll
ZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVj
aG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBT
b0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
