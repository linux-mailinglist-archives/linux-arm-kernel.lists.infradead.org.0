Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE69789E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 12:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8qO8xAz0NMGhe4jtx9Fb9ZCt5llBaDaf2agnGUqpic=; b=bp74Ooy33IkDWt
	UZKHopVXkzyxF1aubCbCn5VVxYstkAj2E4I3UwiXv9uKtBssx6u74/1oX0zqvXcV6cR73Gqo6+hTC
	b5iI9WrbqfN0sdLWA+lNzO3qtDsCkJCVHwoH3oIVWJ4Am7mdzkeMuNPvSQ/h356uJFHv+T+ewlDcy
	8ifPFjJ8+0veMDGUYKI2rnERsr6oUPmRMGBAbTdxBDRPRzjxnPxw8rCsEhtWaJglXSDc+Nw3rTLKj
	ix2lLfDckNNesVOrrO7JGai/xcQC9s2oRT9zENQ2svkALcwkPRH83iThmhdwgFK22WSr0tpA+mI6v
	Anv6JuLGeMgwoQ2n9UnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3IQ-0000RQ-UA; Mon, 29 Jul 2019 10:54:26 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3II-0000QU-04
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 10:54:19 +0000
Received: by mail-io1-xd44.google.com with SMTP id j6so43735924ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 03:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q8iqs/lSQVwY/t+gDmVcPAuTj0Q+h2kk0gSLp1nf66E=;
 b=en4fjHFHPiZuiYjLWFL5ihDQesbUNCfuRyhmaj91oj/ylqOLhTIflQnMpSYDZpyze6
 7SJw3muzq4JdL/XpnXYEKkq58Wvh6xqiP28d4FQZfu+M3qTyIVIXvWoWbp2kfCI+6wjf
 o/se6EME6KkyfIV0yXstoyQWfyd/RGTiJn9JbKnSkE/zNQgtEw+rTM7xJZ6SvUoZBokJ
 DHzNUz8qhk1KvlWrlHR7eG1J7kBVJjsT8otTC9WxefpOcUncZb9KlVTo0N2jm3HDh9eA
 SKnFC8B/kch8YM03AUMNFCQxHD8v/652YuKLb6xhIowtkBSsDmPlwLygREHySRiK0lbG
 sWjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q8iqs/lSQVwY/t+gDmVcPAuTj0Q+h2kk0gSLp1nf66E=;
 b=TZtgu+5nUgHLF6WkieGT77V9aM/oLAHuEV9vvD/uc4FUqgq56obcDykeTjz1bFFg7e
 NxY2NxSDJM90O0xfhgG7Hi9nApkNe4QXntH3qGBf379JEsxj5kOnMbXFO4Wc5QU2cdW9
 N9n6ZS0ybCw1htEoHxTSHNMmvm8wnyjeK3NL5NNRtnYwZoCZnR4WV5CZWjNAcLBCe8Bs
 QvURtd5zewG4l2UlEOW1BfTa8KeSQ0TgMdTvpzzjh/l8nl8+39kqNmgQ2yW2pW0s0N8J
 iInXkSqd7pcnZRfyC0TCDlPE7UCXBScQ0qIjFpFVyAfp42DJcDpPlOPe1MN8oZr/PREN
 1X8A==
X-Gm-Message-State: APjAAAW5+YTtNPUYl6UqWTp7xhWLpoSz8O3j+xE+JPUk4bIH/+LE3Rol
 nzbuQDyM/iWQYvxqdU0m2YZvOKgnay6+GkFhmHw=
X-Google-Smtp-Source: APXvYqwKkT5tIBwNGEgYfklsdvr8XCZxuj7SbGRVLa0scIYwQBhSGytpuWUJXX4Z168xOQFckbEIol4rJPZmst9FA7c=
X-Received: by 2002:a5e:c241:: with SMTP id w1mr94473273iop.58.1564397656857; 
 Mon, 29 Jul 2019 03:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
In-Reply-To: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Mon, 29 Jul 2019 16:24:05 +0530
Message-ID: <CAKTKpr5kmG3k4b85Zf05Q9xXpxMNZJyzWN7RXqZdteYUdMkc6g@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Add CCPI2 PMU support
To: Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "will@kernel.org" <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_035418_057881_497D93C2 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Any comments to this patchset?

On Tue, Jul 23, 2019 at 2:46 PM Ganapatrao Kulkarni
<gkulkarni@marvell.com> wrote:
>
> Add Cavium Coherent Processor Interconnect (CCPI2) PMU
> support in ThunderX2 Uncore driver.
>
> v3: Rebased to 5.3-rc1
>
> v2: Updated with review comments [1]
>
> [1] https://lkml.org/lkml/2019/6/14/965
>
> v1: initial patch
>
> Ganapatrao Kulkarni (2):
>   Documentation: perf: Update documentation for ThunderX2 PMU uncore
>     driver
>   drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE driver.
>
>  .../admin-guide/perf/thunderx2-pmu.rst        |  20 +-
>  drivers/perf/thunderx2_pmu.c                  | 248 +++++++++++++++---
>  2 files changed, 225 insertions(+), 43 deletions(-)
>
> --
> 2.17.1
>

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
