Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B0C59EF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:34:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LTwVo+wQmxaP2zFKhGJ18WHu9J9mbgCCH7ZyAZyWjJQ=; b=ZHEFeyPs69RxUO
	P1rXmnhslL3SxR0wdEu3LcEFo9b1xC7o6GOoea36KBGjErKo2aT/dGAwrDfWSTTazURjaAcR3oGhT
	talrCr9qU3GgZBhaRbcsO8RstBLfGUyZPJTqG1CEWU3aAZP5NfxaNAXa282jQwKsqhn+N79a2YrKE
	Gs6StI29ytZuWb8e20Jv58o+Z1eMHc0OIBiy0lZnZF+yVo09jmakpqnjV9SX32g21OWWhdwnNM9EU
	81qRMsE5WRFCsaAPFc8WmFDZNcfmcEr2Cm7dIo29TWDqZtcRLAE1y8B2mF3guVL1pjXZv9k75eAEz
	Cl99QFVGiWppjp/MjEUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgssw-0002a6-I6; Fri, 28 Jun 2019 15:33:58 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgssl-0002ZO-BD
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 15:33:48 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 08:33:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="185672927"
Received: from tassilo.jf.intel.com (HELO tassilo.localdomain) ([10.7.201.137])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jun 2019 08:33:44 -0700
Received: by tassilo.localdomain (Postfix, from userid 1000)
 id 1B0513015ED; Fri, 28 Jun 2019 08:33:44 -0700 (PDT)
Date: Fri, 28 Jun 2019 08:33:44 -0700
From: Andi Kleen <ak@linux.intel.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v3 1/4] perf pmu: Support more complex PMU event aliasing
Message-ID: <20190628153344.GZ31027@tassilo.jf.intel.com>
References: <1561732552-143038-1-git-send-email-john.garry@huawei.com>
 <1561732552-143038-2-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561732552-143038-2-git-send-email-john.garry@huawei.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_083347_436792_F70B708A 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, brueckner@linux.ibm.com, mathieu.poirier@linaro.org,
 peterz@infradead.org, ben@decadent.org.uk, tmricht@linux.ibm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +	/*
> +	 * Match more complex aliases where the alias name is a comma-delimited
> +	 * list of tokens, orderly contained in the matching PMU name.
> +	 *
> +	 * Example: For alias "socket,pmuname" and PMU "socketX_pmunameY", we
> +	 *	    match "socket" in "socketX_pmunameY" and then "pmuname" in
> +	 *	    "pmunameY".

This needs to be documented in some manpage.

-Andi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
