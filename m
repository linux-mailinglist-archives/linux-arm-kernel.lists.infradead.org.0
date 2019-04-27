Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40461B43C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 20:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9stnChVLqVPhg8kHkPaFhoFBvmi7DxpGt37Zw0mDz4=; b=ibDD1BbpY4HOqg
	d1L1XT6/fHpMSz/Ojzs02EhRw3RJgiRdpYOGKOnyjmlOCb/OOaOcybR75s3IOYdg9KulJ8sPSepLL
	EBwrkRRADLMVLSAycmLNjEFc/xpqxbHvwadgK8pdLkT4Dp8iqMM314tm4SjIrL56uoDPkK3zJBV7P
	Qu+qWch726jNSEwPHAk9yldktU+MOrIKfwnLLixElxXASazACjnWSFP1e72DNP9r7QPSNmfgz6Nkb
	9Rp2vY7fs8nIjXC+BLHKcr04IFVcuAvZwo0FFTSWg2Mlef5qvVhO2b99UNkrkz+6ZXZzkTD9WBiBr
	z1GdSEWyRdDd6SuSfwNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKRpv-0004cX-9U; Sat, 27 Apr 2019 18:14:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKRpp-0004cM-1T; Sat, 27 Apr 2019 18:14:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qGs9gyd+8mbF58d9iNV6zlbIYiLoTBxs09/Lf+hRxz0=; b=AT03D5WhhdhSSqw5qyiTpKUV6a
 3eE4Wdu+1gVtasvrfougGt3ALT56zCvhZOn8KRHD7zUcFq3NeWJljEDtUKx1hHacFligCR1atNkYB
 7lixNeZeySWOMWwi7WjOC45YXLKKDC59/5LNIBW7wyRlyBJp/tCbSfs6pH30pSY5C2ArC+VSUUrZ3
 rv8R1F2vx5kXk1Akz0sAdpy+EXsdmSBFQvse1djp6fjsv1screwgGOVlsuUflM0CYFlWVTm1oiPcq
 uUZukeInFjffVcJMf83lAOtsqJuBv6F5ZEqcQz2+0bRES908WOMXDwi5JKQoivn+ja5POC6NbVNPZ
 7E3O+/Bw==;
Received: from 177.17.250.151.dynamic.adsl.gvt.net.br ([177.17.250.151]
 helo=coco.lan)
 by casper.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKRpd-000420-Hf; Sat, 27 Apr 2019 18:13:49 +0000
Date: Sat, 27 Apr 2019 15:13:37 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 25/79] docs: convert docs to ReST and rename to *.rst
Message-ID: <20190427151337.2fb0ed5f@coco.lan>
In-Reply-To: <20190427172551.GI14916@sirena.org.uk>
References: <cover.1555938375.git.mchehab+samsung@kernel.org>
 <7adf9035ae06ecc6c7e46b51cb677f0a8f61d19a.1555938376.git.mchehab+samsung@kernel.org>
 <20190425180758.GC23183@sirena.org.uk>
 <20190426064609.7f00e013@coco.lan>
 <20190427172551.GI14916@sirena.org.uk>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishanth Menon <nm@ti.com>, linux-wireless@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, Viresh Kumar <viresh.kumar@linaro.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Harry Wei <harryxiyou@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 "H. Peter Anvin" <hpa@zytor.com>, Alex Shi <alex.shi@linux.alibaba.com>,
 Jonathan Corbet <corbet@lwn.net>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-pci@vger.kernel.org,
 Len Brown <len.brown@intel.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Borislav Petkov <bp@alien8.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sebastian Reichel <sre@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Sun, 28 Apr 2019 02:25:51 +0900
Mark Brown <broonie@kernel.org> escreveu:

> On Fri, Apr 26, 2019 at 06:46:09AM -0300, Mauro Carvalho Chehab wrote:
> > Mark Brown <broonie@kernel.org> escreveu:  
> 
> > > This is massively CCed covering a large range of subsystems and is patch
> > > 25 of a 79 patch series so I've no context for what's going on here or
> > > why...    
> 
> > You can see more details at patch 00/79:
> > 	https://lore.kernel.org/lkml/20190422115110.26443b44@coco.lan/  
> 
> OK, it would've helped to CC people on that. 

I know, but, due to bad experiences in the past, I had to actually
remove people from it, because several servers reject e-mails with 
more than ~30 destination addresses, as they consider it to be spam.

> Anyway
> 
> Acked-by: Mark Brown <broonie@kernel.org>

Thanks!

Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
