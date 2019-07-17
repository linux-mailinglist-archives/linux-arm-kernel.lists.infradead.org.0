Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343246C13B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 20:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YLei+QeeAoc3vtFS/5ZmAysfaaXwadcorviQ7g9C4o=; b=g798ez+GKiPVWw
	LyPJhh4HqpFFlcM7Ecvqx3tpi6IJIwO2ZExCRGYyreERtbNF5JSw8INQ6iKz0+gX7+7lyB8BLKIQP
	7cKnHNF0LmIDgVXwlkdwTGKmn98+cvl2VJKnvAYGrfU8qHtnzMv69WR9MTWiBgOpc1fRFHaCsIOYB
	XgZK7flY7m8EcnHRNypnJo4pyW15MFLrWNbFDniVPnibaD9zhHdVE1yvPkcUx20fXh6b3oU/XUEDF
	g50e6B7OXbnkxhf+G4snKGwlh8jQGTNsUYHABTv+MxnZyFxIAoLSttwBfZ0SUp+oz2M6QToKMFFDg
	qVf1CEDg8t3bAbXPxJDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnp9B-000297-Of; Wed, 17 Jul 2019 18:59:25 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnp8p-00028B-NY
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 18:59:05 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2f6ff80000>; Wed, 17 Jul 2019 11:59:08 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 17 Jul 2019 11:59:02 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 17 Jul 2019 11:59:02 -0700
Received: from [10.26.11.185] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 17 Jul
 2019 18:58:55 +0000
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
To: Jose Abreu <Jose.Abreu@synopsys.com>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
Date: Wed, 17 Jul 2019 19:58:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563389948; bh=z75CQwjX2xRi5gGhwHjg8Pb0vqIzhGv/Pngd7H+0mq4=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=kOui65LlUHDKPSoenvOQqNo6CMaBFq9txXXL4myoyRD7rw0ct2r+IZeTekYGEXl4a
 Swjz4fIrhSaKyYdejDvhZN0XvC1ZIFzxHgoigM4nZUbo6G1MBlfhSqrLI+42Yss3hP
 MdzKnB3tWewVJLVhq654EIg0FdmU6BYz1dirOoQSemuh6mI/5fSnEsTDmzTsSYf2dU
 lNIieLby+qlnTCt4wV6VVgT93iR1qszonlhNTmUEPRSgxFZW+PR01+St079CSK+U7u
 ltRfKYaBMjeF6H0+A8vk1f/D+qDsZZpMP8cW6N48RpqcI+pw+XJD/WWOK+z4EeGVEY
 KEcbpDQQj+KvA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_115903_784348_208E2FDD 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 03/07/2019 11:37, Jose Abreu wrote:
> Mapping and unmapping DMA region is an high bottleneck in stmmac driver,
> specially in the RX path.
> 
> This commit introduces support for Page Pool API and uses it in all RX
> queues. With this change, we get more stable troughput and some increase
> of banwidth with iperf:
> 	- MAC1000 - 950 Mbps
> 	- XGMAC: 9.22 Gbps
I am seeing a boot regression on one of our Tegra boards with both
mainline and -next. Bisecting is pointing to this commit and reverting
this commit on top of mainline fixes the problem. Unfortunately, there
is not much of a backtrace but what I have captured is below. 

Please note that this is seen on a system that is using NFS to mount
the rootfs and the crash occurs right around the point the rootfs is
mounted.

Let me know if you have any thoughts.

Cheers
Jon 

[   12.221843] Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
[   12.229485] CPU: 5 PID: 1 Comm: init Tainted: G S                5.2.0-11500-g916f562fb28a #18
[   12.238076] Hardware name: NVIDIA Tegra186 P2771-0000 Development Board (DT)
[   12.245105] Call trace:
[   12.247548]  dump_backtrace+0x0/0x150
[   12.251199]  show_stack+0x14/0x20
[   12.254505]  dump_stack+0x9c/0xc4
[   12.257809]  panic+0x13c/0x32c
[   12.260853]  complete_and_exit+0x0/0x20
[   12.264676]  do_group_exit+0x34/0x98
[   12.268241]  get_signal+0x104/0x668
[   12.271718]  do_notify_resume+0x2ac/0x380
[   12.275716]  work_pending+0x8/0x10
[   12.279109] SMP: stopping secondary CPUs
[   12.283025] Kernel Offset: disabled
[   12.286502] CPU features: 0x0002,20806000
[   12.290499] Memory Limit: none
[   12.293548] ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b ]---

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
