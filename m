Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40CE7FC5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0uJXir9vidTKIcjdVbQn833Qhoc6zDgReBD/uuX3dw=; b=DpvQxjKzdIm1+P
	ecr+G3lTm3/L1hDamUyJQ09rKBuNQpYWeuDhfa//FwGZ3Zx6J83VH+YmcQsBBTLWBop/KgMejWzUz
	n8nzl34jmo6uvaAk5T1EwB8w3iTR1vVcbgX9vW94UtzNAKhtZRo8siU+34JGcPSorWVXm/eJcHWir
	KN/X2yqJS0XNj+mI1YLxQjYN+ksHXrk0nqg3tSKRhlVfIjY+xjik1Vdc77vZIC6k+ufoaViGkjnQU
	VOv6uG8kVs4Q4LPYpBOiHZJ4QRQl3GZDeQw9UIEmk0oi3hysMxQLh7xUeMiaShnTyiLC5bCx9iLiP
	IwLGMVrnlZ37Bnj6SGcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYgz-0005jh-Fs; Fri, 02 Aug 2019 14:38:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htYgt-0005jM-9Z
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:37:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DBC31596;
 Fri,  2 Aug 2019 07:37:54 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F29EA3F575;
 Fri,  2 Aug 2019 07:37:53 -0700 (PDT)
Date: Fri, 2 Aug 2019 15:37:52 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v4 6/6] dt-bindings: arm: coresight: Add support for
 coresight-needs-save-restore
Message-ID: <20190802143751.GP56241@e119886-lin.cambridge.arm.com>
References: <20190730125157.884-1-andrew.murray@arm.com>
 <20190730125157.884-7-andrew.murray@arm.com>
 <9df0eea2-a9bd-3a93-ca51-9c3d2391a1cf@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9df0eea2-a9bd-3a93-ca51-9c3d2391a1cf@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_073755_380191_3C388FDA 
X-CRM114-Status: GOOD (  23.46  )
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
Cc: Al.Grant@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com, coresight@lists.linaro.org,
 leo.yan@linaro.org, Sudeep.Holla@arm.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 11:40:54AM +0100, Suzuki K Poulose wrote:
> Hi Andrew,
> 
> On 30/07/2019 13:51, Andrew Murray wrote:
> > Some coresight components, because of choices made during hardware
> > integration, require their state to be saved and restored across CPU low
> > power states.
> > 
> > The software has no reliable method of detecting when save/restore is
> > required thus let's add a binding to inform the kernel.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >   Documentation/devicetree/bindings/arm/coresight.txt | 3 +++
> >   1 file changed, 3 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> > index fcc3bacfd8bc..7cbdb7893af8 100644
> > --- a/Documentation/devicetree/bindings/arm/coresight.txt
> > +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> > @@ -92,6 +92,9 @@ its hardware characteristcs.
> >   	* arm,cp14: must be present if the system accesses ETM/PTM management
> >   	  registers via co-processor 14.
> > +	* arm,coresight-needs-save-restore: boolean. Indicates that software
> > +	  should save/restore state across power down.
> > +
> 
> Do you think we could be a bit more descriptive here about when people could add
> it to the DT ? Here we don't mention when someone should use this property and
> it may be added to platforms where it may be absolutely unnecessary. How about :
> 
> "Indicates that the hardware implementation may not honor the Powerup request
> from the software and thus might loose the register context on CPU power
> down (e.g, during CPUIdle). Software must save/restore the context during a
> CPU power transition cycle."

How about the following:

"Indicates that the hardware will loose register context on CPU power down (e.g.
CPUIdle), despite the TRCPDCR.PU bit being set."

I'm keen to avoid making suggestions about what the kernel will do when it sees
this flag and thus prefer to focus on describing what the hardware does. So I
dropped your last sentence. However the name of the flag still implies policy
which I don't like.

I also changed the 'may not honor' wording, I'm not sure if this is really the
case or if the spec is open to interpretation.

It would great for this wording to also apply to other CS components though I
haven't investigated if these have a PU bit or something different.

Thanks,

Andrew Murray

> 
> Cheers
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
