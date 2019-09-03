Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A365DA6C95
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 17:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1K53WnKnsybX7rXLpyGW7tL0XOXlttae/1KlO2xKS4=; b=lmKDJCCORrYCDr
	vgZAhAomC9rkO8TpEO6kLY6X3bRFCtCXTDjctKQHnI0o6PNG3wyMWc6TT6Xk5f/eiXOpb3Px6escg
	MV/GvCdTQFcRnYlC3LRBB1MnyBQX3UORD2S/I4DTPSvIAXsIzWYUi3VsmzEtqZC9EZD9NJlLNyGxW
	OXfdFYq5hh+8Zj6mF6N9WHt+osX6kEj28Mo5maFD8OfwNJTJkRpDmCxufAM0gpQRIvB6h8R80Ut1W
	rlEARRBh6/1OvZC1jCuaYE//gi3OOAja0WCSOpV8b3lREVyU2KE2+YAxjsy6ob0DZJMuCIlxUNSAQ
	dzSUVAxK5VOBQPFRBMmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ASx-0008FY-RN; Tue, 03 Sep 2019 15:11:31 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ASl-0008Eh-Ug
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 15:11:21 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y62so11521241vsb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 08:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hFtwKcjhJAcLLvYRWcB0GjH8TlxQpGn6eTjYWs9Yv7Y=;
 b=ylEZdt5wX+4ng+59TTe8Z5AM0jrzsN3AaMEYIMADmVTg11r8Zg8hSdomYSWn5vAtNS
 WdPx+HvtbD0mbkYe04TqreDYO2AwhAlo8DcK5wMufHfP3jzW8OLpbSgh9m2ITtJ/93+C
 IuPbGmZNWPRv2XhykPmlWrr3YsWnKOtgf5nZ/c+/4P8yTxomsVGN95qF4sBUOuGdrlSa
 dUqglLFdIaNNuo1end7siNiC4igj3IxjO3ObKeO6Y+PaKLq7Omf2MD0V81QYibQTHBU3
 romyh0SkZgsXqvo8dIMYuUDydOZSEwQ1DoCBYCk4j5XUpRNtrOV9fAzRqNM5npPZQPj9
 JXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hFtwKcjhJAcLLvYRWcB0GjH8TlxQpGn6eTjYWs9Yv7Y=;
 b=pARGwicYvFQxcSaWrBIhZVz0kfkRoGQAc8FONsHH22y4CgspXDkmwOuVPFhFVmONV4
 +JE2MhlhKyle/HY6tlJU+xjHpboXA28qai0i/6aAmOmR6r1WWMP8JghYE5g+KPG5Ts0Y
 LXIdR0nMnHAPG8sdczvP/z+ObwJkkGksN5CjPByG1+cuq899W3k1xKHQHtzskDLDAo4J
 x/qiBmgQmgbpkHThI0mznC+A2+rUIgP1W6bvuAkY3UxNXIfAMBUtGGhJU94uR0WnodoZ
 yQcdXkcDY9M+JGhxKHnhr/zYiUdDhAOqVprAvxXWwu/DbeYmy4oV9L3srLVd1rYfF8UA
 S4Hg==
X-Gm-Message-State: APjAAAUtSmSkcAaRHNjojlrE2tkJdfNhFhYLMrZnY15TxWtdXTNt6lPt
 TAL1/AA2WEEDdRmqxYu5uvwTnFbr5dfAZOzwOl0Y8w==
X-Google-Smtp-Source: APXvYqxpIMYeuIve5wcn6H3G3LreaM9TjDByR/E25jlqIh9Wcl9ULuHLdLtj22DL88uDB10bfQJRFWazPxLWyNi4TXU=
X-Received: by 2002:a67:983:: with SMTP id 125mr13702796vsj.191.1567523478905; 
 Tue, 03 Sep 2019 08:11:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190902035842.2747-1-andrew@aj.id.au>
In-Reply-To: <20190902035842.2747-1-andrew@aj.id.au>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Sep 2019 17:10:42 +0200
Message-ID: <CAPDyKFph4C7fCcGYzFp2PwwJsaFvw6a0Do4Vm0uF8mbwD7zUzQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] mmc: sdhci-of-aspeed: Fixes for AST2600 eMMC
 support
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_081119_992060_9602A363 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2 Sep 2019 at 05:58, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Hello,
>
> I've added a couple of patches since v1 of this series. The horizon has
> broadened slightly with a fix for SPARC builds as well in patch 1/4. Ulf
> suggested a minor cleanup on v1 with respect to handling of the current clock
> value, so that's now patch 2/4. Patches 3/4 and 4/4 are as they were in v1.

Applied patch 2->4 for next, thanks!

Kind regards
Uffe


>
> The v1 series can be found here:
>
> https://patchwork.ozlabs.org/cover/1155757/
>
> Please review!
>
> Andrew
>
> Andrew Jeffery (4):
>   mmc: sdhci-of-aspeed: Fix link failure for SPARC
>   mmc: sdhci-of-aspeed: Drop redundant assignment to host->clock
>   mmc: sdhci-of-aspeed: Uphold clocks-on post-condition of set_clock()
>   mmc: sdhci-of-aspeed: Allow max-frequency limitation of SDCLK
>
>  drivers/mmc/host/sdhci-of-aspeed.c | 62 ++++++++++++++++++++----------
>  1 file changed, 42 insertions(+), 20 deletions(-)
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
