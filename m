Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8B88B581
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quW0ZLazci+Y5gFU8YwCx96Dbq1UZRxOHV/JrwYg+u8=; b=aEMGOM5xaH2HU5
	2lWyU4cDLbHnI3E/RYQLeE3JxGWdFbku/U7APvZyNZI2Qf0Gar/IanxZ/VtkkFFahs3JP3QXRvj1C
	kIAsVpazau2YjPHholfsWxuZ8kU3xGopUXohGOxWwSmh+MCXg4bRNh/ISQdhDsiIlnts65FAGRP3B
	W7IAXOtivnzghyLv9HixFiecqPCsa090sw7rflhvT/SD3JsxCHwl88VOd0W+bJy7aTu1K0KMkQ6vc
	vW+PAnLvEhsNhDvfmXI4lyplGN2GvZ8cHA+cdkkQJar2yXfA9RWAMo5x6pJhQJqwiQ55RTpce6T/2
	bMUGV0p12kPkSjrjO3qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTzQ-00069i-UT; Tue, 13 Aug 2019 10:25:17 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTzA-0005sN-2A
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:25:01 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 560AE805C;
 Tue, 13 Aug 2019 10:25:22 +0000 (UTC)
Date: Tue, 13 Aug 2019 03:24:51 -0700
From: Tony Lindgren <tony@atomide.com>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [alsa-devel] Regression in next with codec unload and
 snd_soc_component_get/put
Message-ID: <20190813102451.GJ52127@atomide.com>
References: <20190809070003.GA52127@atomide.com> <s5hwofmhkbs.wl-tiwai@suse.de>
 <20190809074643.GB52127@atomide.com> <s5hv9v6hhm9.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5hv9v6hhm9.wl-tiwai@suse.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_032500_147651_87F3756A 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, Jaroslav Kysela <perex@perex.cz>,
 Mark Brown <broonie@kernel.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Takashi Iwai <tiwai@suse.de> [190809 08:24]:
> On Fri, 09 Aug 2019 09:46:43 +0200,
> Tony Lindgren wrote:
> > 
> > * Takashi Iwai <tiwai@suse.de> [190809 07:25]:
> > > On Fri, 09 Aug 2019 09:00:03 +0200,
> > > Tony Lindgren wrote:
> > > > 
> > > > Hi,
> > > > 
> > > > Looks like commit 4a81e8f30d0b ("ASoC: soc-component: add
> > > > snd_soc_component_get/put()") causes a regression where trying
> > > > to rmmod a codec driver fails with module is in use error after
> > > > rmmod of snd-soc-audio-graph-card for example.
> > > > 
> > > > Any ideas what goes wrong there?
> > > 
> > > There is an obvious typo: soc_cleanup_component() should call
> > > snd_soc_component_module_put_when_remove() instead of *_close().
> > 
> > Making that change locally seems to fix it thanks.
> 
> ... and it was already fixed in the later commit 0e36f36b04e7
> "ASoC: soc-core: fix module_put() warning in soc_cleanup_component".

Mark, looks like this commit is still not in Linux next, forgot
to push out something?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
