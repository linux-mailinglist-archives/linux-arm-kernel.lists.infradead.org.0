Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029A117B28A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 00:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjuHydy9WmPFoymCWRbt49QPSKY3BIp7HFTtliW+MRQ=; b=kgXpNHobIp2HCi
	NmJ7XnUAJ6OBaNdkoAgei85wRIACI4j3zIU/CEAVdjqRARi7k/+UxfC1y/enFlULezl8tagUygYcf
	UTp4TO6LhiuvkcuAprLiZ912shcj4FAX8PX2nX91L9PqhIZ4ZNP4z/arzDkHqlKxSSoTxLHk8j26E
	xju5Wqkk1yjjUjYy9Z5/GhH5GoeDIvhZkgrurZSLVJP3LYXSWuLtJi8OW1mG/+aWP3cyWtp+NE5ly
	yHlfxUD8Qm0CgFc25AYE2FMiiQWo9Gr55oiNzspRdu9R7zmmng4+FkwSP0coACfTwUKeNNvmdbAeJ
	TLKCzHnfAY1u8aRrZMhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA0OR-0000HA-Tu; Thu, 05 Mar 2020 23:59:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA0OJ-0000GX-3Q; Thu, 05 Mar 2020 23:59:00 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jA0OH-0006dd-3m; Fri, 06 Mar 2020 00:58:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, robh+dt@kernel.org
Subject: Re: [PATCH 2/3] ARM: dts: rockchip: add missing @0 to memory nodenames
Date: Fri, 06 Mar 2020 00:58:56 +0100
Message-ID: <7869677.iSBujUIW6u@phil>
In-Reply-To: <2a5ef6fc-2487-91ef-24ce-97dd47b0a137@gmail.com>
References: <20200304074051.8742-1-jbx6244@gmail.com>
 <1784340.9KJLpVao5L@phil> <2a5ef6fc-2487-91ef-24ce-97dd47b0a137@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_155859_287548_4FE49400 
X-CRM114-Status: GOOD (  21.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan, Rob,

Am Donnerstag, 5. M=E4rz 2020, 23:21:52 CET schrieb Johan Jonker:
> Goal was to reduce the error output of existing code a little bit,
> so that we can use it for the review of new patches.
> Some questions:
> As I don't have the hardware, where else is coreboot used?
> Is this a rk3288-veyron.dtsi problem only?
> ie. Is it a option to produce a patch serie v2 without veyron?
> Can someone help testing?

I believe that is more question for @Rob :

In the past we said that it would be ok to have "memory" nodes without
address, so "memory {}" instead of "memory@0 {}", simply because
bootloaders mess up sometimes.

Question now would be how to make the yaml bindings happy.

Thanks
Heiko


> =

> Johan
> =

> On 3/5/20 10:31 PM, Heiko Stuebner wrote:
> > Hi Johan,
> >
> > Am Mittwoch, 4. M=E4rz 2020, 08:40:50 CET schrieb Johan Jonker:
> >> A test with the command below gives for example this error:
> >>
> >> arch/arm/boot/dts/rk3288-tinker.dt.yaml: /: memory:
> >> False schema does not allow
> >> {'device_type': ['memory'], 'reg': [[0, 0, 0, 2147483648]]}
> >>
> >> The memory nodes all have a reg property that requires '@' in
> >> the nodename. Fix this error by adding the missing '@0' to
> >> the involved memory nodenames.
> >>
> >> make ARCH=3Darm dtbs_check
> >> DT_SCHEMA_FILES=3D~/.local/lib/python3.5/site-packages/dtschema/
> >> schemas/root-node.yaml
> >
> > changes to memory nodes you sadly cannot do in such an automated fashio=
n.
> > If you read the comment in rk3288-veyron.dtsi you'll see that a previous
> > similar iteration broke all of those machines as their coreboot doesn't
> > copy with memory@0 and would insert another memory node without @0
> >
> > In the past iteration the consensus then was that memory without @0
> > is also ok (as it isn't changeable anyway).
> >
> =

> > As I don't really want to repeat that, I'd like actual hardware tests
> > before touching memory nodes.
> =

> Any suggestion/feedback rapport welcome.
> =

> >
> > Heiko
> >
> >
> =






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
