Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77D2A9753
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 01:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RSrT4hOvKkOdNWj7sTzjvSWxlGoIHdFfIlHT4qdH01w=; b=jQgTmpUeKvUm00
	JnJwa1knsXvlNrZbU+Tx6lZLTIQSfbwRy/PshoVXYWenT6nNmRuNrqUBRy8PuPhG8b9RN0+qSlOXX
	Bi9xdevZqC8XUd8fMyFmkXrD+YpA/bECOWpFcF/nHlhGWCo52Uy3opSV7Z5XDVOhf0pHomwxxLU6c
	9pjMqVbGmNtblzOG+iStTlkLtN45fJxAb/MW/4UgUr/aH5oLurlZocpsLKTHIXO3ZoCbng9wlfP2l
	VjT5mFXv28GiWEsDKU+Uz/r4fFz/JfXOKhqjDaLWjjQewiKdQbxL2wxieVWdHyPzSZwUijuwCwtl3
	MQENUpNa5wTLEWxeAz7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5eyC-0000nc-I7; Wed, 04 Sep 2019 23:45:48 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ey0-0000mM-Rp
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 23:45:38 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd8so349677plb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 16:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:subject:to:from:user-agent:date;
 bh=vu/9p2fe9GxGN3cNpeW7qpxXHEjWh+kyFDAn4s7xdho=;
 b=Mqab7Fib6jTd4940cCY9Q0mYQnIuq3We/SHz2mL2Xaguh74hw/YHmMotjdASz5B1b/
 zuDwDOKTVZWYyT70lCDc+8RSNJ72EYJejYwJclxAyL/16HukhCpLsphM62qK7vaKXJos
 nIoWYhg2qNnWmXebvnGAyro0j/Nawne7vsdA0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:subject:to:from
 :user-agent:date;
 bh=vu/9p2fe9GxGN3cNpeW7qpxXHEjWh+kyFDAn4s7xdho=;
 b=RRPH2aRk1u9iJK0IeEZtDIKHx0Ijkx1RQyAz7iBeya02rPflxWnzqDNCvGHQ9jwpGY
 MQqB7dBa385/RD45gDiiQZRR1ITaTHeXd0dXjFY/h/z1+6k3I30owE+6nQwtOfAVNNMx
 6vis0YENDUhS/Z3HRwFS0hERR0nJyYuDDtyGA9Ny8nSaw20QCZ53nMlwQJTbdROAvbtQ
 cmGlUjpAOYa38GrXsS/cPX2MY7OtJOU++Bl5i2fMxEGmhRtzRqk2WThyEuKjJEYXQKzi
 vFsApQ7HZqrnpHv7EL/oR/1UOBjz8NAO6Y+6MkAFPyZKj6VDihi9UTHF1dwj+rV/FUM4
 L1ww==
X-Gm-Message-State: APjAAAWdSOeKq4FregwpIeTvitY5A0lQiT0uNcR5VflrAYXMfnQbdHGf
 Zzdde7SOgYyxIY6jQwpVhUHfdg5hmqGzuw==
X-Google-Smtp-Source: APXvYqxSeCbsEH7VIZRhORWAP49G1l4WDjZqdXrxRw+p5ofbVPXVM0QFnnhvRjBWMm8NbbdRATHs2g==
X-Received: by 2002:a17:902:7449:: with SMTP id
 e9mr376613plt.242.1567640735962; 
 Wed, 04 Sep 2019 16:45:35 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id f62sm190298pfg.74.2019.09.04.16.45.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 16:45:35 -0700 (PDT)
Message-ID: <5d704c9f.1c69fb81.a1686.0eb3@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190904182732.GE574@tuxbook-pro>
References: <20190903135052.13827-1-lee.jones@linaro.org>
 <20190904031922.GC574@tuxbook-pro> <20190904084554.GF26880@dell>
 <20190904182732.GE574@tuxbook-pro>
Subject: Re: [PATCH 1/1] soc: qcom: geni: Provide parameter error checking
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lee Jones <lee.jones@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Wed, 04 Sep 2019 16:45:34 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_164536_925663_BBABC80D 
X-CRM114-Status: GOOD (  37.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Bjorn Andersson (2019-09-04 11:27:32)
> On Wed 04 Sep 01:45 PDT 2019, Lee Jones wrote:
> 
> > On Tue, 03 Sep 2019, Bjorn Andersson wrote:
> > 
> > > On Tue 03 Sep 06:50 PDT 2019, Lee Jones wrote:
> > > 
> > > > When booting with ACPI, the Geni Serial Engine is not set as the I2C/SPI
> > > > parent and thus, the wrapper (parent device) is unassigned.  This causes
> > > > the kernel to crash with a null dereference error.
> > > > 
> > > 
> > > Now I see what you did in 8bc529b25354; i.e. stubbed all the other calls
> > > between the SE and wrapper.
> > > 
> > > Do you think it would be possible to resolve the _DEP link to QGP[01]
> > > somehow?
> > 
> > I looked at QGP{0,1}, but did not see it represented in the current
> > Device Tree implementation and thus failed to identify it.  Do you
> > know what it is?  Does it have a driver in Linux already?
> > 
> 
> QGP0 is the same hardware block as &qupv3_id_0, but apparently both are
> only representing a smaller part - and different ones.
> 
> But conceptually both represents the wrapper...
> 
> > > For the clocks workarounds this could be resolved by us
> > > representing that relationship using device_link and just rely on
> > > pm_runtime to propagate the clock state.
> > 
> > That is not allowed when booting ACPI.  The Clock/Regulator frameworks
> > are not to be used in this use-case, hence why all of the calls to
> > these frameworks are "stubbed out".  If we wanted to properly
> > implement power management, we would have to create a driver/subsystem
> > similar to the "Windows-compatible System Power Management Controller"
> > (PEP).  Without documentation for the PEP, this would be an impossible
> > task.  A request for the aforementioned documentation has been put in
> > to Lenovo/Qualcomm.  Hopefully something appears soon.
> > 
> 
> I see, so the PEP states needs to be parsed and associated with each
> device and we would use pm_runtime to toggle between the states and
> device_links to ensure that _DEP nodes are powered in appropriate order.
> 
> That seems reasonable and straight forward and the reliance on
> pm_runtime will make the DT case cleaner as well.

I think we tried to push for pm_runtime here but it was rejected because
of a missing interconnect framework? See
https://marc.info/?l=devicetree&m=152002327106864&w=2

> 
> > > For the DMA operation, iiuc it's the wrapper that implements the DMA
> > > engine involved, but I'm guessing the main reason for mapping buffers on
> > > the wrapper is so that it ends up being associated with the iommu
> > > context of the wrapper.
> > 
> > Judging by the code alone, the wrapper doesn't sound like it does much
> > at all.  It seems to only have a single (version) register (at least
> > that is the only register that's used).  The only registers it
> > reads/writes are those of the calling device, whether that be I2C, SPI
> > or UART.
> > 
> > Device Tree represents the wrapper's relationship with the I2C (and
> > SPI/UART) Serial Engine (SE) devices as parent-child ones, with the
> > wrapper being the parent and SE the child.  Whether this is a true
> > representation of the hardware or just a tactic used for convenience
> > is not clear, but the same representation does not exist in ACPI.
> > 
> > In the current Linux implementation, the buffer belongs to the SE
> > (obtained by the child (e.g. I2C) SE by fetching the parent's
> > (wrapper's) device data using the standard platform helpers) but the
> > register-set used to control the DMA transactions belong to the SE
> > devices.
> > 
> 
> Yeah, I saw this as well. If all the SEs where the wrappers iommu domain
> things should work fine by mapping it on the se->dev, regardless of the
> device's being linked together.
> 
> The remaining relationship to the wrapper would then be reduced to the
> read of the version to check for 1.0 or 1.1 hardware in the SPI driver,
> which can be replaced by the assumption that we're on 1.1.

Could this be described in the DT compatible for the SE in the future
instead of reading it from the wrapper register space?

> 
> > > Are the SMMU contexts at all represented in the ACPI world and if so do
> > > you know how the wrapper vs SEs are bound to contexts? Can we map on
> > > se->dev when wrapper is NULL (or perhaps always?)?
> > 
> > Yes, the SMMU devices are represented in ACPI (MMU0) and (MMU1).  They
> > share the same register addresses as the SMMU devices located in
> > arch/arm64/boot/dts/qcom/sdm845.dtsi.
> > 
> 
> Right but this only describes the IOMMU devices, I don't see any
> information about how individual client devices relates to the various
> IOMMU contexts.

The only thread I recall describing this is
https://lkml.kernel.org/r/945b6c00-dde6-6ec7-4577-4cc0d034796b@codeaurora.org

> 
> > With this simple parameter checking patch, the SE falls back to using
> > FIFO mode to transmit data and continues to work flawlessly.  IMHO
> > this should be applied in the first instance, as it fixes a real (null
> > dereference) bug which currently resides in the Mainline kernel.
> > 
> 
> Per the current driver design the wrapper device is the parent of the
> SE, I should have seen that 8bc529b25354 was the beginning of a game of
> whac-a-mole circumventing this design. Sorry for not spotting this
> earlier.
> 
> But if this is the one whack left to get the thing to boot then I think
> we should merge it.
> 

Agreed.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
