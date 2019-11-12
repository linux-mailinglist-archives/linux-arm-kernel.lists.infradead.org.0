Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC87CF9423
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:26:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0wkTqfokojr4pSSBbyaDylGQkxxxmPFwDIKhHbcUas=; b=BPrCIW1L+QqsWz
	7jtqq8vvGHN2vUSMesZ7XMCGA2iKslsQym73FPTd3ChNRmZLmK16w6wKfKh/+bv1MDH4CFF1+Id5n
	YJGtEJmh4C0Hi8r7E64wntJ7IK8UP7vKnUJDNAnPfqCZc5NsScrkTJcJ/QpcyDHmdiefKAx+sMpT8
	z82DjsZGIowK0kT0BQRodDoMO7Eo/A1mdcV96+RhaHudbhh+g9Jxzc5p9R+YW5ltW/kN0zcBezTcg
	dz/AXU/fWPfjweOCth1SVFQz/KzCbsr3IkLm6GxHRbSRg7kSo/VHca5QUXlywXmzaFqIjXVqSyOUf
	vJM+fLF3KFpov1MszEjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUY3g-0007vt-Ou; Tue, 12 Nov 2019 15:26:20 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUY3Z-0007ut-Ap
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 15:26:14 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 9EF4080F3;
 Tue, 12 Nov 2019 15:26:46 +0000 (UTC)
Date: Tue, 12 Nov 2019 07:26:07 -0800
From: Tony Lindgren <tony@atomide.com>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v4 2/3] ARM: dts: dra7: add vpe clkctrl node
Message-ID: <20191112152607.GC5610@atomide.com>
References: <20191112142657.22898-1-bparrot@ti.com>
 <20191112142657.22898-3-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112142657.22898-3-bparrot@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_072613_410296_08027379 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Benoit Parrot <bparrot@ti.com> [191112 14:24]:
> Add clkctrl nodes for VPE module.
> 
> Note that because of the current dts node name dependency for mapping to
> clock domain, we must still use "vpe-clkctrl@" naming instead of generic
> "clock@" naming for the node. And because of this, it's probably best to
> apply the dts node addition together along with the other clock changes.

Thanks looks good to me now. Yeah it's probably best to queue this one
along with the clock driver changes. I can then collect the dts related
driver dts change on top of a branch from Tero. So please feel free to
add this:

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
