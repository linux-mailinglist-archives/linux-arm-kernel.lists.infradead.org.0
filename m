Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7549615AAEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 15:25:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IK1M3kcoGMEgKYLKOTUHUAXvT9P3j2VE1cF8ganGA94=; b=KSZX7OgAPa1onvUjK9GWaIO8l7
	wyMsUhDQvg273D9qJxWxW2cOFlY5x8pa0JEA+92PRUoIjhW2Lx0oM4GcDR3/Rz7p/cm1PAvavC3xv
	cAzbwtSFMbJaE+FrtHCllMb4hMiyd/Z/Lu6HPW7mRd6dwlKoFXOimWUGMKjcuSOaWlr0kcvvTuOJk
	YhGgnsTze3ZwxuxUvWhjZDsOl/q7ipdhg5ziEVaa5ea4wcd7obmLXVH5Gb1OqjHnX6jWQ1aJ84WGX
	u5vjv+sr54uXhuhfr1tV7Gi2fEqQYJqIl5Yb7kmJQbtce6WW1YY61ddhxB8sgjkUYGEwSwQYQjLY4
	oJ5cQ+Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1swz-0007DM-Jb; Wed, 12 Feb 2020 14:25:13 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1swm-0006jr-Lj
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 14:25:02 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48Hhjc2VPgz9txMl;
 Wed, 12 Feb 2020 15:24:36 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=E4jQh+u/; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id vgRppl4aZR85; Wed, 12 Feb 2020 15:24:36 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48Hhjc1JJvz9txMj;
 Wed, 12 Feb 2020 15:24:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1581517476; bh=igqAQ6RyNRhDBT/cqa7dKxQJPcmonCFpfGNLvOYs5Ag=;
 h=From:Subject:To:Cc:Date:From;
 b=E4jQh+u/E2Y2/69w0EdD7SYH455XnezpEG1HAgq2DEV4PDSPitdhFI8oyHoI9VzBy
 R0F1q3WUTgldY3k0NYDh6shv/9PlBFzYD/EvuYk0rvwInhtsnxW251BU6mjk0MGU63
 2Dz00a7ahBfUa8gYFCt53SmqAN0Sk6MQjMjZ8bEc=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 66A498B81A;
 Wed, 12 Feb 2020 15:24:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id j91gDLBU-b-L; Wed, 12 Feb 2020 15:24:37 +0100 (CET)
Received: from pc16570vm.idsi0.si.c-s.fr (po15451.idsi0.si.c-s.fr
 [172.25.230.102])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 2D1F38B80D;
 Wed, 12 Feb 2020 15:24:37 +0100 (CET)
From: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [Regression 5.6-rc1][Bisected b6231ea2b3c6] Powerpc 8xx doesn't boot
 anymore
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Li Yang
 <leoyang.li@nxp.com>, Qiang Zhao <qiang.zhao@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
Date: Wed, 12 Feb 2020 14:24:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_062500_858232_9BB227B0 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
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

Hi Rasmus,

Kernel 5.6-rc1 silently fails on boot.

I bisected the problem to commit b6231ea2b3c6 ("soc: fsl: qe: drop 
broken lazy call of cpm_muram_init()")

I get a bad_page_fault() for an access at address 8 in 
cpm_muram_alloc_common(), called from cpm_uart_console_setup() via 
cpm_uart_allocbuf()

Reverting the guilty commit on top of 5.6-rc1 is not trivial.

In your commit text you explain that cpm_muram_init() is called via 
subsys_initcall. But console init is done before that, so it cannot work.

Do you have a fix for that ?

Thanks
Christophe

NB: Next time, can you please copy powerpc mailing list when changing 
such core parts of powerpc CPUs ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
