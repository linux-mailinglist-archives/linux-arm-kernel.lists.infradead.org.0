Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24601E8E7E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:41:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3nYq+xAEJJosQZLideCHDAUM1UqvCQvyXjOrzcrWQcI=; b=lTLmjl54btcimE
	YiaYG6mcceSBLJEHPEB/jxTFrHZzUS3KLD8+LEYWIZU+1Z7T6KGXeA9AGfO5hCBJNaL8V74Gqe9M/
	G85Sq09vlrXibFotINxXkZrZqwWt4d8GIsuHVcVh7qwFv0fQXrkSydnOnTvq4QxMJLrhxr5hk5M5u
	UjgOuvfHLR68dZaIwm695Hv1ST+ocNk4Ec51MpPtTYrJhZGiizSCPpQ9unPonDk/0wv0EWrRFBk/I
	8Te9aGB+NAqCFezFXemFr7iH6Z/fgdel/+ZgqImjBNnJDpHmbYZSIqPG5NWcFaHxzQoj5G1qu7ty6
	kyC+SsyviAIiO5JUu7ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVUd-0005DK-Aj; Tue, 29 Oct 2019 17:41:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVUT-0005Cu-7k
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:41:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id p26so5937137pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 10:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7xSEaHgPrL2UMVtxpL/QZyWiD7SSfTEWfSkyz0gH5eU=;
 b=wnTqEjP2Tr9b5JhJyLAz1L4c7C4QhzqJWcOY+tdXJYJElTH10oMGQKbeC8gEGeBUQ5
 +ZvVFkcSODbxuaTDpe6rNxjMftbhaKWI67YeVSEffZFgXWUNmPRKLIjG3PsgaBf5EBsV
 CDiIZGcJ4ucM39YfWheBfyk+rAm84/Nfl5TauR91/IC9moGCnGEC46jgKz0OWmH+6/H/
 8WDG665mJuuBWFUwhDE8IbfluKH90ODUX8xAIuMYVFnrxWvxdEkko0n3eoOVsFHoOUjP
 uvH16Yh2SRkrErzDMgMm8PcAS0FF7bpOp7W0rB7eEHO6fZ8ebQoF/dmUEFxfKFhH56V+
 Mzmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7xSEaHgPrL2UMVtxpL/QZyWiD7SSfTEWfSkyz0gH5eU=;
 b=spbxYbcTbc1gEntOb/q895BQkagyPqLhw+uIugCz7WFlqeAi6xa5YhXnwsSxuXz6LU
 Hcko1cJpX9n7F56Rg4Q7w1WAQeZBm6INKiWgXwhINQmx8rbRj/r8RdhD/iTq86xJpPaW
 JVJiLQFgPvSE+0VD3HIGpvimEswI8UuvrCNnfC0cOPtzEA1xkVincA8pqEj6wNPNwlpm
 ZP3CvXA7kohcemOmR6aZy5HQbhK1DIh5ksBpc+YQgyn+GsT42TwFgmXGo1HFX4Z1NIJO
 2cXKGtfTgnvdAyEgmHGLK8H5YAyQ4XwQ8oDrA0ntLOk1HM4x9dvDW7FM4U5JawHWZopE
 fJOA==
X-Gm-Message-State: APjAAAX++Rk4N4duZ2Bh0O4bPAnlkrWBWsuw/8G11D7hhFzEiHqSGSgy
 VYLrEGvJh6l/2F5g4Z34MYyAvQ==
X-Google-Smtp-Source: APXvYqyd4hqnHPf92+j9leQi9Xj5QEv/PWa7fTRzsFDdaeWRUCsbNJ3+iDfBuDtveWhmFNd+HdMKNQ==
X-Received: by 2002:a17:90a:5d04:: with SMTP id
 s4mr8087919pji.125.1572370868152; 
 Tue, 29 Oct 2019 10:41:08 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id h186sm17651256pfb.63.2019.10.29.10.41.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 10:41:07 -0700 (PDT)
Date: Tue, 29 Oct 2019 10:41:05 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64: cpufeature: Enable Qualcomm Falkor/Kryo errata
 1003
Message-ID: <20191029174105.GZ571@minitux>
References: <20191029171539.1374553-1-bjorn.andersson@linaro.org>
 <20191029173915.GC13281@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029173915.GC13281@willie-the-truck>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_104109_274493_02BA2F56 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 29 Oct 10:39 PDT 2019, Will Deacon wrote:

> On Tue, Oct 29, 2019 at 10:15:39AM -0700, Bjorn Andersson wrote:
> > With the introduction of 'cce360b54ce6 ("arm64: capabilities: Filter the
> > entries based on a given mask")' the Qualcomm Falkor/Kryo errata 1003 is
> > no long applied.
> > 
> > The result of not applying errata 1003 is that MSM8996 runs into various
> > RCU stalls and fails to boot most of the times.
> > 
> > Give 1003 a "type" to ensure they are not filtered out in
> > update_cpu_capabilities().
> > 
> > Fixes: cce360b54ce6 ("arm64: capabilities: Filter the entries based on a given mask")
> > Cc: stable@vger.kernel.org
> > Reported-by: Mark Brown <broonie@kernel.org>
> > Suggested-by: Will Deacon <will@kernel.org>
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> > 
> > Changes since v1:
> > - s/ARM64_CPUCAP_SCOPE_LOCAL_CPU/ARM64_CPUCAP_LOCAL_CPU_ERRATUM/
> > - Dropped 1009 "fix" as it already had a type from ERRATA_MIDR_RANGE_LIST()
> > 
> >  arch/arm64/kernel/cpu_errata.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> > index df9465120e2f..3facd5ca52ed 100644
> > --- a/arch/arm64/kernel/cpu_errata.c
> > +++ b/arch/arm64/kernel/cpu_errata.c
> > @@ -780,6 +780,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
> >  	{
> >  		.desc = "Qualcomm Technologies Falkor/Kryo erratum 1003",
> >  		.capability = ARM64_WORKAROUND_QCOM_FALKOR_E1003,
> > +		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
> >  		.matches = cpucap_multi_entry_cap_matches,
> >  		.match_list = qcom_erratum_1003_list,
> >  	},
> > -- 
> > 2.23.0
> 
> Thanks, I'll pick this up as a fix.
> 

Thank you!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
