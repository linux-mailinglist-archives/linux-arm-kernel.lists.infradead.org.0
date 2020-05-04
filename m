Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEB31C37A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AT30oahJ+7PFdpKEjZR/Jx8wEFstNaS1/9J1jZHIsJg=; b=pjM+p2NoiP8oCo
	72N/tYSfd4TmMBvFtonc4lLKToBh60tQSHNETG+8FzoC66+s8V1Fa/25LngTT5SJ7mzmJi1EtnmMG
	S94kfJUKZx5MO+XLDXNNaEr87WGsMTdWES6SJtl7gmIVD+UMvWbbrkffMBWGUZS9H73hwUe8IWt0f
	XJULwftUzptBIJV5Xr9btQmbe31PLde3WHNv3fURdwfpRjmhZH21Aidhm/VUZYGdXLmOZnRgdAEYN
	ai3o9V3dqnwehT45TDmf4un0vyxW4zKbYOr/H2awfUpubwHlm2+4TKMey0GokNl2gjlnYq+KPhQnF
	/G/VLKrVGST7eWCEaPww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYtw-0006to-3A; Mon, 04 May 2020 11:04:44 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYtg-0006sD-S4
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:04:30 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 7F7C62D8;
 Mon,  4 May 2020 07:04:24 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Mon, 04 May 2020 07:04:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=49dwVzlg4yout0mlI0duNcm7pu2D5zR
 VEWyuXFEPhGU=; b=AbYWfCIh+Tz/F50g7Tweaswku+okSFIb8Wo4E8U6foqtSM8
 ZYq90QcAXG/rYSrgWAxUunR/NIKo8L0jrJiDMR2TrbJ6gResjk9t1BjFPHRVJJPG
 zOISYVxOXjy3U1q2PvSBFOPtOcVx8FteX8dYqEqJE6zGN2+G3o9BUMv/PzUyGWqe
 qvKqFuKzgQvTRVGFp4XQOBLhT/o0Q3sQ21ehzLKs6bGESJaymgCz3oAw934IdQuP
 b+J6Xb+AI+IwpOv9F8gYKDJvXOLEAg0zOpXMMfgAl41eAaiZe47EbyZ/KIUOZ4D7
 Nu0jYnNxdQTBWV8TLYPdWZHk93V+jW4tJzr4eFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=49dwVz
 lg4yout0mlI0duNcm7pu2D5zRVEWyuXFEPhGU=; b=FOvR6siGanOLWuUXtSMMl0
 o5uHqKxG3w5na9zs2jG7xeazFlHVCiqcrLv7AZRInMl063YJSocYi811HiR39MBu
 YWfJMWtccdjbc96RmKAPg36M4W3FBMl/zu/GcSsJ0q8IWf1qjn9YR9QfQ3hoITct
 CgcFs+k+yY5pvXJnEvEgb/i/7vi8oubVbOYhzaF3oz0GloUpx/hHghflEIzkFZVj
 fZDQOyKeC5H6HRGP5WCzpjM6wVKXI8Tmy0fIcbov2c3MOr+CJ1i4A5stkTOl3mEz
 u3g3BxM7TpJ+IF+J3F0CUnWAzVvY1HKlDx9/N4qrIZDm3WSHAZEshyTDqbqg8Mtg
 ==
X-ME-Sender: <xms:t_avXrXmlbQpGG5_yRbhLXtv1WgwUOVvBIS58b2naUbAdf_yleCQ4w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeggdefvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucggtffrrg
 htthgvrhhnpeehhfefkefgkeduveehffehieehudejfeejveejfedugfefuedtuedvhefh
 veeuffenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 grnhgurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:t_avXs5I4xlwGIpDS-tB7qxaOzAluwOdfezFC9QOmv-LpJU505O-CQ>
 <xmx:t_avXurijGF2Ua1hkypHCzPPMfpKzIoNwqGkXHIEyzlbT3mmpCYiwA>
 <xmx:t_avXnn4wsesB9ILvaXG-OB5KPmuh9NWy5RYqW1PiBM13v7U8UYQjQ>
 <xmx:uPavXltuK2j6jja0egnmx5b-v3iTrYs6VXZHLR2NwnSSBT7RQ1vzVw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 0543AE0131; Mon,  4 May 2020 07:04:23 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-dev0-351-g9981f4f-fmstable-20200421v1
Mime-Version: 1.0
Message-Id: <c1de0c90-d486-4855-bb26-0f3cc416b05d@www.fastmail.com>
In-Reply-To: <CACPK8XcP3V=8fAUfNvRFqPU9G38dGR43Kpp=Uxm=P_AjrMnzBQ@mail.gmail.com>
References: <20200424135303.20952-1-a.filippov@yadro.com>
 <CACPK8XcP3V=8fAUfNvRFqPU9G38dGR43Kpp=Uxm=P_AjrMnzBQ@mail.gmail.com>
Date: Mon, 04 May 2020 20:34:02 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>,
 "Alexander A. Filippov" <a.filippov@yadro.com>
Subject: Re: [PATCH v5] ARM: DTS: Aspeed: Add YADRO Nicole BMC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_040428_978463_0AC2F585 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 27 Apr 2020, at 20:41, Joel Stanley wrote:
> On Fri, 24 Apr 2020 at 13:53, Alexander Filippov <a.filippov@yadro.com> wrote:
> >
> > Nicole is an OpenPower machine with an Aspeed 2500 BMC SoC manufactured
> > by YADRO.
> >
> > Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
> 
> This looks good to me.
> 
> Andrew, do you have any comments before I merge?

Not other than muxing all the ADC lines to enable just one seems a bit strange,
but Alexander mentioned previously that the rest were simply grounded so it's
not going to cause any problems in practice.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
