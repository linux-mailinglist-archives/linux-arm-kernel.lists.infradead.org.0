Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF621A650E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 12:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODqYP2bQQyj0IFh6GMlEmPoDOLYURE745N1luij/a+c=; b=a6YOjVvvSYumCJ
	KcErIv+qBxkF/RcknCihUfbJ97HJ7xscAGpfi0tWpn4D3g0WPb/YqGsicKeSSWM04QWGn0l5//S/B
	igtM2+fRYyRDuBy7SL84rRptbWiR7z/NVBkaMJJ+87gBKclS31AUQvGxlN/d1WLoVHuJpgc2BL9Lu
	sFMx+dxU5IiYcAk91HoGVtoyjTK4+VPf/zQy4OHlQZK8qlsCTkvjxH07v7lCWnxSz9s3qD8uvLtY1
	86FbpSEeakDaoHSAlFykRUxi/OfFRFelH/w6ysz9N+wB9k7nFFnRyYc18NTjOGz7ONoX9S69zTlIt
	w74MR9vPtv/nGLQjsrRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNw4M-0000qK-RK; Mon, 13 Apr 2020 10:11:58 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNw3z-0000hd-IM
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 10:11:37 +0000
Received: by mail-ed1-f67.google.com with SMTP id p6so11322605edu.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 03:11:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k+7Q/wT0Mnct4ipSNlbYLt8kOVOarKScVBUfZKd/RJw=;
 b=EKBMoLwFGGis+l0r0sbLccPUFRc3V4tvb236UrXDTnXSUMBx/czd2xua9dJBTA7BZK
 dN+c9gDfIgsTmFr+gHW/IO43h2sOUE44w1aH2HiGqJjNKrXB4ZmM6jIRk8EH68D6B/6c
 jUtR7+hjivS5CyJaAcAI9L3PJaPVwJq3zf15pDF3TJNj1bGiMuhK1DIYs9FIOhU5DeoN
 zLuU0zijb51BUoGFQzoWT0JZX0ABmE7yr+D5LJ+7GV0+kEdLkfcbC5OMNukUPaxxAQJO
 j6b5uecuPKMKAF2c85XHZvsmzRIDdkGjKcY79wy1lQ46jnYLZkCgl/yPWJTRc6IQ0EZu
 VXwQ==
X-Gm-Message-State: AGi0PuYUClcar9JxshyKSch6ZXTEurksXpbVDbAhgdaLI9FDAo//1lDp
 z81mTGqqI+MdNcPTYz/P4y7iTE7Fkt4=
X-Google-Smtp-Source: APiQypLxGhG3EmFt8mmfpXk+Zh4YsXDNpWtjHcJCoR+oC5mRv/SoctbK52Yt0mgiaXKrpI9uwlQj0Q==
X-Received: by 2002:a17:906:32d8:: with SMTP id
 k24mr15380317ejk.2.1586772692425; 
 Mon, 13 Apr 2020 03:11:32 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id u13sm1283616edi.82.2020.04.13.03.11.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2020 03:11:31 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id r26so9450256wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 03:11:31 -0700 (PDT)
X-Received: by 2002:a7b:c927:: with SMTP id h7mr17717288wml.122.1586772691230; 
 Mon, 13 Apr 2020 03:11:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200413095457.1176754-1-jernej.skrabec@siol.net>
In-Reply-To: <20200413095457.1176754-1-jernej.skrabec@siol.net>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 13 Apr 2020 18:11:20 +0800
X-Gmail-Original-Message-ID: <CAGb2v65qetxxVX1yoCjyduM4zRTyF3YKX1g9CuaHZkF_Z+AKQg@mail.gmail.com>
Message-ID: <CAGb2v65qetxxVX1yoCjyduM4zRTyF3YKX1g9CuaHZkF_Z+AKQg@mail.gmail.com>
Subject: Re: [PATCH] drm/sun4i: hdmi ddc clk: Fix size of m divider
To: Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_031135_622765_BDD3A2E6 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 5:55 PM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> m divider in DDC clock register is 4 bits wide. Fix that.
>
> Fixes: 9c5681011a0c ("drm/sun4i: Add HDMI support")
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
