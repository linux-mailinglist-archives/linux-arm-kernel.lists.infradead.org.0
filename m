Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD2D76EF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 18:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBa5wSwYcbBZFBjUQhVHdMnMingLZMA2OtY1Bkmvr8I=; b=g3mskzxh/Rcqw4
	o0kKTmkZYXECuP2s2wjWoV8NO5D9jaiOg5KbRu+AnvkUanObIPcIjryugkr1CknZxfjaFYyEVtlCy
	Fi9iEHHLgd5IvDPl3PaSsMO+kpoFAGdo3Mj7Bawmt+UdZVBm7PVJ/iRQaS3e56d1cPwg9CQAORon3
	OXjeGcLCYmIb4xotMKY9BlQvjure2hfVvN0qjOhmLTHjUcHF04m2PVGdwv+vGNEJ47cSR/vZUbg17
	x8Lj/pjV0hf94aYzsk9R0jQMC9KakEoPdYLisaK8CywFQKI3MMYZOnGg6lmuFNIprNm+IaSpua12h
	/Oy+b3iB+ukuZnZYNM8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr30D-0007lX-Ps; Fri, 26 Jul 2019 16:23:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr2zS-0007c5-A5
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 16:22:43 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7757821734;
 Fri, 26 Jul 2019 16:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564158161;
 bh=iSpgErZyH5WtkuKki6MXL2DpHosNdkywhjGnuECrfC8=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=CGJ6PK7Y8347Q17zhsTTIGstVfqFOXxOUWl6UDZ0MdMMl/qj33/B6WI0sIVPttzb2
 J2qewxcRn7Z3doDqe3EK9iu59Qe4dhYUWsM3JrKJz2eM+XTP6CeJ8npuTQgEYomQ4a
 PZoR2uXk6HNu1xPa+kH14fvxtSJ1Vt157vPSGxdg=
MIME-Version: 1.0
In-Reply-To: <20190726135138.9858-11-sudeep.holla@arm.com>
References: <20190726135138.9858-1-sudeep.holla@arm.com>
 <20190726135138.9858-11-sudeep.holla@arm.com>
Subject: Re: [PATCH v2 10/10] firmware: arm_scmi: Use asynchronous
 CLOCK_RATE_SET when possible
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Fri, 26 Jul 2019 09:22:40 -0700
Message-Id: <20190726162241.7757821734@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_092242_609835_58E631F8 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 linux-kernel@vger.kernel.org, Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sudeep Holla (2019-07-26 06:51:38)
> CLOCK_PROTOCOL_ATTRIBUTES provides attributes to indicate the maximum
> number of pending asynchronous clock rate changes supported by the
> platform. If it's non-zero, then we should be able to use asynchronous
> clock rate set for any clocks until the maximum limit is reached.
> 
> Tracking the current count of pending asynchronous clock set rate
> requests, we can decide if the incoming/new request for clock set rate
> can be handled asynchronously or not until the maximum limit is
> reached.
> 
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
