Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445761CE061
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 18:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYKzErz9opq02fMrWnPnwvFwvufpRXfii3HHeliuI34=; b=Y/6pZ6NFcftc3E
	lvJ63/LR2Fn1g0hj6OMMcH5XGUUPZ8L8DAIF3Q/vNZ9VnjASMU8tIRrXSQERvMv/IPSLZtq4vrNwe
	Lrly3gMWS2ycMn12iylN6H5IchjWPGcgoiXYJ63J8Gu2/YZjn4SBHF+R7Nvd8sEVgyU23NR2/yo9X
	z3l8SVPa81s9uyeskqpUPnaT3o9Ee6aYvhqOd97e36r0XSXitCgJDNFS6v1K09AHNX1f6Z58DssXI
	TDrWkqAgECqxQvFriw0WkGxFQ5iebRom1JlLZOwUWhI6sGVhmmC/JJ7FBX4KOz9Xnf8K7RmUfOvH6
	Gs1yvWO+iZTKEiulTtEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBGO-00011H-I1; Mon, 11 May 2020 16:26:44 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBGF-00010U-Cr
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 16:26:37 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 24955804E0;
 Mon, 11 May 2020 18:26:24 +0200 (CEST)
Date: Mon, 11 May 2020 18:26:22 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: robh+dt@kernel.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
 laurent.pinchart@ideasonboard.com
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
Message-ID: <20200511162622.GA19798@ravnborg.org>
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
 <20200506155320.GC15206@pendragon.ideasonboard.com>
 <20200511145911.2yv3aepofxqwdsju@rcn-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511145911.2yv3aepofxqwdsju@rcn-XPS-13-9360>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=MOBOZvRl c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=8nJEP1OIZ-IA:10 a=_bxB9wg1tD68s7t2c6IA:9 a=wPNLvfGTeEIA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_092635_613163_96539AEA 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ricardo.

On Mon, May 11, 2020 at 04:59:11PM +0200, Ricardo Ca=F1uelo wrote:
> Hi Rob,
> =

> What's your opinion on this?

I'm not Rob, but anyway.
> =

> Some context: It's about bindings that define signed integer properties
> with range checks that go below and above zero. The schema checker fails
> because, apparently, it interprets every cell value as an uint32, which
> makes the range check fail for negative numbers.
> =

> > > >    b) Redefine this property to be closer to the datasheet descript=
ion
> > > >    (ie. unsigned integers from 0 to 7) and adapt the driver accordi=
ngly.
> > > >    This would also let us define its range properly using minimum a=
nd
> > > >    maximum properties for it.
> > > > =

> > > >    I think (b) is the right thing to do but I want to know your
> > > >    opinion. Besides, I don't have this hardware at hand and if I up=
dated
> > > >    the driver I wouldn't be able to test it.

Based on the discussions option b) above seems like the best compromise.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
