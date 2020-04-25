Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F50B1B8494
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 10:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTkYQhwuCkXIFe+UtxSpwBERE7M7Rw5QfynW+FCVUyM=; b=CIFTaXtA7zNErN
	RNTo+lViz0/IzlMJgLMY1Ttj+ZF30XFYWA+KfWDOkS19ZQkWMhf0gYT8A32ZRc4kT0iRBn1rvbwPr
	97br6SmuKnCY4jYFozXoFdauMqJeaM+XgUBRJdJlqvYAoZMsdlAiHIBIBtbIne9//QN6F5nPEya11
	p4M/pFchOT0OEpkMsU5d5/FluyILDyL0KCdfmitGbC6AJx0kLMwE9xFZVIxDBDE1DNr8QJ03uB1T6
	BiCwI6qkc7X7FHC5js3AgeJrHQVF7g0cBe6SyhzhWiSyqvgXk3sv6a/KBzzbLzTBzZ1hc5mlPDvoi
	idEtEZ22C/o1oJyhyNqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSFyI-00069t-8V; Sat, 25 Apr 2020 08:15:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSFy9-00068d-2D
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 08:15:26 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B27072071C;
 Sat, 25 Apr 2020 08:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587802524;
 bh=ww/HOV88lBa4723mthKQctFHSP3uLaHiUZfFuvkpzN0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JiVpjzRxKYQGDxjqEYzyshB3ff3yL6gbLHbRrGRiHmT/A7L0FXZImrD7s4KT5X502
 C3/1Gu+Peba8tQbfbNEyvZUno6K4kit+aDWPqCQUAjq/kdzniJzBdUTHTkVfHwbzN1
 OBxTWQWrfYsJ/uLQRU9Yf9WblyMiMXWllLW5XWek=
Date: Sat, 25 Apr 2020 16:15:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4] arm64: dts: imx8mp: Add thermal zones support
Message-ID: <20200425081517.GB30501@dragon>
References: <1585915404-7658-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585915404-7658-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_011525_134205_4E971716 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, peng.fan@nxp.com, horia.geanta@nxp.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 08:03:24PM +0800, Anson Huang wrote:
> i.MX8MP has a TMU inside which supports two thermal zones, add support
> for them.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
