Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029AC1C69F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjgAPSc1JNtq4i5hnpoV4Z+WLH1+73vFfqcbNPk9teY=; b=j/WdVtfzT3xg1i
	Lah6BmInZA4om5rxPesUoWuKzxgyytP92fUqlNXukele7AxLFQJ/BPL7BtpuNEb+s7mG4WGNvVKyw
	CZSksdw1E/AewLTa9C3hiRGjFtzXaNd7kdmGi+0OjCNBCrsou2Mz1wnAoOuQEFIAnMeuxhCnOS7YQ
	ClfMHTuP27OgWwsKk4xNG6sTzLTYr4LuhNH2dB/CAbofX9QzzlZQkx5XJRJ91IEQlbh5A53BX70Pk
	qo9wanzG6FmtKnwKA0/sQ0DWxAKg/yjrq4VRiZ+WBdYDyW8m8oBQ923h+QqcytHW5aEdspdD5Bysl
	xaOysdRR0NhUbWx3EP/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWENl-0002JG-9g; Wed, 06 May 2020 07:22:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWENe-0002Il-HV
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 07:22:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 7BD4E2A0D06
Date: Wed, 6 May 2020 09:21:55 +0200
From: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
Subject: Re: [RFC PATCH] dt-bindings: display: ti,tfp410.txt: convert to yaml
Message-ID: <20200506072155.6dmj35zdnr3to5ib@rcn-XPS-13-9360>
Mail-Followup-To: Tomi Valkeinen <tomi.valkeinen@ti.com>, robh+dt@kernel.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net
References: <20200428092048.14939-1-ricardo.canuelo@collabora.com>
 <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e377c73-25a3-a7b3-0604-41c54d70039e@ti.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_002210_712228_AC1124D3 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomi, thanks for reviewing the patch.

On mar 28-04-2020 12:49:28, Tomi Valkeinen wrote: 
> I don't quite understand this. We cannot have negative numbers in dts files?
> Or we can, but dt_binding_check doesn't handle them correctly? Or that int32
> is not supported in yaml bindings?

AFAICT, you can have negative numbers in dts files (see [1] and [2]) and
the DT schema certainly supports signed integers, but dt_binding_check
seems to interpret all cells as unsigned 32bit integers because that's
what they are, really. In kernel code this is not a problem because you
can cast the value back to a signed int before you run your own sanity
checks on them.

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2013-April/159682.html
[2] http://lists.infradead.org/pipermail/linux-arm-kernel/2013-April/159681.html

Cheers,
Ricardo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
