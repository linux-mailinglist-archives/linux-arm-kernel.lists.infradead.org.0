Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C20194F5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 04:02:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cQtVNSc7ITxlJISIZyVG7IAWB5bVyN8D5wkFkub3zo=; b=cyRTBfjILOFvfS
	2NrniZzxRJsLkaf+J/NwIuVkt6nFXPNBGLzBdOxETpUlcx4GCMC1HDIKFE1c4jHPWZ+8Vsn6xXgLQ
	brXSGYWJmPJ6yLORGdAzZjHapCMm86aIguUygvzt0Z/45oXviCs3brFCAY1YOAW/jjUn1DlF5CnB8
	rY4k5hE5AVbA7A8LQFI5gq02MljEiwbUsfg01Go898O8KoDDJ+UD0YCRGtL9Hs4XH8qXeVUW4mQgv
	VWoFz29MOyMeeS/yEbKxswi+dxfF43FupSqXAhmuSV94SXKqAFietwyEgut0F5rimHtkSgucyGY8z
	V6xAdXTjmpPVNdkC7z5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHfFm-0003Cc-Jx; Fri, 27 Mar 2020 03:01:50 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHfFf-0003Bv-5P
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 03:01:44 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A389715CE7211;
 Thu, 26 Mar 2020 20:01:37 -0700 (PDT)
Date: Thu, 26 Mar 2020 20:01:36 -0700 (PDT)
Message-Id: <20200326.200136.1601946994817303021.davem@davemloft.net>
To: grygorii.strashko@ti.com
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200323225254.12759-1-grygorii.strashko@ti.com>
References: <20200323225254.12759-1-grygorii.strashko@ti.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 26 Mar 2020 20:01:38 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_200143_208479_E6DD5F10 
X-CRM114-Status: UNSURE (   5.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: robh@kernel.org, devicetree@vger.kernel.org, t-kristo@ti.com,
 nsekhar@ti.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 peter.ujfalusi@ti.com, m-karicheri2@ti.com, netdev@vger.kernel.org,
 kuba@kernel.org, linux-arm-kernel@lists.infradead.org, rogerq@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grygorii Strashko <grygorii.strashko@ti.com>
Date: Tue, 24 Mar 2020 00:52:43 +0200

> This v6 series adds basic networking support support TI K3 AM654x/J721E SoC which
> have integrated Gigabit Ethernet MAC (Media Access Controller) into device MCU
> domain and named MCU_CPSW0 (CPSW2G NUSS).
 ...

Series applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
