Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4DC7B537
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 23:46:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WoHvYU45JtAayBNPYbb0DfHafxsuMVrymcN5/k3LF4=; b=JnP4mk6OSmzU2m
	/NwPNCpcjlaO3lb9QDJ3SsxldNWqibXFBW0CGCNAVQo1XaRmn1G/Qc62UO8/3Au6lLnXCUU2t+R6y
	kvZgNMBHjKDOAib3IhkQ3Cu9IcVvY9KhWs2eBaFDk6S/Vl1I5eLpm17tqu2B9Ihe+fqPmZJ2XCyT4
	Jep/CoWmWbZN5+5OUj5hJlpC+6ctSOk5U8yg8z1aqIFWn8Tmxk5/HqchkoX/7CqVTfEnIrWKBOzv9
	S7hzkcCrUzPAQhvZ3O3+oALFlyKrURuWf+m/h6OVmRzDgvDxNXDCqeB04X86zAKDFCtcqaSgyvA+y
	uwJkDPMHhpScQUO9xI9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZwm-0003Qw-2N; Tue, 30 Jul 2019 21:46:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZwd-0003Q6-Rn
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 21:46:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E0671597;
 Tue, 30 Jul 2019 14:46:07 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D46083F575;
 Tue, 30 Jul 2019 14:46:06 -0700 (PDT)
Date: Tue, 30 Jul 2019 22:46:05 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v4 0/6] coresight: etm4x: save/restore ETMv4 context
 across CPU low power states
Message-ID: <20190730214605.GI56241@e119886-lin.cambridge.arm.com>
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730201220.GA4878@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730201220.GA4878@xps15>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_144607_984854_E5BB9598 
X-CRM114-Status: GOOD (  29.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Al.Grant@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 02:12:20PM -0600, Mathieu Poirier wrote:
> Hi Andrew,
> 
> On Tue, Jul 30, 2019 at 01:51:51PM +0100, Andrew Murray wrote:
> > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > to hardware that power should not be removed from the trace unit.
> > Let's mitigate against this by conditionally saving and restoring
> > the trace unit state when the CPU enters low power states.
> > 
> > This patchset introduces a firmware property named
> > 'arm,coresight-needs-save-restore' - when this is present the
> > hardware state will be conditionally saved and restored.
> > 
> > A module parameter 'pm_save_enable' is also introduced which can
> > be configured to override the firmware property.
> > 
> > The hardware state is only ever saved and restored when a self-hosted
> > coresight is in use.
> > 
> > Changes since v3:
> > 
> >  - Only save/restore when self-hosted is being used and detect this
> >    without relying on the coresight registers (which may not be
> >    available)
> > 
> >  - Only allocate memory for etmv4_save_state at probe time when
> >    configuration indicates it may be used
> > 
> >  - Set pm_save_enable param to 0444 such that it is static after
> >    boot
> > 
> >  - Save/restore TRCPDCR
> > 
> >  - Add missing comments to struct etm4_drvdata documentation
> > 
> >  - Rebased onto coresight/next (8f1f9857)
> > 
> > Changes since v2:
> > 
> >  - Move the PM notifier block from drvdata to file static
> > 
> >  - Add section names to document references
> > 
> >  - Add additional information to commit messages
> > 
> >  - Remove trcdvcvr and trcdvcmr from saved state and add a comment to
> >    describe why
> > 
> >  - Ensure TRCPDCR_PU is set after restore and add a comment to explain
> >    why we bother toggling TRCPDCR_PU on save/restore
> > 
> >  - Reword the pm_save_enable options and add comments
> > 
> >  - Miscellaneous style changes
> > 
> >  - Move device tree binding documentation to its own patch
> > 
> > Changes since v1:
> > 
> >  - Rebased onto coresight/next
> > 
> >  - Correcly pass bit number rather than BIT macro to coresight_timeout
> > 
> >  - Abort saving state if a timeout occurs
> > 
> >  - Fix completely broken pm_notify handling and unregister handler on error
> > 
> >  - Use state_needs_restore to ensure state is restored only once
> > 
> >  - Add module parameter description to existing boot_enable parameter
> >    and use module_param instead of module_param_named
> > 
> >  - Add firmware bindings for coresight-needs-save-restore
> > 
> >  - Rename 'disable_pm_save' to 'pm_save_enable' which allows for
> >    disabled, enabled or firmware
> > 
> >  - Update comment on etm4_os_lock, it incorrectly indicated that
> >    the code unlocks the trace registers
> > 
> >  - Add comments to explain use of OS lock during save/restore
> > 
> >  - Fix incorrect error description whilst waiting for PM stable
> > 
> >  - Add WARN_ON_ONCE when cpu isn't as expected during save/restore
> > 
> >  - Various updates to commit messages
> > 
> > 
> > Andrew Murray (6):
> >   coresight: etm4x: remove superfluous setting of os_unlock
> >   coresight: etm4x: use explicit barriers on enable/disable
> >   coresight: etm4x: use module_param instead of module_param_named
> >   coresight: etm4x: improve clarity of etm4_os_unlock comment
> 
> I have picked up the first 4 patches, so no need to send them with your next
> revision.  Note that for patch 2/6 I have removed the "stable" tag as the patch
> doesn't apply to any of the stable tree.  Since I have another one like that in
> my tree I will rework both patches and send them directly to Greg for stable
> consideration.

Ah many thanks for this.

Andrew Murray

> 
> Thanks,
> Mathieu
> 
> 
> >   coresight: etm4x: save/restore state across CPU low power states
> >   dt-bindings: arm: coresight: Add support for
> >     coresight-needs-save-restore
> > 
> >  .../devicetree/bindings/arm/coresight.txt     |   3 +
> >  drivers/hwtracing/coresight/coresight-etm4x.c | 346 +++++++++++++++++-
> >  drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
> >  3 files changed, 406 insertions(+), 7 deletions(-)
> > 
> > -- 
> > 2.21.0
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
