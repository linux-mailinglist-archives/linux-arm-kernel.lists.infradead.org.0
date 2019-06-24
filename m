Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 140164FFD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 05:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3Zi0fK9pGwR9ICdlAmp7TTA2a4hIlLd2JG++kZUs5g=; b=PiyLzDqfXJ0c+c
	+HXqqUxcZSNxd/j1Kms6yNkx354rrTA4LOsJGDMPyVznrRdW7XW6/I5iriGx8CO7m+3rWIKsjvmhf
	Esumnt5vsCUdE4EUs+x0SOZzKJnqZniIZBhbiuN973EZ6+zW1nV3ggrUcUvhHcIgo05to9N2UrHZZ
	oPOUs5D+7EK0+9EdzK4j2np4uzhqWXXZAgPr+Um+iE9zH/ovaF4AmdlFQz1vyTzopha9YsdKbsACY
	RRk1EBRBQLSmdf0fHr8ufkiNjV2OvTphOhNmJbKmwuLF3D4oyRS0hA4weOXxvFzpe7nSyo4dMG5j4
	IqWTKIMzDPrUvv0cMZtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfFHP-0006Wu-HQ; Mon, 24 Jun 2019 03:04:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfFHA-0006WI-Q8
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 03:04:13 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EDDD208CA;
 Mon, 24 Jun 2019 03:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561345452;
 bh=VpqSPoe3EJBBY2OalpCInT72b/aWrtdwNtwonmJJI2Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y17lL3xf4Be5Epix7z9u9dGtMcWXUoAKyqTsqu7X4keaNBQobkEACI+GXa/FStUnn
 V71c+/spSQTuTKryrakXlD5/nz+nUA08adG+Q8ThjRC1DwX3pKGIJeo9n2oH3rx877
 VT1b4LsrZh4jhAuZOcvV4OCVZoJO9Wp+bB9NYYW0=
Date: Mon, 24 Jun 2019 11:03:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH v5 7/8] ARM: dts: imx7ulp-evk: enable USBOTG1 support
Message-ID: <20190624030359.GQ3800@dragon>
References: <20190624020258.21690-1-peter.chen@nxp.com>
 <20190624020258.21690-8-peter.chen@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624020258.21690-8-peter.chen@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_200412_868126_66081D69 
X-CRM114-Status: UNSURE (   7.43  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aisheng.dong@nxp.com, balbi@kernel.org, sergei.shtylyov@cogentembedded.com,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 chunfeng.yun@mediatek.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 10:02:57AM +0800, Peter Chen wrote:
> Enable USBOTG1 support for evk board, it is dual-role function
> port.
> 
> Signed-off-by: Peter Chen <peter.chen@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
