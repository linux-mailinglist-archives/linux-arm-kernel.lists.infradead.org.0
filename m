Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167B31BE31B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 17:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sFYsRY6YD6woQo1c+C+Pci58IrafDMLUtxIThpsQpN0=; b=BhdWhz8F/rcBKK
	ar414xdqUCoZZbuNSC/un9csqhHj8bENTbQ8/dgmRVPcPA5LlaIVpdvkaSem95JqtSWyAIryb7+qf
	yIWHiRw5DaiVkbPUewaz1MLigwOIdaX1hRhkGvHYkIUAaImG2cJ60pbFiMHFf9lpMdqLLTSogg8vo
	eQLSMPWIWMQjdVOjrX3B5bhVhKmyqCs/dbiUtuJoke1qlH8RaQuyYtDJ5AjElcbGrycJFRR/HTod4
	PEWf47q83kIYhKS36jXKFvjrfSEbelc83JdBRRilgabaFLZ5dsAZ/lApo+mhUjmWxHD3ZzQFFfDPe
	eGwEArI+LL59ZsCnVcNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jToyi-0000Bj-Go; Wed, 29 Apr 2020 15:50:28 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jToyQ-00077L-MB
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 15:50:12 +0000
Received: from 185.80.35.16 (185.80.35.16) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.415)
 id bb23fa4412e3993e; Wed, 29 Apr 2020 17:50:04 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [RFC 0/3] Introduce cpufreq minimum load QoS
Date: Wed, 29 Apr 2020 17:50:04 +0200
Message-ID: <7657495.QyJl4BcWH5@kreacher>
In-Reply-To: <20200424114058.21199-1-benjamin.gaignard@st.com>
References: <20200424114058.21199-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_085010_937732_B8D79B29 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, len.brown@intel.com,
 viresh.kumar@linaro.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Patrick Bellasi <patrick.bellasi@arm.com>,
 pavel@ucw.cz, hugues.fruchet@st.com, mchehab@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, April 24, 2020 1:40:55 PM CEST Benjamin Gaignard wrote:
> When start streaming from the sensor the CPU load could remain very low 
> because almost all the capture pipeline is done in hardware (i.e. without 
> using the CPU) and let believe to cpufreq governor that it could use lower 
> frequencies. If the governor decides to use a too low frequency that 
> becomes a problem when we need to acknowledge the interrupt during the 
> blanking time.
> The delay to ack the interrupt and perform all the other actions before
> the next frame is very short and doesn't allow to the cpufreq governor to
> provide the required burst of power. That led to drop the half of the frames.
> 
> To avoid this problem, DCMI driver informs the cpufreq governors by adding
> a cpufreq minimum load QoS resquest.

This seems to be addressing a use case that can be addressed with the help of
utilization clamps with less power overhead.

Thanks!




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
