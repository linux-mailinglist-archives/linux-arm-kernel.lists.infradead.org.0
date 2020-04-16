Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31331ABBB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abq4i0etoEWrerrplx2gWgfF0lsKLOUSO+NCbZmACOA=; b=GnhoceOFx+CZ3H
	GZVQV20VmnbGVzQVw2S92JMsrXf0AWIFKnOSIXGx9FaoJ/oKWWpzv2cLWpYDAbDHsvO3f2e5tMhWj
	SPOHBBl4D3N3vjCZ5vAjZBn9HaPYT8mggPJCPFoFDN93434UpPZEicFotXwNIhHmBEoX/CJRSkBIs
	BTbNdpY1wqq4ZVsqrPnSzXW2CmzjfMhOC17SgRn7lh5X4PUDb4hMCttQJffzGDU8CBPVbOyJPIhsn
	1HkJNMGdbzWZLrjWlc6ItGjAEJ7ATQJyDvpcbDYbEVzk77lLMh7zTuFqtu67plQyS2Ww4je0fXHbP
	Zv5m80JxCxdB7mxWx/0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0FR-0003il-0r; Thu, 16 Apr 2020 08:51:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0FC-0003eC-R4
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:51:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id z6so3930542wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 01:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=aQURq1REwHEPMxWj0A/UhXFxGHBPx1Zt6Uxv60umXok=;
 b=iTUUxmnxUoqM1iP5zj7BbzhwKQK2NqYbdVMK0rIh0CiAAy9/it6DIt1DL4Ooif9/bE
 Pul6F77qct+LdTVwj/1QFZe9JzU7U365RE9K2ngJq6+qZ15SxAPXTQR3XQRAdySjswRR
 9JYky000loQpUPX3wnZRvPFFa45uhJxKiqbju2/rslkJy7h3NmXl0ZIYzg2ZbfnCQ5dc
 AsNg7kMa9TiJe/4kUyOORB8GNBgxQrV21VfhsiPqvwyuyliDY3hqDbicfevTFn5hB8rm
 ++qfzQ5FGFbm9rT/GFdYCl8cOGCJR7Yj/AL+Xc5pcZgU+6DZeOb6aSyklfhfqZMu9KiT
 XbEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=aQURq1REwHEPMxWj0A/UhXFxGHBPx1Zt6Uxv60umXok=;
 b=WtQbp+/ZqNhCSjEkjxrHvw5SgVr1faKb+Ljl/X6nvCj4t0S7aLoGLrpPqFe0TkjIUs
 G34fXbJWOS94+3WDb4Q18klO/KXy6BooduXaxvE0v8njDfeatFoyFa3OPL8RZY6EL9Ab
 NoWR3ncKWYS/uy958IIiSoenm3/T8rCbWcvgmeEP+XYmdlCQYDtQ+2dBEM7BDN9zHoIs
 ML6OvHk6fOquptsuowv0b9v/wm6RpMfZgWRa/mcjBVtwzCGJD4r4oRXhVvn3Q+7xAoB7
 pkNX3xGoGUExhug8ayTAJVAaBRYDqDiq6oj/9zRBrDMpxWaUNYFp17ZxZrZM9Hi4jYGH
 89eQ==
X-Gm-Message-State: AGi0Pua8OdZIYxnNGdIJVelo8MzNajxSI0VmC3Ze5dtYYBa3NhLPnJO0
 ZmxLt9pPDl088o62B3zN1dj9wQ==
X-Google-Smtp-Source: APiQypKU3qRZVCXuxnBOouk3e3DEAX4zubXTv+zywdpux61f+2SAQwvIpImS075eYrYQxApgGH0znw==
X-Received: by 2002:a7b:c147:: with SMTP id z7mr4036229wmi.52.1587027093347;
 Thu, 16 Apr 2020 01:51:33 -0700 (PDT)
Received: from dell ([95.149.164.124])
 by smtp.gmail.com with ESMTPSA id q8sm2740501wmg.22.2020.04.16.01.51.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 01:51:32 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:52:33 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v12 2/6] mfd: mt6397: Trim probe function to support
 different chips more cleanly
Message-ID: <20200416085233.GY2167633@dell>
References: <1586333531-21641-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1586333531-21641-3-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586333531-21641-3-git-send-email-hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_015134_870096_953A2AA7 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 linux-rtc@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>, srv_heupstream@mediatek.com,
 Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwOCBBcHIgMjAyMCwgSHNpbi1Ic2l1bmcgV2FuZyB3cm90ZToKCj4gQWRkIG5ldyBz
dHJ1Y3QgbWVtYmVycyBmb3IgbWZkLWNlbGxzIGFuZCBpcnEgaW5pdGlhbCBmdW5jdGlvbiwgc28g
d2UgY2FuCj4gY2FsbCBkZXZtX21mZF9hZGRfZGV2aWNlcygpIG9ubHkgb25jZS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBIc2luLUhzaXVuZyBXYW5nIDxoc2luLWhzaXVuZy53YW5nQG1lZGlhdGVrLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9tZmQvbXQ2Mzk3LWNvcmUuYyB8IDM1ICsrKysrKysrKysrKysr
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCsp
LCAyMSBkZWxldGlvbnMoLSkKCkZvciBteSBvd24gcmVmZXJlbmNlIChhcHBseSB0aGlzIGFzLWlz
IHRvIHlvdXIgc2lnbi1vZmYgYmxvY2spOgoKICBBY2tlZC1mb3ItTUZELWJ5OiBMZWUgSm9uZXMg
PGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8g
U2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdh
cmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
