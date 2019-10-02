Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AACAC9074
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 20:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6Pw0MRDTzTHBe7Pc8PEOuprVBR+QsSJpajFJyYCSUPo=; b=U5kRJ1P1xjUfEQqL1vqGUFVsB
	+q9WdrVM+XKj/JO75wfFhQF+/NrrZv+6WhK5qHBw2WtHSL65JpEr7u/wqlyJNhDEycWVlPwL0hlHp
	/UAIrdb8NU1/ZkAOgvLxp7GeOPwoo3z6V0Cxt1G5YuNU/23FtdqIkStK+loxB+VUjv0568mz2HSNM
	bA0I+UpY4vKF2UCnJ/5Y9bwdjVQLUTqNBKie0Clmax0ibIqhO/8KhmlswRIB671YN8/VjMMrRO5M2
	injKe6U5f5WPiW7p931CKEHKPow1tMqDnmgUxD4/KhomGlES+rE9fNZTPCbmk3zt6kj8kkt38sE3r
	j8d3Hn4kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFj69-0006D0-Kb; Wed, 02 Oct 2019 18:11:37 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFj63-0006CF-FR
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 18:11:32 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 11:11:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="343404682"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.143])
 ([10.7.153.143])
 by orsmga004.jf.intel.com with ESMTP; 02 Oct 2019 11:11:28 -0700
Subject: Re: [PATCH 0/2] peci: aspeed: Add AST2600 compatible
To: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>
References: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <70044749-785b-6ff3-7a28-fb049dcfec54@linux.intel.com>
Date: Wed, 2 Oct 2019 11:11:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_111131_526811_885E6C46 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ryan_chen@aspeedtech.com,
 linux-aspeed@lists.ozlabs.org, andrew@aj.id.au, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 jason.m.bills@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chia-Wei,

On 10/1/2019 11:11 PM, Chia-Wei, Wang wrote:
> Update the Aspeed PECI driver with the AST2600 compatible string.
> A new comptabile string is needed for the extended HW feature of
> AST2600.
> 
> Chia-Wei, Wang (2):
>    peci: aspeed: Add AST2600 compatible string
>    dt-bindings: peci: aspeed: Add AST2600 compatible
> 
>   Documentation/devicetree/bindings/peci/peci-aspeed.txt | 1 +
>   drivers/peci/peci-aspeed.c                             | 1 +
>   2 files changed, 2 insertions(+)
> 

PECI subsystem isn't in linux upstream yet so you should submit it into
OpenBMC dev-5.3 tree only.

Cheers,

Jae

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
