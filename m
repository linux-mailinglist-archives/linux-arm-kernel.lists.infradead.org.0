Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CC261036
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 13:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9o6fETkmtwjwfIUyHdxrsCoMoHiX8poo3FU8hKnuj8=; b=s6ID2tzWAfABV3
	0FKmrvvS4pYOluDeuxpxcPmQAeuYJaLJ4JaOsP7wAAAq5pKVdG75MbuQyUSWOqX8Q37+4C9V36Lgp
	XpBqQmSvVENyGTqZ0fPjvxwOi4jIvx8AE7i0qn/VIHl7lRIxQw0zqxSPn8MJWX1Pn1ioxovL2deHe
	RxaUyCSS5J8hwiUopXck085cXQOSV6bzSBWpehBTyS3JVOMziYJwdMOVY5D99CT11fdVDDwM/VaN0
	KtfFUNTBdNqh6/eZmCEISCZ81FhmKOMN6UuQrHnk0filglimewQeDYBSqCkg/i7nl6Tp4KTO+kU5J
	Q4QnY4ZDMD1gSV8cTNTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjiRz-0005qL-RN; Sat, 06 Jul 2019 11:01:51 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hjiRf-0005oS-CD; Sat, 06 Jul 2019 11:01:33 +0000
Received: from [192.168.0.113] (CMPC-089-239-107-172.CNet.Gawex.PL
 [89.239.107.172])
 by mail.holtmann.org (Postfix) with ESMTPSA id 1D63CCEFAE;
 Sat,  6 Jul 2019 13:09:41 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v1 0/4] add boot-gpios and clock property to btmtkuart
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <1559437457-26766-1-git-send-email-sean.wang@mediatek.com>
Date: Sat, 6 Jul 2019 13:01:08 +0200
Message-Id: <1E60D580-3D91-4AF0-8CCC-4576C54D2258@holtmann.org>
References: <1559437457-26766-1-git-send-email-sean.wang@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_040131_565532_9A4A35BA 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Johan Hedberg <johan.hedberg@gmail.com>, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sean,

> Update dt-binding and the corresponding implmentation of boot-gpios and clock
> property to btmtkuart.
> 
> Sean Wang (4):
>  dt-bindings: net: bluetooth: add boot-gpios property to UART-based
>    device
>  dt-bindings: net: bluetooth: add clock property to UART-based device
>  Bluetooth: btmtkuart: add an implementation for boot-gpios property
>  Bluetooth: btmtkuart: add an implementation for clock osc property
> 
> .../bindings/net/mediatek-bluetooth.txt       | 17 +++++++
> drivers/bluetooth/btmtkuart.c                 | 51 +++++++++++++++----
> 2 files changed, 58 insertions(+), 10 deletions(-)

all four patches have been applied to bluetooth-next tree.

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
