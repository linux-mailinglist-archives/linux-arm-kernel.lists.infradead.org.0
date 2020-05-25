Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B799F1E0823
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 09:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyGqqOlwuXcAQ1v3xbBcNuxaXnt7owUMJ1Dy7A++8uE=; b=Hn7yDzpzO8+l8d
	oA9XSJdSDeAD+pVGj6uaJXnTNRQkkEbysjzJFcqxQkftbvdMb0kEtXRAQSA+MR/TW8cGCNchOzAvP
	V9A9NtTUAQLqoenXGyFzSm8r5YiWlpm2Cjf4JeI/2y/jQfCS1xuGl8YPOqjYI3sKnK9rOUQnwymGR
	SqxxNFzIxtKak0Cy8njNDOdAIU6/Pqz7X3evVq9zpjBeY3q7Q2aN3k6fZDTySDJEAQfvqjjsuiERL
	lnH6Abz+DNOXL+Xyzzwcij5M3bIfYutUH7UwfdMPs//cCU/08exswNhKUmGZECcLwbs2KF4Es2h91
	9DCxBHZZWf+ScVdrE+gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd7m7-0002BN-NO; Mon, 25 May 2020 07:43:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd7lv-0002At-9e
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 07:43:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 3BDAC2A0A70
Date: Mon, 25 May 2020 09:43:35 +0200
From: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200525074335.grnjvdjnipq5g3kf@rcn-XPS-13-9360>
Mail-Followup-To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, geert+renesas@glider.be,
 robh+dt@kernel.org, xuwei5@hisilicon.com
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-7-ricardo.canuelo@collabora.com>
 <20200514015412.GF7425@pendragon.ideasonboard.com>
 <20200514093617.dwhmqaasc3z5ixy6@rcn-XPS-13-9360>
 <20200514152239.GG5955@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514152239.GG5955@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_004343_504460_B01989C9 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On jue 14-05-2020 18:22:39, Laurent Pinchart wrote:
> > If we want to be more strict and require the definition of all the
> > supplies, there will be many more DTs changes in the series, and I'm not
> > sure I'll be able to do that in a reasonable amount of time. I'm looking
> > at them and it's not always clear which regulators to use or if they are
> > even defined.
> 
> We can decouple the two though (I think). The bindings should reflect
> what we consider right, and the dts files could be fixed on top.

Do you have a suggestion on how to do this? If we decouple the two
tasks most of the work would be searching for DTs to fix and finding a
way to fix each one of them, and unless I do this _before_ the binding
conversion I'll get a lot of dtbs_check errors.

The binding conversion itself is done, if we go this route the only
additional change would be to make the supplies required.

Cheers,
Ricardo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
