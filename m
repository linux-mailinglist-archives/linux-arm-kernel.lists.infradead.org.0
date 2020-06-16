Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A81D1FA8FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 08:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExkZDg5tR0ziz+54lqJokvyo2H8Yuty2vIAGzyVyeB4=; b=uDVePUDURz8CP9
	Z9fnd6Sg40N3hYo9pwySWQRyai+Oi6r84zSyh9aAD9xq/jSHCWLeUunQdv6RM57zYMnO3VRRKYXPF
	/zH5k+flrv4yMDgK2LMUneUdH8RfR224/2p5KkpLuXaE6SF8tMKFTE0xoHBmzN+nkOyjwlwPYC2kY
	U3f8vh1gOVhmdd7NOzYZR2SE/EjfIKJd/fjTArR7FURgMh05rqmHsBWxlkDWT336lOrfyg38bu7Cz
	nMSLs3kTdW8QoKfsyJ8bpoQClx7c4lbGpssUrtSdZTtzOpVRWoCVfhneRow58xqsWyJttzLuuyawb
	wB+Bp3xiPr5+wRsk3cHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5Ih-00041E-0e; Tue, 16 Jun 2020 06:42:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5IV-0003yd-Lh
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 06:42:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 1BC9A2A2D2C
Message-ID: <21247dc7aa3de420680508b125519e54883e8bc4.camel@collabora.com>
Subject: Re: [PATCH v3 5/5] dt-bindings: display: ti,tfp410.yaml: make the
 ports node optional
From: Ricardo =?ISO-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Tue, 16 Jun 2020 08:42:09 +0200
In-Reply-To: <20200616015119.GI1629@pendragon.ideasonboard.com>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
 <20200611102356.31563-6-ricardo.canuelo@collabora.com>
 <20200611160817.GA6031@pendragon.ideasonboard.com>
 <8ad9a397a5fa6cebd2a4e0170dfa96ad73907faf.camel@collabora.com>
 <20200616015119.GI1629@pendragon.ideasonboard.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_234215_841907_66B2E58B 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 robh+dt@kernel.org, tomi.valkeinen@ti.com, dri-devel@lists.freedesktop.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Tue, 2020-06-16 at 04:51 +0300, Laurent Pinchart wrote:
> How about keeping the ports mandatory, and leaving dove-sbc-a510.dts to
> be fixed later ?

That's fine by me, I'll prepare a new version of the series.
Thanks for your input!

Cheers,
Ricardo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
