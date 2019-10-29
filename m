Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4626E8DA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:07:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cGmQnbR+JfNDTLOEQjQeO95c54c908nCA6Hr+0ohtY=; b=VtLmoYHVGILIYB
	ZSTNWu7EGJKpgqgjsAcBf0zJQWMhiduZMc1wy6hlPrmV18JOqJZsN9BYNf8uEy+RJL5LsqJv5Q+Ue
	G3cl+vMgEryQ0ne7NO9LrNoEUoePTDnyyL2RNMMpyrbyBeP0TbSo5Amh5kKWG0lnb3HwPNPLFdrQ/
	agLjRvgF+AboDy5PHmunkRE8Pfxer8NkUED60dXvrzic+mi9h9drwz5qufY04hmyAAC3sA+S6jZhn
	bV9NN4XYBai6VrmyF8EyXa0pmW/e9xToQ3+dch63md/YaaVtKf6a29UWXevmCgH042Qro12K+0A3r
	TaeZIeozbhnn1jL6E6eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUxX-00036y-CE; Tue, 29 Oct 2019 17:07:07 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUx4-0002wi-15
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:06:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id v4so10011643pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 10:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=u4GnrTtOrQejEaELYRBPSBE1OQ/6WvsreGc0J38yGc4=;
 b=XVWRXF/oQeqO5hH9MARUaj/lEcqlZvJbHvV6EO4Kut1kVF5eW35IIzTOHx/WYTrR54
 X3Ltd/8PkY9MLBzG7hJTP9eGaRITzL890W1dDPbxiDe1GZakMyCU0ElbfFOGkTdZ18uU
 YDBrfpUcUilQVaDw38ZYzkoCcHPJrglUtXc/+QL+kXavMHBjwJVJy3YHB4GJsliSzCrz
 FF05853tBjX97KOLJx1zMwKIrvNbNo8wMQ1Zuhi0/K7wDoBw35GUmfbeFrepewkFZhVa
 KDIby2o4jPPDg6NZNtMU/naIDRSlvVWPED0z6MorsCcmq7niig++8q81VSvN+ZbZFxHQ
 FpIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=u4GnrTtOrQejEaELYRBPSBE1OQ/6WvsreGc0J38yGc4=;
 b=dId/8k/MD7LKGENG12MULrEmX5D24akLIG58QFDSccn0u2d+bVL3qJUKnOcBmeT+uh
 lx+Kgh6sABm7iSAQyZNwLftUpO+ztj1br2sb9kgxipQgc7jEuVV84BBLUYjkA/Ur3MiV
 SogcDbmHtDCzSpI7jSFmmcHJvyo1RwxjMj9utazodBE2RSVSeG/f+dDQBzZrY+j9owUi
 sm/r94bfU0V522EA1TeqWjbxWCudKkwk1rSBtqH6kU2wbPqwX34+5EehRNrvns+JmWJR
 YI3LWwodpPKYUKMscyyBcNY0I9qrSr3P1VRBhfqvRZITCq5UIuj+mgvO+4hY8FjwMqzJ
 vh4A==
X-Gm-Message-State: APjAAAXM476QeD5eOKVt/v0633Ope7ib6YWJDyUPCGw0M/G8G2KOuX0i
 6lYGz3D1E8yiYXfTVnuOT/aZTA==
X-Google-Smtp-Source: APXvYqxxmhkL7zLBgZCW8TKbKUkshYT4R+uLXT2RMbgocDu5SuK+1rnnfEXwzR+Htceb946hUMHc/A==
X-Received: by 2002:a65:5541:: with SMTP id t1mr28199191pgr.39.1572368797042; 
 Tue, 29 Oct 2019 10:06:37 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 37sm13127555pgv.32.2019.10.29.10.06.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 10:06:36 -0700 (PDT)
Date: Tue, 29 Oct 2019 10:06:33 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] arm64: cpufeature: Enable Qualcomm erratas
Message-ID: <20191029170633.GX571@minitux>
References: <20191029060432.1208859-1-bjorn.andersson@linaro.org>
 <20191029113956.GC12103@willie-the-truck>
 <1d1a3dca-16ce-f541-5d78-e61ad24227e0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d1a3dca-16ce-f541-5d78-e61ad24227e0@arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_100638_127315_DCEF3B14 
X-CRM114-Status: GOOD (  24.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, broonie@kernel.org, linux-arm-msm@vger.kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 29 Oct 05:04 PDT 2019, Suzuki K Poulose wrote:

> On 10/29/2019 11:39 AM, Will Deacon wrote:
> > On Mon, Oct 28, 2019 at 11:04:32PM -0700, Bjorn Andersson wrote:
> > > With the introduction of 'cce360b54ce6 ("arm64: capabilities: Filter the
> > > entries based on a given mask")' the Qualcomm erratas are no long
> > > applied.
> > > 
> > > The result of not applying errata 1003 is that MSM8996 runs into various
> > > RCU stalls and fails to boot most of the times.
> > > 
> > > Give both 1003 and 1009 a "type" to ensure they are not filtered out in
> > > update_cpu_capabilities().
> > 
> > Oh nasty. Thanks for debugging and fixing this.
> > 
> > > Fixes: cce360b54ce6 ("arm64: capabilities: Filter the entries based on a given mask")
> > > Cc: stable@vger.kernel.org
> > > Reported-by: Mark Brown <broonie@kernel.org>
> > > Suggested-by: Will Deacon <will@kernel.org>
> > > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > ---
> > >   arch/arm64/kernel/cpu_errata.c | 2 ++
> > >   1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> > > index df9465120e2f..cdd8df033536 100644
> > > --- a/arch/arm64/kernel/cpu_errata.c
> > > +++ b/arch/arm64/kernel/cpu_errata.c
> > > @@ -780,6 +780,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
> > >   	{
> > >   		.desc = "Qualcomm Technologies Falkor/Kryo erratum 1003",
> > >   		.capability = ARM64_WORKAROUND_QCOM_FALKOR_E1003,
> > > +		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
> > >   		.matches = cpucap_multi_entry_cap_matches,
> > 
> > This should probably be ARM64_CPUCAP_LOCAL_CPU_ERRATUM instead, but I'll
> > want Suzuki's ack before I take the change.
> 
> Yes, it must be ARM64_CPUCAP_LOCAL_CPU_ERRATUM.
> 

Thanks, will fix.

> It may be a good idea to stick in a check to make sure that the scope is
> set for all the capabilities in a separate patch. e.g,
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index d260e3bdf07b..51a79b4a44eb 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -546,6 +546,8 @@ static void __init
>  init_cpu_hwcaps_indirect_list_from_array(const struct
> arm64_cpu_capabilities *caps)
>  {
>  	for (; caps->matches; caps++) {
> +		WARN(!cpucap_default_scope(caps),
> +		     "Invalid scope for capability %d\n", caps->capability);
>  		if (WARN(caps->capability >= ARM64_NCAPS,
>  			"Invalid capability %d\n", caps->capability))
> 			continue;

In hindsight this would have saved me a considerable amount of time, so
I like this proposal!

Regards,
Bjorn

> 
> Otherwise looks good to me.
> 
> > >   		.match_list = qcom_erratum_1003_list,
> > >   	},
> > > @@ -788,6 +789,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
> > >   	{
> > >   		.desc = "Qualcomm erratum 1009, ARM erratum 1286807",
> > >   		.capability = ARM64_WORKAROUND_REPEAT_TLBI,
> > > +		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
> > >   		ERRATA_MIDR_RANGE_LIST(arm64_repeat_tlbi_cpus),
> > 
> > ERRATA_MIDR_RANGE_LIST sets the type already, so I think this is redundant.
> > 
> > Will
> > 
> 
> 
> 
> Cheers
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
