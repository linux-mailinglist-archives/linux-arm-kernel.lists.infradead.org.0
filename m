Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA15447FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 19:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nYCYnmRY+YcB5v0W0DGAd8erunJ3/30Q2fLJf8Z+6U=; b=o8l2UADkfEvjLd
	guzZm4q6mj40mWZECWy9YlxkZRXrRQCyWBMfINTPcZbk/zSOIlW1s/wyTg/MK213ErIRWS4jIxkc+
	lbhLQRsxo3AU/KgqQgDO6hQFMWcqKWc5NjSH/Gb6fufabSgG5JfgndUkorM9PllDSawCOKfa5B1JC
	dkYGsQ6oQ2byseV21SYg2WtCESjWGbyFFKUxn2inWD0op1yECSNEn/DDFl/K559sZpJsmweilZ8t8
	H1NHD0up9vJMnAZvd5utLddCRLxtDcv4ZejnCsvTgRphN7fy9F1PR4k5vH7nuMJuy/SE3IRoAuPn7
	s9f3eY5LuqzbEaDOpEhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbT9s-0003D9-2a; Thu, 13 Jun 2019 17:05:04 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbT9e-0003Bt-3c
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 17:04:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so11706755pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 10:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EnPkPuY0upC8b7jCW297iBQZhVtXmFo88c6fyE9w1Gc=;
 b=h2WsuVwVp36pqc7BZuctAOn63cTvP51Hw5w3oBdwJeES1hkGgRdqnS1YcuZ9P6YTA6
 fql65HAXNTeXWN/IB5NZAanRhhSXXwsapVsfFEZSfBcTFjPiLTlKYxZaHQxK19qDxyG3
 BhxVvxEucyUVpsqCwKw2P5XM3VM2gap37ZMYMnrGGSrxaSF3DE2CZSL374Gl4xDUFwhn
 37Ckn0WqGBuSFv+XOeqwbZjPy2lVp/nEzM1f8s8zr42ZUemBl7XcEfwbWdf6xtatu0kj
 h4OI3FyHV6L39toMChIwFos8XNcAu7LekDrbld3atSp0grnI9lm6Ztoq4HR9aHcEzzVB
 +jIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EnPkPuY0upC8b7jCW297iBQZhVtXmFo88c6fyE9w1Gc=;
 b=DfDzdz4ei9JsTxLpgIQm52byn5xwanW1CmehuiXiflKHfeEi9HFjJ3mDcKE/xvVMky
 ERo0RLkZslBplINSPQjV33Qw7Bf8xgmTJ6OHUICLHf8s6IUm/C0kv3Hzok0gP7NkTpde
 dsFtMfnuAqA4USs0PHYULm/vKat8M7rVthwk6wGd5+sgg8UHjXCqbtHPEx4uxX07sVci
 rssUQcvsv0Gjrw7jIs+nosM+cn9LpDBVMaOn8u90iZ1RNsKLEvCeQZlbwsxj4y4ED2XJ
 IkSSjQmM1blEsaYcM9gMU3Eya5Y1zPQ0KsQTxx3O9HD74is4WlkjeTQMHxi9FJI1t6Ma
 iLeQ==
X-Gm-Message-State: APjAAAWaMovvhU4MfQZzt9BiheMD0wHpaX8nhZ5gwbnvMKEeHfqGYOL/
 E0qcuhfH8Tg2d9EH/QzadjHLekieQ1FSvH+2wQQ=
X-Google-Smtp-Source: APXvYqxcMn+Xp7KK1rDTtjbiF/s9/qMAS0Od0rblM/JIyaXggdbRc5s5/qqZIPwozR39yiq+kN0sCF0Q4lr+B/T1BU4=
X-Received: by 2002:a63:158:: with SMTP id 85mr32252700pgb.101.1560445489065; 
 Thu, 13 Jun 2019 10:04:49 -0700 (PDT)
MIME-Version: 1.0
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-2-git-send-email-Frank.Li@nxp.com>
 <20190613112320.GA18966@fuggles.cambridge.arm.com>
In-Reply-To: <20190613112320.GA18966@fuggles.cambridge.arm.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Thu, 13 Jun 2019 12:04:37 -0500
Message-ID: <CAHrpEqRZ0YL9SFk6o7iebJ+diJVMTtyba_9GtujL7H7e4G8qQA@mail.gmail.com>
Subject: Re: [PATCH V12 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_100450_155449_C87FAB62 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lznuaa[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Frank Li <frank.li@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 6:23 AM Will Deacon <will.deacon@arm.com> wrote:
>
> On Wed, May 01, 2019 at 06:43:29PM +0000, Frank Li wrote:
> > Add ddr performance monitor support for iMX8QXP
> >
> > There are 4 counters for ddr perfomance events.
> > counter 0 is dedicated for cycles.
> > you choose any up to 3 no cycles events.
> >
> > for example:
> >
> > perf stat -a -e imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/,imx8_ddr0/precharge/ ls
> > perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-access/,imx8_ddr0/write-access/ ls
>
> I've pushed patches 1, 2 and 4 out with some minor tweaks to:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf
>
> I'll leave the actual .dts change to go via the soc tree, since last time
> I took one of those it just resulted in conflicts.
>
> Frank, Andrey: Please could you try to run the perf fuzzer on this before
> it lands in mainline? It has a good track record of finding nasty PMU driver
> bugs, but it obviously requires access to hardware which implements the PMU:
>
> http://web.eece.maine.edu/~vweaver/projects/perf_events/fuzzer/

Okay, how long should be run generally?
I need make sure it can pass without my patches at our platform.

Best regards
Frank Li

>
> Cheers,
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
