Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7466F89F81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 15:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zj1APVbY0a+crXZbhaF8OlyBZD8Ek9cTl4rKP5PEMr0=; b=ryPy/rqK89BvFx
	ezIKssLQyGE4bMx8xhEsX9Uo3mR76/2x7hZLwznaxdRTt9X0HlzPaqh4vExxppYtgNlDsvCvNaLhl
	A6C0FarlNayyC4qhNV+KctqfcIYRyfH3ct4oyQe0QK+ycTli/KAtkNfw9kiiH+0qn75iUn6wE+2T4
	3xWF2uxN1Yw/Yj7WGlSLxHTqe7eu6sTwPDLBZ0YmA+q2jT41HeVKoPCl4BaDtRo2QG6sTT/3H+7Fv
	b4d5qHREXFgkyDkz9Tt8qEO8/YW4QJQeDxlVWuBdQYLs/JIxo2rXcbAJMnjBllbSLeTHYWgUEy13r
	lxfP5xeLFbpNO5z8zo+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxAFK-00044t-BS; Mon, 12 Aug 2019 13:20:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxAEu-00044S-FD
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 13:19:57 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2120320684;
 Mon, 12 Aug 2019 13:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565615996;
 bh=pVSfYIlzn3yG2Vhxq1/FZ/qGcjO5DT4ZLCyifUSAIvc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YhLcJikBIG9LKg9xa66AKfYk2OmZ4MBG46Dv9DR4sJmgPNTZn5XXVMlqTVTpoK7s8
 jhBn2d0DndTJMzExTIACSpx93BWVtkd31c1JIj/cQ3LwGk97Pga9h0xW+aRenUglLt
 0pCsaSolP6RkIkumevR6zoJbpI9gCIEhKXG8JW/k=
Date: Mon, 12 Aug 2019 15:19:45 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH v4] firmware: imx: Add DSP IPC protocol interface
Message-ID: <20190812131944.GE27041@X250>
References: <20190801095636.22944-1-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801095636.22944-1-daniel.baluta@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_061956_525405_03133B39 
X-CRM114-Status: GOOD (  12.35  )
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
Cc: aisheng.dong@nxp.com, anson.huang@nxp.com, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, o.rempel@pengutronix.de,
 linux-imx@nxp.com, kernel@pengutronix.de, tglx@linutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 12:56:36PM +0300, Daniel Baluta wrote:
> Some of i.MX8 processors (e.g i.MX8QM, i.MX8QXP) contain
> the Tensilica HiFi4 DSP for advanced pre- and post-audio
> processing.
> 
> The communication between Host CPU and DSP firmware is
> taking place using a shared memory area for message passing
> and a dedicated Messaging Unit for notifications.
> 
> DSP IPC protocol offers a doorbell interface using
> imx-mailbox API.
> 
> We use 4 MU channels (2 x TXDB, 2 x RXDB) to implement a
> request-reply protocol.
> 
> Connection 0 (txdb0, rxdb0):
>         - Host writes messasge to shared memory [SHMEM]
> 	- Host sends a request [MU]
> 	- DSP handles request [SHMEM]
> 	- DSP sends reply [MU]
> 
> Connection 1 (txdb1, rxdb1):
> 	- DSP writes a message to shared memory [SHMEM]
> 	- DSP sends a request [MU]
> 	- Host handles request [SHMEM]
> 	- Host sends reply [MU]
> 
> The protocol interface will be used by a Host client to
> communicate with the DSP. First client will be the i.MX8
> part from Sound Open Firmware infrastructure.
> 
> The protocol offers the following interface:
> 
> On Tx:
>    - imx_dsp_ring_doorbell, will be called to notify the DSP
>    that it needs to handle a request.
> 
> On Rx:
>    - clients need to provide two callbacks:
> 	.handle_reply
> 	.handle_request
>   - the callbacks will be used by the protocol on
>     notification arrival from DSP.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
