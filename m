Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5CD89F97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 15:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7FkNOTuvs7kVB6WbZOmhvtd10CNoBk4V1qJI1x09ws=; b=tyQIMZ9BvwaDEp
	E+MjyKKjaLjnhjXngUeJ9PfMUmq6Kxlfj+/ucH15Npi83a3peFkA/j3UxFRsONyUvWdOLdxd6R6mq
	C860AfPPykEnZHj9sS1umV+TMCMyDoIiLa+b7Ypu75cfijzpJA+4l//Xvb4hwgBRtJeZgDUFAjnar
	t1nGJjI6KuEO4f+m7dh8Q2d1qM4DDDE7v/XaPRQMFcn9lUcre5V5YKAbEeOYGaOJ11eXJvdPrB73d
	CU3UfwYLgJ7EuFrgPWW5zvzbALDMv7Yblc2hhdmZfxGaZM2TaPsTkv+S9gNNqNLSu1u4FJSSpu5tm
	thfaQSHg1j5m9Wi+ebRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxAJ6-0005sS-HF; Mon, 12 Aug 2019 13:24:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxAIt-0005qT-H1
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 13:24:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id r1so5455060wrl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 06:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=nC0XBOiWbAbQwJIvttLNUSDXZEWVPgrZEH9kYI4ESEg=;
 b=KdowPy/ZBvnwn/HSU7gjkVq9UrYpR3h4Rz7yrxwQA3ohuwT4La1YEbafzwTQiyGbB3
 6QonaqtKmwTvQvVAkUuXqhFlDfDjkaXKQ7zpwE7eGxhuj1ceYyytsva8K5UQ8S9Sxa1l
 0Y1oon8rOVVaf+boODQgVUswo8xgye+BoTn+yDsiXWTW/NS6IQsn/plpM4JQaaNP4O6B
 TqZTxR3XHrKVwJXd9XdY0hqFqBNW8M1q45w82I966F/alSFqF39B+Nsz1nWQEnNynAc4
 A2YNPddK8smYE3BcVulLdkdiz+QMZyywgQdjm7O4meR9DNvs9jp6Y3XjTE1cuP7rEBBJ
 1TgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=nC0XBOiWbAbQwJIvttLNUSDXZEWVPgrZEH9kYI4ESEg=;
 b=T3imkawl3iDiiaP83e3jaaTDaJTM7kxpeFlNlHaAsGPXDzj6SjqBGPTF+8TayS8Kjm
 wAg9EqucWU52+uMbWpaGdVqJ7/zyDzka9LVkURYjN4x6Ah2B/VjdLGVO1HvbgxAPhwMW
 LCD3Ys41KdiAas7AOdwLzMGhjpg+eJLi1/OMsB2p6exxqQn/7oRivPFCDJBGZ5CFYes+
 J6aXhX0+v0RthspIB1oEUWFlnGq3l1/cZ5P2vN5VDSLCxFicIMNO4mMPqIsjf20ODihH
 LZSt24A7u6v6EQ2d+Cw5KPAdCc5pelFCs3XnhmVgzO4vT+UiRdcu1uTJ78+1cxSwxJMc
 r//A==
X-Gm-Message-State: APjAAAWVhFqqZ5IoYKsFgsdjPCYIk4vPWBXygqxbFyznUqajclxtfhPS
 OP6BCP7vgGNSDfpJ0vKSMHneTA==
X-Google-Smtp-Source: APXvYqzLO2AY4MikUonMGWLbUw1cnzGTo7DsP/PsiUuAIcFjooUQxIKV9Ku81rDgvyEOx2q7Cg6gpA==
X-Received: by 2002:adf:8364:: with SMTP id 91mr40735060wrd.13.1565616239967; 
 Mon, 12 Aug 2019 06:23:59 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id g7sm25060681wmg.8.2019.08.12.06.23.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 06:23:59 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:23:57 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v5 08/10] power: reset: add driver for mt6323 poweroff
Message-ID: <20190812132357.GU26727@dell>
References: <20190812121511.4169-1-frank-w@public-files.de>
 <20190812121511.4169-9-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812121511.4169-9-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_062403_580854_7CAA18DB 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Allison Randal <allison@lohutok.net>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 "Tianping . Fang" <tianping.fang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxMiBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gYWRkIHBvd2Vyb2ZmIGRyaXZl
ciBmb3IgbXQ2MzIzIGFuZCBtYWtlIE1ha2VmaWxlIGFuZCBLY29uZmlnLUVudHJpZXMKPiAKPiBT
dWdnZXN0ZWQtYnk6IEZyYW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+
IFNpZ25lZC1vZmYtYnk6IEpvc2VmIEZyaWVkbCA8am9zZWYuZnJpZWRsQHNwZWVkLmF0Pgo+IFNp
Z25lZC1vZmYtYnk6IEZyYW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+
IC0tLQo+IGNoYW5nZXMgc2luY2UgdjQ6IG5vbmUKPiBjaGFuZ2VzIHNpbmNlIHYzOiBub25lCj4g
Y2hhbmdlcyBzaW5jZSB2Mjogbm9uZSAoPXYyIHBhcnQgNSkKPiAtLS0KPiAgZHJpdmVycy9wb3dl
ci9yZXNldC9LY29uZmlnICAgICAgICAgICB8IDEwICsrKwo+ICBkcml2ZXJzL3Bvd2VyL3Jlc2V0
L01ha2VmaWxlICAgICAgICAgIHwgIDEgKwo+ICBkcml2ZXJzL3Bvd2VyL3Jlc2V0L210NjMyMy1w
b3dlcm9mZi5jIHwgOTcgKysrKysrKysrKysrKysrKysrKysrKysrKysrCgo+ICBpbmNsdWRlL2xp
bnV4L21mZC9tdDYzOTcvY29yZS5oICAgICAgIHwgIDIgKwoKVGhpcyBsb29rcyBsaWtlIGFuIHVu
cmVsYXRlZCBjaGFuZ2UuCgpQbGVhc2Ugc2VwYXJhdGUgaXQgb3V0LgoKLS0gCkxlZSBKb25lcyBb
5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29r
IHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
