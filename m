Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A693911DC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 18:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A4lAtp1PrSB2ERI5v971Pq68PfAhEYM+6TE27N6CjSQ=; b=J93yfrBMh6zev+yPpHW6qON2k
	44nCAPmjfa5pILmvvQwzXNxr42x2WiJWLcEV+o1NQlejoJ2qbk0opURPEbW9Fsxzf84zCFAb156Gv
	FheUiJ6KyfWKbn1ppU9oaQQKTw1uQp+TBGS89oeu/9LBo1k5p5f38BYpyVB+zWWMSnP3fVOJH/gvY
	H0R7g9ji8tRq7UqsXmWqY7tlLlIjWujHUzpxnR7tXMoH4+cwqHZxTOTngeo8Z0hlQEJLjg67dAYu3
	efQbQaxB/zR6qgBqApNDpx65lPqTDQVCyTALMwylr/YyI4CIZ6aaCEwrdxy11B4tdE3sctYKnt5BG
	XkjLvm5+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz198-0007q6-Ic; Sat, 17 Aug 2019 16:01:38 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz18f-0007cW-TJ
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 16:01:12 +0000
Received: by mail-lf1-x141.google.com with SMTP id 62so6086972lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 17 Aug 2019 09:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1+7TiPxmJ3iAAUyU8+nGKfNJ+qg4H69wdJGgYgGKXe4=;
 b=renwLVE4t6MRcP5ZcmILI4AbPfXwqYVjMBTfKIElNDtgfcIFYeU8tIrB/gUAytl6lf
 GUpFHkf80zb+V0K3tM4r1Ot/9rCYkg84zdkCVJdaGdaWLOpozsDhzbvufdrpihHrN3tR
 TMxRzxhlJOIgtqRCrMKBJjP0q/GTzQu3Y+xuowVJpW1Icfg6Gn+WBtpfMuxFGsqNj8oB
 RlW1kLKfSyibvLnhWNBdW0PJ1JnQ35HN0rADSVoKpu7sfG7Xl0X/7sr2FWTSDPYnsGg8
 aLYzSLDdBf8VJM9zqhQZCDbdbFM9CTE+LknLwNOfmvJpyWjg0Gz9hP3js+7ih/iHtfFi
 vrkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1+7TiPxmJ3iAAUyU8+nGKfNJ+qg4H69wdJGgYgGKXe4=;
 b=F8dNY7KzabPu7jrVb3yXrq9XmVySphDT56sZlK0pBBGLcj3CoCSBgcEGURSxoFl1ev
 XsFsOKZsF/qJA8DS5fyG1qDUZRUCoF8ISNz0LckcVoUxbskBVHAxEhrOLnyNLD0eSlfD
 Ze1B8qmhDSjTQShHhCaZ2RVk3BN7Ddtk4pnM5aQDUt/VjR3dj2SJ6MMHzDtOB4MSQ1mM
 nqvoCDxJLtntaLv8FJQafD3O2jHACuvU1FcusnbFr8emgpntEHHYv1B8kMfSVf8LXhLh
 a+4vDzbHQe8tOIXP49SRTC9EDQM3+1Z3HUHNLdkVVJctMv5O5OrM81oT71R/Rm7bP6Vg
 mk4g==
X-Gm-Message-State: APjAAAW6kQ+nn40X123HltgpQTgJRwZ56tnG3nAne3JvY3yyi8YrYgi8
 ys2ogz6GUGWyD+oCyoHF78Dzrg==
X-Google-Smtp-Source: APXvYqzgHOkrd316w+DBxyDOOMOwfJvlMQJHfKxSm3Tpn7OUxlUzLbfoBMdqodlTlf7xRwkY3y0i2g==
X-Received: by 2002:ac2:456d:: with SMTP id k13mr7785781lfm.77.1566057666460; 
 Sat, 17 Aug 2019 09:01:06 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:4817:8b14:6cce:9848:7977:d7d5?
 ([2a00:1fa0:4817:8b14:6cce:9848:7977:d7d5])
 by smtp.gmail.com with ESMTPSA id b10sm1517289ljk.79.2019.08.17.09.01.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Aug 2019 09:01:05 -0700 (PDT)
Subject: Re: [PATCH 06/26] ia64: rename ioremap_nocache to ioremap_uc
To: Christoph Hellwig <hch@lst.de>, Arnd Bergmann <arnd@arndb.de>,
 Guo Ren <guoren@kernel.org>, Michal Simek <monstr@monstr.eu>,
 Greentime Hu <green.hu@gmail.com>, Vincent Chen <deanbo422@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, x86@kernel.org
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-7-hch@lst.de>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <b19607c1-07aa-e361-3c26-8bcb063ed8c1@cogentembedded.com>
Date: Sat, 17 Aug 2019 19:00:48 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190817073253.27819-7-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_090110_094652_829747BA 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, linux-mtd@lists.infradead.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, linux-riscv@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 17.08.2019 10:32, Christoph Hellwig wrote:

> On ia64 ioremap_nocache fails if attributs don't match.  Not other

    Attributes. :-)

> architectures does this, and we plan to get rid of ioremap_nocache.
> So get rid of the special semantics and define ioremap_nocache in
> terms of ioremap as no portable driver could rely on the behavior
> anyway.
> 
> However x86 implements ioremap_uc with a in a similar way as the ia64

    "With a" not really needed?

> version of ioremap_nocache, so implement that instead.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
