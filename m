Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDF215B24B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 21:57:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bw+cOkrGYZi/hwpDD8rIE16ou82WRh6dsoThxQeeWIc=; b=fCT2WhgRXpSMHh
	PKBgJMy/N1x3bxYd5TduatcVMIxDQ94ip87JnUu43ddap6zBShgBdSW3XKHSFqr9MQBh8iYizXqrz
	IT0sqE2BeWAhuO1+88Xh3X+9owOfU2cX+tER5/aUo5Hj03kftG24jM7JNrtEkw9XWO+69ozS1IfGg
	W5JMDfMCt2mmBqf+D/4uwkCfDE5QVetPBG5GE8KU948BQah3nL+ce8nFfYsPouj5LGiyHyjq8NHd9
	0ghel5FHfpOFA04EqYrKrdod4rKmG/Ko+twESjKWkTlJp5f/JrGT1bALp8lUPJV3Xw2lD18xxZEy3
	vD7jbU8slspJktswrziA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1z42-0002Dg-SQ; Wed, 12 Feb 2020 20:56:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1z3v-0002D5-2y
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 20:56:48 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABB3B206D7;
 Wed, 12 Feb 2020 20:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581541006;
 bh=6JUIeGnobCesRFIUBJ2CLpKhQXL2MRAvR1jW2Ct4oZo=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=HBuNWZs1U+r4YSTXUPmhVudgDrgmtRXQYGnrqMMCoTbyblPPpOGPeLI8QJaYAPD2A
 2hALbIWEOklTTfLu7QrGjcsopyvr5AiSbDOutrGtA9FZBNjqh+leNYVuWtWRm+Utva
 AwrGRtXl/hM2+nFg6LxetbLpsk6L6T/WHyz3ZBmE=
MIME-Version: 1.0
In-Reply-To: <1581508657-12107-1-git-send-email-Anson.Huang@nxp.com>
References: <1581508657-12107-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/5] clk: imx6sl: Add missing of_node_put()
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, allison@lohutok.net,
 festevam@gmail.com, gregkh@linuxfoundation.org, kernel@pengutronix.de,
 leonard.crestez@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 mturquette@baylibre.com, peng.fan@nxp.com, ping.bai@nxp.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org, tglx@linutronix.de
Date: Wed, 12 Feb 2020 12:56:45 -0800
Message-ID: <158154100587.184098.7873160053453948257@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_125647_155558_7E8249C1 
X-CRM114-Status: UNSURE (   5.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-02-12 03:57:33)
> After finishing using device node got from of_find_compatible_node(),
> of_node_put() needs to be called.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
