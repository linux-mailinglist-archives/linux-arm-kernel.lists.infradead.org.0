Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B04C3546
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVg9zmJU+7bhzZ03UUmp2szv6juzZdCe+At+Tl9bPkg=; b=XY5UuGshu/tJuA
	8InuwFiuYObTpgGokxcwXZhPJ3fHWfXKsWr1V4MZEe22eowt0vvtnuG8ENEvHuw71jUS3FwDoYQeA
	ZOPBFXnJUkqLjyFjm7FuO6UXHYKkqUDaBKBANqa95sNVfNfL6TyY0pis2wEjlDGmjKCF/xRqBYPeV
	w6mkD5wZUrYzkKHG9gF8bMBn6x1dt9ZVAkM7h/vkNDAvViCZKw9JsaBRF4acOA/UmF+pIj8shVzWz
	xIjKhyp0k5CqoC553fJWDd9q+8X4N1gdXqg9hB4+UIzeE3KBnsg23fWwE86x7JPIfTjWO3dwF7ZWl
	lDeTAqp04axlHDR8+AOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHyy-0007EM-0G; Tue, 01 Oct 2019 13:14:24 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHys-0007E0-E3
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:14:19 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id E782E491;
 Tue,  1 Oct 2019 13:14:11 +0000 (UTC)
Date: Tue, 1 Oct 2019 07:14:10 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] Documentation: document earlycon without options for
 more platforms
Message-ID: <20191001071410.4e89e079@lwn.net>
In-Reply-To: <20190916070316.7371-1-hch@lst.de>
References: <20190916070316.7371-1-hch@lst.de>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_061418_476618_1957C449 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: schwab@suse.de, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Sep 2019 09:03:16 +0200
Christoph Hellwig <hch@lst.de> wrote:

> The earlycon options without arguments is supposed on all device
> tree platforms, not just arm64.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  Documentation/admin-guide/kernel-parameters.txt | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)

Applied (finally), thanks.

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
