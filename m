Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA72C1F8C0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 03:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRwsFJjvn/Gu3IlsDvSSZvgw9YTyNapW6cPcmwnYIpU=; b=nsCwcCDBiZpqAU
	vUKW61HOOcw8RixIdL7d1hLnUvyHnCXGjfYHvbKEdDcPmWDwdPx2NkcYflE3UD2MVIieTbH4/+Tap
	1S+PPSWfSJdVMC8Yrqo7/oQzNgMZFxumqwPyXV//EY/tqpvU1aD807hqCixlVIAA7budqPtB1M6eM
	TMlvt2IJK5GksIdm0jJc7zo/wZS2JTvr0io65KTUeTgIpT1JW1OwjyBzTreY7vrFRG/H8ItHONHoi
	KeeFgUuHHogxDyrgnr2QIjFB046NaPgPyF5x0Wm13ikXUI1shpTGl+sjxdQgOPpW+vMhISqzOpa/1
	p3xEdOv95ZBFCcmTEtLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkdmW-000572-ID; Mon, 15 Jun 2020 01:19:24 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkdmO-00056K-U6
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 01:19:19 +0000
Received: by mail-qv1-xf41.google.com with SMTP id p15so7035185qvr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 18:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=LHskQ8f2Dmk0xpDNDHCGI6zB+LcQzd4CszN17YA72hY=;
 b=n/YxUfxvvJxXpzKcG86jLlw8TlsmqMIOxHbW6z8WZNai475DlJEtz12clxlqDVKYDu
 3LHwGk43kkQir8OCXkBcNBMxDQ5sLMzUL+YSiYB3KAwVWsiKoSfNow+3Re5Vl5lUc8Fo
 xgP4RcDuktQKaVWuqVOB68OEvgc1/xyXcu3b5A8fa5mL1ZJWtu/qxWTlmZ0vmS44jfd3
 /57JkyOWmMI7JOon+FUVZ15vIkJg4FCAzQcmzxtk6sYEJVvZwJ6XSBf7hdLe4EYAhP5F
 vvL2RGugBp2Ox+M2vEptS+LU/RylzKsvnjt98HvYr6TreYYdTLU7x7ZkvDQAnGAj4KI6
 Xftw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LHskQ8f2Dmk0xpDNDHCGI6zB+LcQzd4CszN17YA72hY=;
 b=ID0sfEbB2JmyZvqIwqmC1ZjRl793huZyajnELQ2XAVI0Xo5GLbz51gOToJKHtRpfhi
 NupIskTYMOPRe7+KDg/R/JiF057YC93WuQg4KzCFGv4y5iAlR9n0Aw6cgKeatiYyN6oq
 8blqPKwWU9gCrvzTNVlEgJScKnVbo5AyGAfjify5Wn6jkw4dKTYdCZzbiDVVdK1djuyh
 fINdjuHPT8vCuZa7/IDrGE3xJge2y6SUmjw6wrO+peM4G77OfqGt+nsR2C4lqYvEYmmP
 4aMMhpYOi5PAH7wmHEmEUnsuJPXmIksmJl2OgteS2AzFexVDivB5VWsW+la9aFdMJPo1
 Sd1g==
X-Gm-Message-State: AOAM5333ciGma2CVwB6PGBpeol5h1z710FoySNvE8v9lfolvod1T1AcF
 IBmM/eB9s89589sj+z5aI3xf9k5whpw=
X-Google-Smtp-Source: ABdhPJw/xRgeMEzo8Mq6tZJ8JtGVxQMqMSEP7dS5xLV6b7UxttcieO2g3RiF2q15DuPVBN07XRJtnQ==
X-Received: by 2002:a05:6214:594:: with SMTP id
 bx20mr22490987qvb.131.1592183953831; 
 Sun, 14 Jun 2020 18:19:13 -0700 (PDT)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id a82sm10561443qkb.29.2020.06.14.18.19.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Jun 2020 18:19:13 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] mfd: core: Make a best effort attempt to match
 devices with the correct of_nodes
To: Lee Jones <lee.jones@linaro.org>, andy.shevchenko@gmail.com,
 michael@walle.cc, robh+dt@kernel.org, broonie@kernel.org,
 devicetree@vger.kernel.org, linus.walleij@linaro.org, linux@roeck-us.net,
 andriy.shevchenko@linux.intel.com, robin.murphy@arm.com,
 gregkh@linuxfoundation.org
References: <20200611191002.2256570-1-lee.jones@linaro.org>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <4b188fb5-6667-720d-46e1-6f103efe8966@gmail.com>
Date: Sun, 14 Jun 2020 20:19:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200611191002.2256570-1-lee.jones@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_181916_995190_D18A6BC5 
X-CRM114-Status: GOOD (  39.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Frank Rowand <frowand.list@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lee,

I'm looking at 5.8-rc1.

The only use of OF_MFD_CELL() where the same compatible is specified
for multiple elements of a struct mfd_cell array is for compatible
"stericsson,ab8500-pwm" in drivers/mfd/ab8500-core.c:

        OF_MFD_CELL("ab8500-pwm",
                    NULL, NULL, 0, 1, "stericsson,ab8500-pwm"),
        OF_MFD_CELL("ab8500-pwm",
                    NULL, NULL, 0, 2, "stericsson,ab8500-pwm"),
        OF_MFD_CELL("ab8500-pwm",
                    NULL, NULL, 0, 3, "stericsson,ab8500-pwm"),

The only .dts or .dtsi files where I see compatible "stericsson,ab8500-pwm"
are:

   arch/arm/boot/dts/ste-ab8500.dtsi
   arch/arm/boot/dts/ste-ab8505.dtsi

These two .dtsi files only have a single node with this compatible.
Chasing back to .dts and .dtsi files that include these two .dtsi
files, I see no case where there are multiple nodes with this
compatible.

So it looks to me like there is no .dts in mainline that is providing
the three "stericsson,ab8500-pwm" nodes that drivers/mfd/ab8500-core.c
is expecting.  No case that there are multiple mfd child nodes where
mfd_add_device() would assign the first of n child nodes with the
same compatible to multiple devices.

So it appears to me that drivers/mfd/ab8500-core.c is currently broken.
Am I missing something here?

If I am correct, then either drivers/mfd/ab8500-core.c or
ste-ab8500.dtsi and ste-ab8505.dtsi need to be fixed.

Moving forward, your proposed OF_MFD_CELL_REG() method seems a good
approach (I have not completely read the actual code in the patch yet
though).


On 2020-06-11 14:10, Lee Jones wrote:
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
> An example Device Tree entry might look like this:
> 
>   mfd_of_test {
>           compatible = "mfd,of-test-parent";
>           #address-cells = <0x02>;
>           #size-cells = <0x02>;
> 
>           child@aaaaaaaaaaaaaaaa {
>                   compatible = "mfd,of-test-child";
>                   reg = <0xaaaaaaaa 0xaaaaaaaa 0 0x11>,
>                         <0xbbbbbbbb 0xbbbbbbbb 0 0x22>;
>           };
> 
>           child@cccccccc {
>                   compatible = "mfd,of-test-child";
>                   reg = <0x00000000 0xcccccccc 0 0x33>;
>           };
> 
>           child@dddddddd00000000 {
>                   compatible = "mfd,of-test-child";
>                   reg = <0xdddddddd 0x00000000 0 0x44>;
>           };
>   };
> 
> When used with example sub-device registration like this:
> 
>   static const struct mfd_cell mfd_of_test_cell[] = {
>         OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 0, "mfd,of-test-child"),
>         OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 1, "mfd,of-test-child"),
>         OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 2, "mfd,of-test-child")
>   };
> 
> ... the current implementation will result in all devices being allocated
> the first OF node found containing a matching compatible string:
> 
>   [0.712511] mfd-of-test-child mfd-of-test-child.0: Probing platform device: 0
>   [0.712710] mfd-of-test-child mfd-of-test-child.0: Using OF node: child@aaaaaaaaaaaaaaaa
>   [0.713033] mfd-of-test-child mfd-of-test-child.1: Probing platform device: 1
>   [0.713381] mfd-of-test-child mfd-of-test-child.1: Using OF node: child@aaaaaaaaaaaaaaaa
>   [0.713691] mfd-of-test-child mfd-of-test-child.2: Probing platform device: 2
>   [0.713889] mfd-of-test-child mfd-of-test-child.2: Using OF node: child@aaaaaaaaaaaaaaaa
> 
> After this patch each device will be allocated a unique OF node:
> 
>   [0.712511] mfd-of-test-child mfd-of-test-child.0: Probing platform device: 0
>   [0.712710] mfd-of-test-child mfd-of-test-child.0: Using OF node: child@aaaaaaaaaaaaaaaa
>   [0.713033] mfd-of-test-child mfd-of-test-child.1: Probing platform device: 1
>   [0.713381] mfd-of-test-child mfd-of-test-child.1: Using OF node: child@cccccccc
>   [0.713691] mfd-of-test-child mfd-of-test-child.2: Probing platform device: 2
>   [0.713889] mfd-of-test-child mfd-of-test-child.2: Using OF node: child@dddddddd00000000
> 
> Which is fine if all OF nodes are identical.  However if we wish to
> apply an attribute to particular device, we really need to ensure the
> correct OF node will be associated with the device containing the
> correct address.  We accomplish this by matching the device's address
> expressed in DT with one provided during sub-device registration.
> Like this:
> 
>   static const struct mfd_cell mfd_of_test_cell[] = {
>         OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 1, "mfd,of-test-child", 0xdddddddd00000000),
>         OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 2, "mfd,of-test-child", 0xaaaaaaaaaaaaaaaa),
>         OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 3, "mfd,of-test-child", 0x00000000cccccccc)
>   };
> 
> This will ensure a specific device (designated here using the
> platform_ids; 1, 2 and 3) is matched with a particular OF node:
> 
>   [0.712511] mfd-of-test-child mfd-of-test-child.0: Probing platform device: 0
>   [0.712710] mfd-of-test-child mfd-of-test-child.0: Using OF node: child@dddddddd00000000
>   [0.713033] mfd-of-test-child mfd-of-test-child.1: Probing platform device: 1
>   [0.713381] mfd-of-test-child mfd-of-test-child.1: Using OF node: child@aaaaaaaaaaaaaaaa
>   [0.713691] mfd-of-test-child mfd-of-test-child.2: Probing platform device: 2
>   [0.713889] mfd-of-test-child mfd-of-test-child.2: Using OF node: child@cccccccc
> 
> This implementation is still not infallible, hence the mention of
> "best effort" in the commit subject.  Since we have not *insisted* on
> the existence of 'reg' properties (in some scenarios they just do not
> make sense) and no device currently uses the new 'of_reg' attribute,
> we have to make an on-the-fly judgement call whether to associate the
> OF node anyway.  Which we do in cases where parent drivers haven't
> specified a particular OF node to match to.  So there is a *slight*
> possibility of the following result (note: the implementation here is
> convoluted, but it shows you one means by which this process can
> still break):
> 
>   /*
>    * First entry will match to the first OF node with matching compatible
>    * Second will fail, since the first took its OF node and is no longer available
>    * Third will succeed
>    */

The following mfd_of_test_cell[] looks like a bug to me.  For a given
compatible value, either reg is required or is not allowed.

One could add validation code to mfd_add_devices(), which would scan the
parameter "cells", checking for multiple array elements with the same
compatible value where one of the elements does not have .use_of_reg
set.  This seems to be a pain to program and not needed, because the
validation process, using the binding definition, would detect the
problem in the .dts source file, because either the required reg
property would be missing or the not to be specified reg property exists.
Whether reg is required or not allowed is based on the compatible value.


>   static const struct mfd_cell mfd_of_test_cell[] = {
>         OF_MFD_CELL("mfd-of-test-child", NULL, NULL, 0, 1, "mfd,of-test-child"),
> 	OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 2, "mfd,of-test-child", 0xaaaaaaaaaaaaaaaa),
>         OF_MFD_CELL_REG("mfd-of-test-child", NULL, NULL, 0, 3, "mfd,of-test-child", 0x00000000cccccccc)
>   };
> 
> The result:
> 
>   [0.753869] mfd-of-test-parent mfd_of_test: Registering 3 devices
>   [0.756597] mfd-of-test-child: Failed to locate of_node [id: 2]
>   [0.759999] mfd-of-test-child mfd-of-test-child.1: Probing platform device: 1
>   [0.760314] mfd-of-test-child mfd-of-test-child.1: Using OF node: child@aaaaaaaaaaaaaaaa
>   [0.760908] mfd-of-test-child mfd-of-test-child.2: Probing platform device: 2
>   [0.761183] mfd-of-test-child mfd-of-test-child.2: No OF node associated with this device
>   [0.761621] mfd-of-test-child mfd-of-test-child.3: Probing platform device: 3
>   [0.761899] mfd-of-test-child mfd-of-test-child.3: Using OF node: child@cccccccc
> 
> We could code around this with some pre-parsing semantics, but the
> added complexity required to cover each and every corner-case is not

So this should problem should not occur.


> justified.  Merely patching the current failing (via this patch) is
> already working with some pretty small corner-cases.  Other issues

If there are existing corner cases, I did not search the source tree
sufficiently.  What are the current corner cases?

-Frank

> should be patched in the parent drivers which can be achieved simply
> by implementing OF_MFD_CELL_REG().
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
> 
> Changelog:
> 
> v1 => v2:
>   * Simply return -EAGAIN if node is already in use
>   * Allow for valid of_reg=0 by introducing use_of_reg boolean flag
>   * Split helpers out into separate patch
> 
> drivers/mfd/mfd-core.c   | 99 +++++++++++++++++++++++++++++++++++-----
>  include/linux/mfd/core.h | 10 ++++
>  2 files changed, 97 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
> index e831e733b38cf..120803717b828 100644
> --- a/drivers/mfd/mfd-core.c
> +++ b/drivers/mfd/mfd-core.c
> @@ -10,6 +10,7 @@
>  #include <linux/kernel.h>
>  #include <linux/platform_device.h>
>  #include <linux/acpi.h>
> +#include <linux/list.h>
>  #include <linux/property.h>
>  #include <linux/mfd/core.h>
>  #include <linux/pm_runtime.h>
> @@ -17,8 +18,17 @@
>  #include <linux/module.h>
>  #include <linux/irqdomain.h>
>  #include <linux/of.h>
> +#include <linux/of_address.h>
>  #include <linux/regulator/consumer.h>
>  
> +static LIST_HEAD(mfd_of_node_list);
> +
> +struct mfd_of_node_entry {
> +	struct list_head list;
> +	struct device *dev;
> +	struct device_node *np;
> +};
> +
>  static struct device_type mfd_dev_type = {
>  	.name	= "mfd_device",
>  };
> @@ -107,6 +117,54 @@ static inline void mfd_acpi_add_device(const struct mfd_cell *cell,
>  }
>  #endif
>  
> +static int mfd_match_of_node_to_dev(struct platform_device *pdev,
> +				    struct device_node *np,
> +				    const struct mfd_cell *cell)
> +{
> +	struct mfd_of_node_entry *of_entry;
> +	const __be32 *reg;
> +	u64 of_node_addr;
> +
> +	/* Skip devices 'disabled' by Device Tree */
> +	if (!of_device_is_available(np))
> +		return -ENODEV;
> +
> +	/* Skip if OF node has previously been allocated to a device */
> +	list_for_each_entry(of_entry, &mfd_of_node_list, list)
> +		if (of_entry->np == np)
> +			return -EAGAIN;
> +
> +	if (!cell->use_of_reg)
> +		/* No of_reg defined - allocate first free compatible match */
> +		goto allocate_of_node;
> +
> +	/* We only care about each node's first defined address */
> +	reg = of_get_address(np, 0, NULL, NULL);
> +	if (!reg)
> +		/* OF node does not contatin a 'reg' property to match to */
> +		return -EAGAIN;
> +
> +	of_node_addr = of_read_number(reg, of_n_addr_cells(np));
> +
> +	if (cell->of_reg != of_node_addr)
> +		/* No match */
> +		return -EAGAIN;
> +
> +allocate_of_node:
> +	of_entry = kzalloc(sizeof(*of_entry), GFP_KERNEL);
> +	if (!of_entry)
> +		return -ENOMEM;
> +
> +	of_entry->dev = &pdev->dev;
> +	of_entry->np = np;
> +	list_add_tail(&of_entry->list, &mfd_of_node_list);
> +
> +	pdev->dev.of_node = np;
> +	pdev->dev.fwnode = &np->fwnode;
> +
> +	return 0;
> +}
> +
>  static int mfd_add_device(struct device *parent, int id,
>  			  const struct mfd_cell *cell,
>  			  struct resource *mem_base,
> @@ -115,6 +173,7 @@ static int mfd_add_device(struct device *parent, int id,
>  	struct resource *res;
>  	struct platform_device *pdev;
>  	struct device_node *np = NULL;
> +	struct mfd_of_node_entry *of_entry, *tmp;
>  	int ret = -ENOMEM;
>  	int platform_id;
>  	int r;
> @@ -149,19 +208,22 @@ static int mfd_add_device(struct device *parent, int id,
>  	if (ret < 0)
>  		goto fail_res;
>  
> -	if (parent->of_node && cell->of_compatible) {
> +	if (IS_ENABLED(CONFIG_OF) && parent->of_node && cell->of_compatible) {
>  		for_each_child_of_node(parent->of_node, np) {
>  			if (of_device_is_compatible(np, cell->of_compatible)) {
> -				if (!of_device_is_available(np)) {
> -					/* Ignore disabled devices error free */
> -					ret = 0;
> +				ret = mfd_match_of_node_to_dev(pdev, np, cell);
> +				if (ret == -EAGAIN)
> +					continue;
> +				if (ret)
>  					goto fail_alias;
> -				}
> -				pdev->dev.of_node = np;
> -				pdev->dev.fwnode = &np->fwnode;
> +
>  				break;
>  			}
>  		}
> +
> +		if (!pdev->dev.of_node)
> +			pr_warn("%s: Failed to locate of_node [id: %d]\n",
> +				cell->name, platform_id);
>  	}
>  
>  	mfd_acpi_add_device(cell, pdev);
> @@ -170,13 +232,13 @@ static int mfd_add_device(struct device *parent, int id,
>  		ret = platform_device_add_data(pdev,
>  					cell->platform_data, cell->pdata_size);
>  		if (ret)
> -			goto fail_alias;
> +			goto fail_of_entry;
>  	}
>  
>  	if (cell->properties) {
>  		ret = platform_device_add_properties(pdev, cell->properties);
>  		if (ret)
> -			goto fail_alias;
> +			goto fail_of_entry;
>  	}
>  
>  	for (r = 0; r < cell->num_resources; r++) {
> @@ -213,18 +275,18 @@ static int mfd_add_device(struct device *parent, int id,
>  			if (has_acpi_companion(&pdev->dev)) {
>  				ret = acpi_check_resource_conflict(&res[r]);
>  				if (ret)
> -					goto fail_alias;
> +					goto fail_of_entry;
>  			}
>  		}
>  	}
>  
>  	ret = platform_device_add_resources(pdev, res, cell->num_resources);
>  	if (ret)
> -		goto fail_alias;
> +		goto fail_of_entry;
>  
>  	ret = platform_device_add(pdev);
>  	if (ret)
> -		goto fail_alias;
> +		goto fail_of_entry;
>  
>  	if (cell->pm_runtime_no_callbacks)
>  		pm_runtime_no_callbacks(&pdev->dev);
> @@ -233,6 +295,12 @@ static int mfd_add_device(struct device *parent, int id,
>  
>  	return 0;
>  
> +fail_of_entry:
> +	list_for_each_entry_safe(of_entry, tmp, &mfd_of_node_list, list)
> +		if (of_entry->dev == &pdev->dev) {
> +			list_del(&of_entry->list);
> +			kfree(of_entry);
> +		}
>  fail_alias:
>  	regulator_bulk_unregister_supply_alias(&pdev->dev,
>  					       cell->parent_supplies,
> @@ -287,6 +355,7 @@ static int mfd_remove_devices_fn(struct device *dev, void *data)
>  {
>  	struct platform_device *pdev;
>  	const struct mfd_cell *cell;
> +	struct mfd_of_node_entry *of_entry, *tmp;
>  
>  	if (dev->type != &mfd_dev_type)
>  		return 0;
> @@ -297,6 +366,12 @@ static int mfd_remove_devices_fn(struct device *dev, void *data)
>  	regulator_bulk_unregister_supply_alias(dev, cell->parent_supplies,
>  					       cell->num_parent_supplies);
>  
> +	list_for_each_entry_safe(of_entry, tmp, &mfd_of_node_list, list)
> +		if (of_entry->dev == dev) {
> +			list_del(&of_entry->list);
> +			kfree(of_entry);
> +		}
> +
>  	kfree(cell);
>  
>  	platform_device_unregister(pdev);
> diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
> index d01d1299e49dc..a148b907bb7f1 100644
> --- a/include/linux/mfd/core.h
> +++ b/include/linux/mfd/core.h
> @@ -78,6 +78,16 @@ struct mfd_cell {
>  	 */
>  	const char		*of_compatible;
>  
> +	/*
> +	 * Address as defined in Device Tree.  Used to compement 'of_compatible'
> +	 * (above) when matching OF nodes with devices that have identical
> +	 * compatible strings
> +	 */
> +	const u64 of_reg;
> +
> +	/* Set to 'true' to use 'of_reg' (above) - allows for of_reg=0 */
> +	bool use_of_reg;
> +
>  	/* Matches ACPI */
>  	const struct mfd_cell_acpi_match	*acpi_match;
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
