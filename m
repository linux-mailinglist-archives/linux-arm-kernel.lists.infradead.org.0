Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CA41CFE5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 21:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0/pRpNHjQ1lpPZp18LKPQRXKCndWGTge+pV6tThuug=; b=hIQH/wF4B9nCFS
	vBpByt6Nx6zyaDigsQl+wb9ostARsKYxb+yc5S1Z7v/089fn6U3E309znw8BcLsSjOaUCAi5yuEDz
	pFlrKD0enxmzL4RZf2RIxOTBfaaYWz7sltaVUAYROXGs7RGP3EZ58aUC5wMAr4fnyc5ZXgIWpvxz6
	DqdujyNdD+VDRrt19ww1FLCiO/XSxSPWAkjj7aTxeufA7Nn+JngcozAqQiNd/BE/jlRzuXDJnEVUT
	PVwew3YkgeZmHGODj32OBk7m3l/UdAblvGKS84sram9BkGcQWlZayZcJ3FEKC5Jj4qJhWV7Wli4YG
	I8ciOM6cMh2hdGNKsRtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYact-00083n-Db; Tue, 12 May 2020 19:31:39 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYacl-00083K-C6
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 19:31:32 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477:9e51:a893:b0fe:602a])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id DFB7112832804;
 Tue, 12 May 2020 12:31:30 -0700 (PDT)
Date: Tue, 12 May 2020 12:31:30 -0700 (PDT)
Message-Id: <20200512.123130.834865973337944766.davem@davemloft.net>
To: hayashi.kunihiko@socionext.com
Subject: Re: [PATCH net-next v2] dt-bindings: net: Convert UniPhier AVE4
 controller to json-schema
From: David Miller <davem@davemloft.net>
In-Reply-To: <1589268410-17066-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1589268410-17066-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 12 May 2020 12:31:31 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_123131_413559_6D15E1C3 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Date: Tue, 12 May 2020 16:26:50 +0900

> Convert the UniPhier AVE4 controller binding to DT schema format.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
> 
> Changes since v1:
> - Set true to phy-mode and phy-handle instead of $ref
> - Add mac-address and local-mac-address for existing dts warning

Applied to net-next, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
