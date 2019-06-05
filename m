Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD68A36392
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 20:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XtlLFFxxnhpiH3Nk8L2gHtpYQVmw3yj/81k3J9pp10=; b=Anws2TOt7GGggi
	Sql7o2TFgbB3J+Y8vGnAdrzymz5CUJIeN4C5zqTfs8pVjtGxdbTA/chTwJ5JEhDB3B4O0T6FiY8fg
	N/Reohojx7rbpveyJItpvrs9ny/5rFJ6P0T9L50wdhG5JZ+FHS6vYyzvE2XsFzHYNxoJLb1ByRlg0
	qY1bl2aFR/mnP77RhQiNUEaBifmPs59Z+QYp3YaMxCAA7MFRlroNMVLBTcoJFvEG0scAZXV5B20sn
	vf228TO1uEN0W+JNlxhhZaA2rMXUpQUFNVRRqNd+ieadhVI9HLCQdZTBO+WoGfEAvUAa2By9Nv+/r
	LAVNCTf1bK9aPXLIOoPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYayx-0006Pd-Ox; Wed, 05 Jun 2019 18:49:55 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYayq-0006Og-SX
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 18:49:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so5816447wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 11:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Fydr1IvWkVkzid+Y2c9d9epjwSMwkXEoLpbPP3duu6g=;
 b=zEJKSGDwkWmja24SuoSG0/GhNWhVB0NTB6KUOwzuixKacNH1MkdRfN4Ngt3y+WLMIp
 aCslUK4+4CF+ThC7NaOvB/iDkL+mdKF6ADpoMFuAacdi1GWjlNthODar6mzp5s+624B5
 UJxRnfUVEAxMSwmyYJvZWzclwt4g+PnBkt8sLzIAHMbxtMLHqQiY6NU+d8LrhQvVXGml
 InXoilY3MNIXL9EzadAwsfRDIGqwassxHYJwNfyYYXvWUMW2oXkckkCbkK5YhyKnWT2j
 nj3kMf+BfiOEdBPcsCKgoq4ReonBmf6RqnkNxEt7WGQlzJnjd7cQcqo51U0stqXCzCSg
 mc4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Fydr1IvWkVkzid+Y2c9d9epjwSMwkXEoLpbPP3duu6g=;
 b=Tx2p5mfleOwD07ar2/3JvjoBGCdPwW2K0/AHG1V1tsq+r8zpcYajQ8tCr1cYf7O39G
 DkmqJr15RXsTgmj1iVnizBxKxzR1lvdFzdJr21vStUIa/iax4OYNNylSfrzP37iuLLgL
 rAJCNwQkrLqLRv7kWsXgWbhvocl9uhOi5hBaVVKBrAo2FjH0ytq22g4KG1h9M9wRqLNB
 nYMTAZNddHPMpClu2vGsgvGvWbBk+8FugIadJBH0X187X1IB8ky6AOxbcUzExIr2ponM
 H0Rg13mp7sGhw5CUa2iD70Znd5nVVne1jI7etenbX6e+mVIQ7/Jqea7vBu3tay8TL3P5
 fdOQ==
X-Gm-Message-State: APjAAAXVbljqUvUQkrPdr5Kcz4Dvt+oGz2hDd2QYOME8Sz/HnjpCappa
 PeCNUmXsnepJ1gBGImK4ipBAbQ==
X-Google-Smtp-Source: APXvYqw+35EWc3ZT4bKVc2X4aWO6Q+WjMsFs/vEImJQxHpwstz9A3Ta5/2macrjRvIUbwUzb8lHfGA==
X-Received: by 2002:adf:ea92:: with SMTP id s18mr3874120wrm.257.1559760583946; 
 Wed, 05 Jun 2019 11:49:43 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id h200sm29965448wme.11.2019.06.05.11.49.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 11:49:43 -0700 (PDT)
Date: Wed, 5 Jun 2019 19:49:41 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190605184941.GU4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
 <20190605062020.GL22737@tuxbook-pro> <20190605071625.GK4797@dell>
 <20190605075656.GC29637@localhost> <20190605082047.GM4797@dell>
 <20190605083353.GD29637@localhost> <20190605084921.GQ4797@dell>
 <20190605085527.GE29637@localhost> <20190605141812.GA962@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605141812.GA962@kunai>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_114948_940853_34785B17 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, balbi@kernel.org,
 david.brown@linaro.org, gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, wsa+renesas@sang-engineering.com,
 alokc@codeaurora.org, kramasub@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNSBKdW4gMjAxOSwgV29sZnJhbSBTYW5nIHdyb3RlOgoKPiAKPiA+IFRvIGVuYWJs
ZSBkeW5hbWljIGRlYnVnZ2luZyBpbiBkcml2ZXIgY29yZSB5b3UgY291bGQgdXNlIHNvbWV0aGlu
ZyBsaWtlCj4gPiAKPiA+IAlDT05GSUdfQ01ETElORT0iZHluZGJnPVwiZnVuYyByZWFsbHlfcHJv
YmUgPXBcIiIKPiA+IAo+ID4gVGhhdCBnaXZlcyB5b3UgdHdvIHByaW50b3V0cyBwZXIgc3VjY2Vz
c2Z1bCBwcm9iZSwgZm9yIGV4YW1wbGU6Cj4gPiAKPiA+IAlidXM6ICd1c2Itc2VyaWFsJzogcmVh
bGx5X3Byb2JlOiBwcm9iaW5nIGRyaXZlciBlZGdlcG9ydF90aV8xIHdpdGggZGV2aWNlIHR0eVVT
QjAKPiA+IAlidXM6ICd1c2Itc2VyaWFsJzogcmVhbGx5X3Byb2JlOiBib3VuZCBkZXZpY2UgdHR5
VVNCMCB0byBkcml2ZXIgZWRnZXBvcnRfdGlfMQo+IAo+IEkgYWdyZWUgdGhhdCB0aGlzIHNjYWxl
cyBtdWNoIGJldHRlciB0aGFuIGFkZGluZyBzdHJpbmdzIHRvIGV2ZXJ5Cj4gZHJpdmVyLiBBbHNv
LCB0aGUgZHJpdmVyIGNvcmUgd2lsbCByZXBvcnQgZmFpbGVkIHByb2JlcyBvdGhlciB0aGFuCj4g
LUVOT0RFViwgb3I/Cj4gCj4gUmVnYXJkaW5nIHRoaXMgcGF0Y2gsIGhvd2V2ZXIsIEkgZG9uJ3Qg
Y2FyZSBtdWNoLiBJJ2xsIGxldCB0aGUgZHJpdmVyCj4gbWFpbnRhaW5lcnMgZGVjaWRlLgoKSSd2
ZSBkb3duZ3JhZGVkIHRoaXMgdG8gZGV2X2RiZygpIGluIHYyLgoKLS0gCkxlZSBKb25lcyBb5p2O
55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwg
VHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
