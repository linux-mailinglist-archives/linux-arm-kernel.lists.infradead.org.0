Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B02160B31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:55:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRhez0vgMIcNJTgGANldm8p0hfrc4pt5m/F3VV+XcJA=; b=p9M0n1O7LQW28q
	Kg6Z5ydSY8a6f3/8v7jfpWv6iSNvzliGycpQujAuwMhaF+o2zRkCmpmQH61NZrI1EDEh55A6iZG1l
	/17SGRhlxGrToJYspO6pSRjVxMTqpyYuhejsly6MY5AEwsuq88R7VtJdh067tswRZFoZhgGAtxNms
	svK4GZvCcerOS1v5sPIH+pWu2iLpKPKIhIOLFyCyHiKmf4E3YPXIuxXn2p6I2YPyL4y6TucP7IwHg
	wZWOCknX4qhtKKxGSplcDokQdu9kdIXAQob3co3mYmEQwfJU6N7fJiIgC0r7+AQOu3pcFI4PAfH5E
	+M2Y/Y6gJkrxW7AJvn+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aJR-0007Mk-M9; Mon, 17 Feb 2020 06:55:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3aEN-0002fq-9N
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:50:13 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D438206F4;
 Mon, 17 Feb 2020 06:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581922209;
 bh=JQkGABFIlQvovIOqkHT6E9MfymQLa5WbIAQSz1frL8E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wewM8cUXYNBtHnbaBTtlKip2k3vbkwfSAehaBTQ+s1MlGPUGEYIRLhQiZ9HWEI7Kr
 NbLPaM2CK1h+RXAUWuCB53d26IBi38Lw6prqtolmZK9HFKh90ZXH+LiFhH+Z/dMnpf
 0iewJnlk3xjqv+U/2fkibUEx81PEodbzvMzn7aAI=
Date: Mon, 17 Feb 2020 14:50:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/5] ARM: dts: imx6qdl: imx: make gpt node name generic
Message-ID: <20200217065003.GA7973@dragon>
References: <1581562380-26065-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581562380-26065-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_225011_389971_ABB02A0D 
X-CRM114-Status: UNSURE (   8.34  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 10:52:56AM +0800, Anson Huang wrote:
> Node name should be generic, use "timer" instead of "gpt" for gpt node.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied all by squashing them into one patch.  Thanks.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
