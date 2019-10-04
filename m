Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8B5CC260
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 20:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIT2yz51abiE0sqQRP0kCZJvoj8aMOzu8tHLP5jRUeg=; b=s/RSA9T2jQ5BXJ
	T9mGRzwpKd3+GsuKRqYKrvhSrf0Ig34rkboDhAwkJYncAYyfhRWwRlPvxmeJPy6StVdKEyn1N5KsL
	A/Bwr81nQsSUo7m4wxTCh2crDTbpqPkcgWFIqahqFqRseofqpKEcsxlzqyx9araB5vuS3SXkkvCEi
	W1+Xx1BWAYF0WKSWcfb+LIkmSMUUeU116f4Xoc9T7aZXczrALxyjXaxQnVYhcFQzcKQ7R48wdf5bw
	vPsByYHsLgowIvpF0z3/rKbUms+Y1jZ9RO9K8pJuJmTRshyLp6xtzhC0oojF5g2dtqJu9qbtXe0cF
	z7oLXkniYuGtsx/Zdlmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGS60-0004l4-7g; Fri, 04 Oct 2019 18:14:28 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGS5r-0004kZ-IC
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 18:14:21 +0000
Received: by mail-pg1-x543.google.com with SMTP id 23so4203810pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 11:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:from:to:cc:subject:user-agent:date;
 bh=0IDOtQgHmElD8p5B2w+YjcptWdtlf5vVNP5fCQ18Cjw=;
 b=jSQrChLhcmVVMxN2vgpR1Q4UdZbgBNU+3E5G58XTneDBys4wlfUOE/GPLXVR6uhnZL
 C1ui8JAyehI+IdvfyllS9IV1T4aFagv+PAyy04d/FQwIS16exf2GNN1UZFS5Jb3XLE6c
 mrYnztcJZlAuKjskuh33FNmaFjfevzrjGaS1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:from:to:cc:subject
 :user-agent:date;
 bh=0IDOtQgHmElD8p5B2w+YjcptWdtlf5vVNP5fCQ18Cjw=;
 b=K2LFkoudHTl99RFto34fbyCne9kWw386JrF3BUArLwLmbOCoNXvK//9Lr0FtOHAY2u
 DZA3bdHEukTHRUzMTj18m6P+LlqHyNNWc009xpsi6ijLYPhKnoE/Q51rruuNR3Wj4QnT
 sp/w0pz7BKRxRxF1ZFEXC04g6ngxkGzJX9JnG5KtZ7iKH+7ZB0bvDiDFjzeUvaJM73o+
 ycCmGYcOXjPEhQ9hBE5Zkk5hY7wnRCn/DLZ4wJBgpDXqU6rEOZ+ahwCJ2ZfGTc14UL1R
 0PyylBibZ0nDy8INaDpQY4OSB28XZWvb+O2so3kCAn4eonMMNrdRWKGpikaopnzmAG8D
 XRnQ==
X-Gm-Message-State: APjAAAX+CIJ+KIfC3vbdnt4LS+1cZH24ac3qAHE+OITFGODV5/rgnqO0
 cULf3/+yHpR0j2RM3bc6CGs7+w==
X-Google-Smtp-Source: APXvYqzXmG1bMyrx+EgqINn91jy469r0K12/xfrx1x9Ey0oZZUEtP/hNvIYFYGlkN+MklxIFvSurxQ==
X-Received: by 2002:a62:62c6:: with SMTP id
 w189mr18679300pfb.235.1570212858215; 
 Fri, 04 Oct 2019 11:14:18 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id i6sm10089700pfq.20.2019.10.04.11.14.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:14:17 -0700 (PDT)
Message-ID: <5d978bf9.1c69fb81.7b927.b6ac@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <91d09847-31ad-e238-d84d-f7e0e21c6ef1@codeaurora.org>
References: <20190925054133.206992-1-swboyd@chromium.org>
 <20190925055933.GA2810@tuxbook-pro>
 <5d8b6b8b.1c69fb81.14b36.c053@mx.google.com>
 <91d09847-31ad-e238-d84d-f7e0e21c6ef1@codeaurora.org>
From: Stephen Boyd <swboyd@chromium.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Dai <daidavid1@codeaurora.org>
Subject: Re: [RFC PATCH] interconnect: Replace of_icc_get() with icc_get() and
 reduce DT binding
User-Agent: alot/0.8.1
Date: Fri, 04 Oct 2019 11:14:16 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_111419_628555_B8E67D54 
X-CRM114-Status: GOOD (  32.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Evan Green <evgreen@chromium.org>, Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting David Dai (2019-09-27 10:16:07)
> 
> On 9/25/2019 6:28 AM, Stephen Boyd wrote:
> > Quoting Bjorn Andersson (2019-09-24 22:59:33)
> >> On Tue 24 Sep 22:41 PDT 2019, Stephen Boyd wrote:
> >>
> >>> The DT binding could also be simplified somewhat. Currently a path needs
> >>> to be specified in DT for each and every use case that is possible for a
> >>> device to want. Typically the path is to memory, which looks to be
> >>> reserved for in the binding with the "dma-mem" named path, but sometimes
> >>> the path is from a device to the CPU or more generically from a device
> >>> to another device which could be a CPU, cache, DMA master, or another
> >>> device if some sort of DMA to DMA scenario is happening. Let's remove
> >>> the pair part of the binding so that we just list out a device's
> >>> possible endpoints on the bus or busses that it's connected to.
> >>>
> >>> If the kernel wants to figure out what the path is to memory or the CPU
> >>> or a cache or something else it should be able to do that by finding the
> >>> node for the "destination" endpoint, extracting that node's
> >>> "interconnects" property, and deriving the path in software. For
> >>> example, we shouldn't need to write out each use case path by path in DT
> >>> for each endpoint node that wants to set a bandwidth to memory. We
> >>> should just be able to indicate what endpoint(s) a device sits on based
> >>> on the interconnect provider in the system and then walk the various
> >>> interconnects to find the path from that source endpoint to the
> >>> destination endpoint.
> >>>
> >> But doesn't this implies that the other end of the path is always some
> >> specific node, e.g. DDR? With a single node how would you describe
> >> CPU->LLCC or GPU->OCIMEM?
> > By only specifying the endpoint the device uses it describes what the
> > hardware block interfaces with. It doesn't imply that there's only one
> > other end of the path. It implies that the paths should be discoverable
> > by walking the interconnect graph given some source device node and
> > target device node. In most cases the target device node will be a DDR
> > controller node, but sometimes it could be LLCC or OCIMEM. We may need
> > to add some sort of "get the DDR controller device" API or work it into
> > the interconnect API somehow to indicate what target endpoint is
> > desired. By not listing all those paths in DT we gain flexibility to add
> > more paths later on without having to update or tweak DT to describe
> > more paths/routes through the interconnect.
> 
> 
> I'm unsure that using the target device node or target source device is 
> the correct way to represent the constraints that the consumers apply on 
> the interconnects. While it's true the traffic is intended for the 
> targeted devices, the constraints(QoS or BW) are for the interconnect or 
> specifically the paths that span across the ports of various 
> interconnects(NoC devices in this case). I think having both src and dst 
> properties is still the simplest way to achieve the flexibility that we 
> require to set the constraints for ports(that may not have a target 
> device defined in DT or exists as some intermediate port across multiple 
> interconnects).
> 

The need for paths described in DT may make sense for certain cases but
that seems to be the minority. My guess is that maybe an OPP binding
would need to describe the path to apply the bandwidth to. Otherwise I
don't see what the need is for. Maybe you can list out more scenarios?

Either way, the binding has been designed to cover all the possibilities
by just saying that we have to describe at least two points for an
'interconnect'. It is a path based binding. I'd rather see us have an
endpoint based binding with the option to fallback to paths if we need
to constrain something. Maybe this can be a new property that is used
the majority of the time?

 gpu@f00 {
   interconnect-endpoints = <&icc GPU_SLAVE_PORT>, <&icc GPU_MASTER_PORT0>, <&icc GPU_MASTER_PORT1>;
   interconnect-endpoint-names = "slave", "master0", "master1";
 };

(Or we can invert it and make interconnect-paths be non-standard)

The property would describe what's going to this device and how it's
integrated into the SoC. This is similar to how we describe what port is
connected to a device with the of graph binding or how we only list the
clk or regulator that goes to a device and not the whole path to the
root of the respective tree.

There can be a driver API that gets these port numbers out and
constructs a path to another struct device or struct device_node. I
imagine that 90% of the time a driver is going to request some bandwidth
from their master port (or ports) to the DDR controller. We could either
make the DDR controller a device that can be globally acquired or
integrate it deeply into the API to the point that it looks for a DDR
controller somewhere or relies on interconnect providers to tell the
framework about the controller.

TL;DR is that I don't want to have to specify paths in each and every
node to say that some port on this device here is connected to some port
on the DDR controller and that we want to adjust the bandwidth or QoS
across this path. I'd like to describe a device "hermetically" by
listing out the ports the device has. Then we can rely on the OS to
figure out what paths to construct and change. If we need to constrain
or tweak those paths then we can do that with the existing interconnects
binding, but let's worry about that when we get there.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
