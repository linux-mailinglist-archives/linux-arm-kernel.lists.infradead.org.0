Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC5A1DA635
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grwUjWvy96284Kmxu32/PXW2kiN/kAveyDjI6jsMzW4=; b=SgK3V8bw7Oyjxl
	X4Wyhwn2akxFwp4qYCw/wTbvbYPVBrdYw8mMS7ihxYOiqbVpcJzQxdCHshg/xn9VSanAyHLaq6Htr
	Ds+WvUzyGWwo8QBLnPK7Xzyo6AAYcaFEFOnz2mudQM2rRaSD4zfzS119f5bdqZCjxnK08ShSYfjXW
	OJ7Ip1TLjBec2Or8FIvS5oX4SZW36ms/8K4CBKO3ILRBANNzXpBsD/SxzwjfR+44sRm9b83QMLc5c
	NFXwReMUzM4FPI0Y4C5kHwc7M8ENq5LvDU5UCNG9cx4Qv85JyZRlCnGyV2qerhlYkHPt3Fsvzi36q
	CZi4veDOPgwc4nWcusaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCJ6-0002XO-BF; Wed, 20 May 2020 00:10:00 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCH6-0000ix-IG
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:07:58 +0000
Received: by mail-pj1-x1042.google.com with SMTP id k7so422600pjs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 17:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7+DomKPOv1yE5ESFBkQ8ud9ihgskj98nGfYMrpZrFiM=;
 b=Y+UE5guHV5/L0b0srWJiFebv61WLr8NQyvWXiq7/hoWAmuxvU+BiDdDJstV5EiD1wJ
 jtu7ikRXv0voVZPUKIDXZ7B7+tHOxVVlnNeUvCM/Q0Ce+G5B13h9o6rVJt8WGvgF7/0Q
 BbaJzcfEifhz+nObg1SXlEOSOOWuHpsiW1WhnO0L4NTEEVNW2BL9GTRhlxu2tyPiX25O
 BrImsHgtj5OTLVzqFOZAAjyeAnX9aFuPMpHhuKwhu/Su44sd9e2AeFx/Ow2ydEaiuWDp
 xEGKbFTyn0UaHKZzDlbLToadjznoL506wIT+MoMugLhhFH9pc4+RS+Cgha3wi1Gr1lTu
 JkbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7+DomKPOv1yE5ESFBkQ8ud9ihgskj98nGfYMrpZrFiM=;
 b=Ka2inq4PIpw/pJ0VGryj20pW9yU1yGGxRf2ttnxqAzhMruURIuPy8Ap9UDek4cF9S4
 tDn/J9Z/nPHQwKPgydQPkxAeWfle9z+v+JzqZ4C3P0btYK6SU7n+x+GZbyhRsTpwgtJT
 brmclQD/hQzHqPhlMME1uLJzpBoBQGjbCgbqShPaeg/Lz+V9XRvAy7NnMpeJnxcScw+P
 iQes002mMPs9zlzGUR5td9cz+f0ZSa94+Xs+g3fjiDPghEEqdp1oBH0VbQeeDccOvGpP
 FMV4Kz0Sf4Yby5GEeUZMBWaYhAg2nLcqWrkVgSV6VIWJ2/6A9WvPK564Mpsxtrgja6nQ
 z70w==
X-Gm-Message-State: AOAM5336BUb3tQeUyRaiQ1pY/TlnunQa0r65a6mJAz2ioobGo5GRLQDG
 O9+9av0yVx8nlH8huttPycYO1w==
X-Google-Smtp-Source: ABdhPJwE9FiCv3g5zVYgc8Z9qAKSS+WbDh+SIgfGNnxYbx9qLd+gBy+NviN0qWa6eFC+ZUcHtHRuVQ==
X-Received: by 2002:a17:90b:3c7:: with SMTP id
 go7mr2258358pjb.67.1589933274893; 
 Tue, 19 May 2020 17:07:54 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id z6sm502190pfb.87.2020.05.19.17.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 17:07:54 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 0/2] arm64: meson-sm1: add support for Hardkernel
 ODROID-C4
Date: Tue, 19 May 2020 17:07:48 -0700
Message-Id: <158993320300.34448.14860271730266890592.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200506080702.6645-1-narmstrong@baylibre.com>
References: <20200506080702.6645-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_170756_638312_0537A2AE 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 10:07:00 +0200, Neil Armstrong wrote:
> This serie adds support for the Hardkernel Odroid-C4 single board computer.
> 
> The Odroid-C4 is the Odroid-C2 successor with same form factor, but using
> a modern Amlogic S905X3 (SM1) SoC and 4x USB3 ports.
> 
> Fully functionnal:
> - USB2+USB3
> - USB2 OTG
> - eMMC
> - SDCard
> - HDMI
> - DVFS
> - Gigabit Ethernet with RTL8211F PHY
> - ADC
> - Debug UART
> - Infrared Receiver
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: amlogic: add odroid-c4 bindings
      commit: 838f0905aaeefce443eca124b27e6474e6862aa3
[2/2] arm64: dts: meson-sm1: add support for Hardkernel ODROID-C4
      commit: 326e57518b0dc8789d78e59563afbb3f4107e6e1

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
