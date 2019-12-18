Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45568124BE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkcWR8Bw+bEqK3TyFDYmQa47aBBy2oCE2Xe19gGSXeo=; b=WCYYiPAISQsUkq
	T8deXpbqhexpkY7lPfdiKc6OtXnILU5npUZ6qbw2Qpwd2m5rqB2cE5P4Mx7Jua3/4s1DeV24rXFJc
	Gbg3VjpPtklp0WypifpbyB1aRV9nv4ATHv+nLXZmMGLAjRzZJElGwww6aOIsNZ2B0lWYteOpYILw0
	YXoarC7onnGmtw/JxHoHXRR2kv7EY907IQ0eQ5E32dzhAV/FM+iepqVgQmsLZfObkJVeQdBvUDFPY
	O+rIMd9rywNWDDxPfh9pVT7A0DL0R2oWA0JF87elSG8zmJTSZBfZ4rp7Pf/s7YtWHLAhbg15XmmZP
	9Vg/rNSlVtFn/yML2CPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbRM-0005pR-96; Wed, 18 Dec 2019 15:40:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbQj-0004RX-D5
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:40:07 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E50F2176D;
 Wed, 18 Dec 2019 15:40:03 +0000 (UTC)
Date: Wed, 18 Dec 2019 10:40:01 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH AUTOSEL 4.19 031/219] arm64: preempt: Fix big-endian
 when checking preempt count in assembly
Message-ID: <20191218104001.2b2773b7@gandalf.local.home>
In-Reply-To: <20191216094523.GA9938@willie-the-truck>
References: <20191122054911.1750-1-sashal@kernel.org>
 <20191122054911.1750-24-sashal@kernel.org>
 <20191214021403.GA1357@home.goodmis.org>
 <20191216094523.GA9938@willie-the-truck>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_074005_640122_039127A2 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Sasha Levin <sashal@kernel.org>, "kernelci.org bot" <bot@kernelci.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 09:45:24 +0000
Will Deacon <will@kernel.org> wrote:

> Yup, without 396244692232 this commit makes no sense. That's why I didn't CC
> stable or add a Fixes tag :(

I'm wondering if we should add a tag to state "not to be backported",
to tell auto select to ignore a patch that appears to be a fix.

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
