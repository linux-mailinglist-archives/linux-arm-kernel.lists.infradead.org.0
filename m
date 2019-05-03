Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8F312FE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcY5CpULoDT0AcbZDiTfhD0uSHNv4m+oyhpyLXC/dJc=; b=fZmjYzl+RY/hc3
	ATR+RR61r+tv5neIJsykRTYDWZcG13KP2j+QdWUZ7kdAw5DxsnhpzcLuyT0kA7rCfy6q6XFJRjj/e
	QJz2+MRwgl71Ss+DyGW7FDMXn5TVQdEHjswDl/tfyigcjF/nKhj0SYW6OqdJgpQKZFaztprUvtgDc
	lDQcVIJIX1FypDkicK2Yp3LBOBoHkoL0vOAwRG52t4Gv5PliM+18DSRDqtOz0tsiQ39+y6Lwt01U7
	Me4QixRCPTmtCp/UQJemWItFqXMgAkTs4Tr3yWlQhADsbZpxmNKBS6LBW9yYvS22vYyPA/EWO7agu
	a6KqeRqJuf9ryPML7obQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYxd-00032y-V2; Fri, 03 May 2019 14:14:49 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYxW-00032F-OV
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:14:44 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6E27013A5C;
 Fri,  3 May 2019 14:14:41 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id EB6857BA13;
 Fri,  3 May 2019 14:14:37 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Fri,  3 May 2019 16:14:41 +0200 (CEST)
Date: Fri, 3 May 2019 16:14:37 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH v3 1/4] ptrace: move clearing of TIF_SYSCALL_EMU flag to
 core
Message-ID: <20190503141436.GA20802@redhat.com>
References: <20190430170520.29470-1-sudeep.holla@arm.com>
 <20190430170520.29470-2-sudeep.holla@arm.com>
 <20190501161330.GD30235@redhat.com>
 <20190501161752.GA12498@e107155-lin>
 <20190502161329.GE7323@redhat.com>
 <20190502164512.GA10635@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502164512.GA10635@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Fri, 03 May 2019 14:14:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_071442_818761_AD7DB135 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Sudeep Holla <sudeep.holla@arm.com>, Haibo Xu <haibo.xu@arm.com>,
 Steve Capper <Steve.Capper@arm.com>, Richard Weinberger <richard@nod.at>,
 jdike@addtoit.com, x86@kernel.org, linux-kernel@vger.kernel.org,
 Bin Lu <bin.lu@arm.com>, Ingo Molnar <mingo@redhat.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Andy Lutomirski <luto@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/02, Will Deacon wrote:
>
> Ok, if you're happy for us to take them via arm64 with your ack, then we can
> do that as well.

Yes, yes, please!

Oleg.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
