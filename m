Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9BA1D72AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 10:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lu6fcaXAES316JR5Of4YjH+Mfzn+qD+evE6kwLERZZY=; b=HeCPOGrG6kKcXaT7MyNMlCrBEb
	21BVHCJKwoMD5opfEJH1go1I2HZ3VEB5blujjlx8kg8eNZkrKtFivUT74rPCQ88rOeaSudE6AbipD
	wR80c9h74eM8NNOis9h8GAaOXlQPGPSWV+2c++bwFSDiDhBUO/JahTFlyrh6JqrlTvEJJVhuu72xZ
	vP4ZXFg0Wq0pqZ7SjGze2Wdx3WhuY4mErDGdtdGxKzljccA0r7MU+I+6xAz9Y2xJKQUhcJlTY7/Zv
	BggDZ1apeIvOHOO8h76l4bFrBkzxdXFpBOLAQdPpA/72zSWHHJXzC1EYdbTSbmEAgU7kkOQuYkrwU
	J4zDK3Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaavv-00050o-Lp; Mon, 18 May 2020 08:15:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaavl-0004zg-WB
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 08:15:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 278C2106F;
 Mon, 18 May 2020 01:15:23 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E771A3F305;
 Mon, 18 May 2020 01:15:21 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Andre Przywara <andre.przywara@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>
Subject: Re: [PATCH v3 00/20] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
Date: Mon, 18 May 2020 09:15:09 +0100
Message-Id: <158973834734.39932.11246001710949466054.b4-ty@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_011526_077226_8B20C54B 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 11:29:56 +0100, Andre Przywara wrote:
> A few updates compared to v2. The most important is to fix the
> interrupt-maps, triggered by changing the number of address-cells in
> the GIC node. For this I split the former patch 07/17 into two (09/20
> and 10/20), one for the foundation model, the other for Juno.
> Also I fixed a dtc complaint about device nodes without reg properties
> being inside simple-bus nodes, those are the new patches 04-06/20.
> Will took patch 01/17 from v2 already, so I removed this from this
> series.
> The rest of the patches stayed the same.
> -----------------------------------
>
> [...]

Applied to sudeep.holla/linux tree (for-next/juno), thanks!

[02/20] arm64: dts: fvp/juno: Fix node address fields
        https://git.kernel.org/sudeep.holla/c/bb5cce12ac
[03/20] arm64: dts: fvp: Move fixed devices out of bus node
        https://git.kernel.org/sudeep.holla/c/849bfc3dfc
[04/20] arm64: dts: vexpress: Move fixed devices out of bus node
        https://git.kernel.org/sudeep.holla/c/d9258898ad
[05/20] arm64: dts: fvp: Move fixed clocks out of bus node
        https://git.kernel.org/sudeep.holla/c/feebdc3f79
[06/20] arm64: dts: juno: Move fixed devices out of bus node
        https://git.kernel.org/sudeep.holla/c/948204a1bf
[07/20] arm64: dts: juno: Fix mem-timer
        https://git.kernel.org/sudeep.holla/c/0e529dae51
[08/20] arm64: dts: fvp: Fix GIC compatible names
        https://git.kernel.org/sudeep.holla/c/336edacfb9
[09/20] arm64: dts: juno: Fix GIC child nodes
        https://git.kernel.org/sudeep.holla/c/a78aee9e43
[10/20] arm64: dts: fvp: Fix GIC child nodes
        https://git.kernel.org/sudeep.holla/c/78631aecc5
[11/20] arm64: dts: fvp: Fix ITS node names and #msi-cells
        https://git.kernel.org/sudeep.holla/c/fac959c93f
[12/20] arm64: dts: juno: Use proper DT node name for USB
        https://git.kernel.org/sudeep.holla/c/17a37ff76e
[13/20] arm64: dts: fvp/juno: Fix serial node names
        https://git.kernel.org/sudeep.holla/c/fa51a2a1ed
[14/20] arm64: dts: fvp: Fix SMMU DT node
        https://git.kernel.org/sudeep.holla/c/19650d681b
[15/20] arm64: dts: fvp/juno: Fix bus node names
        https://git.kernel.org/sudeep.holla/c/b68d15c0e6
[16/20] arm64: dts: juno: Fix GPU interrupt order
        https://git.kernel.org/sudeep.holla/c/2dd42335f8
[17/20] arm64: dts: vexpress: Fix VExpress LED names
        https://git.kernel.org/sudeep.holla/c/bf3f0ccf35
[18/20] arm64: dts: juno: Fix SCPI shared mem node name
        https://git.kernel.org/sudeep.holla/c/93f6027abe

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
