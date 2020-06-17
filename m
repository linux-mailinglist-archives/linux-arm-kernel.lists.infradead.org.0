Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDF71FD5B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 22:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjvjDl8psldGX2s2MnYX5go2cC7kAXmdktHgu3L/gfQ=; b=HBdtgvF3WOsgNn
	OzKrjWL8ZLSq0qOTq6BulRpnfs4TzJV04Eh1E2YALO1OmvTxM65Tuz03qyaYZvYM65t13sfsUU421
	rD/TCkDot29KjFCvlWf7woY4r3PxaSOvs0yF1l+AxgQySFC+kP1R61p+728IuyKqCuVFgdmZYBv98
	3t+g3YVB5cBRYJmlbPz0NU7Td2kBa+ZrIiqHCgOgRVuOvaWCfBxy4RA/9s6es9e2afm342+9iS2Of
	BX/4fDydT7R9JGPg0/Z3yxmQ7WzhC9ir04pGW4BcOx8dpzBsVEtWiOOSOUzDaE4TMYqtMecdcaxN7
	C+igu+5ZFEBBtnIs/qBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jleFM-000130-Jf; Wed, 17 Jun 2020 20:01:20 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jleFC-000127-QA
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 20:01:14 +0000
Received: by mail-pj1-x1044.google.com with SMTP id h22so1589409pjf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 13:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=caNCPxuwnsfme3cJQ3yFnZipKvQl8RiDyCwsEjsLsMc=;
 b=X27pYeMzeBegpSXYr94WQ9cQIx8qfoKI7mRjZFuswG0wtv2Fk0MvxnXTKKZn2wySjq
 XdXkAxGseiME2d5R6P6OTH3Hu3IXnbw6OaWe4/UQHwh8egU/Zeb/T/Yoa7mgMmoyDvmO
 Mf5NUUL0VBTx07Qg5Vblr2/bsdgQoz2/oi92w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=caNCPxuwnsfme3cJQ3yFnZipKvQl8RiDyCwsEjsLsMc=;
 b=ZLYbMz+o72TAS7grRvSsmQiEbzwXnZQMME5z+HL3vB7smxzAuvW9J0Ab3YfHmmuxw3
 xkl9n9tUXMyJhAqAlkG3JLe8FSxAUMIQNkxsUahGaS5pIeFyE1ARpRDhuOrx8E0Nzxyk
 MqOaWoTbApkkU4yQPMl64eFWb92ZOwUOc4ELdw8Dcw56yaYhXy3eHtFT7GtHf437VktY
 hjBZygdNlJKXe0ynV24SE6hlOwL6R/B7jVtQq47Js9u2bEnmDm70NL8FPYQ4EE7s7G9p
 iBpE+vV/4SLCLMx+/Ch+HteUmCZooAHGJa1fmIx3yPELJkVWV3wRLyV/RiLilwkYRiEF
 GTaQ==
X-Gm-Message-State: AOAM530PnBScoWC7RnTOs9oV4TYNx2BLpP+8eXyFIWCUCZkzEvu+QoVx
 bcrwNia3ltmiqlm2slUVeIjJ0Q==
X-Google-Smtp-Source: ABdhPJyPwoUI6HSyoEhh3ukwzEqMPFmJ63d2Boybwl/wQzQT0a3lfMeOWwHvgWFA8yyGf8DRLkfEnQ==
X-Received: by 2002:a17:90a:ce11:: with SMTP id
 f17mr654054pju.123.1592424069090; 
 Wed, 17 Jun 2020 13:01:09 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id h7sm599873pgg.17.2020.06.17.13.01.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 13:01:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200617113851.607706-2-alexandru.elisei@arm.com>
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
 <20200617113851.607706-2-alexandru.elisei@arm.com>
Subject: Re: [PATCH v5 1/7] arm64: perf: Add missing ISB in
 armv8pmu_enable_event()
From: Stephen Boyd <swboyd@chromium.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Wed, 17 Jun 2020 13:01:07 -0700
Message-ID: <159242406774.62212.13909672383879587787@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_130110_846080_1B228878 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Quoting Alexandru Elisei (2020-06-17 04:38:45)
> Writes to the PMXEVTYPER_EL0 register are not self-synchronising. In
> armv8pmu_enable_event(), the PE can reorder configuring the event type
> after we have enabled the counter and the interrupt. This can lead to an
> interrupt being asserted because the of the previous event type that we

'because the of the' doesn't read properly.

> were counting, not the one that we've just enabled.
> 
> The same rationale applies to writes to the PMINTENSET_EL1 register. The PE
> can reorder enabling the interrupt at any point in the future after we have
> enabled the event.
> 
> Prevent both situations from happening by adding an ISB just before we
> enable the event counter.
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 4d7879484cec..ee180b2a5b39 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -605,6 +605,7 @@ static void armv8pmu_enable_event(struct perf_event *event)
>          * Enable interrupt for this counter
>          */
>         armv8pmu_enable_event_irq(event);
> +       isb();

Please add a comment before the isb() explaining the situation. Nobody
knows what this is for when reading the code and they don't want to do
git archaeology to figure it out.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
