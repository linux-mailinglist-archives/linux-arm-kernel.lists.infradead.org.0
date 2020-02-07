Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40913155627
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 11:57:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKIsu4Pr4c/ZoyWNs7EMg5e+dpunSmAiuCqGsyv9OZc=; b=QHNPxiVLjPrE7B
	pi7MpqoSPCwJ1z2vkGSq6fK7Ko97TovScST+vWTteb2dQL6fdifA9jqeg2cMotH5+CSbRXX/zyxO9
	PCD/P+haIuJb+JNVX923zvk5Ps7JRg/iqFOeit/1koCmLdy/B3S+pmK+cK+3NAdvdDhXgO5gxRDqE
	G6e4nQhL0SAD2JPvtKxjnT3I/04/Rx2xGruElqzq+Arih1tuK6vpqUpQHTskHDHvPulL3cXvXRTMz
	LSua6jtqgkEYVdPlK8tRgCd2Ye3QK7S6Ws99wJBq1a4v0MVy5wkwTD1X4Tv7wsRKVb6MVM41vKThM
	nhqCUyMrtuThEtHNnNEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01Jj-0001Gl-Bi; Fri, 07 Feb 2020 10:56:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01Jd-0001GD-AL
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 10:56:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B480930E;
 Fri,  7 Feb 2020 02:56:52 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A1D83F52E;
 Fri,  7 Feb 2020 02:56:51 -0800 (PST)
Date: Fri, 7 Feb 2020 10:56:49 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Message-ID: <20200207105649.GC36345@bogus>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
 <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
 <20200206215947.GA21514@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206215947.GA21514@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_025653_402693_820F3268 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peng.fan@nxp.com,
 f.fainelli@gmail.com, viresh.kumar@linaro.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, andre.przywara@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 02:59:47PM -0700, Rob Herring wrote:
> On Thu, Feb 06, 2020 at 09:01:25PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > SCMI could use SMC/HVC as tranports, so add into devicetree
> > binding doc.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/arm/arm,scmi.txt | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > index f493d69e6194..03cff8b55a93 100644
> > --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> > @@ -14,7 +14,7 @@ Required properties:
> >
> >  The scmi node with the following properties shall be under the /firmware/ node.
> >
> > -- compatible : shall be "arm,scmi"
> > +- compatible : shall be "arm,scmi" or "arm,scmi-smc"
> >  - mboxes: List of phandle and mailbox channel specifiers. It should contain
> >  	  exactly one or two mailboxes, one for transmitting messages("tx")
> >  	  and another optional for receiving the notifications("rx") if
> > @@ -25,6 +25,8 @@ The scmi node with the following properties shall be under the /firmware/ node.
> >  	  protocol identifier for a given sub-node.
> >  - #size-cells : should be '0' as 'reg' property doesn't have any size
> >  	  associated with it.
> > +- arm,smc-id : SMC id required when using smc transports
> > +- arm,hvc-id : HVC id required when using hvc transports
>
> Don't the SMC ids get standardized?
>

Unfortunately no. Please don't ask me why ;) as there's no technical reason
to not standardize it. I pushed hard for it, but for this particular case the
SMC/HVC transport is considered to be outside the SCMI protocol standards as
it's transport related.

I completely agree it is total non-sense. I will try to convince them showing
this discussion as reference but can't guarantee anything.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
