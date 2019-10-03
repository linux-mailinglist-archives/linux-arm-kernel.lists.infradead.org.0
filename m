Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA77CA36F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 18:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m3DylBgm3HtWQfG3dgMLt5B7DRT+5kMOYEX8CYWigUQ=; b=LorSt+nLCfn76RjAqUUPhvMlZ
	PoQ6EX1AZSHmazY4rvFrUW+YZl5ksgFcfX5FeYDe4C8NkOGkKX46nyStQ1yXRtDLmBnugruChRfRc
	u401v83OTXUPskccWCcm+HtOs9di+IdkIqgvBlte2/QdN/LkuTfSnUJfOmL30T8zRY+tZUehJceCL
	1ngIB0HfxwleYADM26SaqWbE0Tck9fEkKov1lXdbYzoEsBqqpyO5xwhOzPT4cJokbWLgVrB5skAu+
	w2c7A6b4odUCFraAcUKVOwAKE5Wn6ioXlf8nsh+GvcHDrUr4Ab8HTSRxUFH6Ho+TjKNAFcEzJXoHy
	7ReATZUZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3q0-0003Dl-Bn; Thu, 03 Oct 2019 16:20:20 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3pr-0003Ck-Dl
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 16:20:12 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 09:20:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,253,1566889200"; d="scan'208";a="185962567"
Received: from unknown (HELO [10.7.153.143]) ([10.7.153.143])
 by orsmga008.jf.intel.com with ESMTP; 03 Oct 2019 09:20:10 -0700
Subject: Re: [PATCH 0/2] peci: aspeed: Add AST2600 compatible
To: ChiaWei Wang <chiawei_wang@aspeedtech.com>, Joel Stanley <joel@jms.id.au>
References: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
 <70044749-785b-6ff3-7a28-fb049dcfec54@linux.intel.com>
 <CACPK8XfBxC+4PHHCkMoXr+twjfWaovcJ5c=hfCmHRJ6LpGNeFg@mail.gmail.com>
 <03d21443-aa9a-a126-dc77-a21f14f708c9@linux.intel.com>
 <4af9eb8fa6fd41fc87708fc8afdcc83e@TWMBX02.aspeed.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <b219c8e9-4f72-f91c-ba57-96ffab82ff2e@linux.intel.com>
Date: Thu, 3 Oct 2019 09:20:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4af9eb8fa6fd41fc87708fc8afdcc83e@TWMBX02.aspeed.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_092011_475056_A761454D 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/2/2019 7:35 PM, ChiaWei Wang wrote:
> Hi Jae Hyun,
> 
> Thanks for the feedback.
> For now should I use GitHub pull-request to submit the patches of PECI-related change to OpenBMC dev-5.3 tree only?

You could submit this patch series to OpenBMC mailing list with
[PATCH linux dev-5.3] prefix.

Thanks,

Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
