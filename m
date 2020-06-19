Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A582003D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orN+gM9M3TqwRr8j3hgOkzXP47IouU4ICGtDPGXz5Ms=; b=NMsFXvPtHuY3du
	k4/CXjC9CsfcpxMSAcMvI1UneHD6Yh3/LQR+HoLzeH+xwnz6VC3h2Tp/PURNd4Zh1WJ9qkGecoN+2
	rdNwo9DDz+qboEP8oagz+GMnLZij/wUZjjS7b7hcCmD121y/bJMOxxa3aQZkyu5zUtzDOHMzRkfFE
	6jf6hA1aohfQILBuNoiDhSpz0PC9D8d2dfOAzA066iO1XzqsQeO/3ACbKem7BVsZgDpD2i4gR2x3q
	i4AvkA9t6306ZhyfAxpXm+s7KOxk0/fVKituT4w63l+h2DFr2vNtQmVnhTU97EREdmsNxzwKhSBX9
	GeC9y1yp2Pg71biH8XpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCM9-0000ry-DS; Fri, 19 Jun 2020 08:26:37 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCLu-0000r4-Mb
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:26:24 +0000
Received: by mail-pf1-x444.google.com with SMTP id s23so4121431pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 01:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=WXQ7rs75ysSuFXnqcpZI4RQbdQAod6KuSMFSARqJDrQ=;
 b=NiT/3X7FtCjDbvhves0ttBJCo44g1c7YJKgUI/62LwHAz5JWAnZ8cfG+J7idLiekNp
 L9T9P46EfV7B9fRtZ3f9BomcD1exZhuQmng35FSpTmqK1cOg81XgaM+bkCz+BRoCA6FT
 YEIfg8/09/MUz3Jo0uFYLoKnlx5vjx+Vrse58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=WXQ7rs75ysSuFXnqcpZI4RQbdQAod6KuSMFSARqJDrQ=;
 b=jxThjlaMdZZXLmzAzYfzPxDIlOVZeiC0dWnEYzRzHpJU+bk7BXEjURcjoi7SiJ4XKQ
 +emyVpidmZ9adGHhZInLNYJG/crQaMT6hpo4DTfskA2ktDjefuLQ9yiLRaedTfdHyCDy
 IEHLnHDdtDvq/tkrv+XMvSFdLB40p7KXyGSP6iWkA4C6z4klc52zrajlGXqF7nGt9i9v
 U5eiciT1GW904sO1bcdJPiDSeNjHYQR3fZZOr3kJFiu1XkEDKwMW8Z9xTe747zuqYsWk
 ykDaeQg6ek7fhhThRJwyj78e1sJ0HqPk6gpO3e5BXgQPGrgTD8roeeYFCpGG4MFIn0aT
 YrGw==
X-Gm-Message-State: AOAM533u7u3e5j7FA05ojNBn4Kzsfycm19N7wOXLwEKfoeiYPD+dUowh
 Zqb2etWOeqiY+JhzkSPUPH+rSRuzfQg=
X-Google-Smtp-Source: ABdhPJzf9EWOeMIjHS06RooaLfY53xadIU9NuVnJQfCmehzesRrSQLbdUlX5VUm3pG0zXTw/ZgG90w==
X-Received: by 2002:a63:e00b:: with SMTP id e11mr2108298pgh.75.1592555181824; 
 Fri, 19 Jun 2020 01:26:21 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id g19sm5091669pfo.209.2020.06.19.01.26.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 01:26:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <bca9a873-3e69-f68d-2266-5f82704580d1@arm.com>
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
 <20200617113851.607706-3-alexandru.elisei@arm.com>
 <159242468708.62212.1739215996563155762@swboyd.mtv.corp.google.com>
 <bca9a873-3e69-f68d-2266-5f82704580d1@arm.com>
Subject: Re: [PATCH v5 2/7] arm64: perf: Avoid PMXEV* indirection
From: Stephen Boyd <swboyd@chromium.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 01:26:20 -0700
Message-ID: <159255518036.62212.17118495764504925359@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012622_763625_B72FC757 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, will@kernel.org,
 Julien Thierry <julien.thierry@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 maz@kernel.org, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, catalin.marinas@arm.com,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandru Elisei (2020-06-18 03:51:08)
> On 6/17/20 9:11 PM, Stephen Boyd wrote:
> > Quoting Alexandru Elisei (2020-06-17 04:38:46)
> >> From: Mark Rutland <mark.rutland@arm.com>
> >> @@ -433,8 +494,9 @@ static u64 armv8pmu_read_counter(struct perf_event *event)
> >>  
> >>  static inline void armv8pmu_write_evcntr(int idx, u64 value)
> >>  {
> >> -       armv8pmu_select_counter(idx);
> >> -       write_sysreg(value, pmxevcntr_el0);
> >> +       u32 counter = ARMV8_IDX_TO_COUNTER(idx);
> > Might be a good idea to make ARMV8_IDX_TO_COUNTER a static inline
> > function that has a return type of u32. I had to go check the code to
> > make sure it wasn't something larger.
> 
> Architecturally, there are at most 32 counter registers, which would fit in an s8,
> so I don't think type checking would really help us here.

Ok. It would have saved me a few seconds while reading the code, but I
guess if I hold the architecture in my head I'll be ok too.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
