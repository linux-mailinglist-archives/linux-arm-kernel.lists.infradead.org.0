Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045A733044
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 14:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpN+CvdIQhTeIKG/BJzmGUW74/bpcRmVJv0OOq4mOvk=; b=F2dGEsf9i/K/03
	KF16rRBYru0XRYQ9LrYYS70aRX3Qno5uYdlEq0zZR9biDVeoFYx8Bg3VQiPHg6QQ5LWi2gYu6kUwr
	RlV8P0Z/TDJR/lnEM+viTi9v6h2+uOJfzSQfNnpOUoOEJw6UtUqgxQ7tb+9N0TcOJSBkpC4OE8UHO
	M6yAZt1UJw7HyOW/10EuNZhOpXT18iMhuMXrSYjz98UTi6zw0bAmiXBQd3weXqMzQNygnJr/LPwIg
	76VIbCVz+86dEoLJYXGS5zdRqfqDcGJu017+O6YQcL4Po3a/CPQooDF7sbnLP52Kzshmjman267Ay
	RfDg3VH6LOOU0B2Y5DiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmRA-00024R-JA; Mon, 03 Jun 2019 12:51:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmQv-0001uv-QD
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 12:51:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so11938448wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 05:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=//w7+gj+YCDiu+XYzXGAs4FiXS8Xv1GRhPL3l2VNgxc=;
 b=d1v58q/uCf3MUTR2MqC3s9eMJ6xjMcdXls/4rxxjWfnPsGXyY4Oh9Q16bsIP9/yk18
 9kVqRMjUqUJSq494E58O4PMztOj6nGnTs8x7wOSHAd1uLg6w/pzX5zZeoXQ5u5QQb2/K
 ohNxBcFihEw2S5PRqEve+iNyVI5bq0+esUc4Hj+Um7CsBviClqxPqNqNC2vLP/hQKbGu
 GO8jx2Uv1hXWIzalLYoqMPDqPLYPipBCSsAHEyjq2XORdqlA6EXYshQWPmK8lmSp/Vz7
 1JVCtefAJTAirawUqRkhupQjFTUTvLZn29OBa8Q3OvJGnQY5t7yBHAfNxW+ZnYpvWzSC
 60rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=//w7+gj+YCDiu+XYzXGAs4FiXS8Xv1GRhPL3l2VNgxc=;
 b=rUsEzdgv4vX9+0OHLmgWOxT1jKrTcvAi6MBAYXVWGRAIwaNesFjkc5mFSnAPYNwtlP
 JzFCdP5/IBGPAs9MkV3APHZKCbYjZaETxrqCaJkE2qeNAPwEK+wpWpo0hkavTtE6X+AB
 mFzNbf7iiGnShmpWSoNFuakzDYnsk1f+zB7/nddnaNI3wmz6ys7sqFasZpjvz5YpLoLi
 TAlCRqHW4K0qikPWOVYPcLApmAx2LqNyIA822DVPRIVXrX3vBCcN+RqLwFa4Qb7wK1m2
 IIXcCdwwZV3nIfIurguJTJrz6VA5gxtmYnVZVdlVAyM2KawjHy2ns2Nh2S4rfKUMuHUs
 KcwQ==
X-Gm-Message-State: APjAAAUAYpdnzJT9zMS1qItnKShvyzxNf8UA4VYEhUsDZUefq2nmA8Km
 x/sC38b30yDY3Vz9DW3yryerZVPHTaw=
X-Google-Smtp-Source: APXvYqwt4p4CXCx33ofIHGNGomcbHc0cthxPBUVKD13CI3e/UHjwS1SDf6fhwySbFY2qv1grTUT3WA==
X-Received: by 2002:adf:9dd2:: with SMTP id q18mr13904358wre.50.1559566284361; 
 Mon, 03 Jun 2019 05:51:24 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id u205sm18229443wmu.47.2019.06.03.05.51.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 05:51:23 -0700 (PDT)
Date: Mon, 3 Jun 2019 13:51:22 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 3/3] mfd: bd718x7: Make power button press duration
 configurable
Message-ID: <20190603125122.GS4797@dell>
References: <cover.1558471150.git.leonard.crestez@nxp.com>
 <bada813d7c3818f86851e9a31b19a7251da441f5.1558471150.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bada813d7c3818f86851e9a31b19a7251da441f5.1558471150.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_055126_528318_B492272A 
X-CRM114-Status: GOOD (  11.62  )
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

T24gVHVlLCAyMSBNYXkgMjAxOSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgoKPiBBbGxvdyBvdmVy
d3JpdGluZyB0aGUgdmFsdWVzIGluIEJENzE4WFhfUkVHX1BXUk9OQ09ORklHMCBhbmQKPiBCRDcx
OFhYX1JFR19QV1JPTkNPTkZJRzEgdmlhIGRldmljZXRyZWUuIFJlYWQgdmFsdWVzIGluIG1pbGxp
c2Vjb25kcyBhbmQKPiBhdHRlbXB0IHRvIHJvdW5kIHRoZW0gdG8gc29tZXRoaW5nIHN1cHBvcnRl
ZCBieSB0aGUgaGFyZHdhcmUuCj4gCj4gS2VlcCBleGlzdGluZyB2YWx1ZXMgKGZyb20gYm9vdGxv
YWRlciBvciBPVFApIGlmIHByb3BlcnR5IGlzIG5vdAo+IHByZXNlbnQuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogTGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPiBSZXZpZXdl
ZC1CeTogTWF0dGkgVmFpdHRpbmVuIDxtYXR0aS52YWl0dGluZW5AZmkucm9obWV1cm9wZS5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL3JvaG0tYmQ3MTh4Ny5jIHwgNDIgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQyIGluc2VydGlvbnMo
KykKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNl
cnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJl
IGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
