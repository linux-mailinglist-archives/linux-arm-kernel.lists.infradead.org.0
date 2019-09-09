Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 540D8ADF30
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wfmjSAqCnWW/O6cQe8zf07l7WkGuyB0aC0ki8Nhs3U=; b=e/KKQGC5K6c1di
	2T68+fAGcbA2DmoyChTvM9BxDEILZsjvlAJlLMyorVDcngdVO8iXZEI5vuZfLOsD0maZ/uCTftcAC
	ghxLjTe2qV/MkuVxqFnGXgELiJvjwRv6AE/UHojafsdrfEKOIdXWuxTE/RR3Q/YocP24zKhMwfP7h
	QIbCwdDvNKV77Rm++CORGrA5QDJ8qAeH3ZeeSzXy/GhXqb/Pi5SwP084g3cKvyEr3Yh/92Hbe7Glz
	PX6NHhkxy1wJAdyvQq/Kq5xGogLYiaJRaoFG5CmeUcpE6jBhIimqoClmRVtpUIhtjd1tYMjqFGuF9
	WtvY3S/jXZfXqWQVoRRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OsP-0004JX-Tr; Mon, 09 Sep 2019 18:59:02 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7OsB-0004J0-Hu
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:58:48 +0000
Received: by mail-wr1-f67.google.com with SMTP id k6so3154039wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:58:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HvRkt0TzAfkK7uPLWRNpRW+QhrAhQM2j0J6Hs+s2IqQ=;
 b=hfpK8OJT5pw7iu03OR2N3b8uu4DYOZCgioT6G3cQzKTUsDTwe1k/bR9phBH6NseS1D
 padHXueJZXjEBCsOojmBStyMGaYpWLKI3hecRL9SwcNA7eJd0nRDSTJAeji1ijsAplUi
 GfiHnZ4PDquluYnG3Tz4MZZHG6W0eWw5gS9jGvFdbDKNH9g4ksSZ+E+guEv6sf2P+MRC
 OhoSQd6QVfD2vrBvuYiGjrMRPB3R3DDrwV6q26gNIwO9j1UOVDtpjShm5j5j5X/RLGmC
 wSbyWHwnXVxMmMJStUQ6Jr+5/MKKlsQ2WT8y1QzzMqll63fqnoZ95BZfrBP3cuigM2hX
 YJQw==
X-Gm-Message-State: APjAAAX35CaeGI/o/Qd2DTFugY1EQkGJi+Ck7CkvOkQqfCy/qEgPD/xd
 fqqW3q85VLbuhp5/Z6rOjlzeWSba
X-Google-Smtp-Source: APXvYqwa68d3w6+uCbFgeBtFQ3I/GwNC/dJsnkNxuF+q83HERWydVFzqpE5yRap3QjCQZZ+0WGpi5g==
X-Received: by 2002:adf:f601:: with SMTP id t1mr20434150wrp.36.1568055526267; 
 Mon, 09 Sep 2019 11:58:46 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id 189sm705109wma.6.2019.09.09.11.58.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Sep 2019 11:58:45 -0700 (PDT)
Date: Mon, 9 Sep 2019 20:58:43 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v3 2/2] ARM: exynos: Enable support for ARM architected
 timers
Message-ID: <20190909185843.GA9827@kozik-lap>
References: <20190828121005.29368-1-m.szyprowski@samsung.com>
 <CGME20190828121012eucas1p2fb78bfebe16d744dc28194bb224650e2@eucas1p2.samsung.com>
 <20190828121005.29368-3-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828121005.29368-3-m.szyprowski@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_115847_652532_DD5418FA 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 02:10:05PM +0200, Marek Szyprowski wrote:
> ARM architected timer can be used together with Exynos MultiCore Timer
> driver, so enable support for it. Support for ARM architected timers is
> essential for enabling proper KVM support.
> 
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>  arch/arm/mach-exynos/Kconfig | 1 +

Thanks, applied this one only from the set (I will have send another soc
pull request before merge window).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
