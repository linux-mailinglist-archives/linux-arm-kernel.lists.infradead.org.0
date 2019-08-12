Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869C689B31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgePn+C1bTtDjG6x9T8EnsHURR2bkgRCFQs7HXSdTmk=; b=GX6GXMwbFj0DGn
	7i/5/FaO2MbrWknXyn2gPVrf9XA2p8R700EJtZkvVSJj5bN8A5Fz/+y0BoVyfT3ffpsgB4nextMyc
	mhiS8E6zpLP5gQshhZQDu4dXx/WVkQTKee0ITY7u/owSM3cRLGATNu3u/MZotllKGIYZJHL2knMhK
	hp8b7Nw7A2ub191s0TnEyzeQhpsOKAmBRxSnnpv16LMrRhc0TaFsm4HAfHuFaBVOVefoa/hiDwxg0
	NqpDvTFVlLJK2ysxmGtLM+NeWWfIZHITx11D/bcyDkTvwKcGLPRm7IrrK21Cr832k9xGc8kj6QExr
	H2+ZnkK90PvA9jGe8E1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7Pj-00021f-Es; Mon, 12 Aug 2019 10:18:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7PV-000211-VT
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:18:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id p17so104056908wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=7tZV/C+CttVM58WgI5MskpQ9uHYkdrjmm3CFUmvewno=;
 b=W+MxhXPlqRndnSDLfszOAzcHmVOW3zepwOG16SrxUolE+YVOJWBRuiuxxU4d/tK5ib
 eQc/dIBIFwTcCmLQhoZQwpHSv0Z9GeNPNm2xWCPE0fgp4Rh9yoW+7ATA94jKrSXX4WrQ
 0PUIZNkQIQMW0/ttZeHjwewCrBJc8dHUMnE8Cn+DuD1QiGxzXoM6iqtK0sO+mBwI+ZR7
 zwQC+FQ8Ksc9TIrTKQATDtnIIWAni1AXI50QDu2qvmTx5JqDjheXwahx+Ou0JnK5ao+T
 NOfUqJsGdgFTyM+0k1m2xkbZ6ucKIp08KA+67ZZzOLTy8Ejuzu78IbvQb3BAsjDxDHHV
 TuAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=7tZV/C+CttVM58WgI5MskpQ9uHYkdrjmm3CFUmvewno=;
 b=sq8NTLxRc7liy9/lcNRgCbNbVJppJ+TRLIfiyYPjjqFpThx3cTQAucYcj6Q//CzrDk
 aBSuphFFD7gwvkq5oQMs9eq2AR57WEaFPZvwLO2PFDIfoeVzJZxYYu40G9XBEKpSTJPw
 i1QjCt2eDuO0A2NKk0E8+wKIaANvf49p5/HxlumRE0yPYbkpwVLQC03YyEAG6gVud4rz
 SDZ3ZfDio124Ji8oRX8MLYeE83AJ4YLooNw/3WFmFabSuvw7eGhflYxGtWFvxB/ZalY3
 fWDhG80h3BXj2iM/ojXzlLUudRCewINlpeYvG3982YL39d0rxNEA+SoMC0B1JFvlrbll
 jP6Q==
X-Gm-Message-State: APjAAAXUXy8vurNEW7HRzKZEr5LHDSXM7BD2Gl3cKBpLzMZxY8wSXF+J
 uYRPHrxKsFcLPqLYf9M+oKM5IA==
X-Google-Smtp-Source: APXvYqwaN+jzxqGhqbcsiExg1wesaEC2LCxVh6tSbvfJCScUe6zZHJ2RcSBvMSMOl0MzKlQhkyBhKw==
X-Received: by 2002:a5d:408c:: with SMTP id o12mr37516277wrp.176.1565605120486; 
 Mon, 12 Aug 2019 03:18:40 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id d20sm10642375wmb.24.2019.08.12.03.18.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:18:39 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:18:38 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v3 03/10] rtc: mt6397: move some common definitions into
 rtc.h
Message-ID: <20190812101838.GG26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-4-frank-w@public-files.de>
 <20190805134842.GG3600@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805134842.GG3600@piout.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_031842_043045_C13305B1 
X-CRM114-Status: GOOD (  14.84  )
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
 Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-rtc@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>,
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

T24gTW9uLCAwNSBBdWcgMjAxOSwgQWxleGFuZHJlIEJlbGxvbmkgd3JvdGU6Cgo+IE9uIDI5LzA3
LzIwMTkgMTk6NDE6NDcrMDIwMCwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKPiA+IEZyb206IEpv
c2VmIEZyaWVkbCA8am9zZWYuZnJpZWRsQHNwZWVkLmF0Pgo+ID4gCj4gPiBtb3ZlIGNvZGUgdG8g
c2VwYXJhdGUgaGVhZGVyLWZpbGUgdG8gcmV1c2UgZGVmaW5pdGlvbnMgbGF0ZXIKPiA+IGluIHBv
d2Vyb2ZmLWRyaXZlciAoZHJpdmVycy9wb3dlci9yZXNldC9tdDYzMjMtcG93ZXJvZmYuYykKPiA+
IAo+ID4gY2hhbmdlcyBzaW5jZSB2MjogYWRkIG1pc3NpbmcgY29tbWl0LW1lc3NhZ2UKPiAKPiBU
aGUgY2hhbmdlbG9nIHNob3VsZCBiZSBhZnRlciB0aGUgLS0tIG1hcmtlci4KPiA+IAo+ID4gU3Vn
Z2VzdGVkLWJ5OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KPiA+
IFNpZ25lZC1vZmYtYnk6IEpvc2VmIEZyaWVkbCA8am9zZWYuZnJpZWRsQHNwZWVkLmF0Pgo+ID4g
U2lnbmVkLW9mZi1ieTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3J0Yy9ydGMtbXQ2Mzk3LmMgICAgICAgfCA1NSArLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gIGluY2x1ZGUvbGludXgvbWZkL210NjM5Ny9ydGMuaCB8
IDcxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKCkkgdGhpbmsgaW5jbHVkZS9s
aW51eC9ydGMvbXQ2Mzk3Lmggd291bGQgYmUgYmV0dGVyPwoKQ2VydGFpbmx5IGZyb20gYSBtYWlu
dGFpbmFuY2UgUG9WLCBpdCB3b3VsZCBiZSBiZXR0ZXIgcmV2aWV3ZWQgYW5kCmxvb2tlZCBhZnRl
ciBieSBhbiBSVEMgZXhwZXJ0LgoKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDcyIGluc2VydGlvbnMo
KyksIDU0IGRlbGV0aW9ucygtKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4
L21mZC9tdDYzOTcvcnRjLmgKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZp
Y2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
