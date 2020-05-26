Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C4F1E261F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 17:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jfDOciQ6vzWScn1vbD/txQs/qs9QHlMLtqIVtPE5H84=; b=Lkfx7CYVkV3bVOoZFDFmK3Gnl
	X5O8iWX/0NCNW4hGDPtfrsRltoUJxVFIEX2+sQaUM9w9pPsjyETmb5jrScrLweG55YfhoOfpCRINc
	C9uoWlToRWStlyrs8AeenICBu/nMjkDdQnNK72zEdlZncT8WtqGrSffG9zVBL8i1d/DHlVnYTEDhp
	SH8M2iEsjyPZoYuho/w1FAi1HWfxn/eSbNJx8MheBjSz7FYgfjnCMwHj58QROt0vvtKxqBeqLEcz1
	xYgEiHiYy7luk3w0Z9Gk5LwI8aTzRZaFyxqk1YqxaTyrjBBJofOHQujgpPYSyQRIc+Nsjcw/5Au7N
	ADr6sAgVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdbvW-0001jj-CE; Tue, 26 May 2020 15:55:38 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdbus-0007ah-Du
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 15:55:02 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 25A9823E2C;
 Tue, 26 May 2020 17:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1590508485;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fea62NxmJK3eV7EnGjkH2PK8+sAxiTRywctVj4jahAw=;
 b=p/H6CoByMx+/VRkUqo+zYBHQEDnzKf87T6UB5OckeCGd559i5IIHZzp0KffewoWwrz88Ae
 h4yBFkejNH9BHFDcaRt1kgJ81Y0dFZk9I17TNByb0x/PZd+5Ojh4zOlgnTuQUvHMWc5GBK
 mSDPNjq9ejnJ/5I3fr34XdPofcyMOs0=
MIME-Version: 1.0
Date: Tue, 26 May 2020 17:54:38 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 03/16] mfd: mfd-core: match device tree node against
 reg property
In-Reply-To: <20200526072427.GC3628@dell>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-4-michael@walle.cc>
 <67e90dafd67c285158c2c6f67f92edb7@walle.cc> <20200515102848.GH271301@dell>
 <159e68b4ce53630ef906b2fcbca925bd@walle.cc> <20200526072427.GC3628@dell>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <f5704ce5a3e280f63c81fe35efb08234@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_085458_784772_5B2F51D4 
X-CRM114-Status: GOOD (  27.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-watchdog@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jason Cooper <jason@lakedaemon.net>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Mark Brown <broonie@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-05-26 09:24, schrieb Lee Jones:
> On Mon, 25 May 2020, Michael Walle wrote:
> 
>> Am 2020-05-15 12:28, schrieb Lee Jones:
>> > On Thu, 30 Apr 2020, Michael Walle wrote:
>> >
>> > > Hi Lee,
>> > >
>> > > Am 2020-04-23 19:45, schrieb Michael Walle:
>> > > > There might be multiple children with the device tree compatible, for
>> > > > example if a MFD has multiple instances of the same function. In this
>> > > > case only the first is matched and the other children get a wrong
>> > > > of_node reference.
>> > > > Add a new option to match also against the unit address of the child
>> > > > node. Additonally, a new helper OF_MFD_CELL_REG is added.
>> > >
>> > >
>> > > Do you think this is feasible? I guess this is the biggest uncertainty
>> > > for me at the moment in this patch series.
>> >
>> > I think it sounds fine in principle.  So long as it doesn't change the
>> > existing behaviour when of_reg isn't set.
>> >
>> > > > Signed-off-by: Michael Walle <michael@walle.cc>
>> > > > ---
>> > > >  drivers/mfd/mfd-core.c   | 29 ++++++++++++++++++++---------
>> > > >  include/linux/mfd/core.h | 26 ++++++++++++++++++++------
>> > > >  2 files changed, 40 insertions(+), 15 deletions(-)
> 
> [...]
> 
>> > > > diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
>> > > > index d01d1299e49d..c2c0ad6b14f3 100644
>> > > > --- a/include/linux/mfd/core.h
>> > > > +++ b/include/linux/mfd/core.h
>> > > > @@ -13,8 +13,11 @@
>> > > >  #include <linux/platform_device.h>
>> > > >
>> > > >  #define MFD_RES_SIZE(arr) (sizeof(arr) / sizeof(struct resource))
>> > > > +#define MFD_OF_REG_VALID	BIT(31)
>> >
>> > What about 64bit platforms?
>> 
>> The idea was to have this as a logical number. I.e. for now you may 
>> only
>> have one subdevice per unique compatible string. In fact, if you have 
>> a
>> look at the ab8500.c, there are multiple "stericsson,ab8500-pwm"
>> subdevices. But there is only one DT node for all three of it. I guess
>> this works as long as you don't use phandles to reference the pwm node
>> in the device tree. Or you don't want to use device tree properties
>> per subdevice (for example the "timeout-sec" of a watchdog device).
>> 
>> So to circumvent this, I thought of having the unit-address (and thus
>> the "reg" property) to differentiate between multiple subdevices. Now
>> there is one special case for me: this board management controller
>> might be upgradable and it might change internally. Thus I came up
>> with that logical numbering of subdevices. Rob doesn't seem to be a
>> fan of that, though. Therefore, having bit 31 as a valid indicator
>> leaves you with 2^31 logical devices, which should be enough ;)
>> 
>> Rob proposed to have the internal offset as the unit-address. But
>> in that case I can also use devm_of_platform_populate() and don't
>> need the OF_MFD_CELL_REG; I'd just parse the reg offset in each
>> individual subdevice driver. But like I said, I wanted to keep the
>> internal offsets out of the device tree.
> 
> Oh, I see what you're doing.
> 
> So you're adding an arbitrary ID to the device's reg property in DT?

Yes.

> How is this not a hack?

Well IMHO this is not more or less a hack as the current of_node
handling of MFD devices, which happens to work only because there
is only one device per compatible string (or it doesn't really work,
like in the stericsson,ab8500-pwm case). The of_node is assigned
according to the compatible string, just like in my case, only that
I have two subdevices with the same compatible string.

> Why don't you use the full address for identification?

Like I said, in the long term I would like to have support for
different versions of the board management controller without having
to change the device tree and have device tree bindings for the
subdevices at the same time. But it seems, that this is not possible
and I guess I have to bite the bullet and may need to provide another
device tree if the controller might be updated.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
