Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F0F8A208
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 17:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hBJmRHmQH94RlrdiAPSkpP+TLyefSbYRty/Owi5bEM=; b=Py+IzO/MFG/XUf
	HzmvwtTx0aze2C/FWWXKg54lHDeZr0bBnA/Ik8S86XaBOAmuugdAmxWSM6OsM3+H1Scc2gcjkuMdI
	4jP+CUT9VWwj4+lii5MDimxMx4kGKH7OR/ZGwhV3FajByrT0SVjRPnejVVTKd8AThncp9fj+pUS06
	GtrytDQ1kXRw05YBQ3WelNzmVo3oR6LunFdOr6vArx2QPe8gPvfm0DOa5KS10gkFL4m3329vn+9+V
	HJg4/2hxwFIdtwhtN8as7Yy7YdK80y/mqvGqhjfAXSCo2oXQ0NR1jfgAgEk+PE7uJkRrfbYtLmsET
	q7qs/0MQPexslHf6NWAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBzA-0001zE-Rc; Mon, 12 Aug 2019 15:11:49 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxByv-0001yD-G2
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 15:11:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id l2so12109047wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 08:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=GUVrtoEfscx3IZ80Na3X/rWaOd9dRKNDQf1aNP1gKJQ=;
 b=SF7YYcitpnmLEfAIg1jOi9hmKo1i+Rcoivb2acbFvzJTcAy0/wOVgXhFfL/86Xv3Sx
 dC+O3vUZWV4HQcQKJEV8MAtHUgBFzbWrDZv2UXKJTpgvytBorP3RknUn6lZsPEozuxBP
 F3D72dCDxFyNY4KUClx+epNbiA4zhlB1+88AU39AEP7kRZc0KdP+bEFWPPAYe46iiWx6
 U+4S1sir5JuK91IbOrf2IoIRcfBuFdJrx6uLRoWwQWlxZ78ecsCRBXv+gwX/Cz+6kzR+
 xMza4uhVz+49uL8JYrZ9KKPp9w5Ty8IeyU7v+KTRjDUxmiKxRWfhwdpeq0662ruHnQQL
 ABhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=GUVrtoEfscx3IZ80Na3X/rWaOd9dRKNDQf1aNP1gKJQ=;
 b=KW0QmgMXKexoTHxo0mASbGMFjlRzG4o2uGj9NeUQOjdSzFX6lQxpsGCFtStVZ+4psx
 EfJU8umo/jDWLW+6Cw8nvunqAcaBVEmM/+AvqnPKSvjQoWsj/Q98aShMc1YZmYsgvcbs
 2vP+a85Hn6Nndmky8Sbq47FOUw3xDUaMgCrz8BXfZ1TtnTKdt7VgvpHinR2ZpBI9Urxn
 aK32S6aTGoTVI1xryqBfI7ZqE1SmQsbseRgew7aNkxPExLZ9f7ecdqcDDRQCVMlNvwL+
 YeKwDB3AcIQyxAMriGlOHRMndLc+i0doNpGzR6VaMcXlaRZ8fCVdhPUcfqBz2m0zAFvx
 NWhQ==
X-Gm-Message-State: APjAAAXOeZR8KyMWEs4DJC6W7PX4NzBndWOZv0PGmVRf3bbQz/IYLQJR
 vS5f2TPYIZT0ClkLQTSzx7TX3Q==
X-Google-Smtp-Source: APXvYqzzq2N35RxoX6M2lYFHPFEysjYpmtcFojnVg276i12s+isDXsA6w+Dfor/LAfFbQnLudsik5w==
X-Received: by 2002:a1c:1b97:: with SMTP id
 b145mr26940656wmb.158.1565622691528; 
 Mon, 12 Aug 2019 08:11:31 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id k1sm12674396wru.49.2019.08.12.08.11.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 08:11:30 -0700 (PDT)
Date: Mon, 12 Aug 2019 16:11:29 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v5 03/10] rtc: mt6397: move some common definitions into
 rtc.h
Message-ID: <20190812151128.GV26727@dell>
References: <20190812121511.4169-1-frank-w@public-files.de>
 <20190812121511.4169-4-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812121511.4169-4-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_081133_538549_5503211C 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gbW92ZSBjb2RlIHRvIHNlcGFy
YXRlIGhlYWRlci1maWxlIHRvIHJldXNlIGRlZmluaXRpb25zIGxhdGVyCj4gaW4gcG93ZXJvZmYt
ZHJpdmVyIChkcml2ZXJzL3Bvd2VyL3Jlc2V0L210NjMyMy1wb3dlcm9mZi5jKQo+IAo+IFN1Z2dl
c3RlZC1ieTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gU2ln
bmVkLW9mZi1ieTogSm9zZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gU2lnbmVk
LW9mZi1ieTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gLS0t
Cj4gY2hhbmdlcyBzaW5jZSB2NDogbm9uZQo+IGNoYW5nZXMgc2luY2UgdjM6IG5vbmUKPiBjaGFu
Z2VzIHNpbmNlIHYyOiBhZGQgbWlzc2luZyBjb21taXQtbWVzc2FnZQo+IC0tLQo+ICBkcml2ZXJz
L3J0Yy9ydGMtbXQ2Mzk3LmMgICAgICAgfCA1NSArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+
ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcnRjLmggfCA3MSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCgppbmNsdWRlL2xpbnV4L3J0Yy9tdDYzOTcuaD8KCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgNzIgaW5zZXJ0aW9ucygrKSwgNTQgZGVsZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzOTcvcnRjLmgKCi0tIApMZWUgSm9uZXMgW+ad
jueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8
IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
