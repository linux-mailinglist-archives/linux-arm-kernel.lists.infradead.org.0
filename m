Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1EE1BBAE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:14:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AugBfdZtenT6qLIa8+1rNNmqIWRaBm3JGR4Gqscno54=; b=p7LsS3U7pPFbyI
	0vbRijZKD3ynEliAwRQYr7K4X7wn4ogOYNRndeo4s+tgpzV691pC/0IE8zLnDont/TKOKaBCIzkJZ
	zObqR1fBsqp7q/f1cOIE7fpYDqz0l0DVrtex44MsNUWym+/UvoOVC2tvDLLTQA7Rys8eH8eOzEQGh
	je1YYP2iOnw9fcpsZ2gn+zcPWC3+cY+Ba8dJVroqieeBIlwvm/3YLkgIEYJK82m3afzJyAAGidmur
	Fx3qTeV8rCcRHYxCgA51WekQZZ1AWM8/+4RvPqLnKPBZ3mytjeriSIcsLZPUadNP88RAf1kHPWl4u
	wOuh3engEtAaEjO1fy7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTNFY-00082b-E5; Tue, 28 Apr 2020 10:14:00 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTNFN-00080J-5u
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:13:51 +0000
Received: from marcel-macbook.fritz.box (p4FEFC5A7.dip0.t-ipconnect.de
 [79.239.197.167])
 by mail.holtmann.org (Postfix) with ESMTPSA id BB7EFCECEB;
 Tue, 28 Apr 2020 12:23:22 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH v4 1/3] dt-bindings: net: bluetooth: Add
 rtl8723bs-bluetooth
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20200425155531.2816584-1-alistair@alistair23.me>
Date: Tue, 28 Apr 2020 12:13:42 +0200
Message-Id: <1DC07D5C-825B-43C6-B601-B1DC5CD07F46@holtmann.org>
References: <20200425155531.2816584-1-alistair@alistair23.me>
To: Alistair Francis <alistair@alistair23.me>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_031349_371073_5723103A 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, netdev <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, mripard@kernel.org,
 linux-bluetooth <linux-bluetooth@vger.kernel.org>, wens@csie.org,
 alistair23@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alistair,

> Add binding document for bluetooth part of RTL8723BS/RTL8723CS
> 
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
> .../bindings/net/realtek-bluetooth.yaml       | 54 +++++++++++++++++++
> 1 file changed, 54 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml

patches 1 and 2 have been applied to bluetooth-next tree.

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
