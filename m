Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79312A5334
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NNLqx2GkYIa9qgxEtumISyu83tlZUzXU1Qm+68pESQ=; b=ilblMtUN+lbYLU
	4E8IFxtdhQLTFLt7cq4rmWy1vAC2Gae5VXXQSbvpVAyG6cSyiFbPAYCBUbb8ufZU3IUBC1nKcD0NA
	qzOvzAPwO2IJrOoN31gz1g/hA1AwNf/JzK+K1dyrVHOXcQYT83O0sCu46TZs09ZyhfRI0JHSEJe2s
	GANCqGacMsdTriK6s20d2Hm1xo/ND0OPvleX8C4wPF+bInRqFpbsZ3zJ3NO+hYt9agW5JlFYw9KuK
	K8Ub8F/Oub0Sqd8bigvG0MYqd+H936blKrM+Ej5Q9yePuG3hcuewxlQymP4YU5M/Kv883Zw5elMwW
	VquGufTSnltAsIrGF4gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4isv-0006XP-Hh; Mon, 02 Sep 2019 09:44:29 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ish-0006W8-I5
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:44:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id d16so13864841wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=rzr6c6CJF4AO7OQdux81zJnqNsWs8fMapTnA/mWIH2k=;
 b=IPp3tcOWV67rZlX80/E5IFYzBXPjJMI6rryBXkLyrFUeBYFXwRV7zI4CLc+AKIFldP
 64rpcf21UoGVpp3I5Sn/ftpeEBMg8okKXbriPwbgXuMWaIXsWG+KJSfb5WopSyq4fHos
 uQJBobf4xSaIORYzXjGtKOXrwg/QH5ZWf8U93DWm8FG+0D40HQXWFoPdEDcjhxN7GEuq
 YuYWYj819EzbkE6cF0l3wpzBqKx3f7sf+kBfqHJolG0XfW1gf1S8uHsq6MzkbA5YRBuX
 9KqJHrA9L/utr0gH3zxbszxrh7VeiVd9PwOC4A9HNr+sGhBHb35gm0bNbLGuWj25EOHW
 CLKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=rzr6c6CJF4AO7OQdux81zJnqNsWs8fMapTnA/mWIH2k=;
 b=NEYpLJ2C6GWw59QPU59H4jUalNKilR6ASw5dapukyCDA6Lu8BjQnZm5JdsuG7pWVo5
 2+9Iiw9BL7jv00BuItoJJuOtHAZjhnLnwVZbSNR2/Iw8fWHjaNX+tb2vbudl1Nlnzuec
 TLBiM4JU4/Ry1ktatir4jtUR5VwYVuFcGMSTQsKt6gP96W7XCdPaJGQ5RzkyVZrz/Mc/
 N1ruaLGmcSx6qtxnswl9Aiibroz16z4KBROu4pAU4On5U1u5mMCPTUInIlBynGkR2Mzk
 i+9VoW4Zsg2uWzDTQeIL3Zpf6J/mveRtDpDu20rFNIZejafEL2Da5QnT8mZlIl45kH8G
 HNVQ==
X-Gm-Message-State: APjAAAXFr57K/UzImBW4kZgvv1qjBUb5TmcgXENno+4nycvjUKk4Pc+3
 0ez2qA5MEWi1nKYZ/sua+uq65g==
X-Google-Smtp-Source: APXvYqyiJ+KUkcFbJzvDtuCJ7zAHN4kxjezhQQTUAC0DDyiipTQ7w7uuuYjP+HBaNj3IQDM7tdGAWg==
X-Received: by 2002:a1c:c5c3:: with SMTP id v186mr20911229wmf.66.1567417453967; 
 Mon, 02 Sep 2019 02:44:13 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id u68sm20849297wmu.12.2019.09.02.02.44.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:44:13 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:44:11 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 02/13] dt-bindings: mfd: mediatek: update rtc to
 include mt6323
Message-ID: <20190902094411.GQ32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-3-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-3-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024415_600523_817ED171 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
ZWYgRnJpZWRsIDxqb3NlZi5mcmllZGxAc3BlZWQuYXQ+Cj4gCj4gYWRkIG10NjMyMyB0byBydGMt
YmluZGluZ3MKPiAKPiBTaWduZWQtb2ZmLWJ5OiBKb3NlZiBGcmllZGwgPGpvc2VmLmZyaWVkbEBz
cGVlZC5hdD4KPiBTaWduZWQtb2ZmLWJ5OiBGcmFuayBXdW5kZXJsaWNoIDxmcmFuay13QHB1Ymxp
Yy1maWxlcy5kZT4KPiAtLS0KPiBjaGFuZ2VzIHNpbmNlIHY1OiBzcGxpdHRlZCBmcm9tICJkdC1i
aW5kaW5nczogYWRkIHBvd2VyY29udHJvbGxlciIKPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21mZC9tdDYzOTcudHh0IHwgNCArKystCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApM
ZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFy
by5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJv
OiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
