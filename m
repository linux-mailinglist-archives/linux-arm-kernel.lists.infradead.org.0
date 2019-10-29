Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48684E8D96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:04:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76AHSRROdJEE5mLsBBIfeg0lWmltb2aDutK0ym97Qgw=; b=rosoVii0QzNGvK
	4IBsZsv8R8ax56p5j2KyCCRSK5a9H/+pzhjYv0BJO4NSlafQcpFxyRtDp3Jeb4MbA3cdENucguD3d
	tZN7UPWVbEHITyjAKZGgZNxnwYlfidGzfh4Bs1K7YXPs+7urqEuS4u77wmN5C1aWqM/j69C5uJQCL
	w3rElLSDbVgdEcOl3RXDgoQmI6OZhKh+4ubv/w6TF3WwrSoG7nB/OQ/+JbTaec12XfoMK3bqhWFCl
	9TSdNVpc0LP8e2D9jF8/etFXEl+J898L050ZFAa/gaTC7Jq0tTQkn2khuDho8r+UMhsKhoPOn04yp
	D4xpmbRQnHt575rNmD3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUuk-0001Db-RB; Tue, 29 Oct 2019 17:04:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUuY-0001D0-43
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:04:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id q26so6372331pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 10:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Q5qKTb2AGnzQjjrVBPZDGTc0pOQQJCIJrhUvwgBwwt8=;
 b=y3TOYber+p0qKKhM7TPlBuz0zXaB//zf1AuJ4gnhs3TT2teityV1QJVea37wsKzDVS
 GhewnCBAkvafmxm3hZwU7zZrfS164DlFCovqYyxmQoJH4Vqq+dDuohxAHXup0VYM8Sqn
 30+IiCwmpgU3xzdJLodL5i/TQLPeynrGS+Fqjbq6ikazkKAac6DRuFJY/1yXrZYvQu/H
 R7s43g5g4866mW1NiHcavB3OseMzA6nBOpW8dDqjnE4vRwTWhvhvddWzbUEH+GJTf4hZ
 cqG+tC4Zj91pvq11DPRkCKPBLUu74TMxQp1DEAe4OLkwvty/3YuCP+owQcVHXWOSKj5p
 e2mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q5qKTb2AGnzQjjrVBPZDGTc0pOQQJCIJrhUvwgBwwt8=;
 b=m7w0pm9hktKjvd/zucoFz7VD+4HdHNbrMNd+9ZRF5NcKWUqAQyuSaIyy8xrrQ6Gc4z
 BMop0TKXt0iKx0U5A6hfW+hfiHVb35wHC9fFFFLKJ2RyHHei4/XqG14lXZBJFau9QTvX
 iDIdAZsJXM1TthfTJoyfmxA0xa8EciPhfzDIu2I/LlcLkOu5JpK2Dg3Zlv4oS8tSsMhK
 KOzrlCe58yAobWJTDxgsVxx6S8PKVwp0qWi59aLAr/rPKgKNPDVlobm2bEN8Ct7xuk8y
 Lz6eE7RVv24aUt8/13MsOmj8q/f6y7h0m7w3hN7toSKuxHgAZOcgQW6Sdmuecq53m6I9
 pFwQ==
X-Gm-Message-State: APjAAAURUsLasGeoSRnak73RxtpyyQ+v9tnf9SoDQX5We6Q35HMcEieG
 Dc3Dqme00u904c5wb/r8W5e29g==
X-Google-Smtp-Source: APXvYqyr6EB0JTFhtAMYl+t/hU+USnVlB+EYIp1st5QMMmHXT4WXGhGGGAWyx57D7FIYLb07L0FktQ==
X-Received: by 2002:a65:47cd:: with SMTP id f13mr7492243pgs.356.1572368641038; 
 Tue, 29 Oct 2019 10:04:01 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id e3sm1070108pff.134.2019.10.29.10.03.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 10:04:00 -0700 (PDT)
Date: Tue, 29 Oct 2019 10:03:57 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: cpufeature: Enable Qualcomm erratas
Message-ID: <20191029170357.GW571@minitux>
References: <20191029060432.1208859-1-bjorn.andersson@linaro.org>
 <20191029113956.GC12103@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029113956.GC12103@willie-the-truck>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_100402_166527_DB5464DC 
X-CRM114-Status: GOOD (  19.53  )
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

On Tue 29 Oct 04:39 PDT 2019, Will Deacon wrote:

> On Mon, Oct 28, 2019 at 11:04:32PM -0700, Bjorn Andersson wrote:
> > With the introduction of 'cce360b54ce6 ("arm64: capabilities: Filter the
> > entries based on a given mask")' the Qualcomm erratas are no long
> > applied.
> > 
> > The result of not applying errata 1003 is that MSM8996 runs into various
> > RCU stalls and fails to boot most of the times.
> > 
> > Give both 1003 and 1009 a "type" to ensure they are not filtered out in
> > update_cpu_capabilities().
> 
> Oh nasty. Thanks for debugging and fixing this.
> 
> > Fixes: cce360b54ce6 ("arm64: capabilities: Filter the entries based on a given mask")
> > Cc: stable@vger.kernel.org
> > Reported-by: Mark Brown <broonie@kernel.org>
> > Suggested-by: Will Deacon <will@kernel.org>
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> >  arch/arm64/kernel/cpu_errata.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> > index df9465120e2f..cdd8df033536 100644
> > --- a/arch/arm64/kernel/cpu_errata.c
> > +++ b/arch/arm64/kernel/cpu_errata.c
> > @@ -780,6 +780,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
> >  	{
> >  		.desc = "Qualcomm Technologies Falkor/Kryo erratum 1003",
> >  		.capability = ARM64_WORKAROUND_QCOM_FALKOR_E1003,
> > +		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
> >  		.matches = cpucap_multi_entry_cap_matches,
> 
> This should probably be ARM64_CPUCAP_LOCAL_CPU_ERRATUM instead, but I'll
> want Suzuki's ack before I take the change.
> 

Sure thing, will fix!

> >  		.match_list = qcom_erratum_1003_list,
> >  	},
> > @@ -788,6 +789,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
> >  	{
> >  		.desc = "Qualcomm erratum 1009, ARM erratum 1286807",
> >  		.capability = ARM64_WORKAROUND_REPEAT_TLBI,
> > +		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
> >  		ERRATA_MIDR_RANGE_LIST(arm64_repeat_tlbi_cpus),
> 
> ERRATA_MIDR_RANGE_LIST sets the type already, so I think this is redundant.
> 

You're right, I got lost in the macros. Apologies for that.

Will respin the patch.

Thanks,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
