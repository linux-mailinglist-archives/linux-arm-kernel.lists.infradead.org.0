Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5B31E7014
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 01:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOV1EpxC4t/Obs2RkNqQrDqM8TlWUi6Z/OVqDIk8EBM=; b=iuuwjc/Ss8AR9q
	2UEpoV9ijcoQg283mx1xdQWYQ+DHGO6hLADI2TI7K8gHXm7p29QboQlPOkMM4N49jNawwAbDZBd7s
	lFq29FO858fy4tEG/JZEaYBlEZh2CYDVokipZH9pW8fyv4YeWCojC0xONU5Yq2iCVWaSlYzb/iqvA
	NIjnmKirGrEoXEz+/1b3IqHdf+rrngwN5E218Xs54Ri3VnNsRoFCHziH4Zx/eWmhmVg+SjbSUiV4P
	SDjRxpDdHAKOfvBc3+0s06VLDo19x/iGGtx3hL5TEhFScXGq5/8GwMN1hh6z1m0W6Tvp0ADn+ynZN
	ORu+iNWbl1jA99H/Xb3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRhf-0003DX-MJ; Thu, 28 May 2020 23:12:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRhX-0003Co-2k
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 23:12:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B6E520776;
 Thu, 28 May 2020 23:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590707558;
 bh=VGj2i8flL9JlQmAgKNzGrKzB+vOOk0rvJ232QmrQW+U=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=SObhxzW0L9TD8+lQKsRJoVJbBChIFc11d9J4X/Xct+03ugNYxr56U2xTRNwgn7dHB
 aExWegMQLCmeVfn7ykME1aGYMtvOKHaaYYjziXI/cHRzY7cDqQV20dImop//7idsQ9
 id34cjmGl/0MApGajyGtOqF4UTajggOQNMSVEIZ0=
MIME-Version: 1.0
In-Reply-To: <2c8cd31a-46ba-ec6a-67a7-f3d9abe561ff@xilinx.com>
References: <1584048699-24186-1-git-send-email-jolly.shah@xilinx.com>
 <1584048699-24186-3-git-send-email-jolly.shah@xilinx.com>
 <159054169658.88029.371843532116000844@swboyd.mtv.corp.google.com>
 <2c8cd31a-46ba-ec6a-67a7-f3d9abe561ff@xilinx.com>
Subject: Re: [PATCH v2 2/2] drivers: clk: zynqmp: Update fraction clock check
 from custom type flags
From: Stephen Boyd <sboyd@kernel.org>
To: Jolly Shah <jolly.shah@xilinx.com>, arm@kernel.org,
 linux-clk@vger.kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 olof@lixom.net
Date: Thu, 28 May 2020 16:12:37 -0700
Message-ID: <159070755756.69627.18401650656284023600@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_161239_162026_559ADC67 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jolly Shah (2020-05-28 10:44:01)
> Hi Stephan,
> 
> Thanks for the review.
> 
>  > ------Original Message------
>  > From: Stephen Boyd <sboyd@kernel.org>
>  > Sent:  Tuesday, May 26, 2020 6:08PM
>  > To: Jolly Shah <jolly.shah@xilinx.com>, Arm <arm@kernel.org>, 
> Linux-clk <linux-clk@vger.kernel.org>, Michal Simek 
> <michal.simek@xilinx.com>, Mturquette <mturquette@baylibre.com>, Olof 
> <olof@lixom.net>
>  > Cc: Rajan Vaja <rajanv@xilinx.com>, 
> Linux-arm-kernel@lists.infradead.org 
> <linux-arm-kernel@lists.infradead.org>, Linux-kernel@vger.kernel.org 
> <linux-kernel@vger.kernel.org>, Tejas Patel <tejas.patel@xilinx.com>, 
> Rajan Vaja <rajan.vaja@xilinx.com>, Jolly Shah <jolly.shah@xilinx.com>
>  > Subject: Re: [PATCH v2 2/2] drivers: clk: zynqmp: Update fraction 
> clock check from custom type flags
>  >
> > Quoting Jolly Shah (2020-03-12 14:31:39)
> >> From: Tejas Patel <tejas.patel@xilinx.com>
> >>
> >> Older firmware version sets BIT(13) in clkflag to mark a
> >> divider as fractional divider. Updated firmware version sets BIT(4)
> >> in type flags to mark a divider as fractional divider since
> >> BIT(13) is defined as CLK_DUTY_CYCLE_PARENT in the common clk
> >> framework flags.
> >>
> >> To support both old and new firmware version, consider BIT(13) from
> >> clkflag and BIT(4) from type_flag to check if divider is fractional
> >> or not.
> >>
> >> To maintain compatibility BIT(13) of clkflag in firmware will not be
> >> used in future for any purpose and will be marked as unused.
> > 
> > Why are we mixing the firmware flags with the ccf flags? They shouldn't
> > be the same. The firmware should have its own 'flag numberspace' that is
> > distinct from the common clk framework's 'flag numberspace'. Please fix
> > the code.
> > 
> 
> Yes firmware flags are using separate numberspace now. Firmware 
> maintains CCF and firmware specific flags separately but earlier 
> CLK_FRAC was mistakenly defined in ccf flagspace and hence handled here 
> for backward compatibility. Driver takes care of not registering same 
> with CCF. Let me know if I misunderstood.

Why is the firmware maintaining CCF specific flags? The firmware
shouldn't know about the CCF flag numbering at all. We can change the
numbers that the CCF flags are assigned to randomly and that shouldn't
mean that the firmware needs to change. Maybe I should apply this patch?

---8<----
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index bd1ee9039558..c1f36bca85b0 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -16,22 +16,22 @@
  *
  * Please update clk_flags[] in drivers/clk/clk.c when making changes here!
  */
-#define CLK_SET_RATE_GATE	BIT(0) /* must be gated across rate change */
-#define CLK_SET_PARENT_GATE	BIT(1) /* must be gated across re-parent */
-#define CLK_SET_RATE_PARENT	BIT(2) /* propagate rate change up one level */
-#define CLK_IGNORE_UNUSED	BIT(3) /* do not gate even if unused */
+#define CLK_SET_RATE_GATE	BIT(13) /* must be gated across rate change */
+#define CLK_SET_PARENT_GATE	BIT(2) /* must be gated across re-parent */
+#define CLK_SET_RATE_PARENT	BIT(3) /* propagate rate change up one level */
+#define CLK_IGNORE_UNUSED	BIT(4) /* do not gate even if unused */
 				/* unused */
 				/* unused */
-#define CLK_GET_RATE_NOCACHE	BIT(6) /* do not use the cached clk rate */
-#define CLK_SET_RATE_NO_REPARENT BIT(7) /* don't re-parent on rate change */
-#define CLK_GET_ACCURACY_NOCACHE BIT(8) /* do not use the cached clk accuracy */
-#define CLK_RECALC_NEW_RATES	BIT(9) /* recalc rates after notifications */
-#define CLK_SET_RATE_UNGATE	BIT(10) /* clock needs to run to set rate */
-#define CLK_IS_CRITICAL		BIT(11) /* do not gate, ever */
+#define CLK_GET_RATE_NOCACHE	BIT(5) /* do not use the cached clk rate */
+#define CLK_SET_RATE_NO_REPARENT BIT(6) /* don't re-parent on rate change */
+#define CLK_GET_ACCURACY_NOCACHE BIT(7) /* do not use the cached clk accuracy */
+#define CLK_RECALC_NEW_RATES	BIT(8) /* recalc rates after notifications */
+#define CLK_SET_RATE_UNGATE	BIT(9) /* clock needs to run to set rate */
+#define CLK_IS_CRITICAL		BIT(10) /* do not gate, ever */
 /* parents need enable during gate/ungate, set rate and re-parent */
-#define CLK_OPS_PARENT_ENABLE	BIT(12)
+#define CLK_OPS_PARENT_ENABLE	BIT(11)
 /* duty cycle call may be forwarded to the parent clock */
-#define CLK_DUTY_CYCLE_PARENT	BIT(13)
+#define CLK_DUTY_CYCLE_PARENT	BIT(12)
 
 struct clk;
 struct clk_hw;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
