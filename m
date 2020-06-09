Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44B01F4936
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 00:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8rfY+urZZUpE51KmTQRcTJIsrG85y5BGvT3TcOseRs=; b=q/zGBmtUX4Q55y
	4i6VzKZGEbxjYSJSRIyAIbMckw1FyBwzPC9wVNJDcVNs6jHiOArHE6N9jyl4VX3A1ccqH0cvnuQ+0
	ina2AtLu3/MIpCZnCwy3XVxVMMMREHsP9a63tf56lAF3DKeYNdcWmkf700W5N4c/Q2SIR8Wh1xJ+C
	G6CiaCy8y0f5J1X8Y98+7+sdObp7wf2n/p75F4+opvKDdOvx9ZqkfsOFjbZwEcEiF830y4mWjiPyq
	WDbqd6r/Z2WeCmHvR9j03aNgW1nui11wW/G+t+bIRNg7JMZvIt2PFBZXvQ6GdBYrL+OkcgXTj0ey3
	u4tJ6ibIUiksHHjbfSmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jimLl-00059C-G1; Tue, 09 Jun 2020 22:04:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jimLe-00058S-5T
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 22:03:59 +0000
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6899320825
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  9 Jun 2020 22:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591740237;
 bh=flZ33ysLlKU45UAun+m9I+uL1J5SSmfePQ8hOU6DJfg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lkIALF/Bz5PHpbWDPE/TVnpI2c/G/+3TP5jdAxlBZenjXoI743llcFBTqAjEKIa2d
 mk3YMda7mIEGR7kVGu9J1XQi1oUtLlNrQTctAeflcrM3BX9rl37Vd9DR+QmZfHdYB8
 kpWx8xVi3QwABVCAkftswnHytL9YYHSyJfGQscPo=
Received: by mail-oi1-f177.google.com with SMTP id x202so170885oix.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 15:03:57 -0700 (PDT)
X-Gm-Message-State: AOAM531Z1URsmT+8bK0r7bUfTYU5nYsvWYa6/4jDxX3TdfJvaqUkMw0j
 +uVO9SqRZhbnCdSIgi752GPyOJgBAnuPyDkH7g==
X-Google-Smtp-Source: ABdhPJzUR9iieM8EaueMmaUiEVRgOMVztBfW1AHBkxHha+Gjto8AsBpZQbvbkHWaNeJrgkpACTnHBYgdAkwtI7Cit6Y=
X-Received: by 2002:aca:d943:: with SMTP id q64mr294871oig.147.1591740236611; 
 Tue, 09 Jun 2020 15:03:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200609110136.GJ4106@dell>
In-Reply-To: <20200609110136.GJ4106@dell>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 9 Jun 2020 16:03:45 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK1BfYa2WfHFUwm9MB+aZVF5zehDSTZj0MhjuhJyYXdTA@mail.gmail.com>
Message-ID: <CAL_JsqK1BfYa2WfHFUwm9MB+aZVF5zehDSTZj0MhjuhJyYXdTA@mail.gmail.com>
Subject: Re: [RFC] MFD's relationship with Device Tree (OF)
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_150358_248602_F320DE4E 
X-CRM114-Status: GOOD (  36.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Michael Walle <michael@walle.cc>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Mark Brown <broonie@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 GregKroah-Hartmangregkh@linuxfoundation.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 5:01 AM Lee Jones <lee.jones@linaro.org> wrote:
>
> Good morning,
>
> After a number of reports/queries surrounding a known long-term issue
> in the MFD core, including the submission of a couple of attempted
> solutions, I've decided to finally tackle this one myself.
>
> Currently, when a child platform device (sometimes referred to as a
> sub-device) is registered via the Multi-Functional Device (MFD) API,
> the framework attempts to match the newly registered platform device
> with its associated Device Tree (OF) node.  Until now, the device has
> been allocated the first node found with an identical OF compatible
> string.  Unfortunately, if there are, say for example '3' devices
> which are to be handled by the same driver and therefore have the same
> compatible string, each of them will be allocated a pointer to the
> *first* node.
>
> Let me give you an example.
>
> I have knocked up an example 'parent' and 'child' device driver.  The
> parent utilises the MFD API to register 3 identical children, each
> controlled by the same driver.  This happens a lot.  Fortunately, in
> the majority of cases, the OF nodes are also totally identical, but
> what if you wish to configure one of the child devices with different
> attributes or resources supplied via Device Tree, like a clock?  This
> is currently impossible.
>
> Here is the Device Tree representation for the 1 parent and the 3
> child (sub) devices described above:
>
>         parent {
>                 compatible = "mfd,of-test-parent";
>
>                 child@0 {

Just a note, unit-address implies there is a 'reg' property. Why
that's important below.

>                         compatible = "mfd,of-test-child";
>                         clocks = <&clock 0>;
>                 };
>
>                 child@1 {
>                         compatible = "mfd,of-test-child";
>                         clocks = <&clock 1>;
>                 };
>
>                 child@2 {
>                         compatible = "mfd,of-test-child";
>                         clocks = <&clock 2>;
>                 };
>         };
>
> This is how we register those devices from MFD:
>
> static const struct mfd_cell mfd_of_test_cell[] = {
>         OF_MFD_CELL("mfd_of_test_child", NULL, NULL, 0, 0, "mfd,of-test-child"),
>         OF_MFD_CELL("mfd_of_test_child", NULL, NULL, 0, 1, "mfd,of-test-child"),
>         OF_MFD_CELL("mfd_of_test_child", NULL, NULL, 0, 2, "mfd,of-test-child")
> };
>
> ... which we pass into mfd_add_devices() for processing.
>
> In an ideal world.  The devices with the platform_id; 0, 1 and 2 would
> be matched up to Device Tree nodes; child@0, child@1 and child@2
> respectively.  Instead all 3 devices will be allocated a pointer to
> child@0's OF node, which is obviously not correct.
>
> This is how it looks when each of the child devices are probed:
>
>  [0.708287] mfd-of-test-parent mfd_of_test: Registering 3 devices
>  [...]
>  [0.712511] mfd-of-test-child mfd_of_test_child.0: Probing platform device: 0
>  [0.712710] mfd-of-test-child mfd_of_test_child.0: Using OF node: child@0
>  [0.713033] mfd-of-test-child mfd_of_test_child.1: Probing platform device: 1
>  [0.713381] mfd-of-test-child mfd_of_test_child.1: Using OF node: child@0
>  [0.713691] mfd-of-test-child mfd_of_test_child.2: Probing platform device: 2
>  [0.713889] mfd-of-test-child mfd_of_test_child.2: Using OF node: child@0
>
> "Why is it when I change child 2's clock rate, it also changes 0's?"
>
> Whoops!
>
> So in order to fix this, we need to make MFD more-cleverer!
>
> However, this is not so simple.  There are some rules we should abide
> by (I use "should" intentionally here, as something might just have to
> give):
>
>  a) Since Device Tree is designed to describe hardware, inserting
>     arbitrary properties into DT is forbidden.  This precludes things
>     we would ordinarily be able to match on, like 'id' or 'name'.
>  b) As an extension to a) DTs should also be OS agnostic, so
>     properties like 'mfd-device', 'mfd-order' etc are also not
>     not suitable for inclusion.
>  c) The final solution should ideally be capable of supporting both
>     newly defined and current trees (without retroactive edits)
>     alike.

Presumably anything current already works. If you had the above
example already, requiring updating the DT to make it work seems fine.

>  d) Existing properties could be used, but not abused.  For example,
>     one of my suggestions (see below) is to use the 'reg' property.
>     This is fine in principle but loading 'reg' with arbitrary values
>     (such as; 0, 1, 2 ... x) which 1) clearly do not have anything to
>     do with registers and 2) would be meaningless in other OSes/
>     implementations, just to serve our purpose, is to be interpreted
>     as an abuse.

Multiple instances of something implies you have some way to address
them and 'reg' is what defines the address of something. 0,1,2,etc.
looks suspiciously like just some kernel defined indexes, but if
that's how things are defined in the datasheet I'm okay with them.

The one wrinkle is there's only one address space at one level, so
gpio@0, gpio@1, pwm@0, pwm@1, etc. doesn't really work (well, it
works, but having overlapping addresses is not good practice). Either
we relax that in this case or we can add another level to group nodes.

>
> Proposal 1:
>
> As mentioned above, my initial thoughts were to use the 'reg' property
> to match an MFD cell entry with the correct DT node.  However, not
> all Device Tree nodes have 'reg' properties.  Particularly true in the
> case of MFD, where memory resources are usually shared with the parent
> via Regmap, or (as in the case of the ab8500) the MFD handles all
> register transactions via its own API.

Just to pick on ab8500, it should have had 'reg' property IMO. The
'bank' is clearly a h/w property and how you address each sub-device.

>
> Proposal 2:
>
> If we can't guarantee that all DT nodes will have at least one
> property in common to be used for matching and we're prevented from
> supplying additional, potentially bespoke properties, then we must
> seek an alternative procedure.
>
> It should be possible to match based on order.  However, the developer
> would have to guarantee that the order in which the child devices are
> presented to the MFD API are in exactly the same order as they are
> represented in the Device Tree.  The obvious draw-back to this
> strategy is that it's potentially very fragile.

I don't think we should use order.

>
> Current Proposal:
>
> How about a collection of Proposal 1 and Proposal 2?  First we could
> attempt a match on the 'reg' property.  Then, if that fails, we would
> use the fragile-but-its-all-we-have Proposal 2 as the fall-back.

Yes, we should use 'reg' whenever possible. If we don't have 'reg',
then you shouldn't have a unit-address either and you can simply match
on the node name (standard DT driver matching is with compatible,
device_type, and node name (w/o unit-address)). We've generally been
doing 'classname-N' when there's no 'reg' to do 'classname@N'.
Matching on 'classname-N' would work with node name matching as only
unit-addresses are stripped.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
