Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C391F5650
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 15:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DlnE1r6Bsez7BCgwsW34Z1hbbF+fNvse5e5P9xHYM8M=; b=pXrQ3jT/u9gQO2
	cPnwePe/tCIopOVlKQgwPXqqPaZwZer9OuyKpSuXz7ZYlMeoNSk2hMTVR4pmhWurFqOYfX7kf8zOw
	RPDpymjBJzvLkJKSxrltGrbn6rD3KcvE8ir6vKxWkBnypW/zCdSdhTTQ8D/ny9CqUm5iUVZUx+hnb
	Qd9Jr4SbTMdbKyC7bwypYNsi3YDkumruD8XdAgspqL3KSJ2ryp+vdadR2wxQ6WxLZtbs5J91v0tSb
	ECM6KVJ6R5R+a38N05/CFiwqUZGePfejxabTuxpGVsyvbvnocfCAa2VfxiCVX07EPlgKrS3nvqfqK
	i0IcYEtSD4sheQ+NUh2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1Dm-0003jR-Cc; Wed, 10 Jun 2020 13:56:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1Dc-0003j8-SN
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 13:56:42 +0000
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A725207C3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 13:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591797400;
 bh=1Cj2Fu88LV4A1GgSyK0XUoUZIOiwmlOBdE+eZjQYBE8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cxfDQV9c7q2CTPvH9bVVbFxTVYhTD/TelQG5Yq27BP7A4hg/tJgMFNm8ivwMarGjO
 //yBZphNP8a1ZofgNgh46xyBh6cjhJOMoAjWU/nRxi9KUj5kZvUQmlGHWfusM5T/1r
 qGtTogDeicpAsCSSiGjscw3KPco8jXPwv6C5TMzs=
Received: by mail-ot1-f43.google.com with SMTP id e5so1736737ote.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 06:56:40 -0700 (PDT)
X-Gm-Message-State: AOAM5339Wfh5QPE1EqZOoyHC9zX0BrA63N0DNqnxdMyaYU0UdQVpJwKm
 dngDozKjoRrBOt6bmb3EiqBQjghKzrtU6rWe5A==
X-Google-Smtp-Source: ABdhPJzmcV+9T4BOYZL9yyzPscKPz9ct+kzL7+78ybw2OrqunkEGa/Wxk94oESNvy8oQbfWj8DD4LjEjvLDexy9UwZ8=
X-Received: by 2002:a9d:c29:: with SMTP id 38mr2547303otr.107.1591797399576;
 Wed, 10 Jun 2020 06:56:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200601094512.50509-2-sudeep.holla@arm.com>
 <20200609223551.GA1620273@bogus> <20200610074346.GB15939@willie-the-truck>
In-Reply-To: <20200610074346.GB15939@willie-the-truck>
From: Rob Herring <robh@kernel.org>
Date: Wed, 10 Jun 2020 07:56:28 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKFDBmyAVjWR9ZxOjU6j2fcCOz32rnnUwBAQzzh-vMa_A@mail.gmail.com>
Message-ID: <CAL_JsqKFDBmyAVjWR9ZxOjU6j2fcCOz32rnnUwBAQzzh-vMa_A@mail.gmail.com>
Subject: Re: [RFC PATCH 1/3] dt-bindings: Add ARM PSA FF binding for
 non-secure VM partitions
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_065640_936617_B52F17CD 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 1:43 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Jun 09, 2020 at 04:35:51PM -0600, Rob Herring wrote:
> > On Mon, Jun 01, 2020 at 10:45:10AM +0100, Sudeep Holla wrote:
> > > Add devicetree bindings for a Arm PSA FF-A compliant non-secure partition
> > > at virtual interface(VMs).
> > >
> > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > ---
> > >  .../devicetree/bindings/arm/arm,psa-ffa.txt   | 47 +++++++++++++++++++
> > >  1 file changed, 47 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/arm/arm,psa-ffa.txt
> >
> > I'm hoping this goes away if the firmware is discoverable, but if not DT
> > bindings are DT schema now.
>
> We'll need the binding for the kvm host side, because there are plenty
> of partition properties that are not discoverable (e.g. number of vCPUs).

BTW, there's already a partitioning binding for Power in ePAPR. I've
not paid much attention to it, but maybe it could be useful here.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
