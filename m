Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7884DFE3B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 18:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPuS/+xKkw5KXgOTot2fi8ljh/93w/nLv6fcABkUZSI=; b=DgzKXvB14mScjv
	gBwnftNyv6JzEFR2DVuhi1EuImjnZHOP/jm3sv549QSAdrHkllZh6IrghOdK5S7eD3egfKji06YBt
	qzumiRREyj7sdYYgKHOgm0rdf9KAvIo78wRYpvg8wnpnrJkJhnty53EuHUQP48dx8gc/iKUKY8Kar
	VenofMV1ruTASnhIDTH1aX3ZC4NlwtxIrlpRwwRKClTSWcg9MSx8Kjz/E8w3GcwNGbcKtlBgcDV3m
	qG7EPM/JCmVQOZt/4riQPeL0upROlzuQyBcBZQahRD3Vc4yjvfHu8LNaqHPolhOMxdI9erkAhp9/3
	oH/2Iz606uYOmXs5Uf0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVf9T-0001j0-Fu; Fri, 15 Nov 2019 17:12:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVf9N-0001iL-1M
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 17:12:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F243D31B;
 Fri, 15 Nov 2019 09:12:45 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D4D973F6C4;
 Fri, 15 Nov 2019 09:12:43 -0800 (PST)
Date: Fri, 15 Nov 2019 17:12:38 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 02/13] dt: psci: Update DT bindings to support
 hierarchical PSCI states
Message-ID: <20191115171238.GA27170@bogus>
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-3-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029164438.17012-3-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_091249_124400_504C6F18 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 05:44:27PM +0100, Ulf Hansson wrote:
> Update PSCI DT bindings to allow to represent idle states for CPUs and the
> CPU topology, by using a hierarchical layout. Primarily this is done by
> re-using the existing DT bindings for PM domains [1] and for PM domain idle
> states [2].
> 
> Let's also add an example into the document for the PSCI DT bindings, to
> clearly show the new hierarchical based layout. The currently supported
> flattened layout, is already described in the ARM idle states bindings [3],
> so let's leave that as is.
> 
> [1] Documentation/devicetree/bindings/power/power_domain.txt
> [2] Documentation/devicetree/bindings/power/domain-idle-state.txt
> [3] Documentation/devicetree/bindings/arm/idle-states.txt
> 

I thought I had given reviewed by to this. Or may be I confused you
giving the big standard example that I want to add here.

Anyways,

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
