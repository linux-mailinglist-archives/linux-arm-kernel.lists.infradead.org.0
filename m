Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BE5D04A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 02:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lg09TOmBytYhXeM4Oe4OOQPBA4N550SAgxo+po4QaU0=; b=lOxVE2WHlB9j9u
	nV1YaoJQXnbpyk+03aOOzZOMilWj9/e86rSdlj07Yr0MouFjRk7WPlHAqF7XlzVP5XzXaWqK6Ito0
	eAuVRnT38kjvpX32uy7gTzZCZF0pabx6dHZqXvUNVZ1v8aKa0uSWEdT9r+YDfWk/EfodzYeO+CHGm
	IlhL0FVbYk26cMcD5XSM4aJPlkgYCit4Wcy9Ev7e3dg3i9o5ZUD3TDVwUlDAfGJNp5amCjX9x9JPN
	6SZWpx1XQH+qwUtsubNDFDleWZ016oPL5Tb6SebnQnNH+ivygg+ytyKzvmwHoN8gktO19zA69vo85
	8uL2Nz0WW8YcQ0Bj2LTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHzaS-0004a1-JT; Wed, 09 Oct 2019 00:12:16 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHzaK-0004Z9-IG
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 00:12:10 +0000
Received: by mail-pf1-x449.google.com with SMTP id r19so472502pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 17:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=cNdhJyeG5GjZBd+aVbSImZd8WSDzEG5SHRL3gOPr830=;
 b=C2B+kKRxBmnboQ58DGVk4sq36JsCS6eLlr5yxMvcDGkQZQqR36FuEpUVDnKLBBTFhE
 2n8g2QXfc+4VQuaAgjo7mnb+mp3sjeNBCpuWXtwDkxo/p6x35jVJvdh8V12H7TUfCB6D
 CPurcGcVqslBeikqXcPleaeTfgH5rwnaVguteREmCA/AlarppMrGoUvTAeHpkLi+uUFV
 G/IEp2UiRc+4vnOP67GMbZb83jOxDKBxIfnJQoPmXwIbU4jgB9XRHTDGAgPCOUm+sOHx
 r5X0J/CPVhHhaFXfd9rqqgUjIts5xjH4nkb7F+KiXeF8iaDO7BFMefxUWl7Ey4jYm7+U
 1oaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=cNdhJyeG5GjZBd+aVbSImZd8WSDzEG5SHRL3gOPr830=;
 b=RIfxyKe5pUNVasd9SeNehcgUUEC86Y2YQ2a/cDHz5WgzsEcihzYzOVtbfNb6wQkVO4
 ejR3Qkoc7HtkSJJWumoQdtZXWw7c/gTBCIPt7k9Y9ITQejlwpTE3LphT34NKemsuDU3X
 pgp4Gff3NuOVqUGwaUO6T4oRPloOeFvCSR82OxpWbzr1ibkF72vS598ck/IiykD4mwsT
 L6RmlYAUw0ymPFtqHZA3r/YTsNgYC3KysaV9YvrYrCImWb3WveryZ0Dw20twc8H7V71l
 O2gK1JtltriC6QGKoXy/V/pE+stCR4LFm2S7DbRlmvjL1WPMSrdu+UYSymTAyPRuNgDQ
 wfrw==
X-Gm-Message-State: APjAAAVjWN3tRJvMEoZKGFxAxyXjkvfvnY1roKMcNVYUDG1DdmHxYiY/
 16FsfjQlCLxKe4RD84cMspNk6CJJcMpby40=
X-Google-Smtp-Source: APXvYqzUwAUJ7ef6Z4sewmUfC6phFFrRCVw1qdTo+qrXYj7G3r0BMPlJ4k5A3b/HEGwE1y+5rQc91D/hZAbEt9Q=
X-Received: by 2002:a63:1609:: with SMTP id w9mr1270591pgl.184.1570579924013; 
 Tue, 08 Oct 2019 17:12:04 -0700 (PDT)
Date: Tue,  8 Oct 2019 17:11:59 -0700
In-Reply-To: <5d978bf9.1c69fb81.7b927.b6ac@mx.google.com>
Message-Id: <20191009001159.27761-1-saravanak@google.com>
Mime-Version: 1.0
References: <5d978bf9.1c69fb81.7b927.b6ac@mx.google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [RFC PATCH] interconnect: Replace of_icc_get() with icc_get() and
 reduce DT binding
From: Saravana Kannan <saravanak@google.com>
To: swboyd@chromium.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_171208_604118_E802A832 
X-CRM114-Status: GOOD (  41.72  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: devicetree@vger.kernel.org, saravanak@google.com, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, daidavid1@codeaurora.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, bjorn.andersson@linaro.org,
 robh+dt@kernel.org, mripard@kernel.org, kernel-team@android.com,
 georgi.djakov@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Stephen Boyd:
> Quoting David Dai (2019-09-27 10:16:07)
> > On 9/25/2019 6:28 AM, Stephen Boyd wrote:
> > > Quoting Bjorn Andersson (2019-09-24 22:59:33)
> > >> On Tue 24 Sep 22:41 PDT 2019, Stephen Boyd wrote:
> > >>
> > >>> The DT binding could also be simplified somewhat. Currently a path needs
> > >>> to be specified in DT for each and every use case that is possible for a
> > >>> device to want. Typically the path is to memory, which looks to be
> > >>> reserved for in the binding with the "dma-mem" named path, but sometimes
> > >>> the path is from a device to the CPU or more generically from a device
> > >>> to another device which could be a CPU, cache, DMA master, or another
> > >>> device if some sort of DMA to DMA scenario is happening. Let's remove
> > >>> the pair part of the binding so that we just list out a device's
> > >>> possible endpoints on the bus or busses that it's connected to.
> > >>>
> > >>> If the kernel wants to figure out what the path is to memory or the CPU
> > >>> or a cache or something else it should be able to do that by finding the
> > >>> node for the "destination" endpoint, extracting that node's
> > >>> "interconnects" property, and deriving the path in software. For
> > >>> example, we shouldn't need to write out each use case path by path in DT
> > >>> for each endpoint node that wants to set a bandwidth to memory. We
> > >>> should just be able to indicate what endpoint(s) a device sits on based
> > >>> on the interconnect provider in the system and then walk the various
> > >>> interconnects to find the path from that source endpoint to the
> > >>> destination endpoint.
> > >>>
> > >> But doesn't this implies that the other end of the path is always some
> > >> specific node, e.g. DDR? With a single node how would you describe
> > >> CPU->LLCC or GPU->OCIMEM?
> > > By only specifying the endpoint the device uses it describes what the
> > > hardware block interfaces with. It doesn't imply that there's only one
> > > other end of the path. It implies that the paths should be discoverable
> > > by walking the interconnect graph given some source device node and
> > > target device node. In most cases the target device node will be a DDR
> > > controller node, but sometimes it could be LLCC or OCIMEM. We may need
> > > to add some sort of "get the DDR controller device" API or work it into
> > > the interconnect API somehow to indicate what target endpoint is
> > > desired. By not listing all those paths in DT we gain flexibility to add
> > > more paths later on without having to update or tweak DT to describe
> > > more paths/routes through the interconnect.
> >
> >
> > I'm unsure that using the target device node or target source device is
> > the correct way to represent the constraints that the consumers apply on
> > the interconnects. While it's true the traffic is intended for the
> > targeted devices, the constraints(QoS or BW) are for the interconnect or 
> > specifically the paths that span across the ports of various
> > interconnects(NoC devices in this case). I think having both src and dst 
> > properties is still the simplest way to achieve the flexibility that we
> > require to set the constraints for ports(that may not have a target
> > device defined in DT or exists as some intermediate port across multiple 
> > interconnects).
> 
> 
> The need for paths described in DT may make sense for certain cases but
> that seems to be the minority. My guess is that maybe an OPP binding
> would need to describe the path to apply the bandwidth to. Otherwise I
> don't see what the need is for. Maybe you can list out more scenarios?
> 
> Either way, the binding has been designed to cover all the possibilities
> by just saying that we have to describe at least two points for an
> 'interconnect'. It is a path based binding. I'd rather see us have an
> endpoint based binding with the option to fallback to paths if we need
> to constrain something. Maybe this can be a new property that is used
> the majority of the time?
> 
> gpu@f00 {
>   interconnect-endpoints =3D <&icc GPU_SLAVE_PORT>, <&icc GPU_MASTER_PORT0>, <&icc GPU_MASTER_PORT1>;
>   interconnect-endpoint-names =3D "slave", "master0", "master1";
> };
> 
> (Or we can invert it and make interconnect-paths be non-standard)
> 
> The property would describe what's going to this device and how it's
> integrated into the SoC. This is similar to how we describe what port is
> connected to a device with the of graph binding or how we only list the
> clk or regulator that goes to a device and not the whole path to the
> root of the respective tree.
> 
> There can be a driver API that gets these port numbers out and
> constructs a path to another struct device or struct device_node. I
> imagine that 90% of the time a driver is going to request some bandwidth
> from their master port (or ports) to the DDR controller. We could either
> make the DDR controller a device that can be globally acquired or
> integrate it deeply into the API to the point that it looks for a DDR
> controller somewhere or relies on interconnect providers to tell the
> framework about the controller.
> 
> TL;DR is that I don't want to have to specify paths in each and every
> node to say that some port on this device here is connected to some port
> on the DDR controller and that we want to adjust the bandwidth or QoS
> across this path. I'd like to describe a device "hermetically" by
> listing out the ports the device has. Then we can rely on the OS to
> figure out what paths to construct and change. If we need to constrain
> or tweak those paths then we can do that with the existing interconnects
> binding, but let's worry about that when we get there.

I think I understand what you are trying to do here. Correct me if my
understanding is wrong. Each device just lists what interconnects (and their
ports) it's connected to -- let's call this device endpoints.

If a device is making bandwidth votes from itself to some other device, it just
specifies the other end point (as a device? path name?) in icc_get(). The
interconnect framework can then figure out what two interconnect ports the
icc_get() is about (by looking at the device endpoints info) and then construct
the path.

But it's not clear how you'll handle the case where a Device-A wants to make a
bandwidth vote from a Device-B to Device-C. This is necessary for multiple
scenarios. Eg: booting a remote proc where the CPU needs to make sure the
remote proc has its path to DDR active. icc_get() can't always assume the
source is the device making the request. So, I don't think you can omit the
source of the path in the DT binding.

If we take the above into account, would the only change in your proposal be to
list the source and destination device in DT instead of their interconnect and
ports?  I don't have a strong opinion on whether this is necessary, but want to
make sure that we are all talking about the same thing.

Another way to look at this: There's one crucial difference between clocks and
interconnects. Given a clock controller and it's "output port", the clock that
you referring to doesn't change irrespective of what device is asking for it.
But in the case of an interconnect, if you specify just a destination
interconnect and it's port, the path that you are referring to changes based on
which device is requesting it. And if you want a device independent of
referring to a path, you need to specify the source and destination explicitly.

Also, if a firmware isn't used, how do you see your icc_get() proposal working
with just the "name"? In what way is it better than the current icc_get() API?

Thanks,
Saravana
P.S: Sorry about any messy quoting/indentation. I'm hand editing the quoting
from the raw email text and using git to send a response.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
