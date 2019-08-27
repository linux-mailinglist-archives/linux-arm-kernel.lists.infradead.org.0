Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124C49E9FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4BW9thslz6ARJPrsUDsMLPZ97wYOHLx3NolQhJ6o4M=; b=tIdapvbl+P2uST
	ROu8hcVMhRVfpBAx5Ae9s/AXIzDXNHn+KYK1+v5/yOH/3NjerWkZlx+evqnZXzUcGfB4dBmmqdngi
	1k9e3GObCO8Vb0skw7U7zkuGT7mbl+lrUrVRGm8CuDA75o3r50WKErGP9+wrft/3Hap6haLAugNQt
	ntjr1LK40ocabwScSdFu1P6m2qOK8VjJNxQz5y1dxVMfdnKRMVVtIGUE0uXvPKE2hrw2+G0LQg/SR
	tHd+4frj0WU6HUTDlae1RnpZcOl2rwFkVOXMdZyYDEOEiZnX0fOVC9USffhqUhBQTToJCaHO0fB3Q
	zo5DbYD7PYWprHqhfuSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2br1-0004tl-BZ; Tue, 27 Aug 2019 13:49:48 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bpl-0004Sh-7E
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:48:30 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 70A72537;
 Tue, 27 Aug 2019 13:48:26 +0000 (UTC)
Date: Tue, 27 Aug 2019 07:48:25 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Gerald BAEZA <gerald.baeza@st.com>
Subject: Re: [PATCH] Documentation: add link to stm32mp157 docs
Message-ID: <20190827074825.64a28e88@lwn.net>
In-Reply-To: <1566908347-92201-1-git-send-email-gerald.baeza@st.com>
References: <1566908347-92201-1-git-send-email-gerald.baeza@st.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_064829_271768_078E6E8F 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 12:19:32 +0000
Gerald BAEZA <gerald.baeza@st.com> wrote:

> Link to the online stm32mp157 documentation added
> in the overview.
> 
> Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
> ---
>  Documentation/arm/stm32/stm32mp157-overview.rst | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/arm/stm32/stm32mp157-overview.rst b/Documentation/arm/stm32/stm32mp157-overview.rst
> index f62fdc8..8d5a476 100644
> --- a/Documentation/arm/stm32/stm32mp157-overview.rst
> +++ b/Documentation/arm/stm32/stm32mp157-overview.rst
> @@ -14,6 +14,12 @@ It features:
>  - Standard connectivity, widely inherited from the STM32 MCU family
>  - Comprehensive security support
>  
> +Resources
> +---------
> +
> +Datasheet and reference manual are publicly available on ST website:
> +.. _STM32MP157: https://www.st.com/en/microcontrollers-microprocessors/stm32mp157.html
> +

Adding the URL is a fine idea.  But you don't need the extra syntax to
create a link if you're not going to actually make a link out of it.  So
I'd take the ".. _STM32MP157:" part out and life will be good.

Thanks,

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
