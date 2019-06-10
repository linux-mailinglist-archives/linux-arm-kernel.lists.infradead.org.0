Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9C93B7AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JOGq1sXbgwcMHMyAiXGVAh9Zr+7XMT1C9fEoUJIA+s=; b=Ma15lWiwvwF2HI
	YRnPvcExYalfiQifwM8yjxNbFG58EbIvcm8Y3i0EoCjXEYp8/YUD4MAvI5wOnETtypTC702BFG5oB
	PEzsRx8FUIS1ArBrctrw/wF8oedv5WF6YK+VzyxHtm+NHAEUYUP+zQEjpZ4b2zFO3iBlaRxjK7s5/
	+gRbXDy9M/J69MMqk7DMu7Gc63e1En+6ue0I2fUsRcs16nUaB0JF6gx1SFn5Ck3hUWBvGoy11A4EC
	p8xt+bGUHQeJ3wHlY6oaSKBnGUDg2KeI+OjiWTWgx/OEctO5L/dq5gBxRMtbUxxSnpXLGoNBcKcDj
	hmzGZTQUn79Oj0EEpDQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haLXM-000879-0x; Mon, 10 Jun 2019 14:44:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haLXC-00086M-9H
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 14:44:31 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA36820862;
 Mon, 10 Jun 2019 14:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560177868;
 bh=VLfM+wWmxpE5AULiFHFYRojFpTMl7cMl/hwlGcegjgQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jc2MaiVDg2758MmQoWZbjHHQJDc/Xa2e2UsmDtfUj/SenOvyC3fjdQIpnmFeOQ8qN
 IHz38ARkQSI65W0TV3vjf1uuZp67HKX02i5VcaZwUdA8Fx0pGwXVGVy63MRSNGVqlJ
 sEsvHguvSjm/gUXMZwT94Bp/Oc3PcxlFoxO6Z03o=
Date: Mon, 10 Jun 2019 16:44:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH 1/2] serial: xilinx_uartps: Fix warnings in the driver
Message-ID: <20190610144425.GC31086@kroah.com>
References: <c6753260caf8b20cc002b15fcbf22b759c91d760.1560156294.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6753260caf8b20cc002b15fcbf22b759c91d760.1560156294.git.michal.simek@xilinx.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_074430_344753_33EF045F 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: monstr@monstr.eu, Nava kishore Manne <nava.manne@xilinx.com>,
 linux-kernel@vger.kernel.org, johan@kernel.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 10:44:55AM +0200, Michal Simek wrote:
> From: Nava kishore Manne <nava.manne@xilinx.com>
> 
> This patch fixes the below warning
> 
>         -->Symbolic permissions 'S_IRUGO' are not preferred.
>            Consider using octal permissions '0444'.
>         -->macros should not use a trailing semicolon.
>         -->line over 80 characters.
>         -->void function return statements are not generally useful.
>         -->Prefer 'unsigned int' to bare use of 'unsigned'.
> 
> Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> 
> Happy to split it if needed.

Please split.  Do not do more than one "logical thing" per patch.

And the subject is not correct, there are no general "warnings", these
are all checkpatch warnings, not a build issue.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
