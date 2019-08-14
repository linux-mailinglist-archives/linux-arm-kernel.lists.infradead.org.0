Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3588CE98
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGTOV8Ida6C8Hno6h2aCvnnW+mwN7cHDridFRdCf+4g=; b=ggnCmi4XvopfsR
	FtVhuG1Z3chNQU5UXS0EZ8AjENKYt1t0tk9D5AimdtYkQ+IX06frtTvAYfZibg4XfQ23B2vMUyDlH
	YYCJq4DK4T3YXp8j+mmls9n/q7O851sSZdfRGmJrKZjEx8k+xJXYfjPKJb/MTVgHG/niKKcmVVjcO
	g1SVVuRcxZBoSV0xEY6MGQMtyHnRhMvdUunWr8aZe2n42nPYH/V9fcRTfq7YCyWs1onJaFp16xDMR
	y1AxFjh/RiqbWOYc27EFtLnbmms6f5Wmx8H6iaJzwGkByseJ6gYK7FQ4OpFDjyTqsY8/Nzx/ymyUK
	UH01Li7EHlGCGifR//iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxolg-0007aQ-0V; Wed, 14 Aug 2019 08:36:28 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxolS-0007Zv-D4
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:36:15 +0000
Received: by mail-lf1-x141.google.com with SMTP id x3so24969703lfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 01:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9m/ClKWZBZ4cKiuiDXlzmOAFeeYlFwcr35QV9Gd9YOo=;
 b=lQCO0wdj4cBFymMjPac0TynRfsXFyNg+5yMGu9feG0KP+a+4yM8+eM1GfChG8bkqS8
 05JUSJJ88TvTBcqRbNosmozevJ/uITH1hLF7YI+YkMwa9/ScmTrCq2YNeJ19lCyikFfn
 tMEf3nfpQhwXTU6RRxbsZahJdyuPCNibAKpol0j247AOOgoch4G85EQ5whTQ5eIM18mv
 3cYYVZGdbgWLw1FISkT4XIy37uU2dIJI8SVzU1cBeNEELWQ13/oNRMPTK+/BMtxO65m9
 15l4ZrXz4powXzJMgqlbddMyAVwOYPN9jEU0duoewvy83pwOvWWDd0wNzuySdh3ooTpX
 PkOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9m/ClKWZBZ4cKiuiDXlzmOAFeeYlFwcr35QV9Gd9YOo=;
 b=TL9KmZsph3lQ1JiqTMsKXkFNj08xFoyYJ73/dd2ZrEIqJ/v6zTTy25CfGFP0dqGYt1
 7BA9GRLxXHsMsicvRiV7sr7z11oTFIidVYhG9ngl15QiBAW7dRcdReOKYoJ8WzzL6xYO
 Ss61Z5z2Unpnt27xcwiKwt7KDyQFI9LoQgijyQpcyRj5ppI2V70TQ9Fg3C3KqFTjbvtW
 y0jxjaTvZFciIhilH6Pc2RpZQSCVOWcI0LLElPchfpWSAOu4X/HRpQ1TxZbv0RarRe5J
 wGsFXw2hVYsd7JVgA2uLomBYOSWfMDGk/gp37J1molM8TQirgupahklEU2JmGmGBb/wI
 j/dQ==
X-Gm-Message-State: APjAAAXJ6gJTzC9L43D50V+VY3BHEZ2UxHV4JOCtYBfeSAZeBon4Z31Q
 UhWh6i2IJsv6+/iy93Cv/7GCy931rmm1UMYk+QLw3Q==
X-Google-Smtp-Source: APXvYqznbmtSAAQS/LW5nR9i4yrmWUGYLkBCD0/kjsmr5yLyxGjMyWL3WMpAlXpxiLeD6i4k4a5/J5sHITEp2/ghPp4=
X-Received: by 2002:a19:ed11:: with SMTP id y17mr24953593lfy.141.1565771772948; 
 Wed, 14 Aug 2019 01:36:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
 <CAA9_cmdDbBm0ookyqGJMcyLVFHkYHuR3mEeawQKS2UqYJoWWaQ@mail.gmail.com>
 <20190812094456.GI10598@jirafa.cyrius.com>
In-Reply-To: <20190812094456.GI10598@jirafa.cyrius.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 14 Aug 2019 10:36:01 +0200
Message-ID: <CACRpkdao8LF8g5qi_h+9BT9cHwmB4OadabkdGfP0sEFeLbmiLw@mail.gmail.com>
Subject: Re: [PATCH 1/7] [RFC] ARM: remove Intel iop33x and iop13xx support
To: Martin Michlmayr <tbm@cyrius.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_013614_449569_A08CDB86 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peter Teichmann <lists@peter-teichmann.de>, Arnd Bergmann <arnd@arndb.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 linux-i2c <linux-i2c@vger.kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMTE6NDUgQU0gTWFydGluIE1pY2hsbWF5ciA8dGJtQGN5
cml1cy5jb20+IHdyb3RlOgoKPiBBcyBBcm5kIHBvaW50cyBvdXQsIERlYmlhbiB1c2VkIHRvIGhh
dmUgc3VwcG9ydCBmb3IgdmFyaW91cyBpb3AzMngKPiBkZXZpY2VzLiAgV2hpbGUgRGViaWFuIGhh
c24ndCBzdXBwb3J0ZWQgaW9wMzJ4IGluIGEgbnVtYmVyIG9mIHllYXJzLAo+IHRoZXNlIGRldmlj
ZXMgYXJlIHN0aWxsIHVzYWJsZSBhbmQgaW4gdXNlIChSTUsgYmVpbmcgYSBwcmltZSBleGFtcGxl
KS4KCkkgc3VwcG9zZSBpdCBjb3VsZCBiZSBhIGdvb2QgaWRlYSB0byBhZGQgc3VwcG9ydCBmb3Ig
aW9wMzJ4IHRvCk9wZW5XcnQgYW5kL29yIE9wZW5FbWJlZGRlZCwgYm90aCBvZiB3aGljaCBzdXBw
b3J0IHNvbWUKcHJldHR5IGNvbnN0cmFpbmVkIHN5c3RlbXMuIEkgYW0gcGVyc29uYWxseSB1c2lu
ZyB0aGVzZQpkaXN0cmlidXRpb25zIHRvIHN1cHBvcnQgZWxkZXIgQVJNIGhhcmR3YXJlIHRoZXNl
IGRheXMuCgpKdXN0IG15IOKCrDAuMDEKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
