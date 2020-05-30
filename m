Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A3C1E8C8B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 02:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWv0PoJfLM8+C7jWB2DgYOg+rmQPFGxWscsM5zCcsMk=; b=mDjo/4a86Upwpo
	ZHfAdfnQwOpfAWSNLktgUgFzsrfTkWzpTkLchcSTbEApgBQepxO1yWz/WHYNbzZELaY+WmcBUXJep
	ueKfBvMThrAChjLdpqXYTSL4m1DHANk9xzi3JZ3x/38E4BkiPwwiRByLYmC6NNWcN7rQMWQ6/aLna
	Ey2U1kXTaGSJfXDUTWNvj1xOJceNNZgjMAl4pbOWsf131eFRKCIUxOsmamdlPqQ2ss2FpxFjF2ftc
	Qx4vrwExD9cJX/tMAqRTpqSpSw0otevb9fu/ImofxpSQ60juJZ9KuwqisiwZCL6Z6ARzZuyB4qv2C
	mIqIXral+VvWKfQW12zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jepRJ-00028J-3P; Sat, 30 May 2020 00:33:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jepRD-00027x-5d
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 00:33:24 +0000
Received: by mail-pl1-x641.google.com with SMTP id y11so1853583plt.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 17:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=K40zQGEK4jSQHBjFQCq4Zws8+ThGBud9TFA0gM2iEdw=;
 b=Na0v5lkDLc2WjRPJr8zp+9Hkpgnz8pIDfX4L3tZa1hn0l8xy2E9lJ+xt+7VueM4qVc
 M3EDCO/DAYPNvqkHnW28mjGBrN4aORwRczWa+NuWl2e09BpV4YTrTz0/GGT0lXB4e9EW
 g/xxxvnv48IuXj0ZezKKW9xKx5uN2wFYoVKkGyDz7nWpg4VhETPYHyDw2WLfVXvDEUen
 ASrLv6WaEuo0mhkDuLMmge8uW+rCA54XBTFw52mPlSEiN3de40GWH1cM4L0JnslFpjQJ
 sI5dbjJY0WK3esiD66Z9RJ+WvpPD2zAQSIxg3R1f5vzp4ohaHvk+tY/g2jjd8dhsHzoJ
 hiqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=K40zQGEK4jSQHBjFQCq4Zws8+ThGBud9TFA0gM2iEdw=;
 b=NWE/LrhGfB0vqI0mFK/iuSvaqyi9UweabytY4R45JqEjLOxhmIkhvSbwkE7OyqKtPn
 zG6fvUp9n9qSb2ZYqbtvTunSIU/wYtjjse0q+JkX/krHJo4ANskxvwNHvTE7sV3Sc8zq
 UKf0+Vu/ciLingVneEfxhzz6w5J2Cn+KPpVPZLwhlv0UuoGNAMpbvy06tLtnLBde5aOc
 pf+jgslxZ0ZEZx8as7A4UTvBi5WZyf88TrmpJwJHw0e1A5cR1upODWyOlIQNTI1UBsUt
 UoV9TvAVOeXY3V1icLk2py/E70bpttaHiCPB4x8FV6BPV7QvbsQVuyrU0gyI+vBvWRCP
 01vw==
X-Gm-Message-State: AOAM5334FlGBVlH9qCjQGLITp5oQ2W81XjW7GW9VTNBPh1E6rjuG24lO
 YeAkwENwvZ90wv1qjTYmCP9vNg==
X-Google-Smtp-Source: ABdhPJzZBBqLk8akClIg5R7Rhi70HOWdFvnycU2XevRqjMbM6vpQJYHYMOMftB6KD+8DCjerj0OTWg==
X-Received: by 2002:a17:902:6a89:: with SMTP id
 n9mr9262953plk.337.1590798802125; 
 Fri, 29 May 2020 17:33:22 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id p4sm8080211pff.159.2020.05.29.17.33.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 29 May 2020 17:33:20 -0700 (PDT)
Date: Sat, 30 May 2020 08:33:30 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Subject: Re: [PATCH v7 0/3] perf arm-spe: Add support for synthetic events
Message-ID: <20200530003330.GA26136@leoy-ThinkPad-X240s>
References: <20200504115625.12589-1-leo.yan@linaro.org>
 <20200522030919.GE32389@leoy-ThinkPad-X240s>
 <20200526102602.GA27166@willie-the-truck>
 <20200526104337.GA7154@leoy-ThinkPad-X240s>
 <20200526195438.GC2206@willie-the-truck>
 <3a80a66f-b991-ec55-77a5-a8fc4fa69e5e@arm.com>
 <20200529152800.GB21552@leoy-ThinkPad-X240s>
 <20200529161830.GD537@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529161830.GD537@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_173323_249821_AAC2E643 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2600:3c01:0:0:f03c:91ff:fe8a:bb03 listed in] [zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 01:18:30PM -0300, Arnaldo Carvalho de Melo wrote:
> Em Fri, May 29, 2020 at 11:28:01PM +0800, Leo Yan escreveu:
> > Hi James,
> > 
> > On Fri, May 29, 2020 at 03:58:23PM +0100, James Clark wrote:
> > > Hi Will and Leo,
> > > 
> > > I've tested this on an Arm N1 machine and it looks good to me.
> > 
> > This is great!  Will respin the new patch set with adding your test tag
> > and send to ML.  Thanks a lot for the effort.
> > 
> > Hi Will, Arnaldo, sorry for late replying you due to other works and
> > thanks for suggestions in other emails.
> 
> Np, please do it on top of my tmp.perf/core branch, it'll become
> perf/core as soon as testing that is ongoing finishes.

Understood, will do.

Thanks,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
