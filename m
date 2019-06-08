Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4366339C7F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 12:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fkSWGfpAEz/mWooxcdy13d1eTXsyBZKEneoFxRAcf4=; b=QGl9+izewnnlRU
	e+7YI/5oW15DxgbnUDHkIJCqQmD8U47jj2RgnTIc4ZHsBheW8ge22ZD12dhjM8Nde1keOHthCPQii
	R3CQecVpm4Uu9JqA9xN7xPAhKJhuZQO+f4KXqET7VnmhfMIwlvfmwZH45X+MdYkB9KWZxKZlxdsal
	Vbrtfs5n552tx2zbZDf5ZLKh/Sz+MIKhEuH/tPPsd0ErK9CoMq/EY+JxMheVoe+g94TGLOuG3Dh0+
	xaB0ikbtLTUtbynV26kDoLMtQ4QIIzYODyv2XVLepyeX3J6UxqUWtQz0YbtG96cgfoe6wZW9G7KNW
	QCDsdBm5NreMNKY3XX6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZYwf-0007W5-RU; Sat, 08 Jun 2019 10:51:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZYwZ-0007Vs-I7; Sat, 08 Jun 2019 10:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mgeScMz6rj/dz5CujtnU7v335CfKeHECqxwDNtzgkgY=; b=GyrjwBj00gZE9eaLRKHfky58Co
 YsT7v1zKxGTRvz3OUQxC2wRK3KGwYNzVaJd373H4vT21rbQ+uXfQf4Fbu1PcDWukxtxDdy4EW14F/
 jFrRYnMRazPXuy3XfTL0BR39hlBuk5CA1M0gb8F4nCw4LMsdqfsVJAibH+ocVsdtyBqxlznRDB68R
 7dqTfCETv2iBfVGkcAVSH85f5+Dd1+4flbQ+VBoWD6GJSXFYBHPZ7rnCcXLlObMLw84xH332yK0G9
 vxf9/2dI2KqhBMn8sWr67PA1PKVI2eFqEOQy0vU6C0DXIcf+ptS4nvZ6myRKE0bfWnXL9BkXQT2FN
 I5k5Swcg==;
Received: from [179.181.119.115] (helo=coco.lan)
 by casper.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hZYwS-0002D7-9q; Sat, 08 Jun 2019 10:51:20 +0000
Date: Sat, 8 Jun 2019 07:51:13 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 17/20] dt: bindings: fix some broken links from
 txt->yaml conversion
Message-ID: <20190608075113.32f2c7bb@coco.lan>
In-Reply-To: <20190607185728.GJ2456@sirena.org.uk>
References: <ff457774d46d96e8fe56b45409aba39d87a8672a.1559933665.git.mchehab+samsung@kernel.org>
 <effeafed3023d8dc5f2440c8d5637ea31c02a533.1559933665.git.mchehab+samsung@kernel.org>
 <20190607185728.GJ2456@sirena.org.uk>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Olivier Moysan <olivier.moysan@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Hugues Fruchet <hugues.fruchet@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, 7 Jun 2019 19:57:28 +0100
Mark Brown <broonie@kernel.org> escreveu:

> On Fri, Jun 07, 2019 at 03:54:33PM -0300, Mauro Carvalho Chehab wrote:
> > Some new files got converted to yaml, but references weren't
> > updated accordingly.  
> 
> These should probably just be sent as normal patches rather than tied in
> with the rest of this series...

Thanks for applying it!

Yeah, but the problem with documentation patches is that sometimes
the patches are merged via docs tree, and sometimes via maintainer's
tree, depending on the subsystem.

Anyway, Jon merged this week a patch that should produce warnings
on COMPILE_TEST builds when a file has a broken link.

Hopefully, this will help a lot to warn people against regressions
related to it.


Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
