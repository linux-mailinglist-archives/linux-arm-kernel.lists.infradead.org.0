Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E8B9CBFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 10:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHQ8wC80YRLxmnngFakvGBca0Cf/vsuTas1y7m6CMqU=; b=BkvWhtlYTyKd8Q
	Lzpb0sUT+s45I2olc2dRbQSq3vCGvGZrOU2gMcAP9bfJIvXNFWmUTy82tWqvi/bLPkTsqLHqsaLNK
	DCT5OkTxTzy5/cGWaXYnQprWtfOlOjDznJs57+RyAXMAhT7cBYgvRKUGbjtOOQUmkjgw55LAOU0Pp
	z9eSZwyfH5U2fe3O9Sv4LTfk4deJH8/5UU2oGK3cjm3F39aK3XCg243hH2strPL7CqQ3Bo2gRBnAz
	jyvWxuV5vuSJJ+r1OgW1Z4A1u7KNud1SHx0pXMnM31VMHRFpA1chhSvM/PfYdVtd07Qp7eKpRbbtn
	60yKsCHnu/2zeAr0ycrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Aol-0004PN-UI; Mon, 26 Aug 2019 08:57:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Aod-0004Oj-9y
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 08:57:32 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i2AoN-0003gN-GM; Mon, 26 Aug 2019 10:57:15 +0200
Message-ID: <1566809829.3842.4.camel@pengutronix.de>
Subject: Re: [RESEND PATCHv4 1/1] drivers/amba: add reset control to amba
 bus probe
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Dinh Nguyen <dinguyen@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 26 Aug 2019 10:57:09 +0200
In-Reply-To: <e7e986a2-762e-674b-608b-5ee5b013935b@kernel.org>
References: <20190820145834.7301-1-dinguyen@kernel.org>
 <20190820145834.7301-2-dinguyen@kernel.org>
 <CACRpkdasbXuqUkO3NjMGBU_ePEBT23BS1eP-bigB0_g494LgvQ@mail.gmail.com>
 <e7e986a2-762e-674b-608b-5ee5b013935b@kernel.org>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_015731_349698_5E5A39F4 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Tony Luck <tony.luck@intel.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Kees Cook <keescook@chromium.org>, Rob Herring <robh@kernel.org>,
 Anton Vorontsov <anton@enomsg.org>, Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Colin Cross <ccross@android.com>, Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dinh, Linus,

On Fri, 2019-08-23 at 10:42 -0500, Dinh Nguyen wrote:
> 
> On 8/23/19 4:19 AM, Linus Walleij wrote:
> > On Tue, Aug 20, 2019 at 4:58 PM Dinh Nguyen <dinguyen@kernel.org> wrote:
> > 
> > > @@ -401,6 +402,26 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
> > >         ret = amba_get_enable_pclk(dev);
> > >         if (ret == 0) {
> > >                 u32 pid, cid;
> > > +               int count;
> > > +               struct reset_control *rstc;
> > > +
> > > +               /*
> > > +                * Find reset control(s) of the amba bus and de-assert them.
> > > +                */
> > > +               count = reset_control_get_count(&dev->dev);

The reset_control_get_count() inline stub returns -ENOENT, so the
compiler can throw away the complete loop.

> > > +               while (count > 0) {
> > > +                       rstc = of_reset_control_get_shared_by_index(dev->dev.of_node, count - 1);

Since resets are looked up with of_reset_control_get, I'd use
of_reset_control_get_count() above for consistency. But see below:

> > > +                       if (IS_ERR(rstc)) {
> > > +                               if (PTR_ERR(rstc) == -EPROBE_DEFER)
> > > +                                       ret = -EPROBE_DEFER;
> > > +                               else
> > > +                                       dev_err(&dev->dev, "Can't get amba reset!\n");
> > > +                               break;
> > > +                       }
> > > +                       reset_control_deassert(rstc);
> > > +                       reset_control_put(rstc);
> > > +                       count--;
> > > +               }

It looks like the order of deassertions is irrelevant. If so,
You can use of_reset_control_array_get() to simplify this:

+		rstc = of_reset_control_array_get_optional_shared(dev->dev.of_node);
+		if (IS_ERR(rstc)) {
+			if (PTR_ERR(rstc) != -EPROBE_DEFER)
+				dev_err(&dev->dev, "Can't get amba reset!\n");
+			return PTR_ERR(rstc);
+		}
+		reset_control_deassert(rstc);
+		reset_control_put(rstc);

> > I'm not normally a footprint person, but the looks of the stubs in
> > <linux/reset.h> makes me suspicious whether this will have zero impact
> > in size on platforms without reset controllers.
> > 
> > Can you just ls -al on the kernel without CONFIG_RESET_CONTROLLER
> > before and after this patch and ascertain that it has zero footprint effect?
> 
> Thanks for the review. I checked it, and indeed, it does have a zero
> footprint effect.
> 
> > 
> > If it doesn't I'd sure like to break this into its own function and
> > stick a if (!IS_ENABLED(CONFIG_RESET_CONTROLLER)) return 0;
> > in there to make sure the compiler drops it.
> > 
> > Also it'd be nice to get Philipp's ACK on the semantics, though they
> > look correct to me.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
