Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787D4130C58
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 04:06:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KD/GxXXe4HPZM5X60gjvKfeDOqzveBknSkJklIsko0c=; b=Oj3ev2N2f/oLpT
	KuW2vtWDb4OtgLFWHzaXqweY+hlIPaNm9aRL8rhqDDu4ftRP2hGn8MOQ99ni6Zl7JDueVvJfdopHm
	GVQCymNa2WzUf9hO93aXtT+zoIOuFkyBPIKbJE17+ZiooZy3AGL3z7oG9nJ+es/e7xOGG/0Kc0EOK
	dP7K+ZDHar2kN3MNRZBxcviOBzy9wzejDwzxfc7xKe1bADGikcchBkCyq3a4wdyF1xbvv0JCIgh19
	+yiFN+XUjz2u0gVYZxlX/5/edoDqoyrtatF/fBqX/2rYWHxfD2YRCnVQZs1P076UqCpyodXfoQU3E
	kC1RUIgn7evTfvWG30TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIjD-0007Od-BY; Mon, 06 Jan 2020 03:06:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIj7-0007OG-40
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 03:06:46 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABF7B21582;
 Mon,  6 Jan 2020 03:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578280004;
 bh=oLScgpu+4KS4XjSuuMv26uOjGwXkmB6mp+/tig1AXW0=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=W0SS4OK/NWzVBFm6NK8kATUULYrycGMSAx1Yxo1sQFE+js+sBnhk+BKoZhQ3zwv0O
 suQRgaS74zZzSJkbb3DG1nJmxoObWZ+YFwH17Kn8h1kIARJv61WcxigcivurUFv0wg
 uAOGojB6rzHMf0BtQfKCJCns6Ei6gM1b/cZUKoD8=
MIME-Version: 1.0
In-Reply-To: <1573478913-19737-1-git-send-email-eugen.hristev@microchip.com>
References: <1573478913-19737-1-git-send-email-eugen.hristev@microchip.com>
To: Eugen.Hristev@microchip.com, alexandre.belloni@bootlin.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com
Subject: Re: [PATCH] clk: at91: sam9x60-pll: adapt PMC_PLL_ACR default value
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 19:06:43 -0800
Message-Id: <20200106030644.ABF7B21582@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_190645_179959_F3F48C9B 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Eugen.Hristev@microchip.com, Ludovic.Desroches@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Eugen.Hristev@microchip.com (2019-11-11 05:28:57)
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Product datasheet recommends different values for UPLL and PLLA analog control
> register.
> Adapt accordingly.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
