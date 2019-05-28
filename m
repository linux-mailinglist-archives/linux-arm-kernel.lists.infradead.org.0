Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 644BB2C602
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rVzXpQgw7bxB2jlak/QYauP9O7eHAj1IoFJPmIOQMw=; b=PqrUZL5f6KcR83
	eovTXQjYSAcLG0dNCtCv+Oe3OSQTD/OcYdvCtuI8pugFQBPZ/E9JL0nqIrujpNGiY/JhvcLlycHps
	H5KcVsxj/aa5nCZO/5nca1GKWDtOjKMZkFlM6Cv9dZCmsAHk6MSU/qSrX1p0KKUo1OMuepkPFs92j
	VVN1XwQLrc/XkREE0f3L14VWAlgsBjZ5X2JfK03A7avHtHw87+QFTvA27FoRM+e2cTGbPFvbh474M
	w1oYmtdZP6sYGIEek+dpQs8zq6KfqdGTJFczJqYS6nwzR4aEfVny0ep48nQGQ5dqYRYkUw0i199Dg
	J+RXGUx/h4reiqe65htQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVald-0007Od-IC; Tue, 28 May 2019 11:59:45 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hValW-0007OG-QZ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:59:40 +0000
Received: by mail-lj1-x242.google.com with SMTP id 188so17397315ljf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 04:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+or866nusWv4sIZAHRqBmPt7yJXa7/be8EsGR10LEm8=;
 b=VshVblWVa8bBpOKLD1nlhbSgP7XvLRsdjffLU59Xbt+lrg42lWiHBq3sFNPwzwxYiC
 51y4aQj/Eil5ih2XZV8i/R0NSJOi8NcSUWIfpm9ICzJBoNCzIh6zBpzoyt4asPQQMeIX
 2oQHj48gWAdhGAW2dM2KB0PNVvPqfxTss9NfV+zGbhR5VU7QGBvhCEugB3VIqrdFuttH
 dtvEDujFr1oAMvcmdHsigyTN34jrW8GIqrrVslcj1ZmcRTzqqc7vBNmwnSBdjhn3S3O2
 91xSR6v8qJWF+msox/ZeTcGrXU52utJRkpA6qCEMLN2v8GXnmmmCIca9shIKBXU2BR6L
 Xrmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+or866nusWv4sIZAHRqBmPt7yJXa7/be8EsGR10LEm8=;
 b=i+/YLooASqIvuUKmBXKKWTzLq+XeQj0YORssEnCQkgomxu6BxPoW3p85Pht1qactV4
 bA/jcmbbutoN7XDtapi8t7F5xpBRH+iusmEgtzFx6iEQsn5hgO4C1OughLzKWldsFuqz
 PRtzyYGHDnZ3qcx1aBQcdo7n2ly8BJPjHhoKajcr0rwnif2PJndI3uHyuFzKMO89LI0r
 epo+mgk0ptywIDisB4hG6RGLNzw44PYtfomz9TmsaDhGidsneKlCGGKXD8he+ZbzT1cj
 2i9acVT9aGF4s3HkLL/whGWdHZhCLst7LyppITqfXaVoFOfDiBIp878wLSGzJ5NmJYmK
 dz6w==
X-Gm-Message-State: APjAAAWFG7L9j03TKmJXTfU2F0J32vDAaaK00PKDw0q+tBX4ZlbZk7zY
 NdnP8hSZ5CFFUbUIfBDZ6D7L3hfqpgsU6idZ/BJKDg==
X-Google-Smtp-Source: APXvYqyxBMj2RX54aqttzirIb6LKh0hs5CrIZypA2bJ5dInIZSVvqwJsryS8pV4YU5/ob64LgpBMPki6YntwhXJKick=
X-Received: by 2002:a2e:2b8f:: with SMTP id r15mr32444998ljr.196.1559044776905; 
 Tue, 28 May 2019 04:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190521082137.2889-1-wsa@the-dreams.de>
 <20190521082137.2889-5-wsa@the-dreams.de>
In-Reply-To: <20190521082137.2889-5-wsa@the-dreams.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2019 13:59:25 +0200
Message-ID: <CACRpkdYUA_tOFLpk7GEnAfqp+vyLCu6PDGLngCYG1E0F6RUkow@mail.gmail.com>
Subject: Re: [PATCH 4/8] MAINTAINERS: add I2C DT bindings to Nomadik/U300
 platforms
To: Wolfram Sang <wsa@the-dreams.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_045938_862966_2ECDFF7F 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-i2c@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 10:21 AM Wolfram Sang <wsa@the-dreams.de> wrote:

> Signed-off-by: Wolfram Sang <wsa@the-dreams.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
