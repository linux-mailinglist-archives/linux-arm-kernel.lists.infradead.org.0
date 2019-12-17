Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E141222CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 05:02:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mawBOyn9mZ0RrgmpfGPmQcuTsVuxIBuOaVHIHCVX4XI=; b=j1s5g7d/K3PkEh
	69KOBSSzyexAIFW/CuaIZQBle5SVDdLRGaYZQQcmMj4uyZ/hmTtLRwqUXvRFTScqzqo3lgkeQLh9N
	md35owoxrCdhpA0lchWGKvIuDDv2gfsFNxhJG+FY5Yx7olmxdJzl4W+vGEOx3gRXCERo7ZbO5S5rS
	XeQ9C7nSuVTya3OVu8GEb34vhxwPehoz+P7kXk0JkGNXJBzTDz1GStV++XXhdvEpM35vSSWDmi28H
	g+sEfZlm/Ci+N9A/dIkr6gBPSxnYtYWdmmSfKI8suT4uw0BMhKzAEPQUNnbNwDL/QNZiGF/rKi/aY
	oqBcxipH0A1Uhvo2iDjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih43a-00073k-FB; Tue, 17 Dec 2019 04:01:58 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih43R-00072z-1m
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 04:01:50 +0000
Received: by mail-io1-xd41.google.com with SMTP id z193so5928337iof.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 20:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ij5jMuIVrDWbkB25zv+Ys/y+2VcPWYK/Wn9z+Vw1Wr8=;
 b=IX/dKHpANILfMmHCbAp2tSBvZDb6l4i+C6iHav5XupHITPB+a71+pe02c7afOUZUXt
 Js7TbIRYAtxzS+sh90OGv50A3WmHS+7Fk7958/xONxAoKx1iiUtfhGur4UMm53rSHOII
 kxveAek1A/yVNWd2rRnp9nPwLb2Pt+23ki+QmQKHJk3bcOlEdJsL+3Rv5g+Hp4tBHNY5
 xJVbGlZ+ifb6z1jHT7AMGf6C6zXOeZ2x5HPQ8Y+jLoew4x/qMa1/kO6W34/dpoMVco5k
 g6G+i6QwgytDiTAlaM8sBWdSJkJwq65ZXND160EgPdEdOCaAqDqxoG00bOmD93VX8nkR
 3PrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ij5jMuIVrDWbkB25zv+Ys/y+2VcPWYK/Wn9z+Vw1Wr8=;
 b=aO73Ff77984dOaBuBYVbEA5grG+19v7PHuyuGp6BmuCrdSpdRXtGcdo8293WTa3kX3
 2nkwldV/qZeVVsCn6/pKKZfnxO+fjv+vFtGxgHBE2pr2QyrRfNlkqCpZ+7kkJMlFRjcP
 KVAPf/m4TtkDXhvECF90voeicEA2N/yIuPZ0s7oz6l5lWt7PzVvqyO0+OSIt/0GTia8B
 6bc5t2m0PbUEWUJtANq+pFQHaMcTkFm9vUY8ghr0pw+Ok5o/luOB5dMQbgXgX07WRH6s
 or7uIARrLtJHvcfPaCZwOSvZ7KFkq+VFE8b7McCxeqfOgOS6zBsGMXYufwb+mOVQo8+9
 mvVg==
X-Gm-Message-State: APjAAAUD1tLg4p9uBzsx8aoxHb4Manoo2Clptbq9BBb6OVv1sjLJM+JB
 AodsXqab/Loa2BzerOuAgaJJsMx7vvlQkIH8HNiatA==
X-Google-Smtp-Source: APXvYqxBf2+0LFcWx9583TtqlgEUkIw+t2OsKbkAWHA2fdjuSXBEbR4sl7Nx4aJNnr4nTcmpOtHvABUyn6GP/ZMsE/s=
X-Received: by 2002:a02:6957:: with SMTP id e84mr14615869jac.11.1576555306301; 
 Mon, 16 Dec 2019 20:01:46 -0800 (PST)
MIME-Version: 1.0
References: <20191211230717.4879-1-mike.leach@linaro.org>
 <CANLsYkzVcTYutoYt5DWiOxyB8m3kCZVPHpTJPPe7YN=OoKtj1g@mail.gmail.com>
In-Reply-To: <CANLsYkzVcTYutoYt5DWiOxyB8m3kCZVPHpTJPPe7YN=OoKtj1g@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 16 Dec 2019 20:01:35 -0800
Message-ID: <CAOesGMim6L+XiPio66FThtne2NgUFAWTYXFvKO-NU7tP2mQKHA@mail.gmail.com>
Subject: Re: [PATCH v6 00/15] CoreSight CTI Driver
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_200149_155301_40CA7DD4 
X-CRM114-Status: GOOD (  30.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: DTML <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Coresight ML <coresight@lists.linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 1:22 PM Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Wed, 11 Dec 2019 at 16:07, Mike Leach <mike.leach@linaro.org> wrote:
> >
> > CTIs are defined in the device tree and associated with other CoreSight
> > devices. The core CoreSight code has been modified to enable the registration
> > of the CTI devices on the same bus as the other CoreSight components,
> > but as these are not actually trace generation / capture devices, they
> > are not part of the Coresight path when generating trace.
> >
> > However, the definition of the standard CoreSight device has been extended
> > to include a reference to an associated CTI device, and the enable / disable
> > trace path operations will auto enable/disable any associated CTI devices at
> > the same time.
> >
> > Programming is at present via sysfs - a full API is provided to utilise the
> > hardware capabilities. As CTI devices are unprogrammed by default, the auto
> > enable describe above will have no effect until explicit programming takes
> > place.
> >
> > A set of device tree bindings specific to the CTI topology has been defined.
> > The driver accesses these in a platform agnostic manner, so ACPI bindings
> > can be added later, once they have been agreed and defined for the CTI device.
> >
> > Documentation has been updated to describe both the CTI hardware, its use and
> > programming in sysfs, and the new dts bindings required.
> >
> > Tested on DB410 board and Juno board, against the Linux 5.5-rc1 tree.
> >
> > Changes since v5:
> > 1) Fixed up device tree .yaml file. Using extra compatible string for
> > v8 architecture CTI connections.
> > 2) Ensure association code respects coresight mutex when setting cross
> > referenced pointers. Add in shutdown code.
> > 3) Multiple minor code fixes & rationalisation.
> >
> > Changes since v4:
> > Multiple changes following feedback from Mathieu, Leo and Suzuki.
> > 1) Dropped RFC tag - wider distribution
> > 2) CTI bindings definition now presented as a .yaml file - tested with
> > with 'dt-doc-validate' from devicetree.org/dt-schema project and in kernel
> > build tree with 'make dtbs_check' per kernel docs.
> > 3) Sysfs links to other CoreSight devices moved out of this set into
> > a following set that deals with all CoreSight devices & sysfs links.
> > 4) Documentation in .rst format and new directory following patchset in [1].
> > Extended example provided in docs.
> > 5) Rationalised devicetree of_ specifics to use generic fwnode functions
> > where possible to enable easier addition of ACPI support later.
> > 6) Other minor changes as requested in feedback from last patchset.
> >
> > Changes since v3:
> > 1) After discussion on CS mailing list, each CTI connection has a triggers<N>
> >    sysfs directory with name and trigger signals listed for the connection.
> > 2) Initial code for creating sysfs links between CoreSight components is
> >   introduced and implementation for CTI provided. This allows exploration
> >   of the CoreSight topology within the sysfs infrastructure. Patches for
> >   links between other CoreSight components to follow.
> > 3) Power management - CPU hotplug and idle omitted from this set as ongoing
> >    developments may define required direction. Additional patch set to follow.
> > 4) Multiple fixes applied as requested by reviewers esp. Matthieu, Suzuki
> >    and Leo.
> >
> > Changes since v2:
> > Updates to allow for new features on coresight/next and feedback from
> > Mathieu and Leo.
> >
> > 1) Rebase and restructuring to apply on top of ACPI support patch set,
> > currently on coresight/next. of_coresight_cti has been renamed to
> > coresight-cti-platform and device tree bindings added to this but accessed
> > in a platform agnostic manner using fwnode for later ACPI support
> > to be added.
> > 2) Split the sysfs patch info a series of functional patches.
> > 3) Revised the refcount and enabling support.
> > 4) Adopted the generic naming protocol - CTIs are either cti_cpuN or
> > cti_sysM
> > 5) Various minor presentation /checkpatch issues highlighted in feedback.
> > 6) revised CPU hotplug to cover missing cases needed by ETM.
> >
> > Changes since v1:
> > 1) Significant restructuring of the source code. Adds cti-sysfs file and
> > cti device tree file. Patches add per feature rather than per source
> > file.
> > 2) CPU type power event handling for hotplug moved to CoreSight core,
> > with generic registration interface provided for all CPU bound CS devices
> > to use.
> > 3) CTI signal interconnection details in sysfs now generated dynamically
> > from connection lists in driver. This to fix issue with multi-line sysfs
> > output in previous version.
> > 4) Full device tree bindings for DB410 and Juno provided (to the extent
> > that CTI information is available).
> > 5) AMBA driver update for UCI IDs are now upstream so no longer included
> > in this set.
> >
> > Mike Leach (15):
> >   coresight: cti: Initial CoreSight CTI Driver
> >   coresight: cti: Add sysfs coresight mgmt reg access.
> >   coresight: cti: Add sysfs access to program function regs
> >   coresight: cti: Add sysfs trigger / channel programming API
> >   dt-bindings: arm: Adds CoreSight CTI hardware definitions.
> >   coresight: cti: Add device tree support for v8 arch CTI
> >   coresight: cti: Add device tree support for custom CTI.
> >   coresight: cti: Enable CTI associated with devices.
> >   coresight: cti: Add connection information to sysfs
> >   dt-bindings: qcom: Add CTI options for qcom msm8916
> >   dt-bindings: arm: Juno platform - add CTI entries to device tree.
> >   dt-bindings: hisilicon: Add CTI bindings for hi-6220
> >   docs: coresight: Update documentation for CoreSight to cover CTI.
> >   docs: sysfs: coresight: Add sysfs ABI documentation for CTI
> >   Update MAINTAINERS to add reviewer for CoreSight.
> >
>
> All that needs to be sorted out in this set are the comments made by
> Maxime.  When you do address those please only resend that patch.
> Since Maxime's comments are related to yaml syntax rather than the
> bindings themselves, I have added your set to my next tree so that it
> can soak in linux-next over the next few weeks.

Please revert until you can bring in sufficient contents for the trees
to still build. arm64 allmodconfig is unhappy:

Per http://arm-soc.lixom.net/buildlogs/next/next-20191217/buildall.arm64.allmodconfig.log.failed:

/build/drivers/hwtracing/coresight/coresight-cti-platform.c:6:10:
fatal error: dt-bindings/arm/coresight-cti-dt.h: No such file or
directory

In this case, I'm guessing it means getting an ack from the DT
maintainers and either apply the patch in your tree, or get them to
apply it to a stable branch that you can also bring in.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
