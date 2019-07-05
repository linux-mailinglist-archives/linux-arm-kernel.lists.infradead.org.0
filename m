Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B00606F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PSpChMH369Gxnpi5D+AFgR/LsbFEYF9z9Kxe2g3juNY=; b=fGf7nxuE8KTcxx
	Dkx8g1JuaYH6HXJakWMAQw5BCk2GcQyB/Yv/nTcBdf9SuqLlmvo6HeCmQU+1eeXDWyiRNLMGrRNnC
	7nWHZ32yibjVBY8bGzikVc6C8UU57fOomUM3O7wSYr4MkYsreTlX9Uw+i7wKXW/JVrooOqcthySgf
	Ro25uazE8JHpEw6rPeLOwa5Md/6deKuvMhgk+0A4vMlULGAu3SCBwtzsrS9XzlcLrVnafPW4Q23V7
	5Mf6DmuuPjRvHGoPLT1+TsLNF6p0exCiKWCgTOtj+b7Jy5PqKoVzQB4NbcEnTnUhXEm5ODruD+4wr
	pfiaxv74ygO76bbiXIOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOhP-0007Ng-1G; Fri, 05 Jul 2019 13:56:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjKLx-00033g-HE
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 09:18:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6p91uc68zgb+zHpZhfiBVH9dddBlMwMSVypWirbQ51U=; b=KA1Iit7j+fs3gKvxEBPhcyoyX
 vNBT5N/fKpKPQ8o4w2UBrt275Sbi4G4hKCRU/5fMLIyPTBQNE5mUiH6nNzOPGj3wZk/uuG8kvZMr3
 Uq7NkG26Lelt81FnF16rB/SES7u0vVFtPFakBR8eFETesJjBvecqc3aTWtsX9kz1PzX2f33gJquOS
 sQn8u/wh2yEgFmbzCcKxEnlfah3KyqrkV+d/H+k2DzDwhjBJmeI+W/bVMq0c/lWT4cNBhtOnQ7J8Y
 p8h/ypgBE8YFEKtMwHSkxAwMyWjxkWaJNwBTAnfp7T/hMrUZwvXA7M9l0c8BNGnI+5FVVbjo/WBX3
 xDBVyZ7sA==;
Received: from mga05.intel.com ([192.55.52.43])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjKLn-0007t1-7d
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 09:17:53 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jul 2019 02:16:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,454,1557212400"; d="scan'208";a="363551708"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga006.fm.intel.com with ESMTP; 05 Jul 2019 02:16:38 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 07C2820904; Fri,  5 Jul 2019 12:16:37 +0300 (EEST)
Date: Fri, 5 Jul 2019 12:16:37 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 0/3] DCMI bridge support
Message-ID: <20190705091637.b5626yvkycumsp6z@paasikivi.fi.intel.com>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <20190620161721.h3wn4nibomrvriw4@kekkonen.localdomain>
 <ae097d67-58fe-82d7-78d6-2445664f28db@st.com>
 <20190626172503.GB6118@pendragon.ideasonboard.com>
 <b21efe64-7762-308b-c2e5-503589041c35@st.com>
 <20190627133824.GC5021@pendragon.ideasonboard.com>
 <20190705075522.o7kuptdy3p3o64l7@paasikivi.fi.intel.com>
 <20190705080424.GA4994@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705080424.GA4994@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_101751_644177_DB2D8F0B 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: Yannick FERTRE <yannick.fertre@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Mickael GUENE <mickael.guene@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe CORNU <philippe.cornu@st.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Fri, Jul 05, 2019 at 11:04:24AM +0300, Laurent Pinchart wrote:

...

> > A reasonable compromise would be to add a Kconfig option that allows
> > enabling MC. This way you can provide backwards compatibility and allow
> > making use of the full potential of the hardware. That's also why hardware
> > that may be part of a non-trivial MC pipeline should start with MC-enabled
> > so we wouldn't run into this.
> 
> I really don't like this, as it introduces additional complexity. My
> recommendation is to go for an MC-centric approach. Going for a video
> node-centric approach is really shooting oneself in the foot regarding
> future extensions. But that being said, if there's a strong desire to go
> for foot self-shooting, the way to go is explained above.

Well, there's nothing that can be done anymore as this has already
happened: this is an existing driver in the mainline kernel. Unless you
have a time machine of some sort, of course. :-) The choice is now really
between breaking existing applications (plain V4L2) and supporting new
functionality (MC-centric), so if you need both, I don't really see another
choice than a Kconfig option.

On the other hand, if we know there are no existing users that could not
support the MC-centric view of the device, we could just change the driver
API and forget the Kconfig option. It'd be much more simple that way
indeed. But I don'k know what's the case.

-- 
Regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
