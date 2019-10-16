Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EE4D9BC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:To:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPv+4QHb87WzUmjcceVOaAFwazxoum1xBIsO9CoE0EU=; b=FSgVNVZauzxXVi
	J0jgPxq9CEUFF/bWBYTAEXZPW0Y1D4cUWzgfemHe4HkQ9fSyR+1TJ2yWxurhED8AxlGlx9CzBSzZH
	5YRjyhLBqwgcnvS1fFee97CWdt+Ka2RerDWtTtjRtv8PO0+cIwFqRaQQwub4LspSOAG4ehjUFiK/x
	AMVddcraMBfZWKYbmEgSRuj1XBCuQr+UiFuGUZSl0ULIJ2tSSLchfDf6K25AxVSniS4lFowiL1fBn
	KLGKBwIqmJmRHh/t5DIDXexeccWwNr3tk+zShB+mmUEiudl1viKpkH1Nr2Fy0VIshjUtOMUL/yxZt
	nCyabdFZZgojB4ROHWBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKprY-0006Lt-Fm; Wed, 16 Oct 2019 20:25:40 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpp4-0002W5-It
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:23:21 +0000
Received: by mail-pg1-x541.google.com with SMTP id f14so9834947pgi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:from:to:cc:subject:user-agent:date;
 bh=Qrm1NvsXrsFrJaiaktnNZJoOxKRyRjdaoTo5U5Izuk8=;
 b=Ahh+DqSyKQU4I8H524JcL1PIUJqZCf9a35VJVicjcCCqn06nJAx24r1keCachP6WYS
 fk1t2w6sSlc2muk8MBj7Olqfe3BNATOJBd6R7srgvDSqvC26FQO6rIpRWqZRIGN/9neN
 7JZadWQ29Ssk8xRdKOzc/YlYYSJ/1raV59+DU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:from:to:cc:subject
 :user-agent:date;
 bh=Qrm1NvsXrsFrJaiaktnNZJoOxKRyRjdaoTo5U5Izuk8=;
 b=dKh7KRCx3lm37uD4LqAJVezZmvqP82T9cQTy8b2/Lbo0G5G4RHLsF45UWQQ5mjGdVM
 XNsFBoWscmi5RVB8RiixuLDJIMqBnG57MiDG5VM0bMvVqDW5lFqI5+XfgGE2kzqtibJZ
 Tkmi/C4VHqE0yD7bkvJ4mLCkX2ZxRIjqjJXOmrrFzkpG2yZPNa/kHSX1RuK7K9KZ4eEg
 gCJUmJGc7WRybwd+HCbIqsbVVUjiICTV42qd64XOBna4JTrj8Q9gUEk+DSffJvhu+i+Z
 50BPE7SyscWzG5te/fwKadK+09FnBIuQVIE8x4zMdR2j8WhoFOMRagIuFbzAUIK06v2m
 sjUA==
X-Gm-Message-State: APjAAAW+xb5Gd97k0xjEJogzxjqDP8SrA+NUMEwrV/YDlUPlCmHqoq74
 FYLPMQGFVzjfSLWTQELWBCrfiw==
X-Google-Smtp-Source: APXvYqyYjQEWTnhtfIJtx+HVP/qsBdKLByhTQ5WcY+ad6SCiP1cjGC6S1RKDWb2/HMy0APgi43ph6w==
X-Received: by 2002:a62:a104:: with SMTP id b4mr35615699pff.239.1571257384523; 
 Wed, 16 Oct 2019 13:23:04 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id p68sm33732397pfp.9.2019.10.16.13.23.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:23:03 -0700 (PDT)
Message-ID: <5da77c27.1c69fb81.b45e2.8b99@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20191009001159.27761-1-saravanak@google.com>
References: <5d978bf9.1c69fb81.7b927.b6ac@mx.google.com>
 <20191009001159.27761-1-saravanak@google.com>
From: Stephen Boyd <swboyd@chromium.org>
To: Saravana Kannan <saravanak@google.com>
Subject: Re: [RFC PATCH] interconnect: Replace of_icc_get() with icc_get() and
 reduce DT binding
User-Agent: alot/0.8.1
Date: Wed, 16 Oct 2019 13:23:02 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_132306_772753_1E140877 
X-CRM114-Status: GOOD (  32.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: devicetree@vger.kernel.org, saravanak@google.com, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, daidavid1@codeaurora.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, bjorn.andersson@linaro.org,
 robh+dt@kernel.org, mripard@kernel.org, kernel-team@android.com,
 georgi.djakov@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Saravana Kannan (2019-10-08 17:11:59)
> Quoting Stephen Boyd:
> > The property would describe what's going to this device and how it's
> > integrated into the SoC. This is similar to how we describe what port is
> > connected to a device with the of graph binding or how we only list the
> > clk or regulator that goes to a device and not the whole path to the
> > root of the respective tree.
> > 
> > There can be a driver API that gets these port numbers out and
> > constructs a path to another struct device or struct device_node. I
> > imagine that 90% of the time a driver is going to request some bandwidth
> > from their master port (or ports) to the DDR controller. We could either
> > make the DDR controller a device that can be globally acquired or
> > integrate it deeply into the API to the point that it looks for a DDR
> > controller somewhere or relies on interconnect providers to tell the
> > framework about the controller.
> > 
> > TL;DR is that I don't want to have to specify paths in each and every
> > node to say that some port on this device here is connected to some port
> > on the DDR controller and that we want to adjust the bandwidth or QoS
> > across this path. I'd like to describe a device "hermetically" by
> > listing out the ports the device has. Then we can rely on the OS to
> > figure out what paths to construct and change. If we need to constrain
> > or tweak those paths then we can do that with the existing interconnects
> > binding, but let's worry about that when we get there.
> 
> I think I understand what you are trying to do here. Correct me if my
> understanding is wrong. Each device just lists what interconnects (and their
> ports) it's connected to -- let's call this device endpoints.

Yes this is the ideal case.

> 
> If a device is making bandwidth votes from itself to some other device, it just
> specifies the other end point (as a device? path name?) in icc_get(). The
> interconnect framework can then figure out what two interconnect ports the
> icc_get() is about (by looking at the device endpoints info) and then construct
> the path.
> 
> But it's not clear how you'll handle the case where a Device-A wants to make a
> bandwidth vote from a Device-B to Device-C. This is necessary for multiple
> scenarios. Eg: booting a remote proc where the CPU needs to make sure the
> remote proc has its path to DDR active. icc_get() can't always assume the
> source is the device making the request. So, I don't think you can omit the
> source of the path in the DT binding.

This is one scenario, not various scenarios. For a remote proc why
wouldn't we list the endpoint for the remote processor in the remote
proc node in DT? That makes sense to me so I'm not following this
scenario.

> 
> If we take the above into account, would the only change in your proposal be to
> list the source and destination device in DT instead of their interconnect and
> ports?  I don't have a strong opinion on whether this is necessary, but want to
> make sure that we are all talking about the same thing.

What does this mean? I would assume that if device A is using another
device B, either that would be expressed in DT via a phandle property or
userspace would be connecting the two devices up with each other with
something like dma_buf so the driver would know the other side of the
path they want to scale bandwidth on.

> 
> Another way to look at this: There's one crucial difference between clocks and
> interconnects. Given a clock controller and it's "output port", the clock that
> you referring to doesn't change irrespective of what device is asking for it.
> But in the case of an interconnect, if you specify just a destination
> interconnect and it's port, the path that you are referring to changes based on
> which device is requesting it. And if you want a device independent of
> referring to a path, you need to specify the source and destination explicitly.

Yes but those are use-cases that don't need to be expressed in DT. We
should be able to get by with just listing the endpoints and then build
the layer in the kernel to get the other side of the endpoint if it's
something like DDR or another device that we want to connect the
endpoint to.

> 
> Also, if a firmware isn't used, how do you see your icc_get() proposal working
> with just the "name"? In what way is it better than the current icc_get() API?

If there isn't firmware and we're using platform data then I imagine we
would have to have data tables listing out the endpoints of various
devices, endpoint names, and the device names associated with those
endpoints so we could match them up in the framework.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
