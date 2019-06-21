Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4004EA5C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 16:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBRuvDLv8krl5TNrM69vLEcbAB53tx616atP2KMMnjk=; b=eo+u7fRgZ/BtkU
	8PB3WO4iZck/kf3krR0X3fZf07bYwMFXFFgfJJeSFij6Dwes9Rs7WkVeh3Ff7DxDpF8bH4276yyAu
	TkD8Zd0ZesZJ0U8AJkfLHTjAkF8FLzBWAKLxKQ3pAc7RBmnP6QplE9y1wBiF68y6LgtdV3QkgKA4N
	bFmgdI9hsB7QePcUgwbisXhIXUayg9WwIrHKHaMA/QCxayRz2LDd2LnZn/NrWSuL07Qssg4keTejv
	iZMo4+VEtY71yu2dOLN7z6+lvzPPA1L0e5w54Z9fzid69RjZH85bRKqX7l9rOsQO1R0EhzfkWsfA+
	+JxVlNVu+Yd1znOk5Y+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heKKq-0001tb-4M; Fri, 21 Jun 2019 14:16:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heKKa-0001kG-HO
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 14:15:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A38C12083B;
 Fri, 21 Jun 2019 14:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561126556;
 bh=KnheiynqKeoZwoHdCdEweRfN/gvyS/gjMvNh7Bd20eE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zWVUnpPZJ6u936vpwxIZB5uRenD2hXnnNmZsh6i9lHoSSfk8z8IG6f/5l4FNXo9hX
 uki+1fApoZuYR4y6sKBVHHcCkkV/bMN4VzVtIT07SN2VO92alMF7LA5jOGiD1lnHKt
 SW4n3+4UZVS//VzA3YqSXo+EBntGNX8cSBHEJbqk=
Date: Fri, 21 Jun 2019 16:15:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: Re: [PATCH V7 00/11] misc: xilinx sd-fec drive
Message-ID: <20190621141553.GA16650@kroah.com>
References: <1560274185-264438-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560274185-264438-1-git-send-email-dragan.cvetic@xilinx.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_071556_596059_313E83D9 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 06:29:34PM +0100, Dragan Cvetic wrote:
> This patchset is adding the full Soft Decision Forward Error
> Correction (SD-FEC) driver implementation, driver DT binding and
> driver documentation.
> 
> Forward Error Correction (FEC) codes such as Low Density Parity
> Check (LDPC) and turbo codes provide a means to control errors in
> data transmissions over unreliable or noisy communication
> channels. The SD-FEC Integrated Block is an optimized block for
> soft-decision decoding of these codes. Fixed turbo codes are
> supported directly, whereas custom and standardized LDPC codes
> are supported through the ability to specify the parity check
> matrix through an AXI4-Lite bus or using the optional programmable
> (PL)-based support logic. For the further information see
> https://www.xilinx.com/support/documentation/ip_documentation/
> sd_fec/v1_1/pg256-sdfec-integrated-block.pdf
> 
> This driver is a platform device driver which supports SDFEC16
> (16nm) IP. SD-FEC driver supports LDPC decoding and encoding and
> Turbo code decoding. LDPC codes can be specified on
> a codeword-by-codeword basis, also a custom LDPC code can be used.
> 
> The SD-FEC driver exposes a char device interface and supports
> file operations: open(), close(), poll() and ioctl(). The driver
> allows only one usage of the device, open() limits the number of
> driver instances. The driver also utilize Common Clock Framework
> (CCF).
> 
> The control and monitoring is supported over ioctl system call.
> The features supported by ioctl():
> - enable or disable data pipes to/from device
> - configure the FEC algorithm parameters
> - set the order of data
> - provide a control of a SDFEC bypass option
> - activates/deactivates SD-FEC
> - collect and provide statistical data
> - enable/disable interrupt mode

Is there any userspace tool that talks to this device using these custom
ioctls yet?

Doing a one-off ioctl api is always a risky thing, you are pretty much
just creating brand new system calls for one piece of hardware.

Anyway, I took the first 3 patches here because they looked sane.  and
stopped when I ran into the ioctl problem...

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
