Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A629C2D2AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 02:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RjC4CHxf2uJ2LkxsiyulsYXvrqMPksVx/XRisPKtsI=; b=BWW43xJOH7+C40
	tv+3Fzgt/2/PihrvAe6Owf9LTnid9vaAL/249IsAEu9LCRem0Pn6txrW4nI2V6MpYDLc0zP4gh6e7
	6lX3LWBYZzdxUbAN88oNFFTDddXTQTY5IoYsuZxkokE8o/ssy9Y2BIYDNBvUpmGVwwyCP46d8XY90
	jDHCnEFlDZYsUi3akZsJ6dJ9W1o17t9iZCmbeu7HKcRekIXxNJ4fUN6hy2MXFDY/6gWw5s3kSS/1u
	RgTWkNpHb9Uyn2G217iEWQiVBFgPnL0uQZAc2izBkHGrINzWAiaQAfeNWQkxLIX9C5yPc/DsFyqtL
	vsSh7IkuWjINEzKfLH5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVmAA-0004Qr-Lr; Wed, 29 May 2019 00:09:50 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVmA1-0004Pz-Gb; Wed, 29 May 2019 00:09:42 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E8D5513FB671F;
 Tue, 28 May 2019 17:09:35 -0700 (PDT)
Date: Tue, 28 May 2019 17:09:32 -0700 (PDT)
Message-Id: <20190528.170932.1841104373899073742.davem@davemloft.net>
To: narmstrong@baylibre.com
Subject: Re: [PATCH net-next 0/2] net: stmmac: dwmac-meson: update with
 SPDX Licence identifier
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190527134623.5673-1-narmstrong@baylibre.com>
References: <20190527134623.5673-1-narmstrong@baylibre.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 28 May 2019 17:09:36 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_170941_550375_44625A06 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Neil Armstrong <narmstrong@baylibre.com>
Date: Mon, 27 May 2019 15:46:21 +0200

> Update the SPDX Licence identifier for the Amlogic Meson6 and Meson8 dwmac
> glue drivers.

Series applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
