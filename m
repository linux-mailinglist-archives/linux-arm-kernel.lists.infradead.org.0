Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38602A19ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 14:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o46ug8yToju3UOGXyAfxExiJiTx6WNYukBMtBvqLs8c=; b=CsqMG5aede3Bus
	combzEl+HrJe/iJXs9k4Wev6nFXg7dtrMHaJ/8RfBuZsETaoi/zjoUPnFP8UNm/Fr3X0UK5mIylwV
	JVgD7jytIrxct0pXx1x1ZjFOQdFwpaaI4dYmhZN4gwyei+oN6D32z//Rpk62PoRE6/qtggZsHQb1a
	V408bGZ0ao28++xvgiTHsLqgwVKSbKaX7oEf+5F8yshY83tVKbEZDtJwNM/LYI2+WQZ0C/BSft3MX
	2woGdr6+5IRObMo0/3zj9zN717Lhm/3TOHWA/1yNBDDXFCXE2SJMdgz1pn02DCGoXqox2cbgGiGK5
	kHxg9hR9nrS76y3IKfmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3JQk-0002Ld-1Y; Thu, 29 Aug 2019 12:21:34 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3JQZ-0002Ks-AU
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 12:21:24 +0000
Received: from p5de0b6c5.dip0.t-ipconnect.de ([93.224.182.197] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i3JQU-0002fL-7V; Thu, 29 Aug 2019 14:21:18 +0200
Date: Thu, 29 Aug 2019 14:21:17 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 5/7] arm64: compat: vdso: Remove unused
 VDSO_HAS_32BIT_FALLBACK
In-Reply-To: <20190829111843.41003-6-vincenzo.frascino@arm.com>
Message-ID: <alpine.DEB.2.21.1908291420060.1938@nanos.tec.linutronix.de>
References: <20190829111843.41003-1-vincenzo.frascino@arm.com>
 <20190829111843.41003-6-vincenzo.frascino@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_052123_507963_97DFA1E8 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, catalin.marinas@arm.com, 0x7f454c46@gmail.com,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, paul.burton@mips.com,
 luto@kernel.org, salyzyn@android.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 29 Aug 2019, Vincenzo Frascino wrote:

> As a consequence of Commit 623fa33f7bd6 ("lib:vdso: Remove

-ENOSUCH commit ....

Just say:

VDSO_HAS_32BIT_FALLBACK has been removed from the core ....

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
