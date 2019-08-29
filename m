Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB31A1F8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dF6kJqigcyv97GuBk22+bRKxX1+sKB5kaita1BUv8mU=; b=WfRT457y1uHTAK
	93ziGCnLthORHlGTIMC7yrk/AZE7l5EGIzeMmMwrqHNI1vix/YRpMvDbBryYitJK4mvGgBgbvInsI
	hc3sTWKbQAVKIEslgRQZS3ePXMirkkf8FuNj5g/YjZhKqdSXJgZPCOUKfsECuCO0SoWNMK+CT4zy0
	Qwwhb9MEYJzg0nfr400eApX+755Bfuyius6VOt7LF8Q1oCM2l9yj9XIC+Rxz1gD+hbBE4ELAd/6Os
	oDPRNTGVNpgSEfhujmRSt0QdLRmYvUp6klIVqMdEVP8J/dk7pbmZetITpBhBaMi86y7iieJopnzdP
	OniZm3k8X+quEMtbxEMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Mc4-00006G-6z; Thu, 29 Aug 2019 15:45:28 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Mbi-0007d0-B4
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:45:07 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 272F02CF;
 Thu, 29 Aug 2019 15:44:59 +0000 (UTC)
Date: Thu, 29 Aug 2019 09:44:58 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH] Documentation: add link to stm32mp157 docs
Message-ID: <20190829094458.590884ba@lwn.net>
In-Reply-To: <5257eff7-418b-8e94-1ced-30718dd3f5dc@st.com>
References: <1566908347-92201-1-git-send-email-gerald.baeza@st.com>
 <20190827074825.64a28e88@lwn.net>
 <5257eff7-418b-8e94-1ced-30718dd3f5dc@st.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_084506_398529_0879001A 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Gerald BAEZA <gerald.baeza@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 17:23:30 +0200
Alexandre Torgue <alexandre.torgue@st.com> wrote:

> >> +Datasheet and reference manual are publicly available on ST website:
> >> +.. _STM32MP157: https://www.st.com/en/microcontrollers-microprocessors/stm32mp157.html
> >> +  
> > 
> > Adding the URL is a fine idea.  But you don't need the extra syntax to
> > create a link if you're not going to actually make a link out of it.  So
> > I'd take the ".. _STM32MP157:" part out and life will be good.
> >   
> 
> We also did it for older stm32 product. Idea was to not have the "full" 
> address but just a shortcut of the link when html file is read. It maybe 
> makes no sens ? (if yes we will have to update older stm32 overview :))

Did you actually run it through Sphinx to see what you get?  If I
understand the effect you're after, you want something like this:

  The datasheet and reference manual are publicly available on
  STM32MP157_.

  .. _STM32MP157: https://www.st.com/en/microcontrollers-microprocessors/stm32mp157.html

IOW you have to actually *use* the label you are setting up.  That's a fine
way to do it, I guess, though I'm not really convinced it's better than
just putting the URL in directly.

Thanks,

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
