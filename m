Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D0530BB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 11:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1eS4wKwbjT1mxwHis5v0h0QJMg+q0vtVc75yX2hugdY=; b=nx1V7pKLTGahWj
	AcqB8aSaBQdJsPxBuK761UULP5LhytjwBE5MLrJBC9O4wTxivDBFOZOU4rBNf9ckMgaoElFoGCa7K
	UAdL+A7ZEgrS+LCLLOIpMmn+yO/epw7J1tjs5BTEBhUT+nUdOzkI1vJ45z2J9HQtiaxLBVicXkL9z
	KflxLPodhj8CUagwClYnz5K8k5fGHxPLq7rR+tQt1frUceWUlRx3xWhN4zGaff9bPwzdIp57I3j3Q
	+jpN5HAppirV6RuL/12L6iiCR8zoYLDI0qWECSwo0lR8VIJaxNRjD4YeEccwC+1GlKPZU9rz3zbmw
	wyJ5W8B3Ihgm0xsP7MjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdx8-0003B8-SX; Fri, 31 May 2019 09:35:58 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdx1-0003AV-3c
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 09:35:52 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id C810625AE77;
 Fri, 31 May 2019 19:35:49 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id BFA799401DB; Fri, 31 May 2019 11:35:47 +0200 (CEST)
Date: Fri, 31 May 2019 11:35:47 +0200
From: Simon Horman <horms@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v4 0/8] arm64: dts: renesas: r8a7795: Add IPA support and
 dynamic power coefficient
Message-ID: <20190531093547.azktf3odsa5bg42n@verge.net.au>
References: <20190523142544.1273-1-horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523142544.1273-1-horms+renesas@verge.net.au>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_023551_301506_FA4CE56A 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Yoshihiro Kaneko <ykaneko0929@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 04:25:36PM +0200, Simon Horman wrote:
> 1) Setup a thermal zone driven by SoC temperature sensor.
>    Create passive trip points and bind them to CPUFreq cooling
>    device that supports power extension.
> 
> 2) Describe dynamic power coefficient of CPUs
> 
> Changes since v3:
> * Minor changelot updates
> * Include updates for r8a7796, r8a77965 and r8a77990
>   (omitted in v2 and v3 to reduce review/preparation overhead)
> 
> Changes since v2:
> * Break power coefficient changes into separate patch.
> 
> 
> Dien Pham (4):
>   arm64: dts: renesas: r8a7795: Create thermal zone to support IPA
>   arm64: dts: renesas: r8a7796: Create thermal zone to support IPA
>   arm64: dts: renesas: r8a77965: Create thermal zone to support IPA
>   arm64: dts: renesas: r8a77990: Create thermal zone to support IPA
> 
> Simon Horman (4):
>   arm64: dts: renesas: r8a7795: Add dynamic power coefficient
>   arm64: dts: renesas: r8a7796: Add dynamic power coefficient
>   arm64: dts: renesas: r8a77965: Add dynamic power coefficient
>   arm64: dts: renesas: r8a77990: Add dynamic power coefficient
> 
>  arch/arm64/boot/dts/renesas/r8a7795.dtsi  | 54 ++++++++++---------------------
>  arch/arm64/boot/dts/renesas/r8a7796.dtsi  | 46 ++++++++++----------------
>  arch/arm64/boot/dts/renesas/r8a77965.dtsi | 20 ++++++++++++
>  arch/arm64/boot/dts/renesas/r8a77990.dtsi | 20 ++++++++++--
>  4 files changed, 71 insertions(+), 69 deletions(-)

Applied for v5.3.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
