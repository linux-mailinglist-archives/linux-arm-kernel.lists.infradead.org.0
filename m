Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05BB52253
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 06:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVlanM+KZleEFPJCPFDWVhs+VBV5slJBso41dyM5gWI=; b=MriOpo8d7E4bOk
	r175NThBO9D2JfD+x3VlxFGkUm9nes54a+Mvm5TLfWi/E4aecDSAbR3st1gNeYmivEtd9c9nNPBMM
	r9i02Cve7076Pn2jPqe+4Q0TGwNtuQ2NWBDbD2SuLQlXEabF6QGHoBIyyqm3uUhFlkucmRPafH1qd
	I4ht9g8BzveVdmoDoq5scvpMpUZekJlPRCaRVphf3GgneTYKEgzNuPGiCPrhN5zyUpiIu23wpE/ir
	kqg9GqnpET52z3oEABv0gfj1AqS5s1j0GGvXV//hrNTPuM/WTAHBwp0PsFMzUWNtd3CfmH++GtEsX
	l1OmcgveXEXtVFMjFwrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfdRG-0007jO-2y; Tue, 25 Jun 2019 04:52:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfdR3-0007j4-Fo
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 04:52:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so8779455pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 21:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=x++iS19w63sxgFVfWWLm5YJQFUHEat//0dXequQHgss=;
 b=oPMATDOVDtVdhlOcqT7LD8rym0j7XNpvTqF81EmRDXevW5UrlQq+FYBUI8F5pOH+FV
 vOoyEXA3YXGXBeBlycdLp9fk9MazJEIc9K+NxmzsuRCpDdG9h7TuhXujrTj6DMCN8h7T
 Y6i84uBKUBG5O4vYCrqQ7eXupJwjwqHWx/1kMbOsHbWMGfZ3csvfmUoLMbgSOqMptbGf
 KoVs3A8EU6eR5YM3Pxu8PVnJ2VOU/KlDIxEk6zJdxdxyl6DY0AMbUkIrpnJ78EvrnBFB
 TlCzMdE1KIJzqUwkvzH5kvGPEsftIY/nqvyBzHUlz1SabNYgQiXNDdXCyqcmY9m38/Ky
 tNlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x++iS19w63sxgFVfWWLm5YJQFUHEat//0dXequQHgss=;
 b=Wxd2CiGPQU3PNuVwVBavpFFFRukW912boFTR5YkFB3GOCLdt0oXAdHcSoM4mSDi+Oh
 A1yA9yExBuZCv362dd0zeEDudl2itI+0XGplpcNDthvw8tOkSHcg0GInxKmwwIrxDE8p
 3GmHqCRxLQeeZnHUF5RT2dbvr7KP+jIZcUiNV1E0DI4ZqGzERR8PJ34ZHcZQvu0Rg40/
 0Vfah+S6zBwOUtVBmdQru2h+4uYUVnnVi0daBywNjzEvO9GvlS5jfgS+INj4lU3+1ost
 +oQ3znIyPACI23RyznaG4ntlesk/BvUIwZaroppbev6Q+BQdbxcgml9xNNJP4kZFf14X
 WfVA==
X-Gm-Message-State: APjAAAXKcBMnq37RKrzSt6B8Vza5fnkMoTfTcrnWgIvoTzuH+RqBxPOE
 XUD89gcx+iknA+2TAsZJAoLbTA==
X-Google-Smtp-Source: APXvYqwq+x8bjy217eJe6SW1wvSRPjFujvsZCYifDyTnFtr9gkiZuKb/hbegQMTzT8JlFrq6Jsu5Gg==
X-Received: by 2002:a63:a046:: with SMTP id u6mr20953163pgn.122.1561438320211; 
 Mon, 24 Jun 2019 21:52:00 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([240e:e0:f087:f467:b43a:6fd7:87a2:c789])
 by smtp.gmail.com with ESMTPSA id 22sm18808541pfu.179.2019.06.24.21.51.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 21:51:59 -0700 (PDT)
Date: Tue, 25 Jun 2019 12:51:40 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: [PATCH] perf cs-etm: Improve completeness for kernel address space
Message-ID: <20190625045140.GA7637@leoy-ThinkPad-X240s>
References: <20190617150024.11787-1-leo.yan@linaro.org>
 <CANLsYkyMW=WG+=yWTLSyMT3JXqd_2kvsrx9c-EwCoKEnRZvErA@mail.gmail.com>
 <20190620005829.GH24549@leoy-ThinkPad-X240s>
 <20190624190009.GE4181@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624190009.GE4181@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_215201_592348_B8C35161 
X-CRM114-Status: GOOD (  21.32  )
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 netdev@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Namhyung Kim <namhyung@kernel.org>,
 bpf@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnaldo,

On Mon, Jun 24, 2019 at 04:00:09PM -0300, Arnaldo Carvalho de Melo wrote:

[...]

> > > > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > > > index 0c7776b51045..ae831f836c70 100644
> > > > --- a/tools/perf/util/cs-etm.c
> > > > +++ b/tools/perf/util/cs-etm.c
> > > > @@ -613,10 +613,34 @@ static void cs_etm__free(struct perf_session *session)
> > > >  static u8 cs_etm__cpu_mode(struct cs_etm_queue *etmq, u64 address)
> > > >  {
> > > >         struct machine *machine;
> > > > +       u64 fixup_kernel_start = 0;
> > > > +       const char *arch;
> > > >
> > > >         machine = etmq->etm->machine;
> > > > +       arch = perf_env__arch(machine->env);
> > > >
> > > > -       if (address >= etmq->etm->kernel_start) {
> > > > +       /*
> > > > +        * Since arm and arm64 specify some memory regions prior to
> > > > +        * 'kernel_start', kernel addresses can be less than 'kernel_start'.
> > > > +        *
> > > > +        * For arm architecture, the 16MB virtual memory space prior to
> > > > +        * 'kernel_start' is allocated to device modules, a PMD table if
> > > > +        * CONFIG_HIGHMEM is enabled and a PGD table.
> > > > +        *
> > > > +        * For arm64 architecture, the root PGD table, device module memory
> > > > +        * region and BPF jit region are prior to 'kernel_start'.
> > > > +        *
> > > > +        * To reflect the complete kernel address space, compensate these
> > > > +        * pre-defined regions for kernel start address.
> > > > +        */
> > > > +       if (!strcmp(arch, "arm64"))
> > > > +               fixup_kernel_start = etmq->etm->kernel_start -
> > > > +                                    ARM64_PRE_START_SIZE;
> > > > +       else if (!strcmp(arch, "arm"))
> > > > +               fixup_kernel_start = etmq->etm->kernel_start -
> > > > +                                    ARM_PRE_START_SIZE;
> > > 
> > > I will test your work but from a quick look wouldn't it be better to
> > > have a single define name here?  From looking at the modifications you
> > > did to Makefile.config there doesn't seem to be a reason to have two.
> > 
> > Thanks for suggestion.  I changed to use single define
> > ARM_PRE_START_SIZE and sent patch v2 [1].
> > 
> > If possible, please test patch v2.
> > 
> > Thanks,
> > Leo Yan
> 
> So just for the record, I'm waiting for Mathieu on this one, i.e. for
> him to test/ack v3.

Yes, this makes sense.  I'd like to get Mathieu's green light as well,
it needs to take much time to build llvm/clang on SBC, so it's no rush.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
