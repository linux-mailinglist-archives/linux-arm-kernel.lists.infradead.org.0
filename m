Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF220B61D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 12:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwwW8wOSNKcqqs30oR8jSnMMmQi5zkhPu17XmyK47HA=; b=YpMN2PgZJe5RsS
	a6L1RtN+VzPXxYy0ko0JzvutYSMnpoivy9ge00kHnjgVRNHBKOkLXZm4ntBrPogZ2YgSKw4Dig0ua
	OXisY8+HAXYSX/wbSiYpoiog1OrpZK3pFlawHJLFTQo1CZJu0R0FDu15D3Fy+pIkzodwTMAyqx9PP
	JVOHzCb5Aqcv4+Q9l4h7nPs3iYwu6qsdZk5GYXVv3YRo5MTvoKLFwxqH/1oi0fNeDMTJOh6OXvRXj
	W76+4uC7AmeqzR2Sndav/3im0+r5e1DvqbGJPnL1fFDzH+Lbkv4I0h28QHcxKqpGDBCeIB//SDmdo
	es4f0Oriy7Mf8RxdehiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXYe-0004Jg-5X; Wed, 18 Sep 2019 10:51:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXYT-0004GQ-Hg
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 10:51:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id b24so2005022wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 03:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=JVv4hk+4LU2vJDNGx2vhcqczhQQUoh+G5X8X8U4GwqU=;
 b=aN54ur3KkGtiC4fj7yimPdv3HMIqVFRGOoft8l/i5fSPRMHOl6JF75HJ+lIa5ZziJ8
 RpsbkaIIBtKmy61Qdqb6kOnPGvn7aOa+mA80690Va+YRVEJEpeSHxAs1QitJbyILr0Wq
 Dogw/YfoTbqr2t49fLFqf+op6bbImPUmhB56ApM56rYzYjcbjYrbKcOwe63HQ49fNOX9
 v2eBs6gzhjqPk4MC/v9S6LNHPtmhCOgrr7pagTSIiN+jCTSo6cqRGUVI+3dSMabL6QqG
 3/ED38tescn9RMzor1s4ww0BTPBVP0DFqwO0LCJUxOaSAN+LGlt0zUahPjSwQTjq92hz
 4LvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=JVv4hk+4LU2vJDNGx2vhcqczhQQUoh+G5X8X8U4GwqU=;
 b=gHOah59LbWuHXBLn8291XFgpmso15LqGDvv2KDUTSdQmzBYmWRp54IbCoMmxwevf92
 sZw4BZbNvTm3uV+VPDIFu05oKZBRxVnQwl+JoHKg3YzCqKodVJtSyiooySV/R7IcNLuv
 ITaMUW3HytcRbGY2Qs854IMBSkbL5hA/Vhr4pnIFgWemg2QWhz6FP0dAlR6+boTF6VC6
 eRApkhhsVxl1tftYsQxnjIDxyJXGys7cjDLoBXoAYUeC8P7zi+IAg2tPi1uuf5CxCIPO
 Ug95F0iVMnXIlvodQRi+gWpRuF05TMMTycdi8H/jmNs9NUt48+xyRBzx9ePAlGHyBSCE
 ZRXg==
X-Gm-Message-State: APjAAAWcSXsce8Xb5TZOI7M8biR0efzOCQj2Spbc3C6OE765uP54Vcny
 ktogsgzFfDuo65Zm8ZKdKbnBbQ==
X-Google-Smtp-Source: APXvYqynJXkScyO65ZwXnbjbsK5K7mcXL60yrXfJxXtICcR1O2he7LJfJ7TjzExD6/kawj+vRoCG2w==
X-Received: by 2002:a7b:c398:: with SMTP id s24mr2381161wmj.78.1568803883055; 
 Wed, 18 Sep 2019 03:51:23 -0700 (PDT)
Received: from dell ([2.27.167.122])
 by smtp.gmail.com with ESMTPSA id j1sm8055902wrg.24.2019.09.18.03.51.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 18 Sep 2019 03:51:22 -0700 (PDT)
Date: Wed, 18 Sep 2019 11:51:21 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20190918105121.GB5016@dell>
References: <1568801744-21380-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568801744-21380-1-git-send-email-gene.chen.richtek@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_035125_743139_BA20BD2D 
X-CRM114-Status: GOOD (  12.19  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxOCBTZXAgMjAxOSwgR2VuZSBDaGVuIHdyb3RlOgoKPiBGcm9tOiBHZW5lIENoZW4g
PGdlbmVfY2hlbkByaWNodGVrLmNvbT4KPiAKPiBBZGQgbWZkIGRyaXZlciBmb3IgbXQ2MzYwIHBt
aWMgY2hpcCBpbmNsdWRlCj4gQmF0dGVyeSBDaGFyZ2VyL1VTQl9QRC9GbGFzaCBMRUQvUkdCIExF
RC9MRE8vQnVjawo+IAo+IFNpZ25lZC1vZmYtYnk6IEdlbmUgQ2hlbiA8Z2VuZV9jaGVuQHJpY2h0
ZWsuY29tCj4gLS0tCgpUaGlzIGxvb2tzIGRpZmZlcmVudCBmcm9tIHRoZSBvbmUgeW91IHNlbnQg
YmVmb3JlLCBidXQgSSBkb24ndCBzZWUgYQp2ZXJzaW9uIGJ1bXAgb3IgYW55IGNoYW5nZWxvZyBp
biB0aGlzIHNwYWNlLiAgUGxlYXNlIHJlLXN1Ym1pdCB3aXRoCnRoZSBkaWZmZXJlbmNlcyBub3Rl
ZC4KCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgICAgICAgICAgfCAgMTIgKwo+ICBkcml2
ZXJzL21mZC9NYWtlZmlsZSAgICAgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9tZmQvbXQ2
MzYwLWNvcmUuYyAgICAgICAgICB8IDQ2MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrCj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM2MC1wcml2YXRlLmggfCAyNzkgKysrKysr
KysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAuaCAgICAgICAgIHwg
IDMzICsrKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDc4OCBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL21mZC9tdDYzNjAtY29yZS5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAtcHJpdmF0ZS5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAuaAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpM
aW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8
IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
