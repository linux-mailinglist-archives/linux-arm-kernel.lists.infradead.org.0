Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8041E88295
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 20:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G5uyjNwCJIJYFiabfLv8XcUZ04aXeQ6YzLIDQAhvKfo=; b=Fb1hf/1bJoAPsG
	8IbNt2BU44M+sINTXq/61qx9KmDzyTWuuWycXVJ1Vpz6cxnlVjwSDKFiptjAOZg2Nh5+qvT0R8X5f
	4CpL6IOYUkSeuhK8T1DEhX+6UXmxQ+GO0QqsA/algDb1OZ+rFSuFN1YEUoRRUjb2GmRts75TJpBi+
	mNCrfZ/24zvrnkLwbPQ6Ak/Cc8CdOUwuZ7njPIMjnDuOsxvkHNQgjD40pq+uSyscvqAk2VpWfovSY
	EvwN8pNQHJg8goem//zZBRTfW+JbjfMzQJ6eJPs+tXXAQZKPBCiiLLEnEpiDyFwpAxHNHa5yDUVKb
	GWP2Zg2C62j0OC43m8nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw9im-0007V4-Dw; Fri, 09 Aug 2019 18:34:36 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw9ic-0007Tp-87
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 18:34:30 +0000
Received: by mail-ot1-x344.google.com with SMTP id q20so136113006otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 11:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AKmwT4Oi8XTfOBRZ+EHljM27mGDbATZqErOPdgBZ4Co=;
 b=uNRSX3SRj+xP7NvVoVokIMCRX8HCckf6BPeA7+psneOxE6/T6dicMcRo/VV/vCJxhH
 2ah1jUGPfiEAX0QZe8uTSWR6gFWhgEkVpd7BLRD+hlm1cr791u27ba3ZV816f72C1ok8
 DJvRUpLPV43j5Uaws2WuWHOl5aDZAhlefm6RklI/GKafNpFMkZ7uGhbJLlx6oN0VDFGK
 p9qsSUzTb1aagLcVK1DFaMoBq3cp8E+gw3IHnqJRv0XMMx6N9H/htf+j/p8DpyKdONPx
 7eeraJq2zzFsYaU+6cMltnQHj6kObut6IugXtD7G6VOMY3hT8BtTcsGD9yo4ss/GdWjx
 jZcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AKmwT4Oi8XTfOBRZ+EHljM27mGDbATZqErOPdgBZ4Co=;
 b=KMpotreOcZoOqN6wMKMmmQB9g9urRZAd2CizM274NgYyDii2uk+OUSHxPT5/YKiQ9G
 Uc42c6EiHME+ncS9iCQUb7d2qjbln2lpcDYHaW8W7sxccuz4qZsgdy0YHGgakLyLYc9d
 Zumx764Dmt3Yw43To2/IkfTCWJrnHpWP1dBv0p8eQo/iR28OoaEyPJONL9pate+umfsm
 6hI4dtW36Ufr0ldiL91l7twnLfjwYvj5sUTR0MBYItAiOqzsbqCa1qXCYAGQY/5iCuaQ
 nOxcFPpuNDbqP4oLgfyTu31hVG1d/7wbMeeYB7fUr5txGVZfCQ2yv/cw2bRv89wk/1M7
 bd0Q==
X-Gm-Message-State: APjAAAVXT0SDPP7pAoQ2GfW40hA353mtmYQGzJYHILQCAkiRNTsGsJzQ
 L3eU6W7w+69kdiMeoiDP7FKYAyTpU3vLIug5nwA=
X-Google-Smtp-Source: APXvYqxeNb9oXB+s8Utamw3Uuce2Zu+9B+X1DtgWilPG1ZjoTGNqEEBHw02QzXop4CuNga1GSGo5G+1XOzKOUdUwEcY=
X-Received: by 2002:a5d:9a04:: with SMTP id s4mr22651344iol.19.1565375663936; 
 Fri, 09 Aug 2019 11:34:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
In-Reply-To: <20190809163334.489360-1-arnd@arndb.de>
From: Dan Williams <dan.j.williams@intel.com>
Date: Fri, 9 Aug 2019 11:34:12 -0700
Message-ID: <CAA9_cmdDbBm0ookyqGJMcyLVFHkYHuR3mEeawQKS2UqYJoWWaQ@mail.gmail.com>
Subject: Re: [PATCH 1/7] [RFC] ARM: remove Intel iop33x and iop13xx support
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_113428_671259_08F6ED53 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dan.j.williams[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 linux-i2c@vger.kernel.org, dmaengine@vger.kernel.org,
 Martin Michlmayr <tbm@cyrius.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ add Martin (if cyrius.com address is still valid) ]

On Fri, Aug 9, 2019 at 9:35 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> There are three families of IOP machines we support in Linux: iop32x
> (which includes EP80219), iop33x and iop13xx (aka IOP34x aka WP8134x).
>
> All products we support in the kernel are based on the first of these,
> iop32x, the other families only ever supported the Intel reference
> boards but no actual machine anyone could ever buy.
>
> While one could clearly make them all three work in a single kernel
> with some work, this takes the easy way out, removing the later two
> platforms entirely, under the assumption that there are no remaining
> users.
>
> Earlier versions of OpenWRT and Debian both had support for iop32x
> but not the others, and they both dropped iop32x as well in their 2015
> releases.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> I'm just guessing that iop32x is still needed, and the other two are
> not. If anyone disagrees with that assessment, let me know so we
> can come up with an alternative approach.

I'm not sure who would scream if iop32x support went away as well, but
I have not followed this space in years hence copying Martin.

In any event:

Acked-by: Dan Williams <dan.j.williams@intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
