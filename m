Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81353155667
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 12:10:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o/Wpla56CXc+BPunrgZHJLRLZ2WoZNAVL2vKWYFmv1s=; b=tIhGGYOFjLwuIa+Y2G9pIoX1a
	aEN4NASvfHY5DHhZOAtd5IHio2Lo/TN8fW+TDeQp98l2SspA0FqzcGXQMHkO9xs25iVx295685Z7u
	Zzp5TjkkLe8GIarY3/2PgtLQfu/bB2OStrr+JbpI5p0s7stdQ0NhHuFvU65wZ/ajfGnplgovpf9NI
	enkcLYz5nJvefvZzJ1r9TByn/3H2EvnGnZb4xnGC7ktZPUaFQyi0kNLd2LrZcpgzwishWJa3pMine
	Wu6Siow8kIpKPePT5Su0SU2LhsmlEdXcqVwXdeaoVRenAOwDA3biJF4Dtj/rXnJTQZVfr2O2beWXp
	EDnbVBTCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j01WP-0006aO-Mo; Fri, 07 Feb 2020 11:10:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j01WD-0006ZO-FN
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 11:09:54 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D25320720;
 Fri,  7 Feb 2020 11:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581073790;
 bh=YtjeGCn68V/W0a9LzM3q6bLhd/qtIlFq6rULUBv7KcU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Tk5hFyqLF7Lwyb8GIAxvdOqUCLSt9+nWA/f58u7fk6oB0Uk5vh/77OrtCccUaSKJi
 tUUERm4UmMVStUrK6mUeUxXImz5fIPdgFMw3WG8YgZmKrBb0JRakYr/lkrAbm2k2VY
 8XbjT4SCQekNlRz0tiV3Hq13GBeY2hpo0nVJDqTU=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j01W8-003W5T-RP; Fri, 07 Feb 2020 11:09:48 +0000
MIME-Version: 1.0
Date: Fri, 07 Feb 2020 11:09:48 +0000
From: Marc Zyngier <maz@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
In-Reply-To: <AM0PR04MB44815F11C94E5F35AE7B0B21881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
 <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
 <7875e2533c4ba23b8ca0a2a296699497@kernel.org> <20200207104736.GB36345@bogus>
 <5a073c37e877d23977e440de52dba6e0@kernel.org>
 <AM0PR04MB44815F11C94E5F35AE7B0B21881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Message-ID: <ce775af0803d174fa2ad5dfc797592d9@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: peng.fan@nxp.com, sudeep.holla@arm.com, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 viresh.kumar@linaro.org, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 andre.przywara@arm.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_030953_560960_D24AEF76 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 viresh.kumar@linaro.org, linux-kernel@vger.kernel.org, andre.przywara@arm.com,
 robh+dt@kernel.org, dl-linux-imx <linux-imx@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-07 11:00, Peng Fan wrote:
>> Subject: Re: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc 
>> transports
>> 
>> On 2020-02-07 10:47, Sudeep Holla wrote:
>> > On Fri, Feb 07, 2020 at 10:08:36AM +0000, Marc Zyngier wrote:
>> >> On 2020-02-06 13:01, peng.fan@nxp.com wrote:
>> >> > From: Peng Fan <peng.fan@nxp.com>
>> >> >
>> >> > SCMI could use SMC/HVC as tranports, so add into devicetree binding
>> >> > doc.
>> >> >
>> >> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
>> >> > ---
>> >> >  Documentation/devicetree/bindings/arm/arm,scmi.txt | 4 +++-
>> >> >  1 file changed, 3 insertions(+), 1 deletion(-)
>> >> >
>> >> > diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt
>> >> > b/Documentation/devicetree/bindings/arm/arm,scmi.txt
>> >> > index f493d69e6194..03cff8b55a93 100644
>> >> > --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
>> >> > +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
>> >> > @@ -14,7 +14,7 @@ Required properties:
>> >> >
>> >> >  The scmi node with the following properties shall be under the
>> >> > /firmware/ node.
>> >> >
>> >> > -- compatible : shall be "arm,scmi"
>> >> > +- compatible : shall be "arm,scmi" or "arm,scmi-smc"
>> >> >  - mboxes: List of phandle and mailbox channel specifiers. It
>> >> > should contain
>> >> >  	  exactly one or two mailboxes, one for transmitting messages("tx")
>> >> >  	  and another optional for receiving the notifications("rx") if
>> >> > @@ -25,6 +25,8 @@ The scmi node with the following properties shall
>> >> > be under the /firmware/ node.
>> >> >  	  protocol identifier for a given sub-node.
>> >> >  - #size-cells : should be '0' as 'reg' property doesn't have any size
>> >> >  	  associated with it.
>> >> > +- arm,smc-id : SMC id required when using smc transports
>> >> > +- arm,hvc-id : HVC id required when using hvc transports
>> >> >
>> >> >  Optional properties:
>> >>
>> >> Not directly related to DT: Why do we need to distinguish between SMC
>> >> and HVC?
>> >
>> > IIUC you want just one property to get the function ID ? Does that
>> > align with what you are saying ? I wanted to ask the same question and
>> > I see no need for 2 different properties.
>> 
>> Exactly. Using SMC or HVC should come from the context, and there is 
>> zero
>> value in having different different IDs, depending on the conduit.
>> 
>> We *really* want SMC and HVC to behave the same way. Any attempt to
>> make them different should just be NAKed.
> 
> ok. Then just like psci node,
> Add a "method" property for each protocol, and add "arm,func-id" to
> indicate the ID.
> 
> How about this?

Or rather just a function ID, full stop. the conduit *MUST* be inherited
from the PSCI context.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
