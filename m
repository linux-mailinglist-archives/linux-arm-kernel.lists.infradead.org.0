Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0390A535E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:50:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzJ8SS8Rt7UWGjbtrbUqXMTdg2+P9ZuamqLWoOMkzf4=; b=u3+tX5qWE/NEEF
	lKl3uxchdocW0hD0q1HUuOa2gxGDKlneQ1ozDhZjXlWdoJ4siLKAU/6tU+bsn5LpU6XFmts7++V06
	IfUPJIJzUj4QbY9wvKd8fubBRwZrMskzuIJJQiRHWKwL+SKB7VpppASFNUCZXuybl1mATha0akasM
	JtETqAFkCuK8cWzu7SrK3gojrDMZcIo3gs9gfFOj3IKUOeBpRTf5AQc3Yf28o2+6q624+zgwbltMb
	i0f8OTe6ZbU9nJtRTj6KqXgt+mWlCkjqA5AXTzorbv3yzzFpECIW5T4AfcRcJ17jICxBHBDMP+s+a
	vIz3+85St1hGZ5ICqMNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iyE-0000da-Ia; Mon, 02 Sep 2019 09:49:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iy0-0000cq-Bx
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:49:45 +0000
Received: by mail-wr1-x443.google.com with SMTP id g7so13350058wrx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=E32oxsdnFpfc9iole83hLZS+yX2KdMIZPUDAku90LVw=;
 b=DHcGpJtMYCczLv1+Nie2Tj6mpnjbjmwe3yYNzk9LxjNhZjDCCR3p39Th1I+SqVxIaz
 98Pd8TJLid5zcAoEpcC+GSd4UoNtyF6C86TaShbt57DVzK2mhRYAk24S3WnRQPt9cMvw
 OIl/NQLkhdhBVMXyopRS3RkzS0CS7j8Rglve83RyAivl8MLiri8CYBBwHuIHdoUwEv9R
 GyQPH5u7fCF38I0HqOkIRjcmQbJ+Jut+R88Y5eTqN0Hrfk5jrA31nY/meR6fOX5xbre/
 bfOsadVAiHf9ItjJnm1d0ARtUkZvdmNKScHrdEvfb70KZZ+I3MaywYc7+2ltoBX7lRVm
 AEVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=E32oxsdnFpfc9iole83hLZS+yX2KdMIZPUDAku90LVw=;
 b=CgX5ZU/UJoN/bfYwwCXfgjw3v5gCD25fXJUD1t/d3sGNfo24gNvKwRQ1ajc1FsRO/H
 lFNx7qeMZ6hyXbWo048XDi91hskhUHqaqnDt+VP8oIvYgfi7fTas9fn09krgAIBmbYU6
 z7AVdwQzFnrK5in59z07x35n86KhgJnw6cqhNQj6OekTv8gJTmWqcFkDsog0pox/wqmo
 /L2OxtG7pzIgRTf2FqqnUvcJ2QXEV03tS/XkNbVG5uc5um41O643taqSCNZVvQ+chNNN
 KtfLD/MxzddS/WL8oeB844a979mQPQ+RSjolyXSjzAqx88C4WZNLvuJqhh+a6sKLiJ7p
 0l8A==
X-Gm-Message-State: APjAAAWpOp2GxflxQUVjTgd76loXSDW8HJAdd/omulPleTcvn5CY4JS/
 M/FbFd9Wu1OEukQls7vUIOmLrw==
X-Google-Smtp-Source: APXvYqx0dDZhgt2N2frM+clSUwC9JsS7KqvVvVuZzoRhLXZHbrdEBi472foVvr2vFZvp5E2gox599w==
X-Received: by 2002:adf:c508:: with SMTP id q8mr34660218wrf.287.1567417783054; 
 Mon, 02 Sep 2019 02:49:43 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id s26sm1861063wrs.63.2019.09.02.02.49.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:49:42 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:49:41 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 08/13] mfd: mt6323: some improvements of mt6397-core
Message-ID: <20190902094941.GU32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-9-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-9-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024944_405958_EC26EC86 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sean Wang <sean.wang@mediatek.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAxOCBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gRnJvbTogSm9z
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gc2ltcGx5ZmljYXRpb25zIChy
ZXNvdXJjZSBkZWZpbml0aW9ucyBteSBERUZJTkVfUkVTXyogbWFjcm9zKQo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEpvc2VmIEZyaWVkbCA8am9zZWYuZnJpZWRsQHNwZWVkLmF0Pgo+IFNpZ25lZC1vZmYt
Ynk6IEZyYW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+IEFja2VkLWZv
ci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gLS0tCj4gY2hhbmdl
cyBzaW5jZSB2NTogbm9uZQo+IGNoYW5nZXMgc2luY2UgdjQ6IGRvIG5vdCB0b3VjaCB5ZWFyIG9m
IGNvcHlyaWdodAo+IGNoYW5nZXMgc2luY2UgdjM6IG1vdmVkIHBhcnQgNiBmb3J3YXJkIHRvIGxl
dCBjb21wYXRpYmxlIGFuZCBkcml2ZXIgYmUgdG9nZXRoZXIKPiBjaGFuZ2VzIHNpbmNlIHYyOiBz
cGxpdHRlZCB2MiBwYXJ0IDQgaW50byA2KzcKPiAtLS0KPiAgZHJpdmVycy9tZmQvbXQ2Mzk3LWNv
cmUuYyB8IDEzICsrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMTAgZGVsZXRpb25zKC0pCgpBcHBsaWVkLCB0aGFua3MuCgotLSAKTGVlIEpvbmVzIFvmnY7n
kLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVu
IHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBU
d2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
