Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1C7742CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 03:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1Outj0nTrZg2goutePSA7d0/cs9lTVKhJZWFoVhBnU=; b=cWc1fGLLFEgswI
	UU/IaTU3+PFzrninlmalNdiHbRQAApiTJ/xivUvFCMOAfzHZiaaJP+qw8/bIdFpoutC8TzGK3p8fg
	JCfj6YnOHM+ygzIH2DZUwTqs4ku96b5kWgb8JOBpbpEMCoZckWHu7PuZRICNuFtW2p6LoDs562ddl
	16foyGS8LAdUKNrfJGJx+obfEox5D7b1jKXEDDk5BaQfVfNV3h7WO6ZL7nRJSrO+B5WgkVXLQoUOO
	wbV54CUGfbDXQElGmEwupTFpnJ2AlizZsl0TezVMnJXRsNAttQSvyJIwkpiILzK2/xX3o2y+XM7FC
	A6qiIbRtkMOSn1vFNpGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqSHG-0003Sy-3X; Thu, 25 Jul 2019 01:10:38 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqSH1-0003SU-7K
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 01:10:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 355FE21FBC;
 Wed, 24 Jul 2019 21:10:21 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 24 Jul 2019 21:10:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=hT6VUAYNVIFczKSf7p2tdTIbi+IZpnd
 9IggzGcLtHyQ=; b=mVWrDOAS8HG4YyOWzxSU9uDXvpp/q9weSwMs3XphM6+9j4G
 Vn5uC+KFR+gSeezq3K6biFvC0IAw7FpCTooOSKmKNt/wAmOIGai7wXCP6hi9FMwV
 fmH8aADBK+O9iw6eWc5VQG32hdB/1zZ1mvC9tM0UDGIU/zSFZatxi103lvBA9ymE
 mQ+9YepIikdaS3zI4HcrIIgvw7sGA9Tyjcp1xYkFYmPq7OTL3ZbkQAzNJAulfvVs
 7xhpucFz6WHmVQhLoXGh0yXP3ZLy2+JnWAeVz2KrKsqzaT9sVmyWFyBsHZtlC5zQ
 t7oYf4T4oExHpv6azHLECU+C+VWrVBVxlZbsH0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=hT6VUA
 YNVIFczKSf7p2tdTIbi+IZpnd9IggzGcLtHyQ=; b=YXNOT5yI7R7e/gLkcPvVid
 o6vJv1Zkzo3zG02qo1uU4TnIth2J21EgzmyreA5qLiATdqEjgJ0T6kueXsEqoe/i
 IsvDprSz7d2La5nluRvdMpESMqz0nRTnmVuEhyjza/Rib82IcNVAMn5X8x19oj/P
 kmEh2NvRgsJKNeI4s+KhWon4/qSY01J1jkmC0f9bpuBPjL1JzsJOXasrbB6PwmSw
 WH1WUJ2iTUF1UsI9V01nGwusK5uuutXuyKPK6Ellc1yd5K+2jTgTuLBzt0BSKjk5
 rrdBpjmF1XMShHCsTZFWcTwFKLIw9XPohW2++c7WPq2aMq+jos/o0maU3Yu1/goQ
 ==
X-ME-Sender: <xms:egE5XeW7kZvQ9egeyjjFPGT_Jz-3NUpb2L8A72zmWRiLgAqmafE_sA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkedugdefkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:egE5XVFmtKPksS0mLeVK3pJ2RvFGODGVseqK6TGANCZgoLCsneqJVQ>
 <xmx:egE5XfXzjZ6F9kA-eLW9_ZC-PHaoeYesnpKn4F1US-NptTJ5WvHDWg>
 <xmx:egE5XYDE54I6zx4Fhs2E7uu7j3gLff9Nwl8ozKKchsPSAewL0xBHjQ>
 <xmx:fQE5XQp0G_y4WUSzGSGO59QkCPaZRpqRwXl2fAfSy9Z7luzJZJ4Wdw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 64D16E0129; Wed, 24 Jul 2019 21:10:18 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <4f6709f8-381f-415c-8569-798b074b66c5@www.fastmail.com>
In-Reply-To: <2a0c5ef5c7e20b190156908991e4c964a501d80a.camel@perches.com>
References: <cover.1562734889.git.joe@perches.com>
 <cddd7ad7e9f81dec1e86c106f04229d21fc21920.1562734889.git.joe@perches.com>
 <2a0c5ef5c7e20b190156908991e4c964a501d80a.camel@perches.com>
Date: Thu, 25 Jul 2019 10:40:32 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joe Perches" <joe@perches.com>,
 "Andrew Morton" <akpm@linux-foundation.org>, "Joel Stanley" <joel@jms.id.au>
Subject: Re: [PATCH 03/12] drm: aspeed_gfx: Fix misuse of GENMASK macro
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_181023_499446_AD41BFFC 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 25 Jul 2019, at 02:46, Joe Perches wrote:
> On Tue, 2019-07-09 at 22:04 -0700, Joe Perches wrote:
> > Arguments are supposed to be ordered high then low.
> > 
> > Signed-off-by: Joe Perches <joe@perches.com>
> > ---
> >  drivers/gpu/drm/aspeed/aspeed_gfx.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx.h b/drivers/gpu/drm/aspeed/aspeed_gfx.h
> > index a10358bb61ec..095ea03e5833 100644
> > --- a/drivers/gpu/drm/aspeed/aspeed_gfx.h
> > +++ b/drivers/gpu/drm/aspeed/aspeed_gfx.h
> > @@ -74,7 +74,7 @@ int aspeed_gfx_create_output(struct drm_device *drm);
> >  /* CTRL2 */
> >  #define CRT_CTRL_DAC_EN			BIT(0)
> >  #define CRT_CTRL_VBLANK_LINE(x)		(((x) << 20) & CRT_CTRL_VBLANK_LINE_MASK)
> > -#define CRT_CTRL_VBLANK_LINE_MASK	GENMASK(20, 31)
> > +#define CRT_CTRL_VBLANK_LINE_MASK	GENMASK(31, 20)

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> 
> ping?
> 
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
