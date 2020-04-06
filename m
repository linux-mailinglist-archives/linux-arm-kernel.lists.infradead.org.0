Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418C119F87C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvIJ6QLiI9EFowJ5mDyNxIyyGc/Gt7GUoxxzJg4Z/fY=; b=P7tqcsobNq+qTr
	EFGPwz0kd7RXPi6eR49YQkJkP5OMNUMTuPT6pGHVcMfPRCqjmJg+MOQ3PNco7nrzErHtiD9U4yfws
	a0ssKFleSNxD5YKLuXEmQ+8k3IBGrPjCK1S81vmndsjRMN1Ln1E+IwzRPvgXv3XprfudILuRAeIdj
	Q46ZLEhpAin3T71vHVSJhM84Zt5HvakeWv/7OOAljTUuJzoDt68Jz5Zo4T6Fh4t8tX/QEeZMMsmnw
	bPiWpE30mmkoAGFVGb9jpnTlY4NkfF74r8fn/aFFj0ZO0mCCi69XRyQ0YsviW1mK7+6FQMaEmg19I
	jPgs1FVQ8SsJrl9/E4aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLTKd-00086o-D8; Mon, 06 Apr 2020 15:06:35 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLTKX-00086U-2K
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 15:06:30 +0000
IronPort-SDR: NDLFPAUr/XzIOVIvRTpNaI8vcNm+WXw3qEsjPbRFtvvbLOjZ53Ch4/r4Lz7vuCjEqcOia7SZM/
 ClGjxtFycWyQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 08:06:28 -0700
IronPort-SDR: mqw7ycFAc1LmPAC67DPTqIPgVgTjHFH2j8p8RoZfwndcKlL/z+tEfGOZN1CLbTbI2F7YfryUZ/
 sRgsmN8ohpTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="450862810"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga005.fm.intel.com with ESMTP; 06 Apr 2020 08:06:23 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andy.shevchenko@gmail.com>)
 id 1jLTKU-00GCiI-8A; Mon, 06 Apr 2020 18:06:26 +0300
Date: Mon, 6 Apr 2020 18:06:26 +0300
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v3 2/3] media: ov8856: Add devicetree support
Message-ID: <20200406150626.GW3676135@smile.fi.intel.com>
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-3-robert.foss@linaro.org>
 <CAHp75VfFKY6nzb8aEWmop73v2haZ0P5+aTsKDEU8M=uUPn0u3g@mail.gmail.com>
 <CAG3jFyuH5Kad16R7Oit-c_7RasiEfPycOpA68JYLVopbyQ749w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG3jFyuH5Kad16R7Oit-c_7RasiEfPycOpA68JYLVopbyQ749w@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_080629_141628_F9E4C0B3 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 03:37:24PM +0200, Robert Foss wrote:
> On Tue, 31 Mar 2020 at 16:01, Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> > On Tue, Mar 31, 2020 at 4:36 PM Robert Foss <robert.foss@linaro.org> wrote:

...

> > > +       if (ret < 0) {
> >
> > Do you need all ' < 0' parts all over the series?
> 
> Some checks are needed due to ACPI and DT support co-existing.
> Maybe it would be better to just split the probing into an ACPI path
> and a DT path.
> 
> I'll have a look through the series for redundant retval checks.

Drop where it is redundant.

...

> > > -       ret = fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
> > > -       if (ret)
> > > -               return ret;
> >
> > Where is it gone? Why?
> 
> It was replaced by a clk_get_rate call, which as Sakari pointed out,
> isn't correct.
> I'll rework the clock handling for v4.

If it was in the driver it should stay -- properties is an ABI (between firmware and kernel).

> > > +       ov8856->xvclk = devm_clk_get_optional(dev, "xvclk");
> > > +       if (IS_ERR(ov8856->xvclk)) {
> >
> > > +               dev_err(dev, "could not get xvclk clock (%ld)\n",
> > > +                       PTR_ERR(ov8856->xvclk));
> >
> > Also you may use %pe here and in similar cases.
> 
> Weirdly checkpatch complains about this.
> But it builds and runs cleanly, so I'll add it in v4.

%pe requires pointer, PTR_ERR converts pointer to integer.

...

> > > +       ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ov8856_supply_names),
> > > +                                     ov8856->supplies);
> > > +       if (ret) {
> >
> > > +               dev_warn(dev, "failed to get regulators\n");
> >
> > If it's a warning, why we return from here?
> > Same question to all other places with same issue.
> 
> The issue I was seeing was the driver having to return a EDEFER here,
> so this warning sheds some light on which exact component is returning
> an EDEFER.
> 
> [   15.962623] ov8856 16-0010: Dropping the link to regulator.29
> [   15.968464] ov8856 16-0010: failed to get regulators
> [   15.973493] ov8856 16-0010: failed to get HW configuration: -517
> [   15.979591] ov8856 16-0010: removing from PM domain titan_top_gdsc
> [   15.985855] ov8856 16-0010: genpd_remove_device()
> [   15.990672] i2c 16-0010: Driver ov8856 requests probe deferral
> 
> Personally I found it helpful to speed up debugging, but I'll happily
> remove it if you prefer no warning.

My point is that you have it in align:
 - if it is an error, print as an error and bail out, otherwise
 - if it is a warning, print it and continue.

> > > +               return ret;
> > >         }

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
