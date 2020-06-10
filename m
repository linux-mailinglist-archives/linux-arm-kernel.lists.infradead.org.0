Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A0C1F5EF0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 01:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5ZneNGYpiGJfezT/Q59WW7Mf+iFB8JAthiX45wyB6k=; b=RFsxmRF+zPbZ+P
	eeV1DIWahoJ4U017RVBia3XpzjHThoBdr5yh/AFg+Fd55JLKmKLhR48dldeoh4gq2XsIYDDqv+0YS
	j0R74CLM1Q9S/YL53eqFKNiN2ijTA4TyKrQfg3r+xtibf5TfocDh+wIAwA/BbLZQaSJeOm8EtKkAK
	Mjc6EGZ3IuCXdg68c10ypyV8k4xq+ttoYvFYDwNJad57WGE/TkMkVrgKQuiMElrP+lHdD0ziU+qRy
	3Ge0+QI2fzhIwxhwAgx7/1p68BvDeOdUb/X2U8dMJrCu0rztitUl36ZkXIQwHGiLWbCYsa1FSCQt6
	68sqIhqaOJ//RB3FsaNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjAZ5-00033D-TX; Wed, 10 Jun 2020 23:55:27 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjAYx-00032O-GD
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 23:55:21 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 7869E634C87;
 Thu, 11 Jun 2020 02:55:11 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jjAYo-0000KR-W7; Thu, 11 Jun 2020 02:55:11 +0300
Date: Thu, 11 Jun 2020 02:55:10 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Andrey Konovalov <andrey.konovalov@linaro.org>
Subject: Re: [PATCH v4 00/10] Improvements to IMX290 CMOS driver
Message-ID: <20200610235510.GC805@valkosipuli.retiisi.org.uk>
References: <20200607163025.8409-1-andrey.konovalov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200607163025.8409-1-andrey.konovalov@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_165519_719098_DA0B6B7E 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 manivannan.sadhasivam@linaro.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrey,

On Sun, Jun 07, 2020 at 07:30:15PM +0300, Andrey Konovalov wrote:
> This patchset adds improvements to the existing media driver for IMX290
> CMOS sensor from Sony. The major changes are adding 2 lane support,
> configurable link frequency & pixel rate, test pattern generation, and
> RAW12 mode support.

Could you still see what checkpatch.pl says and address the style issues,
please? Apart from those this seems fine to me.

There are some on msleep() but I wouldn't worry about those.

Thanks.

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
