Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1DD2C43A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5+PrpDHQV8j002aKw0AEybJVtpkWgZ8wDEdbXGqBkw=; b=pKjg35Dac++Yq7
	cv63cMEI0XUCYvmj+X7oNa0UjP3v3PqsFPms17P/cfJNjXiRSmCaP+OABalr4YbqRN90NyDdgwTbN
	/ol9DxS+s2ufZJDa58AKfyYWojlFKkmMa7zUFYgcfZltbjJuREveccCEnnRt9XSZ8gevU7CUZF2Y3
	ZQgz4gbnfd20B9wj7ZoZJxyYbsgTuO3uARzaD53l0ZmPb28SWDMpkHTIzWWViGKVFH7H6qGe/BABb
	KlyxhyBTDuZ4zbhosl3Tab5qm036GpON5yUBeUrZoIfe811XrTZ1hPjTmD+7oM3VCYEZ2tXWqd/hZ
	f2u8miqB+ZZx+j2mRnVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZIJ-0003vU-FB; Tue, 28 May 2019 10:25:23 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZIC-0003uI-45
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 10:25:17 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 45CqjM1bQhz1rZ07;
 Tue, 28 May 2019 12:25:11 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 45CqjL64ZDz1qqkH;
 Tue, 28 May 2019 12:25:10 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id ipmAkLzaT_pN; Tue, 28 May 2019 12:25:09 +0200 (CEST)
X-Auth-Info: 2hslSmEGTPLoyKNKYOOmViG/Dyfm+220WIVpGrKlHlvIBaw9uFUuecR4QmL82tBJ
Received: from hawking (charybdis-ext.suse.de [195.135.221.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 28 May 2019 12:25:09 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Cyril Hrubis <chrubis@suse.cz>
Subject: Re: [PATCH] [RFC] Remove bdflush syscall stub
References: <20190528101012.11402-1-chrubis@suse.cz>
X-Yow: I'm working under the direct orders of WAYNE NEWTON to deport
 consenting adults!
Date: Tue, 28 May 2019 12:25:09 +0200
In-Reply-To: <20190528101012.11402-1-chrubis@suse.cz> (Cyril Hrubis's message
 of "Tue, 28 May 2019 12:10:12 +0200")
Message-ID: <mvmr28idgfu.fsf@linux-m68k.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_032516_313850_3737DB4E 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-s390@vger.kernel.org, Michal Simek <monstr@monstr.eu>,
 linux-ia64@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-api@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, lkml <linux-kernel@vger.kernel.org>,
 linux-mips@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-alpha@vger.kernel.org,
 sparclinux@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mai 28 2019, Cyril Hrubis <chrubis@suse.cz> wrote:

> I've tested the patch on i386. Before the patch calling bdflush() with
> attempt to tune a variable returned 0 and after the patch the syscall
> fails with EINVAL.

Should be ENOSYS, doesn't it?

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
