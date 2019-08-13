Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 221008BB2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hR9JUwmbf/e4bQ0+wSYqBIjB+K4x2oWVdZiOU/H/CHA=; b=iA2d6oeUHVATkEEicqKG41/P/
	EpfcFNdSwA66B/V7JOItPAcspezPMNJXgsE7he4wei4+wYD/kbQoJnszZvDDGEounEgD3cNQ4tPzk
	FmyEuWYnrKVr4J5niGXuWQtde3ESpAQdyjApnT0syoVdyplSrcyIo0NERXxKe2MFFu8gPC4ORtBfg
	5OhZ4gbKuwR8NEjR0iTpTzKQ9TRJ1pRQGmuPbicwjWZ99+Ov4jFyyF1g7q2MG4I17m1eN5wJtf/f5
	tgv3wvwy8Egd9IB22jpbbOVxZIERWwErB2Mr7BMwsxI+9PYGf8idSSCUIo9ymZ4c8qngvJAobpZfc
	RKgJ0LnsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXSv-000269-0h; Tue, 13 Aug 2019 14:07:57 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXSh-000259-JL
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:07:45 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 07:07:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,381,1559545200"; d="scan'208";a="170405185"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 13 Aug 2019 07:07:41 -0700
Received: from dalyrusx-mobl.amr.corp.intel.com (unknown [10.251.3.205])
 by linux.intel.com (Postfix) with ESMTP id E8ECD5800FE;
 Tue, 13 Aug 2019 07:07:40 -0700 (PDT)
Subject: Re: [alsa-devel] Regression in next with codec unload and
 snd_soc_component_get/put
To: Mark Brown <broonie@kernel.org>, Tony Lindgren <tony@atomide.com>
References: <20190809070003.GA52127@atomide.com>
 <s5hwofmhkbs.wl-tiwai@suse.de> <20190809074643.GB52127@atomide.com>
 <s5hv9v6hhm9.wl-tiwai@suse.de> <20190813102451.GJ52127@atomide.com>
 <20190813112920.GC5093@sirena.co.uk>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <76dbd0ed-bbba-1a11-376e-7bf28c78ad9c@linux.intel.com>
Date: Tue, 13 Aug 2019 09:07:59 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813112920.GC5093@sirena.co.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_070743_672059_D020105D 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Takashi Iwai <tiwai@suse.de>, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/13/19 6:29 AM, Mark Brown wrote:
> On Tue, Aug 13, 2019 at 03:24:51AM -0700, Tony Lindgren wrote:
>> * Takashi Iwai <tiwai@suse.de> [190809 08:24]:
> 
>>> ... and it was already fixed in the later commit 0e36f36b04e7
>>> "ASoC: soc-core: fix module_put() warning in soc_cleanup_component".
> 
>> Mark, looks like this commit is still not in Linux next, forgot
>> to push out something?
> 
> There's a build failure the Intel guys haven't fixed.

see ('ASoC: SOF: fix HDA direct MMIO access') posted on alsa-devel 
yesterday

https://mailman.alsa-project.org/pipermail/alsa-devel/2019-August/153914.html



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
