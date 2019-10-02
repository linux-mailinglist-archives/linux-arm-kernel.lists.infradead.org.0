Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC3CC8CBE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uO5i8MxnyolkR1sCEp7sgRaFD1Vy2eMFUMf7ZexOxDU=; b=expl+4p5QXwhX/
	m4s1joaYr3Cny0bOveV44GCtscpJINrraTJ0abNr2Pwur3M7dEhHAce5Vn3/n/Q6qQE+glBisabhZ
	soof1q/eHTevReC0+1VDMPX8ZaAAsffXCEM9FXItQMYKxB/XVJ7tlOdIqlCiAo9p2+0oSN29c+UcK
	Llg0Jx3SA+lvY0nxjHb5uc2rIsmYjstIszylqEu7fnG68TU+p+b/EZOxyBjPHqBh1qaKvWr/Fuo3b
	xNwdxBKn58cMn2Bo3b6+WgENjrR7NN62TTYNLpFsXm/o4e8jDu2eFU10acLt5IsNfwCCtz41I+YEL
	yzjuBO8fpFNAAkWQ0zcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFgRd-00088x-Gn; Wed, 02 Oct 2019 15:21:37 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgRW-00088T-6v
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:21:31 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 2D6C120AEE;
 Wed,  2 Oct 2019 17:21:23 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 16ECB20723;
 Wed,  2 Oct 2019 17:21:23 +0200 (CEST)
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
 <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
 <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
 <fa5a35f0e993f2b604b60d5cead3cf28@codeaurora.org>
 <CAOCk7NodWtC__W3=AQfXcjF-W9Az_NNUN0r8w5WmqJMziCcvig@mail.gmail.com>
 <5b8835905a704fb813714694a792df54@codeaurora.org>
 <CANLsYkxPOOorqcnPrbhZLzGV9Y7EGWUUyxvi-Cm5xxnzhx=Ecg@mail.gmail.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <585ee38c-39d1-47df-78b7-f4b670f17a25@free.fr>
Date: Wed, 2 Oct 2019 17:21:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CANLsYkxPOOorqcnPrbhZLzGV9Y7EGWUUyxvi-Cm5xxnzhx=Ecg@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Oct  2 17:21:23 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_082130_401670_6DA4DE13 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/10/2019 17:03, Mathieu Poirier wrote:

> The problem here is that a debug and production device are using the
> same device tree, i.e msm8998.dtsi.  Disabling coresight devices in
> the DTS file will allow the laptop to boot but completely disabled
> coresight blocks on the MTP board.  Leaving things as is breaks the
> laptop but allows coresight to be used on the MTP board.  One of three
> things can happen:
> 
> 1) Nothing gets done and production board can't boot without DTS modifications.
> 2) Disable tags are added to the DTS file and the debug board can't
> use coresight without modifications.
> 2) The handling of the debug power domain is done properly on the
> MSM8998 rather than relying on the bootloader to enable it.
> 3) The DTS file is split or reorganised to account for debug/production devices.

I believe 3) is already the de facto situation.

arch/arm64/boot/dts/qcom/msm8998.dtsi is the "base" config.
arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi for the MTP board.
arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi for the laptops.

> Which of the above ends up being the final solution is entirely up to
> David and Andy.

2498f8c1c668 ;-)

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
