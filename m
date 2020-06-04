Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEAF1EE047
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 10:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ga4QJXNaBUdpNH9TlrA6hADaL46VNI1RBbZRy0rjkIE=; b=Hf+jkdXXGtLKmYfl5B638TTu7D
	25PGkA/bV938O0wFRaYm9f3ZT8f4JUgqIk6vr8pWw8GfjLcyDu14KkZ5Q8iWc+Ae/DJ40mU0h2ij+
	C0ZmPAFV524KLLh7LvG/Z7Qki2+zQmBJWPkLcUZUpjI/6v0thgShBpJTDLVvz18OkZnSmT8OFcgL9
	8METmkuu898giMlcKwA/G49Ud+Vk/b3fLsbTRz+JxE/YOW+l6vwpaupJySz867sbJ85tHQgm0LejS
	f/rrbDkERceRjJIquO7Hm2yDjVki5bkiLzdVmUxDTw5WopzF6oUTjIS/D6t13Js6z4JcApgxZfms7
	RIy8tOQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jglgC-0008Rk-4v; Thu, 04 Jun 2020 08:56:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jglg5-0008RL-2u
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 08:56:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5404055D;
 Thu,  4 Jun 2020 01:56:44 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1261C3F6CF;
 Thu,  4 Jun 2020 01:56:42 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Andre Przywara <andre.przywara@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH] arm: dts: vexpress: Move mcc node back into motherboard
 node
Date: Thu,  4 Jun 2020 09:56:31 +0100
Message-Id: <159126075826.16785.4183160239670270692.b4-ty@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200603162237.16319-1-andre.przywara@arm.com>
References: <20200603162237.16319-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_015645_169096_2B6F6C00 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Guenter Roeck <linux@roeck-us.net>, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 3 Jun 2020 17:22:37 +0100, Andre Przywara wrote:
> Commit 	d9258898ad49 ("arm64: dts: arm: vexpress: Move fixed devices
> out of bus node") moved the "mcc" DT node into the root node, because
> it does not have any children using "reg" properties, so does violate
> some dtc checks about "simple-bus" nodes.
> However this broke the vexpress config-bus code, which walks up the
> device tree to find the first node with an "arm,vexpress,site" property.
> This gave the wrong result (matching the root node instead of the
> motherboard node), so broke the clocks and some other devices for
> VExpress boards.
> 
> [...]

Applied to sudeep.holla/linux (for-next/juno), thanks!

[1/1] arm: dts: vexpress: Move mcc node back into motherboard node
      https://git.kernel.org/sudeep.holla/c/8a8cd9a910

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
