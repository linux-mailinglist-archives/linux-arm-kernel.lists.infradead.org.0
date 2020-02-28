Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C389172F18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 04:03:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaI4LpanWygqOpfHf+XAjohxXBJyggFZ7AB2CrE73Sk=; b=c0vGulDREBqq5y
	78F+8+/6sffVoccPTj68iepo/Lx5kIVP13pVaTCyogswhWz/xs2guEyQ5VIV8P7cYAtqVkmNue3o6
	/+6Ju4uLZavXVdDTGDC1ObjrRie0oCarkWPRIkDAS5foT1YmdS7hV61FLGxe86VpuQjbcIKL7C7Jb
	89ByRY0bfwWYbN7TJKHB4iKZILYyiVI4Eu8/rO6vIr//5ZXOiXdrGP/7Q5bHRmuHuknb/fLZUh3j4
	L69taSQv20z5l91hhJ5bYOe72oIh39EPtg7wIQXYGdQZAtjnBFC8VPtTiJzS8Y7AbYxvAQam7hHY8
	DT0H1nJBZ9qjU4l5yhlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Vvu-00018n-Re; Fri, 28 Feb 2020 03:03:22 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Vvk-000188-U8
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 03:03:14 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01S32TN4031937
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 27 Feb 2020 21:02:32 -0600
Message-ID: <2676013663fc8c53e02a5fdaafb1b27e18249b80.camel@kernel.crashing.org>
Subject: Re: [PATCH v5 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Tao Ren <rentao.bupt@gmail.com>
Date: Fri, 28 Feb 2020 14:02:28 +1100
In-Reply-To: <20200228010444.GA19910@taoren-ubuntu-R90MNF91>
References: <20200227230507.8682-1-rentao.bupt@gmail.com>
 <20200227230507.8682-8-rentao.bupt@gmail.com>
 <3150424b9e9f5856c747a0fbf44647919f49209d.camel@kernel.crashing.org>
 <20200228010444.GA19910@taoren-ubuntu-R90MNF91>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_190313_492355_BA9371CC 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, taoren@fb.com,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-02-27 at 17:05 -0800, Tao Ren wrote:
> > Also long run I think best is going to have a child node per downstream
> > port, so we create a matching linux struct device. This will make it
> > easier to deal with the other device-controller in the ast2600 which is
> > basically one of these without a vhub above it.
> 
> Maybe a dumb question: what would be the proper place to parse the child
> node/properties when they are added? For example, in some usb_gadget_ops
> callback?

No. What the vhub would do is when it probes, it creates a platform
device for each "port" child node that's linked to the DT node.

The driver for the device then attaches to it via standard DT matching
and checks if it has a vhub parent or not, and based on that, operates
as a vhub child device or a standalone one.

(For example, it might have different functions for EP selection since
standalone devices have private EPs rather than a shared pool)

They can both be in the same module or they can be separate modules
with cross dependencies.

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
