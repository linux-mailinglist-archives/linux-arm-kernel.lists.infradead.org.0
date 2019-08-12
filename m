Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AF189B56
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OO0LPz9gIaXAz91NDTD7J3BnJswPIpdnwioYehi0UWQ=; b=FrRKJrEwHhTsu6
	GBrmGbuyds8r6bI4LQMdLB/zEpE3Ac/cXS9Mn3R5LLwH+1CcMEuF0yq+EFmh3OH8Aj7p4oxUR48QD
	eRJIzw0GQ5ebsR2UBasGv/ohdukRwm/YR13/1SttVVGpfjAkAd/DDhCDZE6kiH/q7ZP1sYtj9dUhg
	7qVmb+M1ADEKAGsesYHqu/3cneRyhZfhENtq/rqmUzZM21HKkBO9FSEM8lXT/aSlBL8ej2B74gb4k
	UMnQEQZi+BFyJUdZDyQBZkhiC55lfey2x6VJ7fitoHSZajcMwUmw5v4NBnVwP5qwsKamkvnY/T4fj
	yhI5NVwa7gKSwTsRO8LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7T7-0004aT-E6; Mon, 12 Aug 2019 10:22:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7Sv-0004Ye-Q6
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:22:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so11264601wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=zoPZbXqPW78h/2uThaa7mn2LzRhBNLTRaQs9IxumQJE=;
 b=vJ2GlkA9v8yTNFNSxD1tYPMv6zm6aAZbc0eagMqBcoc0oVXHforLwDr+jURWjvN6jf
 k5X8u/x5nlBEex6MPfLs76eV6m/26tMxbrBcX42+QJ7ZM4mAP6i8fYu8SQ0H3b8JExAC
 GZ1YHoi+MhBvEE+cq5NnWJYuoI+39/Q7rgiyDN5mUiSeITs1GgBFoQi3YLJHh8q0MRbJ
 RFBv7xI+rinrgHJhfdJ/RsGUI6D3g6Hi/7Fq9MOnHM3Ia2zqXMAtbzveZ6MvNNPZvEdS
 Z6zV8fvBNCDe74jZ4wmksqFv8KlPMrQLCLZos3iEqE3yjLhQ33iF99G4dOJicHNjI2Kw
 sqaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=zoPZbXqPW78h/2uThaa7mn2LzRhBNLTRaQs9IxumQJE=;
 b=nBU1zeVm9An/27DD8RLCC0qsZfA7fnr40Jviw5WYSR6L2ik+BLjps5fyZaChnV4sj/
 MOZ39mvEfKKQ0cYLwKCxq200PF/P4glC9o8ljQjLynsHmbVikNuVJDQRfkGkaFicu5Qs
 mjVF9zS5IzGznenTRGDySPCxb4UJoscrdnNMw+9tB/csDLPf2n88hizDIX8TCvKEN5qN
 ys2k7z1vbLwlcYan+ayfiMgtLP/nxlMRvpB0Hu4MFaKudrj40QPKbORVYT0rkctEWyug
 ew8BGC8vmYuFmfdPNtjKumCeb8K1y9470pexGRZSFc3b1acJjt4u2iLYk54EpEBnw8wS
 K72A==
X-Gm-Message-State: APjAAAVkyyP57unoOtw8QvLzMq8RTtpi8N21VtyPz6EP4AnyxMxQKfB4
 PKshjHvogV/UallgDfSb2BTa3g==
X-Google-Smtp-Source: APXvYqxf3cQUHAep1BdMKN4uIH07FUMOkkx/TJ2wQi9MYR4nJmyC/s/FP0G1PMDE8ki8IyMk5k86nA==
X-Received: by 2002:a05:600c:22c7:: with SMTP id
 7mr15775300wmg.129.1565605332156; 
 Mon, 12 Aug 2019 03:22:12 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id o126sm14136234wmo.1.2019.08.12.03.22.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 03:22:11 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:22:09 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v3 06/10] mfd: mt6323: some improvements of mt6397-core
Message-ID: <20190812102209.GI26727@dell>
References: <20190729174154.4335-1-frank-w@public-files.de>
 <20190729174154.4335-7-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729174154.4335-7-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_032213_852355_905032F4 
X-CRM114-Status: GOOD (  15.42  )
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

T24gTW9uLCAyOSBKdWwgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gc2ltcGx5ZmljYXRpb25zIChy
ZXNvdXJjZSBkZWZpbml0aW9ucyBteSBERUZJTkVfUkVTXyogbWFjcm9zKQo+IAo+IGNoYW5nZXMg
c2luY2UgdjI6IHNwbGl0dGVkIHYyIHBhcnQgNCBpbnRvIDYrNwo+IAo+IFNpZ25lZC1vZmYtYnk6
IEpvc2VmIEZyaWVkbCA8am9zZWYuZnJpZWRsQHNwZWVkLmF0Pgo+IFNpZ25lZC1vZmYtYnk6IEZy
YW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+IC0tLQo+ICBkcml2ZXJz
L21mZC9tdDYzOTctY29yZS5jIHwgMTUgKysrKy0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21mZC9tdDYzOTctY29yZS5jIGIvZHJpdmVycy9tZmQvbXQ2Mzk3LWNvcmUuYwo+IGluZGV4
IDMzN2JjY2NkYjkxNC4uNWY3MDcwMjY3YzlhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL210
NjM5Ny1jb3JlLmMKPiArKysgYi9kcml2ZXJzL21mZC9tdDYzOTctY29yZS5jCj4gQEAgLTEsMTAg
KzEsMTEgQEAKPiAgLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQo+ICAv
Kgo+IC0gKiBDb3B5cmlnaHQgKGMpIDIwMTQgTWVkaWFUZWsgSW5jLgo+ICsgKiBDb3B5cmlnaHQg
KGMpIDIwMTQtMjAxOCBNZWRpYVRlayBJbmMuCgpUaGlzIGlzIG91dCBvZiBkYXRlLiAgUGxlYXNl
IHVwZGF0ZSBpdC4KCk9uY2UgZml4ZWQsIHBsZWFzZSBhcHBseSBteToKCkZvciBteSBvd24gcmVm
ZXJlbmNlOgogIEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5v
cmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwg
TGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9s
bG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
