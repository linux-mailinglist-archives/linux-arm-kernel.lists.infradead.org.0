Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B118126E2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 20:46:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QsEn7k+awc3cqeD2SQyG5P5GYQdaoa1w0oaIeCLkeag=; b=UWXh7+K+KrkzH0Oju0/Dw2NgJ
	BC1UXl7pXWgDvRGEImIHrHzc+fgvbVyT9srKa/gOK6Z+brMR7TBS/cL+lc4BhC5d4EmgNRjroF5xE
	O8YvfBIy+/Odd6elVAVgLChVOrEx+Ci5cTRbXfcj3vzKY0zFEtuWtoIlZAmRYHYPKHlm/4OAt6tLU
	oT8Oa2joYkoe9J7DqvbDHGoFSmGOFGjjRhLl+Cb9HVWUyxO69pdBhYWD6i0KI+jqAKaKOdz2Glk79
	MhmL7WGkJr0/FW592XKDlTSPMZxNhFhIZKvPsru8/YVzX78xP09ua0HfbDWJqgSQz2CMFmAGc3FQq
	qQe9ap6rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii1kn-0002mu-Qg; Thu, 19 Dec 2019 19:46:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii1ka-0002mZ-Lk
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 19:46:21 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3297227BF;
 Thu, 19 Dec 2019 19:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576784779;
 bh=xUSTFd7GGdvk10sf3+om8mg9EYMJvjpiQnqD0QauP2I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TlZXCHKVySipIwV8OQTf4eP3VeA0QPzE+s9nJVK5IUitaVn0l2mcL7AWC2Xvaxbju
 l4K26akuLHBCiPdJZXw9IjzSH3PlfKq+EHYNazCz9xmkuM90nZO4pSvrwtESuW0ggT
 4/G6f+qMiFE1v3SEzi1TZcwsUyDIJy4Cpr3wiQ5Q=
Date: Thu, 19 Dec 2019 14:46:18 -0500
From: Sasha Levin <sashal@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.4 197/350] ASoC: SOF: imx: fix reverse
 CONFIG_SND_SOC_SOF_OF dependency
Message-ID: <20191219194618.GQ17708@sasha-vm>
References: <20191210210735.9077-1-sashal@kernel.org>
 <20191210210735.9077-158-sashal@kernel.org>
 <20191211110005.GC3870@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211110005.GC3870@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_114620_734046_881A01AA 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 11:00:05AM +0000, Mark Brown wrote:
>On Tue, Dec 10, 2019 at 04:05:02PM -0500, Sasha Levin wrote:
>> From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
>>
>> [ Upstream commit f9ad75468453b019b92c5296e6a04bf7c37f49e4 ]
>>
>> updated solution to the problem reported with randconfig:
>>
>> CONFIG_SND_SOC_SOF_IMX depends on CONFIG_SND_SOC_SOF, but is in
>> turn referenced by the sof-of-dev driver. This creates a reverse
>> dependency that manifests in a link error when CONFIG_SND_SOC_SOF_OF
>> is built-in but CONFIG_SND_SOC_SOF_IMX=m:
>
>Are you sure this doesn't depend on any other Kconfig changes?

Nope, but it didn't fail my build tests.

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
