Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCF2BDEFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 15:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:From:To:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIAg8mreS9AC+sDe1M3CEn/2SwDFeIiyPNIBpx1+PFo=; b=euUYljvzsx05TW
	i6zfqr0696bBpDeS1j/iSfcl9pjn2r6x3up5dzCrQAAY6ceRf76jr9b14dBJS4yirqQ8yA87QduKF
	95BaDl+wYojhp6DIKRFGo3OpakuyCOdBL3X5AVIgX0dcBXfAD/NY2nN52CJ42xhwerre9vfnOkMNk
	3hQeuynMbdvxBS1/b2knC3aZYbrJv/lHKNKv4/nBHAu30pCdioq0iy/CLLxKoTM+RBmV+I7iI2ZIp
	BYHRl9d+0VWyli320Mlr0acsKIahMlLBrzDJgcxyH9nZAXcx33vRnxb2g9LHEqbR1W/9WXNqCjgZB
	dWqL8Vlg7IRjoOrMCgtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD7M9-0000rX-K5; Wed, 25 Sep 2019 13:29:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD7Le-0000qB-Sr
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 13:28:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id o10so128536pgs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 06:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:to:from:subject:user-agent:date;
 bh=7Qtpz8pP6Xtu5hQMQ/OiLIkOhJi8maiQgK4EToDIyWo=;
 b=hVpA5j2jkOlUR1iZj0yYcJSI/3wijEBgu5VEoQl7T6aKe26hhNP35ZCbaju9c2MrkK
 mqw6fvaSnImSH61s1jS6oKzkUazLpBpwO09F+fslKYjNG8rs2hnfdqonQSXsrHoTBhY7
 P6Q5ISOKhcmaxqLIV8gsrLUT2FTrF3icZpIcQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:to:from:subject
 :user-agent:date;
 bh=7Qtpz8pP6Xtu5hQMQ/OiLIkOhJi8maiQgK4EToDIyWo=;
 b=mKHcUC7ndgCC800R28r9Hpq9wht9szthW+xT0eczjDWTAUwRFE4S/QndTZcRlznIoN
 X58QhdwoNH4tVD6dpn+q19ie2b4aGx0bECrx/C7KSn1GgcU0oFy6NsjHBk71faiCM28p
 E5KVUD7/CI32Wmiop/MbH1jOeVRZn+0WFBkDN+1FTYN4cbqw3ySmZ1+G2rFE+Z2LZ5R6
 CT7M5hhwxeAP+ih2y2aCqEBo9OaBu2qik+AwPB4CXE4UQ2BLDBSUS3L6FGON3pN7zeMe
 8lJG406ZTHMvsBwNFk6VbVVHbBWkkEAYsEUKAPvlgtrtc5OeyPmwhJFh5hjaP3rcF0ga
 q3GQ==
X-Gm-Message-State: APjAAAWWoQzdbV4+ZEH1e8j/qWB+9xMJzNr1tDLJnF1X7mPWhGfHdmCv
 eAUAA8crJS/7Z6eG8Mec4Nta5XWunlk=
X-Google-Smtp-Source: APXvYqwuTDywmZkXR49l0QQyuPDwUOxcYvZ2qEuCze7dUJp0lEXUsMF+xad0MMk/74xUr8QHQOF1Pw==
X-Received: by 2002:a62:27c3:: with SMTP id n186mr9544535pfn.58.1569418124305; 
 Wed, 25 Sep 2019 06:28:44 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id c1sm4606591pfb.135.2019.09.25.06.28.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 06:28:43 -0700 (PDT)
Message-ID: <5d8b6b8b.1c69fb81.14b36.c053@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190925055933.GA2810@tuxbook-pro>
References: <20190925054133.206992-1-swboyd@chromium.org>
 <20190925055933.GA2810@tuxbook-pro>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [RFC PATCH] interconnect: Replace of_icc_get() with icc_get() and
 reduce DT binding
User-Agent: alot/0.8.1
Date: Wed, 25 Sep 2019 06:28:42 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_062850_939074_054DFE07 
X-CRM114-Status: GOOD (  36.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, David Dai <daidavid1@codeaurora.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Evan Green <evgreen@chromium.org>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Bjorn Andersson (2019-09-24 22:59:33)
> On Tue 24 Sep 22:41 PDT 2019, Stephen Boyd wrote:
> 
> > The DT binding could also be simplified somewhat. Currently a path needs
> > to be specified in DT for each and every use case that is possible for a
> > device to want. Typically the path is to memory, which looks to be
> > reserved for in the binding with the "dma-mem" named path, but sometimes
> > the path is from a device to the CPU or more generically from a device
> > to another device which could be a CPU, cache, DMA master, or another
> > device if some sort of DMA to DMA scenario is happening. Let's remove
> > the pair part of the binding so that we just list out a device's
> > possible endpoints on the bus or busses that it's connected to.
> > 
> > If the kernel wants to figure out what the path is to memory or the CPU
> > or a cache or something else it should be able to do that by finding the
> > node for the "destination" endpoint, extracting that node's
> > "interconnects" property, and deriving the path in software. For
> > example, we shouldn't need to write out each use case path by path in DT
> > for each endpoint node that wants to set a bandwidth to memory. We
> > should just be able to indicate what endpoint(s) a device sits on based
> > on the interconnect provider in the system and then walk the various
> > interconnects to find the path from that source endpoint to the
> > destination endpoint.
> > 
> 
> But doesn't this implies that the other end of the path is always some
> specific node, e.g. DDR? With a single node how would you describe
> CPU->LLCC or GPU->OCIMEM?

By only specifying the endpoint the device uses it describes what the
hardware block interfaces with. It doesn't imply that there's only one
other end of the path. It implies that the paths should be discoverable
by walking the interconnect graph given some source device node and
target device node. In most cases the target device node will be a DDR
controller node, but sometimes it could be LLCC or OCIMEM. We may need
to add some sort of "get the DDR controller device" API or work it into
the interconnect API somehow to indicate what target endpoint is
desired. By not listing all those paths in DT we gain flexibility to add
more paths later on without having to update or tweak DT to describe
more paths/routes through the interconnect.

> 
> > Obviously this patch doesn't compile but I'm sending it out to start
> > this discussion so we don't get stuck on the binding or the kernel APIs
> > for a long time. It looks like we should be OK in terms of backwards
> > compatibility because we can just ignore the second element in an old
> > binding, but maybe we'll want to describe paths in different directions
> > (e.g. the path from the CPU to the SD controller may be different than
> > the path the SD controller takes to the CPU) and that may require
> > extending interconnect-names to indicate what direction/sort of path it
> > is. I'm basically thinking about master vs. slave ports in AXI land.
> > 
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: <linux-pm@vger.kernel.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: <devicetree@vger.kernel.org>
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Evan Green <evgreen@chromium.org>
> > Cc: David Dai <daidavid1@codeaurora.org>
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> > ---
> >  .../bindings/interconnect/interconnect.txt    | 19 ++++---------------
> >  include/linux/interconnect.h                  | 13 ++-----------
> >  2 files changed, 6 insertions(+), 26 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/interconnect/interconnect.txt b/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > index 6f5d23a605b7..f8979186b8a7 100644
> > --- a/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > +++ b/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > @@ -11,7 +11,7 @@ The interconnect provider binding is intended to represent the interconnect
> >  controllers in the system. Each provider registers a set of interconnect
> >  nodes, which expose the interconnect related capabilities of the interconnect
> >  to consumer drivers. These capabilities can be throughput, latency, priority
> > -etc. The consumer drivers set constraints on interconnect path (or endpoints)
> > +etc. The consumer drivers set constraints on interconnect paths (or endpoints)
> >  depending on the use case. Interconnect providers can also be interconnect
> >  consumers, such as in the case where two network-on-chip fabrics interface
> >  directly.
> > @@ -42,23 +42,12 @@ multiple paths from different providers depending on use case and the
> >  components it has to interact with.
> >  
> >  Required properties:
> > -interconnects : Pairs of phandles and interconnect provider specifier to denote
> > -             the edge source and destination ports of the interconnect path.
> > -
> > -Optional properties:
> > -interconnect-names : List of interconnect path name strings sorted in the same
> > -                  order as the interconnects property. Consumers drivers will use
> > -                  interconnect-names to match interconnect paths with interconnect
> > -                  specifier pairs.
> > -
> > -                     Reserved interconnect names:
> > -                      * dma-mem: Path from the device to the main memory of
> > -                                 the system
> > +interconnects : phandle and interconnect provider specifier to denote
> > +             the edge source for this node.
> >  
> >  Example:
> >  
> >       sdhci@7864000 {
> >               ...
> > -             interconnects = <&pnoc MASTER_SDCC_1 &bimc SLAVE_EBI_CH0>;
> > -             interconnect-names = "sdhc-mem";
> > +             interconnects = <&pnoc MASTER_SDCC_1>;
> 
> This example seems incomplete, as it doesn't describe the path between
> CPU and the config space, with this in place I think you need the
> interconnect-names.
> 
> 
> But with a single interconnect, the interconnect-names should be
> omitted, as done in other frameworks.
> 

Sure, no names makes sense when it's just one path.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
