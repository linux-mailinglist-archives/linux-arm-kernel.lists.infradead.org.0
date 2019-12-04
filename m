Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A25112934
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 11:22:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VYwcxut9IEdswCJt09SL78UkzrOkOgGivhCZMsyYv4w=; b=Ryx0R7xuYslYomBVZYRd3Pw84
	4EO67aLudsgsiwzzz/ujCWa+TkCu9p+2EtE7dfiwe0NtMFRX2quEAPrhStqMgLR83/LX0MXmXdoF0
	TiVHkrh4NeK/AUnEt2ZmGHS+FSDqsTuHT245pnzy4SIs6WLyJaAdeSLk1htx+84GjHRSG6ylVP65/
	a5PatH/UsQvaukuOgWhnEFm/6oeHKfp1qeRamNQrBEmdC/QoEW6jCG2yxHJREfceqSCmrzw0ebbc5
	G/5WYRSoSSDekDK2p/KU9GsAAwFsrGygKdwVMDvW/R2B+Xt7f+BkkcDNQ3S16XVw6Cnkm0gwzV52w
	PJOcxSJrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRnA-0002Oi-C4; Wed, 04 Dec 2019 10:21:56 +0000
Received: from mail.kapsi.fi ([2001:67c:1be8::25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRmz-0002NG-SD
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 10:21:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lXkM2TiakZNWEer24NnBU2s4hqmdaq894N1amWO3xwU=; b=rlYVOhaHmSwAOLiBcI9DwOvenr
 gX8xA9bN6W8vbD13Q9Q3z4CiCKVYK8IqzXgRiflrhDM0CBRJRVZQKfkYaMLkCRgQh2FIvLqDFAL0Y
 6KKx5oZKzKuQDR8G5YdcU3LAJWI6CjHI2fbpfKaDoPh+6z7B3ulwVIVpCzXul1u1RCjiaN6RkHt0T
 OP+svFIIBKcgAggm+wW19khbF6hdcQyC25UOynrd7rVPZA4UcGNRBstE1bMeibgDRJ5gsjljRCOsN
 TXxKFMtheZpM18pQeBZ+9hf7xOpG2dRM+THKOMQ7t9Y3UOXZqetqM52D+ojk+JL8P8NoDF6NODW2a
 Cci6wq/Q==;
Received: from [193.209.96.43] (helo=[10.21.26.179])
 by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <cyndis@kapsi.fi>)
 id 1icRmk-0001Ce-NM; Wed, 04 Dec 2019 12:21:30 +0200
Subject: Re: [TEGRA194_CPUFREQ Patch 1/3] firmware: tegra: adding function to
 get BPMP data
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <20191203174229.GA1721849@ulmo>
 <9404232d-84ce-a117-89dd-f2d8de80993e@kapsi.fi>
 <20191204091703.d32to5omdm3eynon@vireshk-i7>
From: Mikko Perttunen <cyndis@kapsi.fi>
Message-ID: <cdb685a4-4d00-4635-df12-c67a6faa81e2@kapsi.fi>
Date: Wed, 4 Dec 2019 12:21:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191204091703.d32to5omdm3eynon@vireshk-i7>
Content-Language: en-US
X-SA-Exim-Connect-IP: 193.209.96.43
X-SA-Exim-Mail-From: cyndis@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_022146_075374_F529B2B8 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:1be8:0:0:0:0:25 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 talho@nvidia.com, Thierry Reding <thierry.reding@gmail.com>,
 linux-tegra@vger.kernel.org, Sumit Gupta <sumitg@nvidia.com>,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ah, it seems I was mistaken here. Thanks for the information.

Thanks,
Mikko

On 4.12.2019 11.17, Viresh Kumar wrote:
> On 04-12-19, 10:45, Mikko Perttunen wrote:
>> Now, my original patchset (which this series is based on) did add
>> nvidia,bpmp properties on the CPU DT nodes itself and query BPMP based on
>> that. A change is still required for that since tegra_bpmp_get() currently
>> takes a 'struct device *' which we don't have for a CPU DT node.
> 
> I may be missing the context, but the CPUs always have a struct device
> * for them, which we get via a call to get_cpu_device(cpu), isn't ?
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
