Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEC0BB1A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnqFCqwo559Hxzw95Tjk2/t9NPOxdpwniV8c0KC89Zg=; b=D88tyWGBi14Anq
	UnN0K+I3B5JOIIdA+yT1wJwr2nEIiyYFr3VxJd8ZvppXiP6P3C9s8hs8WCf/QSjAJCT4blWLAuWTU
	g+rrnCl+a9fJPaGt7mRdSxjScfY8Vjve8wAFUFsYJG8gNxQmnegTMifJxNSzJojrT+h8GL93zG55c
	++v4eO9al0/Ne1KVB/N3SXIkAUuKGFgU648Rgip0TN9aOsx0IQ4Db1OKJvtF6eQpxcTjG3DMS/rEQ
	gQ43oUZNd5+JebuNnL1kMWdllUFqf6U6uXxO6lMoYthpjzwE6m7poYDl/u6B60iBrdcbod37Y2wPy
	DmbLWk8PdduNTbT5e9Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKyO-0005jo-B6; Mon, 23 Sep 2019 09:49:36 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKyC-0005iA-Rc; Mon, 23 Sep 2019 09:49:26 +0000
Received: from zn.tnic (p200300EC2F060400856443B6AC31000F.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f06:400:8564:43b6:ac31:f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 1E2BD1EC0819;
 Mon, 23 Sep 2019 11:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1569232155;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=/OX4YybCwZ8WEZGCJvP1SseCQZ1Y013Yl5Cn9n0qEmE=;
 b=VULaxlovaWUhOyw+mhmgLyRqqxm9woh5jl1y6aEX9yllFsCal2/AW2q+3OfyDyY68xwhny
 0R8wWfKvFm94TSqgXyq3rRsG26GsoLNNdluBN28ZZR6laEI8yMljh49eikUqtvIiy+9Et3
 oU/pFJBO/1uT+GnZJKD++h6nUxSDEt8=
Date: Mon, 23 Sep 2019 11:49:16 +0200
From: Borislav Petkov <bp@alien8.de>
To: Christian Brauner <christian.brauner@ubuntu.com>,
 Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH] seccomp: remove unused arg from secure_computing()
Message-ID: <20190923094916.GB15355@zn.tnic>
References: <20190920131907.6886-1-christian.brauner@ubuntu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920131907.6886-1-christian.brauner@ubuntu.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_024925_047160_510A681F 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-s390@vger.kernel.org, Will Drewry <wad@chromium.org>,
 Kees Cook <keescook@chromium.org>, linux-parisc@vger.kernel.org,
 x86@kernel.org, linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 03:19:09PM +0200, Christian Brauner wrote:
> While touching seccomp code I realized that the struct seccomp_data
> argument to secure_computing() seems to be unused by all current
> callers. So let's remove it unless there is some subtlety I missed.
> Note, I only tested this on x86.

What was amluto thinking in

2f275de5d1ed ("seccomp: Add a seccomp_data parameter secure_computing()")

?

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
