Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 746651BD7AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfBDdyIMlMAHjBjjgxmpIK7fOg9+uLGIDTEDvvTTpmg=; b=KwARctr69H7B5y
	bwTicRuRxhBEv6J23bsQJPmxw77SE1owyJMuhl+JRuujRKenT/GruJzV0OLXEFCdbR1po+AR40rXd
	hmYRDMQ+VprYvxneQlwB2t6diOaHIuUAv+f96tVHO0kt+WvNXdcqTtxqLUJHqYXOQlik5vBroRt3Q
	4rtCpUSPhReoYoxdiSGLf4fkIsQW3pSRJSFDuBPW2o2t7AWk1c590Hszmf5YvwSe7rEpIZjG3dgdf
	cRFuoovoqsQtSsCN3p969diBbT28kARZMunejXwHO1YGtMSoBzEWjx3pTaY+zxOxsB8nI96fqWhmI
	Tc9TN9Ip156HMVVI6JYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTiUd-0007lj-19; Wed, 29 Apr 2020 08:54:59 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiUU-0007ky-Vn
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:54:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 7E19926B66A
Date: Wed, 29 Apr 2020 10:54:45 +0200
From: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
Message-ID: <20200429085445.5g42pouc3jfgwjuv@rcn-XPS-13-9360>
Mail-Followup-To: Sam Ravnborg <sam@ravnborg.org>, robh+dt@kernel.org,
 devicetree@vger.kernel.org, jason@lakedaemon.net,
 dri-devel@lists.freedesktop.org, tomi.valkeinen@ti.com,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <20200428192117.GA13894@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428192117.GA13894@ravnborg.org>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_015451_150502_59BDBFD8 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, robh+dt@kernel.org,
 tomi.valkeinen@ti.com, dri-devel@lists.freedesktop.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On mar 28-04-2020 21:21:17, Sam Ravnborg wrote:
> Hi Ricardo.
> 
> Thanks for looking into this bridge binding.
> Some comments in the following.

Thanks for reviewing it, Sam. I agree with your suggestions, some
comments below:

> Can you define it as an enum like this:
> 
> 	enum: [-4, -3, -2, -1, 0, 1, 2, 3]
> 
> And then maybe in the descrition describe how they map to 0..7.
> The problem is that the binding is an API so we cannot just change
> the interpretation of the value 0 etc.

This is similar to what I wanted to do at first, specifying minimum and
maximum values, but it'd have the same problem with the yaml
checker. See, problem is in the yaml checking itself, the actual
parameter parsing in the driver already works with negative integers.

The issue with this particular property is that:

  - it's vendor specific, so it must have a type definition.

  - the actual value is signed, so the proper type definition to use
    should be a signed integer.

  - but then, if you use a negative value for this it will be cast into
    a very large u32 (that's what cells are, after all) beyond the
    maximum value of a positive int32.

  - Range constraints can't be properly checked either, since any
    negative integer interpreted as unsigned will result in a positive
    number beyond the top end of the value range (3 in this case).

So unless there's a way of making the yaml check process aware of
negative integers, I think the only way to pass the checks is to use
unsigned integers and avoid defining the range constraints.

FWIW, the only other similar case I found (adi,ltc2983.yaml) uses uint64
and no range constraints.

Cheers,
Ricardo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
