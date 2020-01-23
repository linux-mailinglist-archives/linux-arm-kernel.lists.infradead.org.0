Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36EE146C45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 16:05:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lmTY7BAyn3xw3z+lbw3pYjymqjhizwuFcQB0+Pj/c5s=; b=eUBGKcsYJ5vl24aODmnWHSR1i
	tYJO9rkW/RD/EWVfAqwkejl5jVINjpr1A5fmKXvVPZsU2X1Wi9nvYPETKQGyB1sv/Sk3mBK+Ky6WO
	aXRB1RcrXIifTs1FxLO3/2IMwl5rDjy60mlaG/SdthQIf6p+zQFLrrRznozfBUyQjlZTnkLo595s0
	rt0aKnlxdQSku1eldF9Smha9a5i0vK77yNI2kiPuvS/eNHvzTzLV68LitA655aToxTUdfpW2VbDvV
	UH7eYytwnoTkxGUIFHKhhMUE7CmP0yqnwR11Nm0xygMEQRXc2q9M37yZurW7KiEpBvAxtZQ0FxgGs
	7aF/Tc1zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iue2l-0006ME-Jg; Thu, 23 Jan 2020 15:05:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iue2U-0006Lf-8g
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 15:04:59 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 474BC21734;
 Thu, 23 Jan 2020 15:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579791897;
 bh=cXKhlQW0taEdIQmJmGtJTvN9ODAXdbf+/jNFdwXkHVo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CURSxL7VvAIhvb00aI5FFq0XAY7fHU9MNQadVpFZ9MNgZ7Pb6DbUl6VuNeV+9q0Ig
 dsV9Z9zvvszjpRyBBFr73dafMivcyvI0pRJgvg7fVS86K9BVem7gn5U4aaed/AoHTj
 1fCy3HC63+X5mZtP29YkLHEQBCTIKwQwUbX5PnXQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iue2R-000yOm-I0; Thu, 23 Jan 2020 15:04:55 +0000
MIME-Version: 1.0
Date: Thu, 23 Jan 2020 15:04:55 +0000
From: Marc Zyngier <maz@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] arm64: dts: fast models: Fix FVP PCI interrupt-map
 property
In-Reply-To: <20200123150104.GA37953@bogus>
References: <20200123145112.22170-1-maz@kernel.org>
 <20200123150104.GA37953@bogus>
Message-ID: <dcfc2344205efb0f9ddef615046158a3@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: sudeep.holla@arm.com, liviu.dudau@arm.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_070458_330670_9AC1808B 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-23 15:01, Sudeep Holla wrote:
> On Thu, Jan 23, 2020 at 02:51:12PM +0000, Marc Zyngier wrote:
>> The interrupt map for the FVP's PCI node is missing the
>> parent-unit-address cells for each of the INTx entries, leading to the
>> kernel code failing to parse the entries correctly.
>> 
>> Add the missing zero cells, which are pretty useless as far as the GIC
>> is concerned, but that the spec requires. This allows INTx to be 
>> usable
>> on the model, and VFIO to work correctly.
>> 
> 
> I assume we need,
> 
> Fixes: fa083b99eb28 ("arm64: dts: fast models: Add DTS fo Base RevC 
> FVP")
> 
> Please shout if that's not necessary.

Yes, you're absolutely right (I'm not shouting! ;-).

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
