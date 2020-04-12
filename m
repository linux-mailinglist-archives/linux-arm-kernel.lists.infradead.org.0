Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077311A5D55
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 09:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxQ3/uYAA32Y3sag1zIvYBXHcMeSzWYh4ejNkJJPldc=; b=E+mJrBpEPvMqUj
	Wuvx/6TRvTSHIH0Ggcba8Qe8rs+kB2r5YlPXqP+6Ba///AK0Vf3+4UiZFHvTfIfJONVMr3jvu07Fk
	9W9TYeufy/jy4zGajA/38hI49pRxtDe3j+MyYeUjtlmw7N/XwxZeJUAvTWlIBCV5o63FKO77m0IhS
	tIH4NhEZkAlV6hc/zx5/dx87wlDoHsWV+MDkht+qhuAAV6SXgz8Z1BZDte0iq9gpVdtWsNr5MR3d4
	ICDCMnFBwTR3hiGcX5sc+guqXvFvElZxnwBfusQUWK2vjxfMOv7TjFPlP01Q6iNzxLRQ8sa2t6fMj
	c2zY+HLQ9flkBDK2Xnog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNXI2-0004ji-Kn; Sun, 12 Apr 2020 07:44:26 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNXHt-0004j2-Qi
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 07:44:19 +0000
Received: from marcel-macpro.fritz.box (p4FEFC5A7.dip0.t-ipconnect.de
 [79.239.197.167])
 by mail.holtmann.org (Postfix) with ESMTPSA id CD3BFCED27;
 Sun, 12 Apr 2020 09:53:38 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH v3 1/3] dt-bindings: net: bluetooth: Add
 rtl8723bs-bluetooth
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20200412020644.355142-1-alistair@alistair23.me>
Date: Sun, 12 Apr 2020 09:44:02 +0200
Message-Id: <AE147CB3-B2A4-4AF4-AE16-1C24F278B0BA@holtmann.org>
References: <20200412020644.355142-1-alistair@alistair23.me>
To: Alistair Francis <alistair@alistair23.me>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_004418_009884_73613B06 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Johan Hedberg <johan.hedberg@gmail.com>,
 netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 mripard@kernel.org, linux-bluetooth@vger.kernel.org, wens@csie.org,
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
> .../bindings/net/realtek,rtl8723bs-bt.yaml    | 52 +++++++++++++++++++

follow the current names and use net/realtek-bluetooth.yaml.

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
