Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B10E7273
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 14:15:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BICX9M5U6uulq/5sImh+lzotEHLMmpJbAzzKNi/bhg=; b=IhL4/WKYtz/ILr
	8OhNYuob4xyMY+VL3HsLbaXCXGI5eBq2ZmzrIZbG7jFjri+lrVzYT/hKFZG3Ytv2e4/3rqQZt9n7a
	XyKW+LB8VuIyNYHl19j/LK4Yf5aLV2ju2yCpvtNs5WxSpFB43v3aSeibB+rfEQAN4hUaUnshtnxIN
	6HiggaKtDJgatJ5rMVFAvDJG2oBpCuMDSbq+YIvVWaiqOVG6qdQaW7GviIwNIsUBMsKTPCwMOEQh9
	e//Yf/zODefMTHCVYqkYntMxUFvtjFDuU+8io/xsooxAHT1zm9NXZJ+qq0gcvKQT9ak5ewJFbqyb7
	C64swgk4et1K8WeRhO5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP4rL-0006VI-0l; Mon, 28 Oct 2019 13:14:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP4rB-0006Un-6V
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 13:14:50 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE21C20717;
 Mon, 28 Oct 2019 13:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572268488;
 bh=pWaCpaVaO/FmseYToqBvScFTP4pNn04IN1BrJPwjpWI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t9dO4ZqkqF6yz6EaoSw+qSX0hLoJt6buJZGnlbqEQp/ls9yOiq85oM3sJeT8R2EIv
 9dSC0Afdy93bvbnCXxP8MA0JuNwG2ZbVYvViJN1ULASINBrjeJSGwuPvyeM5scXLO/
 5LDhhC9p2kfQDNT97+Otmhhhxrz76N7kOJaqg9V8=
Date: Mon, 28 Oct 2019 21:14:30 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: ls1028a-qds: Remove unnecessary
 #address-cells/#size-cells
Message-ID: <20191028131425.GL16985@dragon>
References: <20191026000119.27178-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026000119.27178-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_061449_259028_E49CA383 
X-CRM114-Status: UNSURE (   7.89  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, leoyang.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 09:01:17PM -0300, Fabio Estevam wrote:
> The following build warning is seen with W=1:
> 
> arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts:196.10-208.4: Warning (avoid_unnecessary_addr_size): /soc/i2c@2000000/fpga@66: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
> 
> Fix it by removing the unnecessary #address-cells/#size-cells.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
