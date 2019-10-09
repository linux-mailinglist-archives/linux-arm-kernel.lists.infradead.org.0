Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4DCD0BB7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9rDckXumPPXL2ubRSwe5v9k4mA61AzoolP1rD47TZCs=; b=GQU9/QaRKwA/A51BBvhn+l44n
	7od5URIyZJyofPiUVf7AHuBaVrP5cWz3qSq9mwW8acof6T4EH6hiK9OS3kN6uxhlDZMQEDNk4+gWu
	SQDMFJLuZEfoKiQrzbwDGYfotWsepEdkU/+wH6pNyihs5s9Mv7LFOxTPke236rcjOiRjAFQHjSG19
	pXb3MBU8GUoh7q+rXB/YXtgZw0IOVXFYczBr2K42s8Osd/iu87JOptHnYiqibdGdu9T846KFfmdOo
	k6JCpwEYZZ/NqV4aJ7BGmfC7kSUZLcRzIC8w7Y31RcvUX4pFi6jgfyqWDEe7lRt4nh+dyqGdWxqya
	QUVgZdWGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8Zh-0003Aq-Es; Wed, 09 Oct 2019 09:48:05 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8ZY-00039l-AY
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:47:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 02:47:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="200083428"
Received: from linux.intel.com ([10.54.29.200])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2019 02:47:55 -0700
Received: from [10.226.38.27] (unknown [10.226.38.27])
 by linux.intel.com (Postfix) with ESMTP id 4E0855803E4;
 Wed,  9 Oct 2019 02:47:52 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] mmc: sdhci-of-arasan: Add Support for Intel LGM
 SDXC
To: Andy Shevchenko <andriy.shevchenko@intel.com>
References: <20191003040032.37696-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20191003040032.37696-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <2cbda555-42d2-392c-0887-09cae4a35dce@intel.com>
 <38228535-8d4c-76e9-f568-c0dfdc3994b3@linux.intel.com>
 <20191009094005.GB32742@smile.fi.intel.com>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <00bb038f-f959-74bf-e598-45891e65d73e@linux.intel.com>
Date: Wed, 9 Oct 2019 17:47:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009094005.GB32742@smile.fi.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_024756_376578_9F234CAF 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 cheol.yong.kim@intel.com, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, qi-ming.wu@intel.com, michal.simek@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5keSwKCk9uIDkvMTAvMjAxOSA1OjQwIFBNLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6Cj4g
T24gV2VkLCBPY3QgMDksIDIwMTkgYXQgMDk6MDY6MTZBTSArMDgwMCwgUmFtdXRoZXZhciwgVmFk
aXZlbCBNdXJ1Z2FuWCB3cm90ZToKPj4gSGkgQWRyaWFuLAo+Pgo+PiAgwqDCoMKgIFRoYW5rIHlv
dSBmb3IgdGhlIEFja2VkLWJ5LCB3aWxsIGFkZCAqQWNrZWQtYnkqIGluIHRoZSBuZXh0LXBhdGNo
Lgo+IFBsZWFzZSwgc3RvcCB0b3AtcG9zdGluZy4KPgo+IEJlc2lkZXMgdGhhdCwgdGhlcmUgaXMg
bm8gbmVlZCBmb3IgbmV4dCB2ZXJzaW9uIGlmIHRoZSBvbmx5IGNvbW1lbnRzIHlvdSBnb3QKPiBh
cmUgQUNLcy4gUmI6cywgZXRjLgpTdXJlLCBUaGFua3MhCi0tLQpSZWdhcmRzClZhZGl2ZWwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
