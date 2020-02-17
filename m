Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8C5161634
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zh2BEbp8YToTLnqZeV7YTvSk3tMBt/Re/tQDiMh745A=; b=B98Lrh+2mt5RD8
	0N2Kv36C18PNgCGjEfq4DhQsSu7+VHQBf/R+PA29PE9IEj79ZyL+OODfziKXzzxjmxGqSQhY3lC/8
	6OGM/jCMWYKMHHcdFZ9sXQrVG1Q5KiDSZbhzl2pBgmCNRFBS5ELCtshDkdsml5PFFSlsaZesLPwNz
	RfTQUKMVwz/95z3zKrDPR2GxHNH4LRUIiCChcn5Sn+I2kIAWVgCVsoVq2fdsN11O8Q0pkrjtGUn3p
	NUMfilqHqcMUXwql85z+zKhtcYNC3nYzHLHok1W0uCpsygc095xJU48PzorbdRa0/6UDGY4yPNjGs
	1oqnPbZzqG2bmQpmQbPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iMR-0005GV-Mz; Mon, 17 Feb 2020 15:31:03 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iMD-0005Ed-F5
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:30:52 +0000
Received: by mail-io1-xd41.google.com with SMTP id h8so6417532iob.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 07:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nik+rqycmEDKKNZsQwpz+4ONEq13jMp/wrMWb26VmVM=;
 b=CtEJ2Ggzvr9hcXYk8dQsXqCegUdOJm67CxgcOD58uMHqi8e5Ia1lcGlhQXPnv46mCx
 nP9DMji9V8xzBPT+lZbnDXAMujFS2Xj5rlYHy3CKOZ20+hrmqwkJoWSAgsvNXOG8C8bW
 9SgvtbhdgP582WK5wIOu9qYAHWu6O+nwyb5jrhOGp5g5B2A3weHU1bKR+iKHONmqt7rL
 LI4k1jjctb2h0C5XbrdeyrlNyuoNLree2iwOVIwfeKtxS1f168LetLE/s2NtPcCFDbWM
 TiA+uqf9tOA/qLnRE0gLSpbeJrHcmdtxCgBlNdtIScDlJNSx67PP9YrR19VLlvlonKQ8
 FpIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nik+rqycmEDKKNZsQwpz+4ONEq13jMp/wrMWb26VmVM=;
 b=hTTVYThNMSxmZmlhatqY/VuOgV6iVjpXtPPIgDNSmGBBZOFOhnV+tLuAxWPDYNQeNZ
 EKtPELOWg50OcEuULQG/9bavQXJHiK0U5MfyjCRz8dWLR6FJtt0AeDIP1T/kd2+RMSyQ
 LpVHkpFcj7dER1OpKUz8uR08OIf79ahwsDO5f4WD6npr2PI2OHy+m6N81cq8EDMHI+/N
 ng2BOyt+HJ5iYC9jxoUaDpTMIEB+04WXd7wGGLf7vKW5SemlM9nMThqVEKj0mq47LoUf
 BT2zNa3bk4ZpywIZ7qy30a3zjKd8G60nI3JSTy7slbLDz/RpO90MdzdEuXi8koHceuUK
 mFxQ==
X-Gm-Message-State: APjAAAW7l7qW5K/Yg8KLTYIcLAPoIiIKuufGNF2MtkJiComb4mGajegy
 MaJQwM5qI8CQxPrURu58KKIvlNMIv5vd3X4Hl6vNQw==
X-Google-Smtp-Source: APXvYqzHpRlg0LlI1yFuBVsd7lVhW3uS5OLSUwYHwPAFqz6TG8K3maLTPKkD9BpY2TRYeSPAy4WXzL0PDSzQ1SOLHdo=
X-Received: by 2002:a5d:9b94:: with SMTP id r20mr12244922iom.140.1581953448514; 
 Mon, 17 Feb 2020 07:30:48 -0800 (PST)
MIME-Version: 1.0
References: <20200213094204.2568-1-leo.yan@linaro.org>
 <20200215032259.GA21048@leoy-ThinkPad-X240s>
In-Reply-To: <20200215032259.GA21048@leoy-ThinkPad-X240s>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 17 Feb 2020 08:30:37 -0700
Message-ID: <CANLsYkyw__tnn5FC=ro-LuaOibP19UhGvPPndjvJDodxcj6Ukg@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] perf cs-etm: Fix synthesizing instruction samples
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_073049_551130_B2582DB1 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Feb 2020 at 20:23, Leo Yan <leo.yan@linaro.org> wrote:
>
> On Thu, Feb 13, 2020 at 05:41:59PM +0800, Leo Yan wrote:
> > This patch series is to address issues for synthesizing instruction
> > samples, especially when the instruction sample period is small enough,
> > the current logic cannot synthesize multiple instruction samples within
> > one instruction range packet.
>
> Thanks a lot for Mike's review.
>
> Hi Mathieu/Suzuki, I'd like get your green light before we can ask
> Arnaldo to help merge this patch set.  Thanks!

At the very least, please wait 10 days before pinging maintainers
about patch reviews.  I have never failed to review coresight patches
and this time is no different.

>
> Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
