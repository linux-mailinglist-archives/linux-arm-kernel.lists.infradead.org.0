Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC85A76C1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 16:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKmxyi51fx7BPnyUn55ULSHgF3Qazp+LgtlxCvf7cHg=; b=fwxh0LQ7yqp4JS
	xkz1i4Lvu14GeCZcNeAmiAaGAnd6LPPN+9m9lxvb8ViSCZde1f7agwB4Tz/6c9r0LAM0Rcrfo8mlG
	LZN6r9Z3Ms04Rjz6tn5Yx7BU+ytbl8q0+bq7XiySJX+MzWUutRoKQ6+Qa6bGATDoxoqQJUNdgcDy9
	zk4phaN4nHZ+H1PkU/UKheaIba9ICKbzeBcBRhuQF15IuhhN+gnJa8lNKZ2ZF+qKuSdXOThE6qF3r
	Us4pUu4XWW4gfbH4Wjx9zOwF3yj3u24Vsl4R/YXJrFhuGYHIPNa4A3yjsOTY0lgBrQq3Q4FK+ZSko
	TrmM/XjVfbx2riZ3AC9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr1b4-0008RO-G7; Fri, 26 Jul 2019 14:53:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr1at-0008Qm-1Z
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 14:53:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90873152D;
 Fri, 26 Jul 2019 07:53:14 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A35F3F71F;
 Fri, 26 Jul 2019 07:53:12 -0700 (PDT)
Subject: Re: [PATCH v9 0/8] EDAC drivers for Armada XP L2 and DDR
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
From: James Morse <james.morse@arm.com>
Message-ID: <d1dfe8ec-66e8-e2c8-5421-a18d7e7fc8fc@arm.com>
Date: Fri, 26 Jul 2019 15:53:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_075315_135940_71044629 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jlu@pengutronix.de,
 linux-edac@vger.kernel.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bp@alien8.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 patches@armlinux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chris,

On 12/07/2019 04:48, Chris Packham wrote:
> I still seem to be struggling to get this on anyone's radar.

Whose radar does it need to cross?


> The Reviews/Acks have been given so this should be good to go in via the ARM
> tree as planned.
> 
> http://lists.infradead.org/pipermail/linux-arm-kernel/2017-August/525561.html

For your v8 I took this to mean this series was done!

If nothing has changed with Boris and Russell's decision (it was two years ago....),
details of the patch system are here:

https://lore.kernel.org/linux-arm-kernel/20190624142346.pxljv3m4npatdiyk@shell.armlinux.org.uk/


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
