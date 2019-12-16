Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C6411FFEC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:35:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fy2BkeVR/3SUAq0NkD03PjszBkirTEb39x767BWELVw=; b=mOY/5YUVt4LURcHkoY/WQFg2Z
	3lJvpmmfzNqBx4sbnu6k1LFG41oRM2TfMf/gsvmbh4u9kewIkfKHyy8eekoQ4zkwqYAe6RB/SF0Zo
	HdEUv93CjXD7OhHzB3l255zt42OjKofBUeb8XXKgx2wMS4uL6VQEGUj2EcNhurX9jJm6UH/Co6pbd
	4otMglFl1WNUo7xrPWEBbb8A45oKy1znwy+asZmfvaFMkJiie2w9A7C88EeJG5LEl5/dkU6Ax2sFR
	732/D1mF82gJbc6OG8XvKLJWVny6ycpuNVhpAjK07TSKtuZruRh6sudPHe3hXtKvD6Qq1LZiCrhvy
	63WeKwQ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iglqB-0006Do-0O; Mon, 16 Dec 2019 08:34:55 +0000
Received: from mail.sysgo.com ([176.9.12.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iglq0-0006DB-GT
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:34:45 +0000
Subject: Re: [PATCH v2] tty/serial: atmel: fix out of range clock divider
 handling
To: Greg KH <gregkh@linuxfoundation.org>
References: <1e2e3f63-84db-4b38-1bf1-85916116e0a2@sysgo.com>
 <20191213140301.16490-1-david.engraf@sysgo.com>
 <20191213160726.GB2632926@kroah.com>
From: David Engraf <david.engraf@sysgo.com>
Message-ID: <39e4d1c7-20b0-a024-3a46-e4d4369eed8e@sysgo.com>
Date: Mon, 16 Dec 2019 09:34:09 +0100
MIME-Version: 1.0
In-Reply-To: <20191213160726.GB2632926@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_003444_697194_AF541894 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.12.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, richard.genoud@gmail.com,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-serial@vger.kernel.org, jslaby@suse.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13.12.19 at 17:07, Greg KH wrote:
> On Fri, Dec 13, 2019 at 03:03:01PM +0100, David Engraf wrote:
>> Use MCK_DIV8 when the clock divider is > 65535. Unfortunately the mode
>> register was already written thus the clock selection is ignored.
>>
>> Fix by doing the baud rate calulation before setting the mode.
>>
>> Fixes: 5bf5635ac170 ("tty/serial: atmel: add fractional baud rate support")
>> Signed-off-by: David Engraf <david.engraf@sysgo.com>
>> ---
>>   drivers/tty/serial/atmel_serial.c | 43 ++++++++++++++++---------------
>>   1 file changed, 22 insertions(+), 21 deletions(-)
> 
> What changed from v1?
> 
> Always put that below the --- line.

Oh sorry.

> v3 please?

Sure.

Best regards
- David

> thanks,
> 
> greg k-h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
