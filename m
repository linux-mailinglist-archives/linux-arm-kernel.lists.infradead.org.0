Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E76161671
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsaSNz3k0WfdQRQQBtKxWFfAKShlCxJaPaiizHJHLTw=; b=FPKalIlfgoXpIq
	8o7N0zTCgfanNfgtH89dvWozo1I8oEs8/VPSSRWMxR5JsrMougKpD44mdFZYRbJkooKTd+YOl+w9Z
	WzHUg3O02BXww40pucFO9wPFk5wYyWV9NeG0P4ntY2N8dA7soo+YVSqpihwwIG9T87eDP2w5ljl1K
	iZFg96wuAo+Kbe+Rc5Xkn5IVFExYZGFdJqks3kPPMUt8GhF18eOC9PqcO9fwyn+cDcn4oE8BwAk/u
	yEbtxAgOKvOhoitgLEHE90GzSgEzTq9jSHXbfKlcDPnJm2UZxIsn6FRFyU5eia3oC5PH+j/HHcQar
	/vhAiU05CiAseDJKdtsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iZS-0002i6-By; Mon, 17 Feb 2020 15:44:30 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iZK-0002hn-H2
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:44:23 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so9073168pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 07:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TJXDZSCq2C/hzS0+s/A5abIsTN6ZxXYpE+Pc/HXSqLk=;
 b=drLOmyEZ4On7Q0EGZ6WeMzgYMsbPPXEW0fs1U8SREyy45mFunqI9xcCxFAvSFkd/5P
 KlsS59REzQvT0qK/lWsmxh15FuH5z0EzabavpU5gDo61b9KOoHv2HJMjSIknIIwqLmK3
 tMEnXMXUcGbnwVY2V2tlk9SYAskk6wRrXBO11z7lc6qhbOe4d/UrTTNTzw0XKmmldUNp
 YQor96RvSt2btWB7uCE3S8kvTstl0ZQPKLv74zRdcon0DNXdPIUjJaj4++eFAEd2HvzQ
 Ri1vZ5LZb4xIWXjuWIw1hir3pMq/ao3o37afR5rJ9pwZ5w3FuItdYRWjRRlCHQhTGStn
 GnOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TJXDZSCq2C/hzS0+s/A5abIsTN6ZxXYpE+Pc/HXSqLk=;
 b=KBzSb4d7S6HTQESRnmxTdxg3Cekkim0uYR8F1jXe2fluBrm2moB4MZboT328Nzd4HJ
 8R86mU9Bb4a4WtF0IA9zX3rCCDl4FGwPjy0o76VSBRL6D+ZxUvLK2FuDUtkftbgt0zrT
 1khy5gHy7BpRABrrLrj61UIcxWaP20oazflY1GsDnm0+ZMiwyrjk3FHK2mwk1G5ibCNK
 yd/zZl1gLb9GmHO+eU4q9JKAhmXn3oBmUCiUVc3139Ud90o+ifbxaNBKgGOUR+WqODqC
 56wBsEVyyQNB8gcycKo1F9cKrAtCpBFriqZ2DjOPuyEJ6tAX3BBqbQ1mIPh60NI/Nl1J
 YXtA==
X-Gm-Message-State: APjAAAVE+XeNyVwaGdtK3PUAxMd/00JrDLXcUt6rLabXTswX14L213YW
 gQVJWGm9dMbb4UzO7UrB0BvLSA==
X-Google-Smtp-Source: APXvYqxKKpZ5Wald3xIFqMGCzo3CdKzSugQnZ88lDLONA9k2+lVLBsaPE438KLhQsNycxQOCwVxdLg==
X-Received: by 2002:aa7:8582:: with SMTP id w2mr16351595pfn.89.1581954261663; 
 Mon, 17 Feb 2020 07:44:21 -0800 (PST)
Received: from leoy-ThinkPad-X240s (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id b133sm1314225pga.43.2020.02.17.07.44.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Feb 2020 07:44:21 -0800 (PST)
Date: Mon, 17 Feb 2020 23:44:02 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v4 0/5] perf cs-etm: Fix synthesizing instruction samples
Message-ID: <20200217154402.GA20241@leoy-ThinkPad-X240s>
References: <20200213094204.2568-1-leo.yan@linaro.org>
 <20200215032259.GA21048@leoy-ThinkPad-X240s>
 <CANLsYkyw__tnn5FC=ro-LuaOibP19UhGvPPndjvJDodxcj6Ukg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkyw__tnn5FC=ro-LuaOibP19UhGvPPndjvJDodxcj6Ukg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_074422_569044_43B8B27A 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Hi Mathieu,

On Mon, Feb 17, 2020 at 08:30:37AM -0700, Mathieu Poirier wrote:
> On Fri, 14 Feb 2020 at 20:23, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > On Thu, Feb 13, 2020 at 05:41:59PM +0800, Leo Yan wrote:
> > > This patch series is to address issues for synthesizing instruction
> > > samples, especially when the instruction sample period is small enough,
> > > the current logic cannot synthesize multiple instruction samples within
> > > one instruction range packet.
> >
> > Thanks a lot for Mike's review.
> >
> > Hi Mathieu/Suzuki, I'd like get your green light before we can ask
> > Arnaldo to help merge this patch set.  Thanks!
> 
> At the very least, please wait 10 days before pinging maintainers
> about patch reviews.  I have never failed to review coresight patches
> and this time is no different.

Understand and sorry for hurry pushing.  Take your time for reviewing
and no rush :)

Thanks,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
