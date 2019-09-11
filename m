Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED96AF70F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 09:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+o1KK/KmH2rRiSPj063te+/4fXEDgRU+ouYPnXSUpsQ=; b=iwWJLobumTuSqs
	K+5mRml79kio9kiy7L7cMrGBNbsZOtjBHYKTNjFrOzXH+OaWBoK10qBwBXK/YAFYmXAxjdD4xvX/L
	igGVsrjcX+oHEXj5hZj+Hfv8QeC6EwgNNgh9jqjov/Mx2HYsZ/8p19HyTrqqyZc8IxIxzZa7US+9s
	j0JUTCp9Gice8jqyIIbM6lm1r5kEHAVKT8fMeWYFlJi8W+pGAqQTItP8YViUx+a6ZkOx8W0c5vRpQ
	+tjCrZ76EOm1naLLTKEJdSftuu9PQeJoa7HMexxXJolsp5nc2+WSvfR7GmJwfThcnDbmSQTckO/Rk
	KI01vZBuaXGcin7YUyLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xFB-0006oF-QL; Wed, 11 Sep 2019 07:40:49 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xEv-0006nx-Ad
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 07:40:34 +0000
Received: by mail-lf1-x144.google.com with SMTP id t8so15603897lfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 00:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yGNk1RwgDOsyCCRD4DtS7SLFCAJ4uRNecHgJg3xepp4=;
 b=UpBQbVsnN5xYSgo2RjhHUKXqrhI6w5Dj/A7gHNFQTrWESKN+M6dDTjNuLc9/tPyFtF
 gkmtyUkWWffk5X1QjAJBDfi78m78uq9xVx3ZOvPuQy7N7DlEfjdelv5cLTb60Is/zzVq
 eDFmutokRgkKMAgie0FdUbXwOg/Vmq8y2caArGG3rOxq7XBShYzCWXkMZno2Ame7YACx
 7MmL+Io03yInzGtRvJehZa7Bv+GipAN8Dg5049AVUc5cqbjxo1dRRUQt9v9lw4rWeMaM
 20vqMyYqloFKydKnl3tbU5OdD6kxUizOhwgWBs/Wjz8+20CvoqlPrhjhivdW1ejikC05
 0srg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yGNk1RwgDOsyCCRD4DtS7SLFCAJ4uRNecHgJg3xepp4=;
 b=oOZ576rdykduRrRjwpsIM7U54QHNj52l/nMucybgs/dGEShTDP/tMdv6ulwuc0PCIM
 Kn2Iqr/5WAymtNL2URZPKSxUiWuGBsR5uVB3nBbqIytV917gyy+7JWscTONmP6b3cq1e
 gvuMeJAzMTWNhR6fqE22djSYxV0XGK0GbzuVIPbw6T5SVnXIlwcM/4/ydsJbhqqtqLmo
 uzSngpTWuAbtFf9rUR9paiHfiEl8b5ZY4vZ7kzkRptZbsGFwcUCcKGsJ5LqeaZVbeU6X
 ZbKXMBnq/bOfVquQVWS/E3abX4byl1wpfu/GNQsO7mgkjFj6ROwCrKcAVL3Litn0lYVo
 Hh0w==
X-Gm-Message-State: APjAAAUN7a8on4Edie2RSy0lrRVawCLM+/FKTm2GvDdPVt0hsJmtx8Fo
 Yq3XlHVl5CYKfApAUBJ9meGpFtouwrEUnkBvE8I=
X-Google-Smtp-Source: APXvYqwUncX3xOzOXQXzt6cKSxnSf5sLh9t6B+yzNdkVqFRWuIDLJV/37rJRMtQanjEENFU/nt1fZd0aj42mKIo6yU4=
X-Received: by 2002:a05:6512:6c:: with SMTP id
 i12mr23245659lfo.40.1568187630837; 
 Wed, 11 Sep 2019 00:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190826095828.8948-1-ilie.halip@gmail.com>
 <20190911070314.GE17142@dragon>
In-Reply-To: <20190911070314.GE17142@dragon>
From: Ilie Halip <ilie.halip@gmail.com>
Date: Wed, 11 Sep 2019 10:40:19 +0300
Message-ID: <CAHFW8PTS6DQCmJKOC0PK=4A6zjOZm6Krhr6MTqB1c8kZ8++hNw@mail.gmail.com>
Subject: Re: [PATCH] bus: imx-weim: remove __init from 2 functions
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_004033_394128_6BD5ABE3 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ilie.halip[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

I think you can disregard this patch; the issue was already fixed by
Arnd[1] a couple of days after I sent it.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/commit/?h=for-next&id=3b1261fb72c7dc6a9e4604ef1ea01d6bb67cc3d1

Thanks,
I.H.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
