Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BC51DB810
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGAJSiSVt/V9ZrmuChb4/atbxeXSWTraGRAcY3IXCVM=; b=GPBJYSCqe2K+XR
	N0Kr33xd1MpK9CE4Np11Zoyqgus1BjslxEtv/6zC/HGE7wUIk/EMGc4Rks3EG/89vGoXhrXEySNbo
	OjoK9JbEw2mGWPsphg+vVYOra2BCa7nTmgFDZQjmrUDxJdId12t2V0Y+qaNF3xFfGP3vbdf1lRXgm
	0Q4flT8yk+gldqMutUtbVEC2+o6Yu39gnAzos6+nWYZz+T4sgXdr/rZwqBWM4zMqmnBA0aOLbLjT7
	nPba8A4fsXUQzebDaRkaidUgO152aofHa9G4npI8l2fYIK5VZSgZuFhvOVPOXTMem1DiB1bIOTSJZ
	cKVq5yGYUqykSdpOB8Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQZl-0002gr-FR; Wed, 20 May 2020 15:24:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQZW-0002dX-Lz
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:23:56 +0000
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30E4520708
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 15:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589988234;
 bh=7wy/mzhmsxhrZOkUPW+Q83t2ryAQte3LPn1zb7E6KSs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZHYnAgMI7PZ4+geTufcIKRIYu1aGFliDnWFIqieVb7ktqvP33yfjeA6ZijQJ+2Z2t
 fMYOVGmazaAg0f5uRc4b6ptsRCtXBXHoRNBGLnojOriBvwAnqMNoG4655kl1OX3B3A
 uHOzBgWaHpnHR4ARCvfPSbMcyPRjP4VRfJMz71T0=
Received: by mail-ot1-f45.google.com with SMTP id f18so2730762otq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 08:23:54 -0700 (PDT)
X-Gm-Message-State: AOAM532pI3tAN3VW433O8GzWnTt2gDaFTSCYkOQKdrLCxUKh7lvP1SUY
 aYq/14XlnUBAbhe9Cuj6xk5fN+xo1oUNAtj3xA==
X-Google-Smtp-Source: ABdhPJxCSCVhZ52I7f5Mgyr0p3dZzcPmtENYVoGA47tZ3xVBr8Qbn/tvizgFDJa4B/xU3JfWxOsateh74q2peWJNOEA=
X-Received: by 2002:a05:6830:18d9:: with SMTP id
 v25mr3328433ote.107.1589988233456; 
 Wed, 20 May 2020 08:23:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
 <20200512073115.14177-2-qiangqing.zhang@nxp.com>
 <20200519185125.GB453195@bogus>
 <20200520073304.GA23534@willie-the-truck>
In-Reply-To: <20200520073304.GA23534@willie-the-truck>
From: Rob Herring <robh@kernel.org>
Date: Wed, 20 May 2020 09:23:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJfQ0PFy5mmwSG4aM91ghq5xiAEPR2YZOymws+BfGa+uA@mail.gmail.com>
Message-ID: <CAL_JsqJfQ0PFy5mmwSG4aM91ghq5xiAEPR2YZOymws+BfGa+uA@mail.gmail.com>
Subject: Re: [PATCH V1 RESEND 1/3] perf/imx_ddr: Add system PMU identifier for
 userspace
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_082354_739727_41C348B8 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 John Garry <john.garry@huawei.com>, Joakim Zhang <qiangqing.zhang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 1:33 AM Will Deacon <will@kernel.org> wrote:
>
> On Tue, May 19, 2020 at 12:51:25PM -0600, Rob Herring wrote:
> > On Tue, May 12, 2020 at 03:31:13PM +0800, Joakim Zhang wrote:
> > > +static ssize_t ddr_perf_identifier_show(struct device *dev,
> > > +                                   struct device_attribute *attr,
> > > +                                   char *page)
> > > +{
> > > +   struct ddr_pmu *pmu = dev_get_drvdata(dev);
> > > +
> > > +   return sprintf(page, "%s\n", pmu->devtype_data->identifier);
> >
> > Why do we need yet another way to identify the SoC from userspace?
>
> I also really dislike this. What's the preferred way to identify the SoC
> from userspace?

/proc/cpuinfo? ;)

For an non-firmware specific case, I'd say soc_device should be. I'd
guess ACPI systems don't use it and for them it's dmidecode typically.
The other problem I have with soc_device is it is optional.

> It's needed so that the perf userspace tool can describe
> perf events that are supported for the PMU, as this isn't probe-able
> directly from the hardware. We have the same issue with the SMMUv3 PMCG [1],
> and so we need to solve the problem for both DT and ACPI.
>
> Will
>
> [1] https://lore.kernel.org/r/1587120634-19666-1-git-send-email-john.garry@huawei.com

At a minimum, it seems like 'identifier' should be moved into the perf
core if that's an attr we want to keep.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
