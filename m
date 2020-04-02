Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0D819BF21
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 12:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYM31B6s0TpcQqNHjuSO5yTLym560nCQ3paHY8HC6iI=; b=MwO3rRbQi61NIb
	xMDeNGajfpaKjrmEucYzH9oMgm66G6dey36CrZs4BmwZQJvoAQAbr0LDGB01FdQNPilLR4Q9p5Qn5
	CS9x36J+QCfEZVfQUIKiq5cVQb5DxTyot3sZ6LLXY4Ke014AZUUcxqlwJmPr3GvkmoCaGPz3bTK4q
	QnnF7EpvcYXjvrbqdyRKw/80HArpWhAZO95V7eoXBmz9BZcu6PHcQGWEdy2gloC24k3fhQGPLD0ED
	Dhwk+PBPLKZWDTAaJq38megaWgOH5SdyUjANqtQ09kAeT6rja8Pv+RMXUfowooOVo/vwBnXrN8gSd
	izk6tpkEJBAxzHowaxyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwoO-0003ud-HB; Thu, 02 Apr 2020 10:11:00 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwoE-0003tr-9a
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 10:10:51 +0000
IronPort-SDR: JDYMaRy0PeUCna3uv6cyp833EMpbQ4M9qzp79nYJLNSORLk64XWa/j3HsRZUPkWOWWc/6qw5Tu
 Xaef0JQ1XlIw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 03:10:49 -0700
IronPort-SDR: njxA74UT8UgCTr4f31WYvi5VZ8n3XwFBOeGjrjpoMPE0vVi9/PUO6Oa+Zpjxqi6qZ9pVEIc+un
 fVuUyfb2/ITQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="240782454"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.87])
 ([10.237.72.87])
 by fmsmga007.fm.intel.com with ESMTP; 02 Apr 2020 03:10:46 -0700
Subject: Re: [PATCH v2 3/4] mmc: sdhci-of-arasan: Modify clock operations
 handling
To: Manish Narani <manish.narani@xilinx.com>, ulf.hansson@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com
References: <1585546879-91037-1-git-send-email-manish.narani@xilinx.com>
 <1585546879-91037-4-git-send-email-manish.narani@xilinx.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <34dffb3a-aa90-db27-7465-df840d148658@intel.com>
Date: Thu, 2 Apr 2020 13:10:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1585546879-91037-4-git-send-email-manish.narani@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_031050_340144_0B2FBDCC 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/03/20 8:41 am, Manish Narani wrote:
> The SDHCI clock operations are platform specific. So it better to define
> them separately for particular platform. This will prevent multiple
> if..else conditions and will make it easy for user to add their own
> clock operations handlers.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 208 +++++++++++++++++------------
>  1 file changed, 119 insertions(+), 89 deletions(-)

Would you mind splitting this into a patch that moves the existing
structures first, and then a second patch to make the changes.

Also, I notice there is 'struct sdhci_arasan_data' but also
'struct sdhci_arasan_of_data sdhci_arasan_data'.  This is confusing, so
perhaps a preparatory patch that renames the latter from sdhci_arasan_data
to somethine else e.g. sdhci_arasan_generic_data

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
