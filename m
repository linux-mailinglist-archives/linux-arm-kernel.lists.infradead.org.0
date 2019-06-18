Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CE249D8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KalqBH1n2k86pdQ2UCIl5MB6MqRPKGzVBSdBH40fUc=; b=cBdbSr90fGgz40
	UNthtwcgBBjDEXI5W8jvwVlJ+kVWIrfjpWS19/2NdFFipVnw8wV56FfrdUyjjUzKEWRNV/v+eCOn/
	vt+sS6x5FAnFaEDSzRvqNX9JjhO0R1R2k+nhmGGoGTEyh+eyoBZvoHsR3GKZdxK+AiKSLJsnUIXXa
	OkVqonRD13ZM6ZDBXGxp/MQbssyAZA6C982zCvm1FGTknxnh3kkSNYlOzTOJYj5cgEQci4CXKCkEz
	zMkE8PHuiaxla131OCHCs7CfcJ0ZNLd5XKvX4UjXAfK+R/fl0YD3fNh3e1CBxoSrAEuBXTJ1XQpf4
	whOR6aehAlVBJGUe7kGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAYy-0007FD-Nq; Tue, 18 Jun 2019 09:38:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAYi-0007Dg-F0
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:37:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09D29344;
 Tue, 18 Jun 2019 02:37:44 -0700 (PDT)
Received: from [10.1.194.37] (e113632-lin.cambridge.arm.com [10.1.194.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A7A333F246;
 Tue, 18 Jun 2019 02:37:42 -0700 (PDT)
Subject: Re: [PATCH] sched/topology: remove unused sd param from
 arch_scale_cpu_capacity()
To: Peter Zijlstra <peterz@infradead.org>
References: <1560783617-5827-1-git-send-email-vincent.guittot@linaro.org>
 <c8030f30-0899-070b-df3c-3839ec7e1909@arm.com>
 <20190618093453.GN3436@hirez.programming.kicks-ass.net>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <40551599-0448-352f-f5d1-e37ab5330d69@arm.com>
Date: Tue, 18 Jun 2019 10:37:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618093453.GN3436@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_023744_557460_AE739393 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pm@vger.kernel.org, gregkh@linuxfoundation.org, rafael@kernel.org,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, quentin.perret@arm.com,
 mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/06/2019 10:34, Peter Zijlstra wrote:
[...]
> The commit log now reads:
> 
> ---
> The 'struct sched_domain *sd' argument to arch_scale_cpu_capacity() is
> unused since commit:
> 
>   765d0af19f5f ("sched/topology: Remove the ::smt_gain field from 'struct sched_domain'")
> 
> remove it.
> ---
> 

Thanks :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
