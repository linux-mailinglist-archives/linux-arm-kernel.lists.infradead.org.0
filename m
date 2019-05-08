Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495D917F88
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 20:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3P+Z35NGDwaw2QGG9hGHzlHC3udBQmwvC8i2P083tq8=; b=YdFmED7NoRii64
	fyEsj/U9WSv/tukj7Vf4QgkpcEqzoftPO1KDyKkXlDlDq1qLp9IhCXVGgMp7UZKzmnJ4CEqBCjVlQ
	maqYyDVQmfAJ7sSITgsLnAWZm4ojzyCQAskIKu/FY0F/t52ac+zffW1FOCZG+BgL2SsaXKE59MP6L
	obbrvn5kUyQzbgHxHmm1hg81b3br0wJcR/By6DLzzyxRWdys09qpDs7CrDOoYZGPP+RWK8WiDEk2u
	2OWnKKSUc0lLC8ilmFIn6V7EoGDQiu3YnNNvWc0g6tX0XBhv//VpOqS78X9piGlQ6b1LTI4h7NOcq
	ebb/do/MYqNrqdxpwDHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOR1U-0003Y6-81; Wed, 08 May 2019 18:10:32 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOR1N-0003WT-5U
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 18:10:26 +0000
Received: by mail-pl1-x642.google.com with SMTP id d3so6274674plj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 11:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5zLWZfJCoIg5TeUT0Jt2rwSpfAhD7R9q7eCYI7YHf40=;
 b=Tm2N3nQ5R4MhS+8rDGVu/boYYfOVT9eIZUs60lgVugsa12xyjFshqIWhczZyFQwzYF
 Ym9H3mmMhQzLUib+TUxO5mS0LpNapV2Zy81WXsYoFwNV+rdA6rOEnixV+TXKtAggW5lK
 QDSEMsjaxPVnY6u3e/z7047pG6rP96Ay9RL1uwxSRF/22zO+7kd1MqxLXfdrrhPThSRA
 mY7VHAWoPNgVv22UCIzmgaNRexxreIebf/jobba8vTVTF9A1vGdOTUvINtIZ8Ly5Xsib
 JDr4j9KfbpUyW4/2fktvOOqSl8/YIGfpKUC/87WCEwPw7Dh3+HZrmyWQrHn3UotZRAP4
 vOjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5zLWZfJCoIg5TeUT0Jt2rwSpfAhD7R9q7eCYI7YHf40=;
 b=GWbIt3x6NTiBf0NuD8sEMJ8hfDI9P5RHDInFX2RampG0hysJmLwScr54jmCLlMTOje
 5wEYMkRx5ZdTRmIk1NQuV/9TVbTQdxkE8M6T9aWVgiLM0k7zPc601+HLNGBJjXP8y7n3
 AmdbKxe4ORsIFojQdcvP53VQooTxdIJFyUSmtJ0jl28+UgWUGE1mxs8yIKtHFJmhs+R8
 Q7r9d4d62I4TgohvulYAzvYgf5KgvpG/wI3wGfvke9WTDVShKGmeNneYJFZgSAl3OfOR
 KmLKLpkBagg5KSrHvpztxxAbTLZTsHMOo+KcbyefNRodDcctACH8J/ACyjKyOWfZds9x
 /wTQ==
X-Gm-Message-State: APjAAAVBTomQr89fHsTfP3oeWp1kXoYZJVhxzG1r6VB2EzDwtAz4XyT6
 pw7HfCPUf7vnGINFQ4lBraQ=
X-Google-Smtp-Source: APXvYqx2Wb4CB0KCpVy419mUcctEXRtv9dVAdNA+TWZj7LlWHc7EV1/KC6TAZsJVn2A5r991XqqT8A==
X-Received: by 2002:a17:902:5ac9:: with SMTP id
 g9mr14087995plm.134.1557339023983; 
 Wed, 08 May 2019 11:10:23 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id j189sm31400665pfc.72.2019.05.08.11.10.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 11:10:23 -0700 (PDT)
Date: Wed, 8 May 2019 11:08:53 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2 0/2] Optimize dma_*_from_contiguous calls
Message-ID: <20190508180852.GA2298@Asurada-Nvidia.nvidia.com>
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
 <20190508125254.GA26785@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508125254.GA26785@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_111025_234248_F804C703 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: chris@zankel.net, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 sfr@canb.auug.org.au, tony@atomide.com, catalin.marinas@arm.com,
 joro@8bytes.org, will.deacon@arm.com, linux@armlinux.org.uk,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 jcmvbkbc@gmail.com, wsa+renesas@sang-engineering.com, iamjoonsoo.kim@lge.com,
 akpm@linux-foundation.org, treding@nvidia.com, robin.murphy@arm.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 02:52:54PM +0200, Christoph Hellwig wrote:
> modulo a trivial comment typo I found this looks fine to me.  I plan
> to apply it with that fixed up around -rc2 time when I open the
> dma mapping tree opens for the the 5.3 merge window, unless someone
> finds an issue until then.

Thanks for the help all the way.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
