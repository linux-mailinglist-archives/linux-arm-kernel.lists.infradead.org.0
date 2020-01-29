Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242BD14CE28
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 17:22:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=149ayDYADMiNyzRRd4JLALMFzFxjm+NrvJ2I9VrJpWE=; b=mz0HJyn6OvQG18KcGoz5cZnzN
	kzUTBOe/KPjpuiWCB8ce3QOCN0Plj1PtUyxAjezX4/1MpZ7YpO6NZL5NNnU0pdHKTvl2n2g+D+8Bm
	Tgz9LqHdA33LfY4kxs1hQY1CZJeORcxY1U57kf3nIgDtIu3ta3hoJa9+/nwkfeJWD+/GIkSkjyITh
	T1RXyT60bOQe0mox3rM1Q+RSMtGSSEhp4qO4VAJMnJYfUE3xvUi8fRaTmgjDbphmpGlqUUjV4mIV+
	X4M3ooFz4Gth5Tse3/4/YTHX2XwwLOwyLfL3T983HegIea4JX5BScdDxZzNSZAavdZvI/22qJG3wp
	vNsZhQ+nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwq6r-0007IM-Kn; Wed, 29 Jan 2020 16:22:33 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwq6f-0007H6-O0
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 16:22:24 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 3E07E23E62;
 Wed, 29 Jan 2020 17:22:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1580314931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sW0QA5hhkf7I3N3KjWQhrGatYUrwYHEsrUcrrXuwzR4=;
 b=nGONfZBo+MF8xCLtL+W9xgTLviPkQ+YDRjN+oRs6Tn1xY19psXusVp50c7JK9RFxA10UBl
 b56t/s+eKqvLn47ys13ldz1LMXHNuCqEX2BkSKYnucZvCVoizVI/xFNRv38YAwoY5o03aV
 PSnFrGTI9QaP8nmrRYNOQYhMF+cj4HY=
MIME-Version: 1.0
Date: Wed, 29 Jan 2020 17:22:07 +0100
From: Michael Walle <michael@walle.cc>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] ls1028a: dts fixes and new board support
In-Reply-To: <20191209234350.18994-1-michael@walle.cc>
References: <20191209234350.18994-1-michael@walle.cc>
Message-ID: <d5a729321220f35bd0ea377a8ec2f852@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.8
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 3E07E23E62
X-Spamd-Result: default: False [1.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[8]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_082221_943309_3C1E4818 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Yuantian Tang <andy.tang@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

Am 2019-12-10 00:43, schrieb Michael Walle:
> This series adds basic support for the Kontron SMARC-sAL28 board. It 
> also
> adds missing nodes to the ls1028a base device tree which are used by 
> the
> board.
> 
> changes since v1:
>  - dropped "arm64: dts: ls1028a: add FlexSPI node" in favor of:
> 
> https://lore.kernel.org/lkml/1575457098-18368-2-git-send-email-Ashish.Kumar@nxp.com/
>    Thus, this series now depends on that patch
>  - better commit message for the TMU patch
>  - added fixes tag to the TMU patch
>  - document the LS1028A evaluation boards compatible strings
>  - document the Kontron sl28 boards compatible strings
>  - fix node names of the sl28 device tree(s)
>  - removed device specific compatible string of the spi flash
>  - rebased the patch series
>  - integrate the RGMII configuration of the AR8031 PHY since the 
> binding is
>    now already upstream
> 
> This patchseries depends on:
>  - [Patch v2 1/5] arm64: dts: ls1028a: Add FlexSPI support
> 
> https://lore.kernel.org/lkml/1575457098-18368-2-git-send-email-Ashish.Kumar@nxp.com/
>  - [PATCH v2 1/2] dt-bindings: clock: document the fsl-sai driver
>    
> https://lore.kernel.org/lkml/20191209233305.18619-1-michael@walle.cc/


it seems that all the pieces are now together.

  - "arm64: dts: ls1028a: Add FlexSPI support" is pulled
  - you've already pulled the patches 1 and 2 from this series
  - Rob reviewed patch 3 and 4
  - your review remarks of patch 5 should be included
  - and last but not least, the clock driver used by the device tree 
finally
    made it into clk-next [1]


-michael

[1] 
https://lore.kernel.org/linux-clk/20200128220445.DE778207FD@mail.kernel.org/



> 
> This patchseries superseeds:
>  - [PATCH 0/4] ls1028a: dts fixes and new board support
>    
> https://lore.kernel.org/lkml/20191123201317.25861-1-michael@walle.cc/
>  - [PATCH] arm64: dts: sl28: configure the RGMII PHY
>    
> https://lore.kernel.org/lkml/20191123202624.28093-1-michael@walle.cc/
> 
> Michael Walle (5):
>   arm64: dts: ls1028a: fix typo in TMU calibration data
>   arm64: dts: ls1028a: add missing sai nodes
>   dt-bindings: arm: fsl: add LS1028A based boards
>   dt-bindings: arm: fsl: add Kontron sl28 boards
>   arm64: dts: freescale: add Kontron sl28 support
> 
>  .../devicetree/bindings/arm/fsl.yaml          |  45 +++++
>  arch/arm64/boot/dts/freescale/Makefile        |   4 +
>  .../fsl-ls1028a-kontron-kbox-a-230-ls.dts     |  27 +++
>  .../fsl-ls1028a-kontron-sl28-var3-ads2.dts    | 106 +++++++++++
>  .../fsl-ls1028a-kontron-sl28-var4.dts         |  50 +++++
>  .../freescale/fsl-ls1028a-kontron-sl28.dts    | 174 ++++++++++++++++++
>  .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |  44 ++++-
>  7 files changed, 449 insertions(+), 1 deletion(-)
>  create mode 100644
> arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
>  create mode 100644
> arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
>  create mode 100644
> arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
>  create mode 100644 
> arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
