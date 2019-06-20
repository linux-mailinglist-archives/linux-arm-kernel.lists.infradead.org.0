Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A514D3D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6kiQuq5w41KCIrNnqLDmhkaAR/nK0hUttBlxPdUgxY=; b=kB/9rFgUExRgzI
	KxiiDZzH1c0c9KPolSBGmQB5eT1zlynoXwKmtgQODRxE1ScJUmZL79ax+drUiDbfdToR3LSRNnWQp
	zm0QY/kv/jwvS79rEj51GL3FRbS4A6+kC+AcffpFEbi+jv1hoUMVrqgo/TTx4OJjHhYzACtAGjuRH
	zHnxojr9UZ2Y0qxtIQJxKLYPWXpg9+3QfoMSQRW6gc2VnPCTCQWTiIpPBF5lQ3WV3kJjw2iHpS7dY
	1IWSYyACQquHa5dQg1OF7dbvLDjDy2vPRRjbLii2+eSYPUZqWPPhPBtW0xN4EbqJ92DyCMbXKkajJ
	+RBbUU4JX3ES6zdLq9yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he01P-00038k-4u; Thu, 20 Jun 2019 16:34:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1he01A-00038F-V0
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:34:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C4E8A2B;
 Thu, 20 Jun 2019 09:34:29 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5E2B3F246;
 Thu, 20 Jun 2019 09:34:28 -0700 (PDT)
Date: Thu, 20 Jun 2019 17:34:26 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190620163426.GC25273@e107155-lin>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
 <20190620154154.GB25273@e107155-lin>
 <CANLsYkxSBuqKJZQLqR238TGe1p5y7QPyLHSZTAOF++=uzGUJjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkxSBuqKJZQLqR238TGe1p5y7QPyLHSZTAOF++=uzGUJjg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_093433_047664_D5099138 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Al Grant <Al.Grant@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 10:14:04AM -0600, Mathieu Poirier wrote:
> On Thu, 20 Jun 2019 at 09:41, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >

[...]

> > Sorry but even then I prefer it not to be default and force extra work
> > to the people who add support and constantly be reminded that it's
> > broken and they are deviating from default behaviour in the kernel
> > which may come and latency penalty.
> >
> > Making it default may hide the problem if Linux is used for some validation.
> >
> > Also we hardly have 3-4 platforms in upstream that support coresight,
> > and many are broken except Juno. But that doesn't imply all others
> > are broken and we just can't derive that unless we have more information.
>
> For now we have a clear trend.  To me it is not a matter of broken vs.
> non-broken but more about what people want to do or can
> (realistically) do.
>

No disagreement there.

> The coresight specification is broad and very permissive in terms of
> implementation defined choices.  It is not because the TRCPDCR.PU it
> not taken into account by a platform that it is automatically broken.
> This could be a design choice or a trade off.  We already have two
> ways of putting a CPU to sleep (architected or OS driven), we simply
> do the same here for coresight.
>

Sure, if the term "broken" is inappropriate I am fine if anything else
is used. The point is we are adding an idle notifier that adds latency
and must be done if and only if necessary.

How you identify that and implement doesn't bother me much, making
that default just based on the fact that more platforms need it
compared to others definitely does. So I am fine if this needs to be
advertised *not broken* but *by design*, sure go for it.

My main concern was additional latency that this introduces for platforms
that don't require.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
