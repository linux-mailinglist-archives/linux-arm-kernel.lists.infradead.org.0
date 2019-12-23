Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CAF129218
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXIjwsg32uTgaeRgETy5dUDZBkDa0m12fT6FYTDZ4gQ=; b=TnCOQCR9aL2heH
	N1aPeg0S0GD75wB33rvBoB02UuzVm8htP8QPJFSmsTOf3kVpJPEm/UwRnwjn3urDAP+bLeF31Bqb5
	oWOBTjSt0M+oz7Wrp924C64yFf7yS7w/pWFOc29FMH5kQhtBCpkMfmVMDBluH6qiMRmguo4V0KA6u
	2DJEqMwmti07gSyYGN30Ypp+t6WruD7CArndZH6naTUlPH77n9sB29bo+B/310Lb6GsunFA+sMDso
	fSko79C7MubvRdEQSXiXpG1g7T5jn24hf5OCUMymCc9bj+jwA88txFoJUvAdK3ko7EBcE2zNcfgIN
	9rq+CV/r2A4tXWXH0ISQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHjN-0004xa-F1; Mon, 23 Dec 2019 07:02:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHjC-0004xH-Gb
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 07:02:07 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19C9E20663;
 Mon, 23 Dec 2019 07:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577084526;
 bh=iRJyVPfeOjUUuDQxbKZ6Wwlu9UG4UtjyQCDCmBmLWiA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wbthxuwltGaX0EObARt+mugsv3lJON9MDo/+6SrdjX0+Sol9PSyUQrNMilAgDmH71
 hi4fG/breZ+Sgfi6YZrq3S1X1pYIuHWBzwvkuYYr257GPm5uQ4j6SZ+e1QjgPu940w
 rKrrdphfqwL9Zj9Cp48TAR2nrNSO3eozwa3mdjYc=
Date: Mon, 23 Dec 2019 15:01:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: imx51-babbage: Fix the DVI output
 description
Message-ID: <20191223070144.GQ11523@dragon>
References: <20191213135838.28697-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213135838.28697-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_230206_572304_A38F584B 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 10:58:37AM -0300, Fabio Estevam wrote:
> imx51-babbage has a TFP410 chip that receives 24-bit RGB parallel
> input and convert it to DVI.
> 
> Fix the device tree description to reflect the real hardware.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
