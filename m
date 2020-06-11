Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B22451F67C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 14:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2I1CpABffvRzR7dFj9yhLzRSgGH98+v56rHLf9Q0NNk=; b=nBUH3QBfZ6JL1UCYr5TTKQAOz
	Ljs0tcruFMZNu6M+eJgawJFcVqIUTKKkLnhVxk6h395WKQWdrTpD8QV3xumCW/6n3NiqAo03z44Od
	9x4UpkBA+sNrbXNfowXx319oECVRKEC0TswMKBNxa3fawwQNUvKzCa7bFKNPtuAe6GjKVHmcBxypg
	pHCEYUAwGbfmKtCELGx2gzkHFAvu3uoUjhrBdr3cSRYrWr/rf5iWvuu3ZfBh+36HKtN/SjHLE4UHm
	UdppfawWpmsMW25cLdLfAK3ipYHCZpliXU70UJs/o0LUB3K4faMpEMasSWNsjpNJZKxqRIwR2ZW4a
	zD2xnMWkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjMA9-0003xH-Kv; Thu, 11 Jun 2020 12:18:29 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjMA0-0003wQ-JM
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 12:18:23 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 1779A22FB6;
 Thu, 11 Jun 2020 14:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591877896;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nSiNs6BkbMocv/Fvmcg9aFAF/Hi1vDKKW+UssD8gq1M=;
 b=URX6MNLIJQMkgeyz2Q9r5zipwJvwHL6+FBilj3Ib5IG+y3YfhoehNMJcJUE1IdY+SAJZg5
 dcRZ0dG+iJwNycZF+71akwmWtjW01BvhnYFq5h+hp89sYb/WjH7EeYVSF8ckow8YBf+TnO
 EIqhyN1Brc7MhIZ1xRAbLNwyHQmYPdk=
MIME-Version: 1.0
Date: Thu, 11 Jun 2020 14:18:15 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [SPAM] [PATCH 1/1] mfd: Make a best effort attempt to match
 devices with the correct of_nodes
In-Reply-To: <20200611105748.GX4106@dell>
References: <20200611085617.2071167-1-lee.jones@linaro.org>
 <79ec43b375e075cde0ed33b9dd902e75@walle.cc> <20200611105748.GX4106@dell>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <359af7da70fd0f822c5224c5046f0918@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_051821_595906_635585F2 
X-CRM114-Status: GOOD (  36.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org, broonie@kernel.org,
 linux-kernel@vger.kernel.org, andy.shevchenko@gmail.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, andriy.shevchenko@linux.intel.com,
 robin.murphy@arm.com, linus.walleij@linaro.org, linux@roeck-us.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-06-11 12:57, schrieb Lee Jones:
> On Thu, 11 Jun 2020, Michael Walle wrote:
> 
>> Am 2020-06-11 10:56, schrieb Lee Jones:
>> > Currently, when a child platform device (sometimes referred to as a
>> > sub-device) is registered via the Multi-Functional Device (MFD) API,
>> > the framework attempts to match the newly registered platform device
>> > with its associated Device Tree (OF) node.  Until now, the device has
>> > been allocated the first node found with an identical OF compatible
>> > string.  Unfortunately, if there are, say for example '3' devices
>> > which are to be handled by the same driver and therefore have the same
>> > compatible string, each of them will be allocated a pointer to the
>> > *first* node.
>> >
>> > An example Device Tree entry might look like this:
>> >
>> >   mfd_of_test {
>> >           compatible = "mfd,of-test-parent";
>> >           #address-cells = <0x02>;
>> >           #size-cells = <0x02>;
>> >
>> >           child@aaaaaaaaaaaaaaaa {
>> >                   compatible = "mfd,of-test-child";
>> >                   reg = <0xaaaaaaaa 0xaaaaaaaa 0 0x11>,
>> >                         <0xbbbbbbbb 0xbbbbbbbb 0 0x22>;
>> >           };
>> >
>> >           child@cccccccc {
>> >                   compatible = "mfd,of-test-child";
>> >                   reg = <0x00000000 0xcccccccc 0 0x33>;
>> >           };
>> >
>> >           child@dddddddd00000000 {
>> >                   compatible = "mfd,of-test-child";
>> >                   reg = <0xdddddddd 0x00000000 0 0x44>;
>> >           };
>> >   };
>> >
>> > When used with example sub-device registration like this:
>> >
>> >   static const struct mfd_cell mfd_of_test_cell[] = {
>> >         OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 0,
>> > "mfd,of-test-child"),
>> >         OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 1,
>> > "mfd,of-test-child"),
>> >         OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 2,
>> > "mfd,of-test-child")
>> >   };
>> >
>> > ... the current implementation will result in all devices being
>> > allocated
>> > the first OF node found containing a matching compatible string:
>> >
>> >   [0.712511] mfd-of-test-child mfd-of-test-child.0: Probing platform
>> > device: 0
>> >   [0.712710] mfd-of-test-child mfd-of-test-child.0: Using OF node:
>> > child@aaaaaaaaaaaaaaaa
>> >   [0.713033] mfd-of-test-child mfd-of-test-child.1: Probing platform
>> > device: 1
>> >   [0.713381] mfd-of-test-child mfd-of-test-child.1: Using OF node:
>> > child@aaaaaaaaaaaaaaaa
>> >   [0.713691] mfd-of-test-child mfd-of-test-child.2: Probing platform
>> > device: 2
>> >   [0.713889] mfd-of-test-child mfd-of-test-child.2: Using OF node:
>> > child@aaaaaaaaaaaaaaaa
>> >
>> > After this patch each device will be allocated a unique OF node:
>> >
>> >   [0.712511] mfd-of-test-child mfd-of-test-child.0: Probing platform
>> > device: 0
>> >   [0.712710] mfd-of-test-child mfd-of-test-child.0: Using OF node:
>> > child@aaaaaaaaaaaaaaaa
>> >   [0.713033] mfd-of-test-child mfd-of-test-child.1: Probing platform
>> > device: 1
>> >   [0.713381] mfd-of-test-child mfd-of-test-child.1: Using OF node:
>> > child@cccccccc
>> >   [0.713691] mfd-of-test-child mfd-of-test-child.2: Probing platform
>> > device: 2
>> >   [0.713889] mfd-of-test-child mfd-of-test-child.2: Using OF node:
>> > child@dddddddd00000000
>> >
>> > Which is fine if all OF nodes are identical.  However if we wish to
>> > apply an attribute to particular device, we really need to ensure the
>> > correct OF node will be associated with the device containing the
>> > correct address.  We accomplish this by matching the device's address
>> > expressed in DT with one provided during sub-device registration.
>> > Like this:
>> >
>> >   static const struct mfd_cell mfd_of_test_cell[] = {
>> >         OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 1,
>> > "mfd,of-test-child", 0xdddddddd00000000),
>> >         OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 2,
>> > "mfd,of-test-child", 0xaaaaaaaaaaaaaaaa),
>> >         OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 3,
>> > "mfd,of-test-child", 0x00000000cccccccc)
>> >   };
>> >
>> > This will ensure a specific device (designated here using the
>> > platform_ids; 1, 2 and 3) is matched with a particular OF node:
>> >
>> >   [0.712511] mfd-of-test-child mfd-of-test-child.0: Probing platform
>> > device: 0
>> >   [0.712710] mfd-of-test-child mfd-of-test-child.0: Using OF node:
>> > child@dddddddd00000000
>> >   [0.713033] mfd-of-test-child mfd-of-test-child.1: Probing platform
>> > device: 1
>> >   [0.713381] mfd-of-test-child mfd-of-test-child.1: Using OF node:
>> > child@aaaaaaaaaaaaaaaa
>> >   [0.713691] mfd-of-test-child mfd-of-test-child.2: Probing platform
>> > device: 2
>> >   [0.713889] mfd-of-test-child mfd-of-test-child.2: Using OF node:
>> > child@cccccccc
>> >
>> > This implementation is still not infallible, hence the mention of
>> > "best effort" in the commit subject.  Since we have not *insisted* on
>> > the existence of 'reg' properties (in some scenarios they just do not
>> > make sense) and no device currently uses the new 'of_reg' attribute,
>> > we have to make an on-the-fly judgement call whether to associate the
>> > OF node anyway.  Which we do in cases where parent drivers haven't
>> > specified a particular OF node to match to.  So there is a *slight*
>> > possibility of the following result (note: the implementation here is
>> > convoluted, but it shows you one means by which this process can
>> > still break):
>> >
>> >   /*
>> >    * First entry will match to the first OF node with matching
>> > compatible
>> >    * Second will fail, since the first took its OF node and is no
>> > longer available
>> >    * Third will succeed
>> >    */
>> >   static const struct mfd_cell mfd_of_test_cell[] = {
>> >         OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 1,
>> > "mfd,of-test-child"),
>> > 	OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 2,
>> > "mfd,of-test-child", 0xaaaaaaaaaaaaaaaa),
>> >         OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 3,
>> > "mfd,of-test-child", 0x00000000cccccccc)
>> 
>> Why would anyone do that? Mix and match OF_MFD_CELL() and 
>> OF_MFD_CELL_REG()
>> on the same compatible string?
> 
> See above:
> 
>   "(note: the implementation here is convoluted, but it shows you one
>    means by which this process can still break)"

Yes, but my point was, do we really need to to something about it - or
like Andy would put it, do we expect to shoot ourselves in the foot or 
not.
If I understand it correctly, this list handling is just there to make
sure we are using the mfd_cells correctly.

>> Wouldn't it be easier to check that there is
>> no OF_MFD_CELL() when OF_MFD_CELL_REG() is used, instead of keeping a 
>> global
>> list?
> 
> See below:
> 
>   "We could code around this with some pre-parsing semantics, but the
>    added complexity required to cover each and every corner-case is not
>    justified.  Merely patching the current failing (via this patch) is
>    already working with some pretty small corner-cases.  Other issues
>    should be patched in the parent drivers which can be achieved simply
>    by implementing OF_MFD_CELL_REG()."
> 
> If the API isn't used properly, things will break.

So we could also just skip the list handling, can't we?

> We can't prevent every erroneous corner-case.
> 
>> >   };
>> >
>> > The result:
>> >
>> >   [0.753869] mfd-of-test-parent mfd_of_test: Registering 3 devices
>> >   [0.756597] mfd-of-test-child: Failed to locate of_node [id: 2]
>> >   [0.759999] mfd-of-test-child mfd-of-test-child.1: Probing platform
>> > device: 1
>> >   [0.760314] mfd-of-test-child mfd-of-test-child.1: Using OF node:
>> > child@aaaaaaaaaaaaaaaa
>> >   [0.760908] mfd-of-test-child mfd-of-test-child.2: Probing platform
>> > device: 2
>> >   [0.761183] mfd-of-test-child mfd-of-test-child.2: No OF node
>> > associated with this device
>> >   [0.761621] mfd-of-test-child mfd-of-test-child.3: Probing platform
>> > device: 3
>> >   [0.761899] mfd-of-test-child mfd-of-test-child.3: Using OF node:
>> > child@cccccccc
>> >
>> > We could code around this with some pre-parsing semantics, but the
>> > added complexity required to cover each and every corner-case is not
>> > justified.  Merely patching the current failing (via this patch) is
>> > already working with some pretty small corner-cases.  Other issues
>> > should be patched in the parent drivers which can be achieved simply
>> > by implementing OF_MFD_CELL_REG().
>> >
>> > Signed-off-by: Lee Jones <lee.jones@linaro.org>
>> > ---
>> >  drivers/mfd/mfd-core.c   | 102 ++++++++++++++++++++++++++++++++++-----
>> >  include/linux/mfd/core.h |  33 ++++++++-----
>> >  2 files changed, 113 insertions(+), 22 deletions(-)
>> >
>> > diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
>> > index f5a73af60dd40..ecd5494c84747 100644
>> > --- a/drivers/mfd/mfd-core.c
>> > +++ b/drivers/mfd/mfd-core.c
>> > @@ -10,6 +10,7 @@
>> >  #include <linux/kernel.h>
>> >  #include <linux/platform_device.h>
>> >  #include <linux/acpi.h>
>> > +#include <linux/list.h>
>> >  #include <linux/property.h>
>> >  #include <linux/mfd/core.h>
>> >  #include <linux/pm_runtime.h>
>> > @@ -17,8 +18,17 @@
>> >  #include <linux/module.h>
>> >  #include <linux/irqdomain.h>
>> >  #include <linux/of.h>
>> > +#include <linux/of_address.h>
>> >  #include <linux/regulator/consumer.h>
>> >
>> > +static LIST_HEAD(mfd_of_node_list);
>> > +
>> > +struct mfd_of_node_entry {
>> > +	struct list_head list;
>> > +	struct device *dev;
>> > +	struct device_node *np;
>> > +};
>> > +
>> >  static struct device_type mfd_dev_type = {
>> >  	.name	= "mfd_device",
>> >  };
>> > @@ -107,6 +117,59 @@ static inline void mfd_acpi_add_device(const
>> > struct mfd_cell *cell,
>> >  }
>> >  #endif
>> >
>> > +static int mfd_match_of_node_to_dev(struct platform_device *pdev,
>> > +				    struct device_node *np,
>> > +				    const struct mfd_cell *cell)
>> > +{
>> > +	struct mfd_of_node_entry *of_entry;
>> > +	const __be32 *reg;
>> > +	u64 of_node_addr;
>> > +	bool of_node_used;
>> > +
>> > +	/* Skip devices 'disabled' by Device Tree */
>> > +	if (!of_device_is_available(np))
>> > +		return -ENODEV;
>> > +
>> > +	/* Skip if OF node has previously been allocated to a device */
>> > +	of_node_used = false;
>> > +	list_for_each_entry(of_entry, &mfd_of_node_list, list)
>> > +		if (of_entry->np == np)
>> just return -EAGAIN here?
> 
> You're right.  This is legacy from before this was its own function
> and a straight 'continue' would have just moved to the next
> list_for_each_entry() list item.
> 
> Will fix.
> 
>> > +			of_node_used = true;
>> > +
>> > +	if (of_node_used)
>> > +		return -EAGAIN;
>> > +
>> > +	if (!cell->of_reg)
>> 
>> This doesn't work if the address is actually 0. My original patch used 
>> a
>> flag to detect if of_reg is actually set/used.
> 
> Good point.  Will fix.
> 
>> > +		/* No match defined - allocate the first free matching node */
>> > +		goto allocate_of_node;
>> > +
>> > +	/* We only care about each node's first defined address */
>> > +	reg = of_get_address(np, 0, NULL, NULL);
>> 
>> Does of_get_address() work with any (internal) addresses?
> 
> What is an internal address?

I meant an address (offset) local to a I2C/SPI device for example.

If you look at of_get_address(), it does more than just reading the 
"reg"
property. I'm not that deep into that, and unfortunately, there is no
documentation. But I guess its fine, because it should get the "defaul".

I actually have a more conceptual question. If a device just consists of
OF_MFD_CELL_REG(), where do you draw the line between being a real MFD 
and
some kind of simple-mfd.
Having this patch in place, I'd rewrite my driver to be an actual MFD 
using
mfd_cells, instead of of_platform_populate. Reasons for this:
  - IORESOURCE_REG is possible, which is the correct resource type for 
the
    sub device drivers in my case, IMHO.
  - There is just one interrupt line in hardware, which is connected to
    the device. So this should get into the parent device node and should
    be distributed by the MFD driver to the sub device drivers. In my
    latest patch this was worked around by having an "interrupts"
    property in each child device which needed this one interrupt.
  - there is only one instance, namely the i2c driver for the parent 
node,
    which does the regmap_init() and provide it to its children.
Although that would mean duplicating the base register offset in the
mfd_cell and in the reg property of the sub nodes (but that should be
the case for most OF_MFD_CELL_REG() users).

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
