Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8E215AB4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 15:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XFlca9pXuLSNmGTcr4a/NAy7E//n5fKkINL7GSKYhYw=; b=ONEcq1z4Lh0ZCtK1R5hKCvxnd
	TS2XEcRrZD77HCrOYjukZS+x4Tdb1c0EuQEf+fVw3KtUC7SoRtQLsBWOrdVkZzWayDj7YqnXIPEva
	IfUAo5uo3x7rtOrwR2pKHyjZuWC0phqj/dDtVN+yoehy0b5bewoo6RxGmSBiV+Ea2267IZimnyvGe
	msdCH9XGkAznCIDJk0fWPlrC83msQzb7Y7EVua7Xue1Spx84lSK9ybX+RWHuBU1417tjvSSIbpLyk
	hzAPoUNyCDiNsA+IKBEEVOKYS2xdTeVeAL8Fbyg6/zicVbjZSGDT3d4iQwwY6Qfb3D1H2kHFzyhET
	U6IURw8LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1tLL-0001XZ-1N; Wed, 12 Feb 2020 14:50:23 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1tLE-0001Wr-0m
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 14:50:17 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48HjH61MtRz9tyGJ;
 Wed, 12 Feb 2020 15:50:10 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=YTdEmJUk; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 5RjadGcG7HrB; Wed, 12 Feb 2020 15:50:10 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48HjH604Q1z9tyGH;
 Wed, 12 Feb 2020 15:50:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1581519010; bh=LBWMl894vJ7EAcT3mNEJhOk9WBnw1O2BGFy/5mVsvQI=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=YTdEmJUkUYPjOWKfvbihiULUY/+lpmDckGhtcE2vkeGLUDUqkzK+jEQuQRd1TAS6s
 7+0PAN2X58D7x8ODTQ1zXc16Kcf3PxXEN1WQgXiihVdoT8z0aNI/GVwlcFFKGKr6eJ
 bZjG/zfT90wiZp7ReSx9vwD5DUC0NjlQGPgX3Wfk=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 4DD528B81A;
 Wed, 12 Feb 2020 15:50:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id BMQgy6qvhP4D; Wed, 12 Feb 2020 15:50:11 +0100 (CET)
Received: from pc16570vm.idsi0.si.c-s.fr (po15451.idsi0.si.c-s.fr
 [172.25.230.102])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 02CC68B80D;
 Wed, 12 Feb 2020 15:50:10 +0100 (CET)
Subject: Re: [Regression 5.6-rc1][Bisected b6231ea2b3c6] Powerpc 8xx doesn't
 boot anymore
From: Christophe Leroy <christophe.leroy@c-s.fr>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Li Yang
 <leoyang.li@nxp.com>, Qiang Zhao <qiang.zhao@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
Message-ID: <aee10440-c244-7c93-d3bb-fd29d8a83be4@c-s.fr>
Date: Wed, 12 Feb 2020 14:50:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_065016_218934_16B07699 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02/12/2020 02:24 PM, Christophe Leroy wrote:
> Hi Rasmus,
> 
> Kernel 5.6-rc1 silently fails on boot.
> 
> I bisected the problem to commit b6231ea2b3c6 ("soc: fsl: qe: drop 
> broken lazy call of cpm_muram_init()")
> 
> I get a bad_page_fault() for an access at address 8 in 
> cpm_muram_alloc_common(), called from cpm_uart_console_setup() via 
> cpm_uart_allocbuf()
> 
> Reverting the guilty commit on top of 5.6-rc1 is not trivial.
> 
> In your commit text you explain that cpm_muram_init() is called via 
> subsys_initcall. But console init is done before that, so it cannot work.
> 
> Do you have a fix for that ?
> 

The following patch allows powerpc 8xx to boot again. Don't know if 
that's the good place and way to do the fix though.

---
diff --git a/drivers/tty/serial/cpm_uart/cpm_uart_core.c 
b/drivers/tty/serial/cpm_uart/cpm_uart_core.c
index 4cabded8390b..341d682ec6eb 100644
--- a/drivers/tty/serial/cpm_uart/cpm_uart_core.c
+++ b/drivers/tty/serial/cpm_uart/cpm_uart_core.c
@@ -1351,6 +1351,7 @@ static int __init cpm_uart_console_setup(struct 
console *co, char *options)
  		clrbits32(&pinfo->sccp->scc_gsmrl, SCC_GSMRL_ENR | SCC_GSMRL_ENT);
  	}

+	cpm_muram_init();
  	ret = cpm_uart_allocbuf(pinfo, 1);

  	if (ret)

---
Christophe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
