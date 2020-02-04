Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A0915164C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 08:14:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ev3zxXhIB18P3bPq3hRaayTKXQuOeSR8+i2gVp8XbNk=; b=jQVOyr2zWvpSQN95soJ4t6q4D2
	AmN9hWzbhoriFipv4EJg17Jcp+8+qfBYzZ7Lo48p3Ug97tDjSUO6ztKeMQn+ayxfmI6dhvqr4xUSH
	KdKdQIZc3iSNZLpB4B0K73gSW+t2eQcX5+G74wH7NLc6yTFALlkRwvX42BethmzkA473U1uY0NAeu
	UG4JD6JJFJZrrWoNvdpu7SlmMLzcbhdv//+D7d4jeVas12y+JbvLRclvOVbYICpe0AwiuqoF5J4tG
	hSOaHwTd1TK+bCA3ypL4+kr7ZiBdlFV1NYrJeXOh3PKTEKh+8aK9+7Byv8/+r7IPusDIYkdGJrECD
	7VuUPyMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iysPE-0004FG-2s; Tue, 04 Feb 2020 07:13:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iysP7-0004Ek-Rw
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 07:13:51 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A0662087E;
 Tue,  4 Feb 2020 07:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580800429;
 bh=4dteibOy4ES6giaiq+d9lMelNb1ecIhbNtrvVUt9phU=;
 h=In-Reply-To:References:To:Subject:From:Date:From;
 b=glybLJx9lH02+WiQlAdl448gEU8QXDYmvsCr/Bv6WqIJW9IJq70tAltfj1ejH4yQA
 T+GeYYb1SuA/ECzWFQ4bRCd2HIvoKybRb4Vk9eu2d9/qBCBj1LEokOU7ClcY0EarhM
 PCvcm1/nSCo3V+lO+ydJWEKX1bjm0xpdZqeked8Y=
MIME-Version: 1.0
In-Reply-To: <1579905147-12142-6-git-send-email-vnkgutta@codeaurora.org>
References: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
 <1579905147-12142-6-git-send-email-vnkgutta@codeaurora.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
 jshriram@codeaurora.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com,
 psodagud@codeaurora.org, robh+dt@kernel.org, tdas@codeaurora.org,
 tsoni@codeaurora.org, vinod.koul@linaro.org, vnkgutta@codeaurora.org
Subject: Re: [PATCH v2 5/7] dt-bindings: clock: Add SM8250 GCC clock bindings
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 03 Feb 2020 23:13:48 -0800
Message-Id: <20200204071349.0A0662087E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_231349_923491_A6E4142E 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Venkata Narendra Kumar Gutta (2020-01-24 14:32:25)
> From: Taniya Das <tdas@codeaurora.org>
> 
> Add device tree bindings for global clock controller on SM8250 SoCs.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> Signed-off-by: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
> ---
>  .../devicetree/bindings/clock/qcom,gcc.yaml        |   1 +

Please rebase this atop Doug's clk series and specify the parents and
binding file for the binding. I'd prefer that we make a new file in the
bindings directory for this SoC.

>  include/dt-bindings/clock/qcom,gcc-sm8250.h        | 271 +++++++++++++++++++++
>  2 files changed, 272 insertions(+)
>  create mode 100644 include/dt-bindings/clock/qcom,gcc-sm8250.h
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
