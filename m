Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16A2122A9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfAC/CLMpq9dBjVIRp31zNdo6WgO5fJTb8HX/NzBXR0=; b=b+WOTZp+hPt7XN
	LGAWlb5mncBeoDyyc30zmRc9W2gVRw85uhxiJ0+y2+aI/8Sn8Lj7LFz+90ofRxM1cQWgeQKxqzl1f
	CERN27pzasYbu87L8Lu8OaNMxNMcdB3l+BzJwoq6+LTBT5VA7BWDQpHpdSK9cuM6RkaDSEIa9ccSH
	caehkwWZl0DUO6TijQOlAcfJA4eWR4u6ObwzjFc5wUIGXBdm6rsTfw0/z9L7zeJVSBNe+jd/GPWZp
	/O7iMBnc41D3LKoObuF6qyQLsMcv22d/8oUT6amVO+xpXVs4j9fM5S44m4shVDiJolkF2olI3I8SG
	ELLdD05C0+KefR49y7wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBOD-0006m9-9q; Tue, 17 Dec 2019 11:51:45 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBO1-0006la-RC
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 11:51:35 +0000
Received: by mail-qv1-xf43.google.com with SMTP id d17so4049860qvs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 03:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oi9xvPNEvGFQjaDr1w2z3j1TBoDV1Q0xprMzW/vT4S0=;
 b=cH2Sj15E/LSvtF9YoKRvRYPwHu9uz5qJOthzgg3IUNTkIhOMXJJs8sFkUOylcorygB
 PcRyqtphRppLZl/bK3smG9IZ4kYPVXa+8W8DkOhi+rPEYyU8RDH7dA5LOCsVxMg4jS4T
 rs+1g25mQQijHDng9iq/E43rNLaxVAptGRQXm+Y09CtqdhUdHpLP6okf7C0JsqyiBkSN
 FcXKx1or6f3M5VTksEC+i1+UTvzzop14uRLBdhxfdcJeNtf9Aff/6c1ffXR11atG4FFv
 2cbTdvD3/QDyWxtHHY9MhCDh33mNSuDxUat4vfObWsmHxNpGEp6lAbWfYd6pYQ4BCm9p
 XlSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oi9xvPNEvGFQjaDr1w2z3j1TBoDV1Q0xprMzW/vT4S0=;
 b=WP9PwE9h/DNlkbasvkE/DfP5wJgZodTssGy6kOw53qblDEM3hnoFVFyumIZAikPGwa
 3GXdTAbjqWClQMJu3qO41wbB2DBWmHj/VImMHVTZrBVuCA6Lcs6NnB0xfInpQCRVXd1l
 ta8ipQEmEG8BC84NoJZis3roZKKh72l4FsL/8L9OXopGUV0/RXmFqgUsQOBPJ8qo9p3a
 V+T2Rt+d7lHj8PT1OpFnu+FtP4dGNKU9MnGb75tn85F3TaSCTTdKYThmM9G14D++v8ca
 PvZvrZe4+JZa+dYTNofndvWg1BCJocfUTAmhohAZW9Yu3gG2mISmxoHXnUk4aa8AOAPF
 uTMg==
X-Gm-Message-State: APjAAAV0Jivw+vZ5Pi+fVfTcvOJx6hyIkgaSuvAQdUwlrKeySuGMHFID
 KXL0oJg4VQ2zOmGFWLLVleUNrgAwPD4NyZOy41fA5w==
X-Google-Smtp-Source: APXvYqwHRSiaSFbta4r4BYriNhMtq3MF2AP/U8F2tCXJkolfLdek9I89pOQ/Q8BahmR11fS81EHdagf+Ye+5xHK8rFQ=
X-Received: by 2002:a0c:9ad6:: with SMTP id k22mr4037747qvf.154.1576583491280; 
 Tue, 17 Dec 2019 03:51:31 -0800 (PST)
MIME-Version: 1.0
References: <20191211230717.4879-1-mike.leach@linaro.org>
 <CANLsYkzVcTYutoYt5DWiOxyB8m3kCZVPHpTJPPe7YN=OoKtj1g@mail.gmail.com>
In-Reply-To: <CANLsYkzVcTYutoYt5DWiOxyB8m3kCZVPHpTJPPe7YN=OoKtj1g@mail.gmail.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 17 Dec 2019 11:51:20 +0000
Message-ID: <CAJ9a7VgiVGx4gsrGOUXSzSRixbgMauhtpQJfHd+aYifR43faGA@mail.gmail.com>
Subject: Re: [PATCH v6 00/15] CoreSight CTI Driver
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_035133_897469_2B2751D1 
X-CRM114-Status: GOOD (  33.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Coresight ML <coresight@lists.linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On Mon, 16 Dec 2019 at 21:22, Mathieu Poirier
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
>

As a result of the changes requested by Maxime - there are necessary
changes to the .dts for the juno bindings as well as the .yaml file -
juno bindings need to respect the requirement for reg = <> entries in
the trig-conns@ child nodes.

These changes are still limited to devicetree so I will post just
these two patches next time.

Regards

Mike

> Thanks,
> Mathieu
>
> >  .../testing/sysfs-bus-coresight-devices-cti   |  221 ++++
> >  .../bindings/arm/coresight-cti.yaml           |  303 +++++
> >  .../devicetree/bindings/arm/coresight.txt     |    7 +
> >  .../trace/coresight/coresight-ect.rst         |  211 +++
> >  Documentation/trace/coresight/coresight.rst   |   13 +
> >  MAINTAINERS                                   |    3 +
> >  arch/arm64/boot/dts/arm/juno-base.dtsi        |  149 ++-
> >  arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi     |   31 +-
> >  arch/arm64/boot/dts/arm/juno-r1.dts           |   25 +
> >  arch/arm64/boot/dts/arm/juno-r2.dts           |   25 +
> >  arch/arm64/boot/dts/arm/juno.dts              |   25 +
> >  .../boot/dts/hisilicon/hi6220-coresight.dtsi  |  130 +-
> >  arch/arm64/boot/dts/qcom/msm8916.dtsi         |   85 +-
> >  drivers/hwtracing/coresight/Kconfig           |   21 +
> >  drivers/hwtracing/coresight/Makefile          |    3 +
> >  .../coresight/coresight-cti-platform.c        |  485 +++++++
> >  .../hwtracing/coresight/coresight-cti-sysfs.c | 1175 +++++++++++++++++
> >  drivers/hwtracing/coresight/coresight-cti.c   |  748 +++++++++++
> >  drivers/hwtracing/coresight/coresight-cti.h   |  235 ++++
> >  .../hwtracing/coresight/coresight-platform.c  |   21 +
> >  drivers/hwtracing/coresight/coresight-priv.h  |   15 +
> >  drivers/hwtracing/coresight/coresight.c       |   86 +-
> >  include/dt-bindings/arm/coresight-cti-dt.h    |   37 +
> >  include/linux/coresight.h                     |   27 +
> >  24 files changed, 4050 insertions(+), 31 deletions(-)
> >  create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-cti
> >  create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
> >  create mode 100644 Documentation/trace/coresight/coresight-ect.rst
> >  create mode 100644 drivers/hwtracing/coresight/coresight-cti-platform.c
> >  create mode 100644 drivers/hwtracing/coresight/coresight-cti-sysfs.c
> >  create mode 100644 drivers/hwtracing/coresight/coresight-cti.c
> >  create mode 100644 drivers/hwtracing/coresight/coresight-cti.h
> >  create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h
> >
> > --
> > 2.17.1
> >



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
