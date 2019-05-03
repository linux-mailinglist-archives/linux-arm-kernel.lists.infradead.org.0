Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9121339A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 20:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GcinMUvr60Ujv5zFiTdxGhlkDRNqOw4//eNNLfG0js=; b=gy9BTAZ6755kX7
	QvN8/Godq+68KGLd1cy6XJqDdo4sTUkrI6oFOyondN2/apsXDeXgJrZ0KximPTXMjSngw4CI/4v6N
	JSbhabBMugpyg05KBh3qaEPFGprpr5eQI5OzkGdGquEBuk9JGen1DZtOATyHG8+CGJUyCJMx8/W66
	4jQIHdB09yXlxLNNOkM/fsMGhHRKL1jz8F+w/F76QgXdfMlLDjrZ3+T8DvECsUnQDqBEqFzkxai1P
	rMS9qCQ1tHRbdQ7UDEUAvleh/y6K3ygAVgBqR2pZQUGsIPeAu6A0qDNVSaREJmT7O91goo27zpVVX
	FuWsGosK1g21SRPfehRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMctX-0003nA-Rh; Fri, 03 May 2019 18:26:51 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMctR-0003mK-63
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 18:26:46 +0000
Received: by mail-it1-x141.google.com with SMTP id i131so10671422itf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 11:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=m5kmd11ubDHH1HewU/387yrI6xXuVNir/39BbjOjwYQ=;
 b=jukmNt5KJt5IuJ7udL/j3gODOUg+hDKAhLZ/bhshiuVm8TFhtuqHsjqr9UwmrO2f8S
 NXiE/RTnH1LeUr/VBZzzKtfRvJbnLT3deZsEBpHUzpFDfMOv0Ve/DO412v0GieRxwz1P
 Fv9/RBBd1laXGJXW5afroutKYrM1WY8Bad6VuQqTVsdXHUFYeTSGc01yqJThZV62BBaC
 v90W2uPZqeJpJLhNe6x5lN7X0OJ0UbP31LHSDY3K51aylYmjPaJsQjqNeenJucTBPqP/
 rw+upvm12bVtk4/jbyThssVqPeHGGXty4x+CI1kCILYsN9A/DgiSlsQXFgGMEEgFl5F3
 ahSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=m5kmd11ubDHH1HewU/387yrI6xXuVNir/39BbjOjwYQ=;
 b=sYSq4a5yMYEZSBL/TiT9ACvB7OXXWp54h5MZL1lOMP8qCwkyuHuJ8zTM8hsaEGdjPR
 0mXRaIEYVEYtS6EFID7oEKAAaeu1DHPIv0ZvkCTk7UnWZDylBJRUUxFuASTOFku0+X0m
 MXrDd2XfbNqN5wLWUojJx4Abpadl5E0mhzU59ZuFMx5mYvAJPsphMIpFmykfTtWCCRHY
 g2ttNJZ4lR4otQGSYdEQu6m7Uw3NiPrsgQjIJqahOX598MFWSTo+b7QxeiNrI+BgOYog
 rQrW25+LG1fbOSQ6WUCiUAQx6IFt5hSa6Y1vKLMWiiuCSNGOprUqUXY8MeK9sJT4N52K
 iIbg==
X-Gm-Message-State: APjAAAU4t2ne9Bhw6nZkSw2X2uqJXvSDZV1fQn+A9XPYgrPIXkfF/0oc
 bDAXIFhhtsl61mZRwb9+KKkiHw==
X-Google-Smtp-Source: APXvYqyda5mEqX/Cfym5qPzwkj3KHnAba0EJj2kf5Vz5txRvRPkKjQ3i0kz6PY3yy3JhzOu/n9odjA==
X-Received: by 2002:a02:cb4e:: with SMTP id k14mr8487413jap.20.1556908001869; 
 Fri, 03 May 2019 11:26:41 -0700 (PDT)
Received: from localhost (74-95-18-198-Albuquerque.hfc.comcastbusiness.net.
 [74.95.18.198])
 by smtp.gmail.com with ESMTPSA id 7sm1040675iog.26.2019.05.03.11.26.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 11:26:41 -0700 (PDT)
Date: Fri, 3 May 2019 11:26:40 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [clk:clk-sifive-fu540 3/3]
 drivers/clk/sifive/fu540-prci.c:534:41-42: WARNING: Use ARRAY_SIZE
In-Reply-To: <155689947835.200842.14950816155129185642@swboyd.mtv.corp.google.com>
Message-ID: <alpine.DEB.2.21.9999.1905031126040.4777@viisi.sifive.com>
References: <201905031619.nJ5l01Tg%lkp@intel.com>
 <155689947835.200842.14950816155129185642@swboyd.mtv.corp.google.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_112645_262174_0CD98778 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kbuild-all@01.org, linux-clk@vger.kernel.org,
 kbuild test robot <lkp@intel.com>, linux-arm-kernel@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 3 May 2019, Stephen Boyd wrote:

> Quoting kbuild test robot (2019-05-03 01:21:21)
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-sifive-fu540
> > head:   85ed1c299cca9beb5df6006361cf18bfa2305836
> > commit: 85ed1c299cca9beb5df6006361cf18bfa2305836 [3/3] clk: sifive: add a driver for the SiFive FU540 PRCI IP block
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > 
> > coccinelle warnings: (new ones prefixed by >>)
> > 
> > >> drivers/clk/sifive/fu540-prci.c:534:41-42: WARNING: Use ARRAY_SIZE
> 
> I had a review comment about this on the previous version... I'll go fix
> it myself.

Thanks; I had intended to make that change.  Sorry about that,

- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
