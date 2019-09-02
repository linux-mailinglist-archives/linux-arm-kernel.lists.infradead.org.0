Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB49FA5329
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiKCqUq/JJoFwJxoS5DFLdo3AyOnn1anIPSyy5QHkeQ=; b=Tm5cW/8NPF1IHO
	b4vCelhljsv4I9tVWIZR2cIN6qcH4Ojkaz965OzSWM87KT3wh2Apr4i3x6ql7uI/WTKiQq3O1Y9QM
	AdVWYr3Jv19z0FHsW5VUS6C2IE3VPAEX669pPZEGyNzId73W8xB4wXxIqa7s6Y3Js6OJ3VBzhitz0
	4mpTT0+mFjoOjgDtEg1UKU+m+GwWXhFjnNL71hEKMhiQxI3q2Mye1gZVaIluR7yCzG+nr3ROPEa0i
	W23/v96Kqd50qtPy2di1aB0y6qbV74PGDrXddQNOjHUMS5J6Ux1hOKpBsf6OuiZISvYJsW3iVaNFo
	h7hbsHlTEyteLOboY45Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4is2-0006FC-Ag; Mon, 02 Sep 2019 09:43:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4irl-0006DT-Ju
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:43:19 +0000
Received: by mail-wm1-x344.google.com with SMTP id t9so13856226wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=4d0l7N35iWoMyBbjAl4hMooElMfpWLjU+xP3/QM48gE=;
 b=mhtkERu8jUQkzHnNqRbpGC8pMP8PM9wc9YYdW3YJzfxC+5CivPw0eN4Mx0FCBqkZ1k
 MMpoWhfUGlcZ11BMUqW6LIGUqZ5vgXx8aarqN0fXE9js6Z524xGTXLKm6blIp1daoMKx
 0J5VxGMjhAiQxIeU+zuC6dUZUtFUveEcznHTq14si0umE8rRYGiDKfwK+5RFTa/d29GI
 /c/EdZUuoNeHEdVdE8Wk+3yh73Qi+0Ro5yqJlSh32RqsCQGOvjbi8PUiqBo7yQt4iXzn
 6FzeKLgh7cF2NZ50ISsMteEICGPzKmU/mdoKRiwjs/fdB+p7i+EJT9EKTZ0LTnRwsHd+
 Es7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=4d0l7N35iWoMyBbjAl4hMooElMfpWLjU+xP3/QM48gE=;
 b=jgkQBYK7XSaMh5BHhBW3qFkmFjN+XQntbWaCDXBW/sFWnZPZ6lubdvIjujtvsSraWT
 gkublNDr4oA0UjkSLHML9r0AhlkUotuUHCZNmhLKE4XLoSO767RFEiDCX4xEX35OgOeG
 ly6fvTmdWbXKaYxvkchHPKDN1dFNPWV//iKPqCvJmfkEUCopfPKBqppepEeKPrVJ51Mx
 ID6er7kWqp1GMjyY48sLmnBmG/bdvDqFYOAuAwXTwM3SYjnMc+hEJRQxFPr3yBKpHaaL
 DtHRJsh/jt+KElLQ/OJvgmgAUnn8RRH3wAhfU1rStYenl4hKS+AMmD+984CHm5Chz3Ji
 Xdmg==
X-Gm-Message-State: APjAAAUURc7vwuQqXd0k5lpkRuZoHwUr4VlzlWBBe3RROa1U9a1FPVxd
 9ek8tCbPClsV+PJ0Q9K9xWzFdQ==
X-Google-Smtp-Source: APXvYqzm2jMdu+QtRADNIC1TnhWQKqVD1sQ/ZS7+PqSLNP6Rmxvz386etPsBfvjnR60QuMOGSfWyEg==
X-Received: by 2002:a7b:c935:: with SMTP id h21mr33247098wml.35.1567417396069; 
 Mon, 02 Sep 2019 02:43:16 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id e4sm11403837wro.21.2019.09.02.02.43.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 02:43:15 -0700 (PDT)
Date: Mon, 2 Sep 2019 10:43:13 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 01/13] dt-bindings: mfd: mediatek: mt6397: change to
 relative paths
Message-ID: <20190902094313.GP32232@dell>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-2-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-2-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024317_652262_C16CD2A0 
X-CRM114-Status: GOOD (  11.73  )
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

T24gU3VuLCAxOCBBdWcgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gcGF0aHMgaW4g
ZHQtYmluZGluZ3Mgc2hvdWxkIGJlIHJlbGF0aXZlIGFzIHN1Z2dlc3RlZCBieSBMZWUgSm9obmVz
Cj4gCj4gU3VnZ2VzdGVkLUJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IFNp
Z25lZC1vZmYtYnk6IEZyYW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+
IC0tLQo+IGNoYW5nZXMgc2luY2UgdjU6IHNwbGl0dGVkIGZyb20gZHQtYmluZGluZ3M6IGFkZCBw
b3dlcmNvbnRyb2xsZXIKPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L21mZC9tdDYzOTcudHh0IHwgMTAgKysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKQXBwbGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25l
cyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDi
lIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vi
b29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
