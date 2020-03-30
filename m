Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C6619885F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=risT1E81b5qqYjRTmutRBVRide2r+UxBooUV7X+F9X4=; b=W2VTB/WSc10ZkS
	/kHLcsLSYr63lViFvqdetDil0sFo9ypT3OkvnLEPMVwVn6BuO1jk7Tg4ZqyVfXWKeP831I0qpS9/Y
	6NPl91QHSRC8vFxglCwYv650yCGnRKekPqZyfHrnuM76Kvh+XDnh6PpBWBtfPopk4haiXR5E1gcEp
	eRppRGw5ZQdxRbXzh1BDMC2GPdGxvnaosxzVLXQ1J7kszKt7iLVxtVv0iQjtMyqzb9KzUA/T/XYDp
	YXjakcbhwrq+VYv9/3yKGmFKuRNEf1jsiUXtxnib/fhVSM6YSrVx4+Trmlm773Ic6wbgAeq5cLrig
	F7tg5T9YpjZyB7W+hHAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3x5-00019M-2n; Mon, 30 Mar 2020 23:36:19 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3ww-00018l-9I
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 23:36:11 +0000
Received: by mail-il1-f195.google.com with SMTP id n13so10340351ilm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 16:36:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tJ+W7PqwUd2b7HgYvn+6ChbsLdM7I8DUrq+Ppe8N+dY=;
 b=I/dRgq+d7MNn1kA80tBxP+76x+ehxsmidjaRuy5hggYujhd8v/wCztMq9zMn/d/lDT
 7RccMhL4TuDQnfVcnZOe1pojHtbNEgL1exhAaJ1FY2MDFJFFBsAgFCgXoSLvRyHz/iMG
 gJJOKPxapE1HxLNuMKtsm/q65R8UiQr7iVYoFVrp8pcvD7gmPHeICxqjf7Eb3OAZpSX4
 yXNs7vUzBtD7+tGz9WUywKwblXocBsN/smjpq6FC6us9uP20sL767tLFR7B0UVb1SH85
 7uDbDfgpfQVbPCfbRv3HRO7TRt1fQ5+QUOu1qdTqNn4T36FH3O59PmAi8eS7jigHAn8G
 mOnQ==
X-Gm-Message-State: ANhLgQ25Oq8dsuEcY9ZLeK1y8NvooDl1KQWmZ0dQCkF9OHHXHwXPu+z+
 jXWgT2XPd8oXYcj3mHfomw==
X-Google-Smtp-Source: ADFU+vvGVNjMyzziYVF8jnwDOh234bqURGx5XRuXxyEu2xIE/sbpj1Tt2vpIK+1C3hue/9w3VRHeGw==
X-Received: by 2002:a92:774b:: with SMTP id s72mr12999244ilc.61.1585611369386; 
 Mon, 30 Mar 2020 16:36:09 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id o76sm5335923ili.18.2020.03.30.16.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:36:08 -0700 (PDT)
Received: (nullmailer pid 6527 invoked by uid 1000);
 Mon, 30 Mar 2020 23:36:06 -0000
Date: Mon, 30 Mar 2020 17:36:06 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/2 v3] bus: Add DT bindings for Integrator/AP logic
 modules
Message-ID: <20200330233606.GA6429@bogus>
References: <20200320134524.52140-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320134524.52140-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_163610_663975_A8BB2DE5 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Mar 2020 14:45:24 +0100, Linus Walleij wrote:
> This adds YAML device tree bindings for the Integrator/AP
> logic modules. These are plug-in tiles used typically for
> FPGA prototyping.
> 
> Cc: devicetree@vger.kernel.org
> Cc: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v2->v3:
> - Put proper ranges around the addresses managed by the
>   LM bus, 0xc0000000-0xffffffff as
>   <0xc0000000 0xc0000000 0x40000000>
> - Put unit name on the first LM bus bus@c0000000 in the
>   example in the bindings.
> - Drop leading zeroes in the unit names of the devices
>   in the example.
> ChangeLog v1->v2:
> - Fix Logical->Logic spelling error
> - Set generic names for bus and serial
> - Just map the addresses 1:1 and use empty ranges, as the
>   LM's don't really translate the address.
> - Provide proper DMA ranges: the LM modules see the RAM at
>   the system-wide alias @80000000 rather than 1:1.
> - Drop the reg from the bus node (we just need the ranges)
> - Make the regexp for the bus node such that @address is
>   optional, as we don't require any reg on the node
> ---
>  .../bindings/bus/arm,integrator-ap-lm.yaml    | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
