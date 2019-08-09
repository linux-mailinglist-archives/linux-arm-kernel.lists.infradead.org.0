Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ED88729B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 09:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S/9VWto1eKMeiqtfVNb374zMg96RtfLuJAOmrw0/GDE=; b=Zb91dTqODThVTI
	5vEpvRawK+ttPz8ORzdUFJ+vqEDwtqFLAr/rQt1knjfm9qe2nGacN7aWQOYngc3fUnvyIqtUkCUHx
	AujUHn05xUrxqDzqNCtK0jRcJEieiCq8al1a+2PR3APW9PUCMf8tbck/hRLhDQENWZco6PSLd+ifi
	O5VEECLJ8SIvrHLXr+SBcoLgKG8TV5t2xW8Pg6arBns8h1cY2I4BqkjhwJ/mwhhLjK4Mq4UsEnDCV
	gVfgpXYwjzFok/W9VzPQpIdXYk265iZl3tcBdXNgy3PblvB0HphKYy/1lNdUc2ykw6wFYhLy3lEqo
	k8TM8MR8Cd0j68XI1l5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvyub-0003y7-0f; Fri, 09 Aug 2019 07:02:05 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvyso-0003ev-Lc
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 07:00:17 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 1BF56809F;
 Fri,  9 Aug 2019 07:00:38 +0000 (UTC)
Date: Fri, 9 Aug 2019 00:00:03 -0700
From: Tony Lindgren <tony@atomide.com>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Mark Brown <broonie@kernel.org>
Subject: Regression in next with codec unload and snd_soc_component_get/put
Message-ID: <20190809070003.GA52127@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_000015_710300_55F1DD0F 
X-CRM114-Status: UNSURE (   5.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Looks like commit 4a81e8f30d0b ("ASoC: soc-component: add
snd_soc_component_get/put()") causes a regression where trying
to rmmod a codec driver fails with module is in use error after
rmmod of snd-soc-audio-graph-card for example.

Any ideas what goes wrong there?

BTW, looks like the lore.kernel.org link in that commit also is
unreachable?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
