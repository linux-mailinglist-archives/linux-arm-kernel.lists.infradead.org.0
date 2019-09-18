Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B696FB5A2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 05:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLnhlTztcTgLr9vhK3vq6av9at++tzTXJSIA4aWXRhU=; b=iF0aSQjFKil+Y0
	12B0gdF1BqUzwFgXTt8R31nVhAawT1SVRhJAD1fW5IZFQIA6WsbrHjCTm7OkBHJY3cY5AWtre2Jst
	q+wJZ41WqzmjmuZXjHzRuC7L3EhTBOHHqQjixKsGy68RohoJyD0owAiY5AVyEs7B9mds5EBpp9tsm
	IHh5X2kyDlwhjmxfbo4g/a87VGsPGOGfdFFijkyemlYe6U30mh4j7LYZQ+8Bpmw1jIndGPLf8kMDe
	N55B+iFYGQYtZY7NQT9S5kGr6zoPqclH2eqROLCiG83aacAKuBSsrUWv+4VWMGWem8EI3ohAtUnz5
	h9nDFFmAetYNrIXwS4Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAQs5-0005E4-8j; Wed, 18 Sep 2019 03:43:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAQrY-0005Dd-Ph
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 03:42:44 +0000
Received: by mail-pf1-x443.google.com with SMTP id 205so3457614pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 20:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GbKlbpTFe+CN6SKqbKlc9mQcgb7sBfZRnKgAQN3AI1c=;
 b=BXmh30TEdIEExjRnV42l+vfzdAPAD/riGCZ7IGy53Z0oadUQcEpZgqiw024GpCiSq8
 NcizBJivS4lGx4OFb7vZPgLvHK8tM/KgFGWseCGnc0Jq7rALDywN/Inxh+NR32tUJKby
 7+cbX14kBGQ/C+JTIUDbxcnQeYbv9b7du5xjArn7Fz9gc52iX0hXQXy91a7hKR6vhP4i
 eCQTiL+hpsslW1kg5MoLRgQu61dcQnBf/X0i+dg7irCtegc7acCSboWsHkp4rNTnpyx3
 lG9ZuPq4a8uvsV+nEI8o2dvsvrGxw67x10BLJLSJCEbnqe9/zZ7HKZnVXiKCaAnNrCJc
 n/Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GbKlbpTFe+CN6SKqbKlc9mQcgb7sBfZRnKgAQN3AI1c=;
 b=Rjpxz1dFoT5lzSqcVgDfayIAUytcNkgguZGzoTJwW95YJ+l9DLWc3Nq8cNF6LzxWw9
 RyPoq6L6KBhhKz/nCBEz8RRDnqCLcRldrtFwgsYJhGC9dgMvyFlrBJ6mqD7UY+m48Sve
 vOR63Ngfym6pzGNQ64Wxl7PWBtP/i3IS5BPmoVt4PlZkJr8bToKrvBuTnRVjLnRXCrgu
 K5HfCfcmc/AJ94mfVYpi4QuXC4Z9//hVcfeIF+d00aVETHf/cG2R+2xx9nAi0rSkDUAc
 b88MRW+epo6Z/4qenVp4o2WjNXaA6g+RXhE8eSc0oT+vDFAT3OOpoXC4aVB2y608U0Yz
 ZD/Q==
X-Gm-Message-State: APjAAAVRcpW4YvK/Owstpp1yXjNO7IkkBPezZ8DMzBjsiiwRGIYiog/E
 72RjuFfgdvQLXXCuh7ldyrI=
X-Google-Smtp-Source: APXvYqy08BeDDvIm2kVHdHR9PG1EFVLBSMzaosfyRmNnZq/cEClwPDdxo8DDn68lUaEDauBJgWoLBw==
X-Received: by 2002:a62:1402:: with SMTP id 2mr1920506pfu.226.1568778159141;
 Tue, 17 Sep 2019 20:42:39 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id n21sm652294pjo.21.2019.09.17.20.42.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 20:42:38 -0700 (PDT)
Date: Tue, 17 Sep 2019 20:42:35 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [PATCH 3/6] Timer: expose monotonic clock and counter value
Message-ID: <20190918034235.GA1469@localhost>
References: <20190917112430.45680-1-jianyong.wu@arm.com>
 <20190917112430.45680-4-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917112430.45680-4-jianyong.wu@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_204241_100678_DEDDADE9 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
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
Cc: Mark.Rutland@arm.com, justin.he@arm.com, suzuki.poulose@arm.com,
 netdev@vger.kernel.org, Steve.Capper@arm.com, Will.Deacon@arm.com,
 linux-kernel@vger.kernel.org, sean.j.christopherson@intel.com,
 Kaly.Xin@arm.com, maz@kernel.org, pbonzini@redhat.com, nd@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 07:24:27AM -0400, Jianyong Wu wrote:
> A number of PTP drivers (such as ptp-kvm) are assuming what the
> current clock source is, which could lead to interesting effects on
> systems where the clocksource can change depending on external events.
> 
> For this purpose, add a new API that retrives both the current
> monotonic clock as well as its counter value.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>  include/linux/timekeeping.h |  3 +++
>  kernel/time/timekeeping.c   | 13 +++++++++++++
>  2 files changed, 16 insertions(+)

For core time keeping changes, you must CC lkml, tglx, and John Stultz.

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
