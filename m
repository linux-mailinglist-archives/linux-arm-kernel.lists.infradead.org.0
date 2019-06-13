Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A5244F27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 00:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTSDcRc5u86VSgdotczGDa7ZOLZHTVuYfdhvq1oZvzA=; b=GDc9N5j1Sv6MGQ
	Wg4jWBYq2UZl5YQxws9/5v153P3iqMjbgZdvYCcID2EUjHO2hlfwcvdadGNazOiNn5wE1ZUEGOBYA
	c6fb7+7WDQDjsLwgkI1TG2IpF6EhFJCvtvQgqWr+N2BoY6TqrFil67YYfoh0GLQ/5e4YMepv3XYPZ
	eCWxiUM51mbPfr2rKNhj/ZPvZG6asAIYcyK43hnYJlhqjwxw90G8tQ0E3ZYR0HEv8BZWi5pp5Rwgi
	GqkSavqx8RN1AF5H8LWNTYFRneIjC+1SRaHteyVtK2LuncimBpEEf1iH72D7F/5T+3QRT4NsNd6QZ
	7e0xtbrPiIlzvudIQEoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYGk-0000Na-2Q; Thu, 13 Jun 2019 22:32:30 +0000
Received: from smtprelay0004.hostedemail.com ([216.40.44.4]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYGV-0000MB-Ng
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 22:32:17 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 0234B1822408D;
 Thu, 13 Jun 2019 22:32:08 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10, 1, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2691:2716:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3871:3872:4321:5007:6742:7901:7974:9036:10004:10400:10450:10455:10848:10967:11026:11232:11473:11657:11658:11914:12043:12296:12438:12740:12760:12895:13069:13311:13357:13439:14659:14721:19904:19999:21080:21325:21451:21627:30045:30054:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: bells74_f85ac43e0702
X-Filterd-Recvd-Size: 3034
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Thu, 13 Jun 2019 22:31:46 +0000 (UTC)
Message-ID: <39e6c0f7d7529da9906a17450a8bcdf416297520.camel@perches.com>
Subject: Re: [PATCH 2/2] media: v4l: xilinx: Add Xilinx UHD-SDI Rx Subsystem
 driver
From: Joe Perches <joe@perches.com>
To: Hyun Kwon <hyun.kwon@xilinx.com>, Vishal Sagar <vishal.sagar@xilinx.com>
Date: Thu, 13 Jun 2019 15:31:44 -0700
In-Reply-To: <20190613220507.GA2473@smtp.xilinx.com>
References: <1559656556-79174-1-git-send-email-vishal.sagar@xilinx.com>
 <1559656556-79174-3-git-send-email-vishal.sagar@xilinx.com>
 <20190613220507.GA2473@smtp.xilinx.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_153215_911840_C80D3DF3 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.4 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Dinesh Kumar <dineshk@xilinx.com>, Hyun Kwon <hyunk@xilinx.com>,
 Sandip Kothari <sandipk@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-06-13 at 15:05 -0700, Hyun Kwon wrote:
> On Tue, 2019-06-04 at 06:55:56 -0700, Vishal Sagar wrote:

trivia:

> > diff --git a/drivers/media/platform/xilinx/xilinx-sdirxss.c b/drivers/media/platform/xilinx/xilinx-sdirxss.c
[]
> > +static int xsdirx_get_stream_properties(struct xsdirxss_state *state)
> > +{
[]
> > +	if (valid & XSDIRX_ST352_VALID_DS1_MASK) {
> > +		payload = xsdirxss_read(core, XSDIRX_ST352_DS1_REG);
> > +		byte1 = (payload >> XST352_PAYLOAD_BYTE1_SHIFT) &
> > +				XST352_PAYLOAD_BYTE_MASK;

Is XST352_PAYLOAD_BYTE_MASK correct ?
Should it be XST352_PAYLOAD_BYTE1_MASK ?

> > +		active_luma = (payload & XST352_BYTE3_ACT_LUMA_COUNT_MASK) >>
> > +				XST352_BYTE3_ACT_LUMA_COUNT_OFFSET;
> > +		pic_type = (payload & XST352_BYTE2_PIC_TYPE_MASK) >>
> > +				XST352_BYTE2_PIC_TYPE_OFFSET;
> > +		framerate = (payload >> XST352_BYTE2_FPS_SHIFT) &
> > +				XST352_BYTE2_FPS_MASK;
> > +		tscan = (payload & XST352_BYTE2_TS_TYPE_MASK) >>
> > +				XST352_BYTE2_TS_TYPE_OFFSET;
> 
> Please align consistently throughout the patch. I believe the checkpatch
> --strict warns on these.

I believe not.

Another possibility would be to use a macro like:

#define mask_and_shift(val, type)	\
	((val) & (XST352_ ## type ## _MASK)) >> (XST352_ ## type ## _OFFSET))

> > +		sampling = (payload & XST352_BYTE3_COLOR_FORMAT_MASK) >>
> > +			   XST352_BYTE3_COLOR_FORMAT_OFFSET;

So these could be something like:

		sampling = mask_and_shift(payload, BYTE3_COLOR_FORMAT);



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
