Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B79919F040
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 08:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vg3cV3lZqd+5YuwGXR+J7IuGHIwEfK4GBK31uRT+eqo=; b=Ah8LNwigfCuHH59J82rk/gnCK
	RKIPQsIqMlfGwmxT5QYKyFb3jfJdmRUlJWr6iM2XZaJfDoUxI6uVucij2l0XSdZ55a951xFJLMHcM
	KvZq7ctEzQ0FMGzq9md7Vn7UtnNcUC/ghvHbfKf6WP+E7cp3TwAu/aAL4yUtul7rvARKcNeEczneI
	hokA3zDZYePOxpyFEy1LdbjH/K4/lcqKbZJz2LW847DtkdDBVzMXG7R7hv0DFtvyOpsW2pp1QFmVB
	VAEY+A2+/j0XABrrP94jqUe5Wh8mvcZedtHdnw0P2JdEFfU7I6HM5jzvtJuSAaSFLeGJu/9PVSxIN
	G5j9jZ04g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLKuM-0001LL-G6; Mon, 06 Apr 2020 06:06:54 +0000
Received: from hqnvemgate26.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLKuE-0001Kx-Ty
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 06:06:48 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e8ac6e80000>; Sun, 05 Apr 2020 23:06:32 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Sun, 05 Apr 2020 23:06:45 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Sun, 05 Apr 2020 23:06:45 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 6 Apr
 2020 06:06:45 +0000
Received: from [10.24.37.103] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 6 Apr 2020
 06:06:41 +0000
Subject: Re: [TEGRA194_CPUFREQ Patch v2 0/3] Add cpufreq driver for Tegra194
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <1586028547-14993-1-git-send-email-sumitg@nvidia.com>
 <20200406024726.sbtutqsv2t2p2gkg@vireshk-i7>
From: sumitg <sumitg@nvidia.com>
Message-ID: <69c5a02d-994e-9141-3638-cbe08f5e112e@nvidia.com>
Date: Mon, 6 Apr 2020 11:36:59 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200406024726.sbtutqsv2t2p2gkg@vireshk-i7>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1586153192; bh=sFCRL5jNwqU2tlIogO1XkyF3JvM/cO2gFSLsQBV6B/8=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=LL6O7RGdyl7OccZE4fMKyA+iqapaxHOOqyFPwcFfvNxe5vSpnh/5DHygZqXNP50Zi
 p2VKRAicqjVXIa4VeZ3iY608aPKnDYNtoHXQHMXtV3TzKZIPPhBxsJxmNBOakQilic
 ZkBPszNPHv1MW1fClh7dkmNY3MckRD4OjjzDO6qo4SbvXk6EygfUTmMe0MFRTgIwUi
 W8gssJzwEh/UZszzRF51Gde44RlNpb7MSVxzzUDQAwuO4csbmMqaClDlVqCoAXXmp6
 6KfAyNadN949RirBSJoJar4q66cCtxEkPvOm34WErDfMGP6Nexxm/bKDSfemNpmMdS
 YzVT7uraXZZ8w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_230646_977061_69F72CCA 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/04/20 8:17 AM, Viresh Kumar wrote:
> External email: Use caution opening links or attachments
> 
> 
> On 05-04-20, 00:59, Sumit Gupta wrote:
>> The patch series adds cpufreq driver for Tegra194 SOC.
>>
>> v1[1] -> v2:
>> - Remove cpufreq_lock mutex from tegra194_cpufreq_set_target [Viresh].
>> - Remove CPUFREQ_ASYNC_NOTIFICATION flag [Viresh].
>> - Remove redundant _begin|end() call from tegra194_cpufreq_set_target.
>> - Rename opp_table to freq_table [Viresh].
> 
> Have we concluded the earlier discussion already ? I posted some
> questions where I had doubts and you just answered them and posted a
> new version. Please wait for the reviewers to have a chance to reply
> to them. Your new version may be okay, but still we can avoid another
> set of patches which may be wrong.
> 
> --
> viresh
> 
Sorry for that. I will wait for ongoing review to conclude before 
posting new version.
Thankyou for the inputs.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
