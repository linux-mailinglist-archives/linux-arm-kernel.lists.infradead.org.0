Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1911E06FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 17:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dcGwtf5i0Q2tyebQzaPGSXsL9yHYGWVoyid3sF73gRY=; b=cB3metzwNpbrq1QBQE+42yUNR
	kc5jINImWiXm1QOuN3QVHItsOaZueWrV6Ii9SjhNTAlmfvFwnAfKCd+rHbc1qDJZa/5bCRi02WLy5
	vVADb0uPzi/+1dHmcCKmcDRzgDSvqVU2loJ9fitHRNdNtW2o0AXhZti5EL/3khlkdCiVAbbq2DqS/
	Qvgbjg/+dWH6UoZB5bWdXhDi4LYwKeTiFVwXJrhx5X53RHofsXn089ehIRc3GwirdtJCr8YoNzNaH
	qc0IVYJCtXOgo/RXCeG4RLI8fPRLfpP+hGb3d1Gu/73c/1LuqaGkHb2+YjidE6hpZ5Vs2smL5AVCV
	7xy4kRNwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMvjw-0005GK-VF; Tue, 22 Oct 2019 15:06:28 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMvjn-0005Fs-01
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 15:06:20 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46yGzZ3WYzz9txrJ;
 Tue, 22 Oct 2019 17:06:02 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=IjCNGVD/; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id Jh8cJZ18iESD; Tue, 22 Oct 2019 17:06:02 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46yGzZ0Wppz9txrG;
 Tue, 22 Oct 2019 17:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1571756762; bh=ZTTwSzcfyFlbzpNpRSH3QAO6LqI52zwrKBYTswAtHNM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=IjCNGVD/m+/3chtJGoKPuCqnoE/qjdU6NrH1x41xizbG/AhCOYIRQB+QO5vlsJ7/2
 wqzZ2eWImxNZQ/T4BDEEKb61YVt/OeI3FXDBrXiajTMpFSqXvckl1n+kYp1ejLLCul
 xWiNhXxkahj2A8m2aG1TrGbwz8FSVKfdFtjxUDFc=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 80D6D8B93A;
 Tue, 22 Oct 2019 17:06:03 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id JxnfEccYQSsS; Tue, 22 Oct 2019 17:06:03 +0200 (CEST)
Received: from po16098vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id DAC5A8B931;
 Tue, 22 Oct 2019 17:06:02 +0200 (CEST)
Subject: Re: [PATCH 0/7] towards QE support on ARM
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Timur Tabi <timur@kernel.org>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <e50640a4-bf6b-9859-2acf-81f4af9c6409@c-s.fr>
Date: Tue, 22 Oct 2019 15:06:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_080619_334948_C45BE950 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/18/2019 12:52 PM, Rasmus Villemoes wrote:
> There have been several attempts in the past few years to allow
> building the QUICC engine drivers for platforms other than PPC. This
> is (the beginning of) yet another attempt. I hope I can get someone to
> pick up these relatively trivial patches (I _think_ they shouldn't
> change functionality at all), and then I'll continue slowly working
> towards removing the PPC32 dependency for CONFIG_QUICC_ENGINE.
> 
> Tested on an MPC8309-derived board.
> 
> Rasmus Villemoes (7):
>    soc: fsl: qe: remove space-before-tab
>    soc: fsl: qe: drop volatile qualifier of struct qe_ic::regs
>    soc: fsl: qe: avoid ppc-specific io accessors
>    soc: fsl: qe: replace spin_event_timeout by readx_poll_timeout_atomic
>    serial: make SERIAL_QE depend on PPC32
>    serial: ucc_uart.c: explicitly include asm/cpm.h
>    soc/fsl/qe/qe.h: remove include of asm/cpm.h

Please copy the entire series to linuxppc-dev list. We are missing 5/7 
and 7/7 (see 
https://patchwork.ozlabs.org/project/linuxppc-dev/list/?series=137048)

Christophe

> 
>   drivers/soc/fsl/qe/gpio.c     | 30 ++++++++--------
>   drivers/soc/fsl/qe/qe.c       | 44 +++++++++++------------
>   drivers/soc/fsl/qe/qe_ic.c    |  8 ++---
>   drivers/soc/fsl/qe/qe_ic.h    |  2 +-
>   drivers/soc/fsl/qe/qe_io.c    | 40 ++++++++++-----------
>   drivers/soc/fsl/qe/qe_tdm.c   |  8 ++---
>   drivers/soc/fsl/qe/ucc.c      | 12 +++----
>   drivers/soc/fsl/qe/ucc_fast.c | 66 ++++++++++++++++++-----------------
>   drivers/soc/fsl/qe/ucc_slow.c | 38 ++++++++++----------
>   drivers/soc/fsl/qe/usb.c      |  2 +-
>   drivers/tty/serial/Kconfig    |  1 +
>   drivers/tty/serial/ucc_uart.c |  1 +
>   include/soc/fsl/qe/qe.h       |  1 -
>   13 files changed, 126 insertions(+), 127 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
