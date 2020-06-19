Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA38200F44
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 17:19:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBrJfyvSospccEY8Z6RShJ2OMEOQbs+tANabV37S4L4=; b=UDtSe+Fxe1hJzI
	B3E0ygC6YNAwFvg8ZntK+4TJSKRqyDWHYpY2440vw8s2K/FhU68WLXOo6rkToQ0JUATTQquCucqt0
	ylwa5fBXoDfEn58LxP8MBTfJI4KxMtBiTcGK0XbTkVwxcUxuBjqsu1UMTSrahajwpU548CYZ74/WJ
	/+o/8Gyz0tdf5Ytpx023Uk2YDGqpRukPF5WbF1JKd3VrjPQGpvvowISUiKTL2OkmY40mwJnf3dQZF
	TO68alkKVSGcupw4hkA4LV9wTflqVuxKuSfinFcTCCgiDbNOcQk8sFKEONWtjON+d0J8swBqEkxCb
	UR4UhIJgoZFKZaBq3ssA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmInI-0004Sl-Dq; Fri, 19 Jun 2020 15:19:04 +0000
Received: from utopia.booyaka.com ([74.50.51.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmIn9-0004SL-0n
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 15:18:56 +0000
Received: (qmail 29577 invoked by uid 1019); 19 Jun 2020 15:18:50 -0000
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 19 Jun 2020 15:18:50 -0000
Date: Fri, 19 Jun 2020 15:18:50 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: Chen Tao <chentao107@huawei.com>
Subject: Re: [PATCH] ARM: OMAP2+: Fix possible memory leak in
 omap_hwmod_allocate_module
In-Reply-To: <20200619104240.55978-1-chentao107@huawei.com>
Message-ID: <alpine.DEB.2.21.999.2006191518380.26224@utopia.booyaka.com>
References: <20200619104240.55978-1-chentao107@huawei.com>
User-Agent: Alpine 2.21.999 (DEB 260 2018-02-26)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_081855_135077_1C9551EF 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: tony@atomide.com, linux-omap@vger.kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 19 Jun 2020, Chen Tao wrote:

> Fix memory leak in omap_hwmod_allocate_module not freeing in
> handling error path.
> 
> Fixes: 8c87970543b17("ARM: OMAP2+: Add functions to allocate module data from device tree")
> Signed-off-by: Chen Tao <chentao107@huawei.com>

Reviewed-by: Paul Walmsley <paul@pwsan.com>

- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
