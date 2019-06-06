Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC70F37A29
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0IBh0LZvl9M1nlfoCwtRDeauCSE3qzlss9ibfjNQNM=; b=G5kUXB+ysYDegR
	qtuVVT9eYgIo4OHcEcTUO4I2VUqjO2s90yUuKdYgWoWJyeQZehRdeQ+dU77LtjP+ZC+Wjt1fI8fZ/
	n7Y1nptaLIPOKoZKBnSB5svlM+8WJJ6ACintpfa7gBT6KDgH55Pyc0glNC/+ypH8u5PUHRY2P0sHG
	G+hiYqonA71TvosYkgq6sZ38BWzOk/BSJA6nGberuWZFQ61B8GcrhCGwhf7UTYPiXm7zbCaiHH9P9
	e3Eyh23uE2AySvog5LCzo0jadirY3mlf2CL4+xkYCiEPOn56VL38vVFxJrcC9rZOI+lvp0u0htDZ/
	DjvGm29o68zG5qg0nHRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYveZ-00049U-5N; Thu, 06 Jun 2019 16:54:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYveR-00046u-GB
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:54:08 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so1858230pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 09:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=uP+0RK/olOLeLANX1udo5x/E16Z31PJSvZb1HggqSws=;
 b=N63CQleFfxxkHFbTvUxXAUj00SNojMJgEc+8bCzpWUz1SMMaeJKUxegJaRKSTsMDGD
 1dXL8l79JGZivWqLKJiapBgjCIILm1saH34vLs86d0CTrZQtYOHd6/VsvTF4VTF33DxE
 5fAuWLUp0CA31TSfKw1iDCioDpxjx75VLgGB1fA73diiIFdwTIXaIcn330n7y7owgAXi
 ljqZsxObVnsQT+OOpjXyaIV8X0gLvZ20AV6HnZZxfVZiGZmBbfD3tTQto+WJYNzcO6r1
 Dkvo1fjPrA0HVKT0OyHi1NhWbKG11qmOtQBEYhkXv3pC+TbRtof1/eAeSVruo5LY+hhv
 1dAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=uP+0RK/olOLeLANX1udo5x/E16Z31PJSvZb1HggqSws=;
 b=thnwVsJtP5/5RfdEFjhm3uiS3C/I+jOLRKJNNuf5jdeq6ocXuRpQgxeM+OLKmXEfTe
 3CMbA2mhDvSR09aOEK6sZRl+QKRfYvC/y7/XmSTW8epiGySb9R28LFTGhP/Fh4UTDC9T
 +LmXxVCMof+cF064WgNKKl7q+9nJheqy5oUpICmsl1tbD+Hznz+0z4VZH+FjuhxYIAz0
 hA7GJLXGty4Tfj6w/e0dOYZv59EpyYqbwimCJXTQoWzOI/x1zbsnY6LX7sYM1J79KxR3
 wlojm4VMDKh9uNy64JzWtv5Wa8feBm8fPzeGLtqVy+t51tPjwj5dYgEYZvNc9BWVpcin
 FMKw==
X-Gm-Message-State: APjAAAUh1R+igGYh3an8F7TX7hHH0kitbMvov5QhvY/Mk7T9kULCAObG
 jANCzSVG9ZIXU1VfnnJA4yCnKA==
X-Google-Smtp-Source: APXvYqz6c0pC8u38g28qlOAS2XbmDD8MZ971NxMGdinizUMqohDxRr61H7/m/o7Wl3Ba2JWsSM4ODg==
X-Received: by 2002:a62:2643:: with SMTP id m64mr52532743pfm.46.1559840046284; 
 Thu, 06 Jun 2019 09:54:06 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id 132sm4535503pfz.83.2019.06.06.09.54.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 09:54:05 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/meson: Add zpos immutable property to planes
In-Reply-To: <20190429075247.7946-1-narmstrong@baylibre.com>
References: <20190429075247.7946-1-narmstrong@baylibre.com>
Date: Thu, 06 Jun 2019 09:54:04 -0700
Message-ID: <7h8suefydv.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_095407_534056_E7FF9BC0 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Add immutable zpos property to primary and overlay planes to specify
> the current fixed zpos position.
>
> Fixes: f9a2348196d1 ("drm/meson: Support Overlay plane for video rendering")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
