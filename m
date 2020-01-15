Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415B113BA98
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:01:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqHBYp//q2aw/uwAcYfkvzGE8aNyeMtnWz4VpGUH0C0=; b=smpNvtJnYrXKHV
	9ExgwTMCoAJ6uG3R7qSljTBt+DUB5WPiBHTvjBsV7iftL34x/UkbOcklrxho7XlAkjMc0XdICUmm3
	SrNokY29LiQi0reIPe8bOWwMtye/kjVzHwKWeEMYOgYeoG4mrwY6/J1AUYNn+ZRRp4JJ6b8Xf+X4J
	nsyjJKxP21PdY8eEb+YgqB4OD8dJX1grXTtUNb3mx2P5PAyKA9Mu9/SUVWelCLHqB7jRn3YBfcs/C
	NkEpQG9QWhtAeUTE4H8zCKdC2TtxJISSwdjlo3fC5mBvOTSYzh4QhzLORnX1u66kNPhc0aCGP6XPQ
	NsHxpdAiLKHtwfV3Vy4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irdc3-0001Mq-V8; Wed, 15 Jan 2020 08:01:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irdbX-00010z-JI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 08:00:47 +0000
Received: by mail-wm1-x341.google.com with SMTP id t14so16670976wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 00:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=GYF/DnlQgs0gWW5ovHy/i9c/eiB+rqjkrsxQJeg0VgE=;
 b=OSL13EnCr58+/Jy2CAY7JUMNaer6GjpBYGtcO8Lm6VXlpX7/sjRVrcEpHJrWt3MXao
 sOMFij5RVNC/vB2rBhf2PpSRyBxSMMrVXFj/ZuClHUlB4zeP1xvKnpBMJjZC896upMDx
 pdMzyIjLqI6TXr0D0N+3qK7bLO6rmMZMg3o2Ovle3wcyv6xSRPfnKDapqr2oaN79UNuR
 lo15fKsiOQxDn8My+q+RIDFTY9EPZKyvD/DS6s2dTp5oREvoBEelzwmPJMimNa345pSS
 C4ytCDLYb5xpLNle2SWtZzbMuemq3sDt77k7Y2QN63t/r5djh4IpdruTiVp5w58ZOp82
 GX+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=GYF/DnlQgs0gWW5ovHy/i9c/eiB+rqjkrsxQJeg0VgE=;
 b=eKnIyScG4VYGeEyMD0nuoqKKy1vWhz0lJ3bJCMxWBulucdQpKQtUzzlGDWtP5+6w3Y
 hddlHOFPr7o1XaFRdw83I/XHRwOZb2EKeQgzr/uGTs+J6160Irsp9wHhKM3kMT23lUlt
 HnKVFo4Zs9Z++qxSug4EeT3NhG1tfNwVie8Sr+/g8LjleUtwNhqcpwhrBWk7YHjWgMgt
 aUBtNT6FUDskWFJbopJd4ansYtN7rTVJJVv+dfXpAyyc5ZY0AqSDP6wjrX7OUqkFlkiO
 gDr/h7+HUSzD4/IGQEhCKszAVDL6S1nXzbP0xwSIOxBuz9nZ5XG7BUAmPlE+SyH3ohtR
 IEOA==
X-Gm-Message-State: APjAAAVFv/n/WL0dwu8YNZRGyS9mCjaJGMvVMynh5lmzchbQNUrUy/E2
 KfwHq5qDj00AfxkJ3hXqWYgdJg==
X-Google-Smtp-Source: APXvYqxVBHePDZFSLFy/b/HLtH4cLhZKLLeFdGF56PzZlj4pOAw+avsLwlunjnJ0XyKdMeObyl6u5A==
X-Received: by 2002:a1c:3dd5:: with SMTP id k204mr31244611wma.92.1579075241550; 
 Wed, 15 Jan 2020 00:00:41 -0800 (PST)
Received: from dell ([2.27.35.221])
 by smtp.gmail.com with ESMTPSA id w13sm23148601wru.38.2020.01.15.00.00.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 00:00:40 -0800 (PST)
Date: Wed, 15 Jan 2020 08:00:53 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v2 10/17] dt-bindings: atmel-smc: add microchip,sam9x60-smc
Message-ID: <20200115080053.GC325@dell>
References: <1578673089-3484-1-git-send-email-claudiu.beznea@microchip.com>
 <1578673089-3484-11-git-send-email-claudiu.beznea@microchip.com>
 <20200114095538.GJ3137@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114095538.GJ3137@piout.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_000043_640939_33D77E7D 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, vigneshr@ti.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, pmeerw@pmeerw.net,
 miquel.raynal@bootlin.com, linux-rtc@vger.kernel.org, lars@metafoo.de,
 richard@nod.at, ludovic.desroches@microchip.com, wg@grandegger.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 tudor.ambarus@microchip.com, radu_nicolae.pirea@upb.ro,
 linux-can@vger.kernel.org, robh+dt@kernel.org, mkl@pengutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, a.zummo@towertech.it,
 richard.genoud@gmail.com, linux-spi@vger.kernel.org, vkoul@kernel.org,
 knaack.h@gmx.de, dmaengine@vger.kernel.org, eugen.hristev@microchip.com,
 Claudiu Beznea <claudiu.beznea@microchip.com>, jic23@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxNCBKYW4gMjAyMCwgQWxleGFuZHJlIEJlbGxvbmkgd3JvdGU6Cgo+IE9uIDEwLzAx
LzIwMjAgMTg6MTg6MDIrMDIwMCwgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cj4gPiBBZGQgbWljcm9j
aGlwLHNhbTl4NjAtc21jIHRvIERUIGJpbmRpbmdzIGRvY3VtZW50YXRpb24uCj4gPiAKPiA+IFNp
Z25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYUBtaWNyb2NoaXAuY29t
Pgo+ID4gLS0tCj4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9hdG1l
bC1zbWMudHh0IHwgMSArCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gQXBw
bGllZCwgdGhhbmtzLgoKUmVtaW5kIG1lIHdoeSB5b3UgYXJlIGFwcGx5aW5nIHRoaXMgcGF0Y2gg
cGxlYXNlPwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5p
Y2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0Nz
CkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
