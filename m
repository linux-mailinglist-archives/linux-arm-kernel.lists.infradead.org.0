Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D504C5E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 05:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwMyJkKAvd+dQZw6DeP1z9Z4VxKD3EnQpyTbTwoJCvY=; b=reVqMtXwXxl2Ec
	9uJPkYjNa5QspGLEt9zfhAm5E/PhnPHjrHsO5gBCto1BecHxZ6kzJPS/MoFKZikM1V3udXv6nv7ZY
	1b2xa7tosqmMXPDlPraGyyd4kG73J1qUrmolyaCREw6oDiUrgxvGRUs3XOEU4PXtQc1UXnPUlRw98
	g7n40RCm6mk3NXilLZS0568X/zIPlItYCZr3KN2xrM7CvqhLt/SeZ5IzkMoXoA4cuU2d2k76ro1Ur
	ICUTXBqrTRln7iAYxnVw3afV8gsEeI8+CHlGh0TPPI9qcQmL7veFkY/Sb8ZJ5YIZh+PxR1RO5FUt8
	KceQjHe0Kbrnkah3x35g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdnwu-0005cg-3w; Thu, 20 Jun 2019 03:41:20 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdnwi-0005c0-TR
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 03:41:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so822489pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 20:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=yXSKF3KCooCH6IcstSdp1nFOTcORw0aEc+AxKmLDy7Q=;
 b=z1LgyUtip5NsTjNacdDhfzm+Ed6a07P8iqtB9CkZy7wdwCNLokZLIx1qf3aZs7jPAG
 nOh6YKx/Z5pcYp7y259rMlClr9ZC+be8UUIpLARGpIgiObtp3gTY7/biPfl9XSCdwr6s
 esKA8N81cqVr0Ep7GVeSZUWkMSsWpVMaJDjdfFltMhvLKTSM9HMgTSruQZzIZNODM8Jf
 cscCRC9wc2valBsWioyVDgHelvyjxkN+jpsWl1itwjIBlDJkJfqje+lshczT9n13RMpI
 LGBYc00TMUJvGqRz4a6CZRHawT4XaUQ105jrvvZL6E8QvcXN3WMHzrVBXbjLQwcSjMLn
 eX8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=yXSKF3KCooCH6IcstSdp1nFOTcORw0aEc+AxKmLDy7Q=;
 b=aOEdNtd32fC2THNKUGEyPRUgxrytl9kqsulFgsSikbiRJujf7Ozr4KroIWNXFXw54k
 79bLyp4rCh4HQJV9GuB+DKWcoxZee/EEfflgfRaKqV/gw36Iy8AyTaJG63nHSaIVeoAf
 VGYXsUZFldyiDYoaeVQDsXJdPRLP7PJ3tX2QACP7UMBdb5Gly4wT6fX7RMQaDx11sRr1
 +uUz29PxdwWDrxKE/Q0b7wjUZosUBjisaqEiObrhO7dAxrr5ZACygcUQpvG1e496jw3/
 Cqi4lgbk3UuJ4O+09YrLe1olo9FH9m7S+2vBpA7+R/Pw3cN6Xj9DeK+GgBk2TVfJXXX6
 Zt3Q==
X-Gm-Message-State: APjAAAWb4U6giuTD+I+5wE3u60UZmEn6iytgXQUt3H+7svXOTaubK7XL
 uxtzUg5lE98+6ACBRcslXF7HBz2txMLXyw==
X-Google-Smtp-Source: APXvYqwic/TSqTqVCd7HklEgT+a+qLMKSeZd98mTFCizUJYVZby3+cXpM1Hiwh7Iqam7m5933+GUjQ==
X-Received: by 2002:a17:90a:cb01:: with SMTP id z1mr724373pjt.93.1561002067810; 
 Wed, 19 Jun 2019 20:41:07 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:ec6a:e4cb:28b2:e322])
 by smtp.googlemail.com with ESMTPSA id h6sm5198434pjs.2.2019.06.19.20.41.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 20:41:07 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v2 0/2] arm64: dts: g12a/g12b: add the Ethernet PHY GPIO
 IRQs
In-Reply-To: <20190615104351.6844-1-martin.blumenstingl@googlemail.com>
References: <20190615104351.6844-1-martin.blumenstingl@googlemail.com>
Date: Wed, 19 Jun 2019 20:41:06 -0700
Message-ID: <7hd0j8j54d.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_204109_070435_DC536207 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> Avoid polling of the PHY status by passing the Ethernet PHY's GPIO
> interrupt line to the PHY node.
>
> I tested this successfully on my X96 Max, but I don't have an Odroid-N2
> to test it there. The reset and interrupt GPIO part of the schematics
> seems to be identical for both boards (and probably other "reference
> design" based boards as well).
>
> This depends on my other series "Ethernet PHY reset GPIO updates for
> Amlogic SoCs" from [0]
>
>
> Changes since v1 at [1]:
> - added Neil's Tested/Acked-by (thank you!)
> - rebased on top of v3 of my other series
> - updated cover-letter since the GPIO interrupt controller support
>   is now merged so it's not a dependency anymore

Queued for v5.3,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
