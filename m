Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260D13ABB9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 21:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Woc6704dcRvBjYZqUiPWypUKlvYWUcA6MRP3y8cZPLo=; b=FxZl/uy1iU+3Qb
	UeB+VpTBjLahucopy7MUoJJ0Yh0DfDFKPchFGR+W9fEPylRfgn8Qc7mGgfyO17ROsTcJkjhLR0fnv
	6XRJG4Mwzg8heLEMLwI1Gqh5Rq1cCrCZBnIgkX9Bupg6B1RczomJPsLobClNcYRysq7oJwODFVPd+
	S1BqRAyXF+z5ZuJYIqwR1XCtAQdRDkSfFzZM4LV0A9TFm9YKSbg04o899yU+KkKsbetB6AiwvW556
	FVrGHONsdVeKEZr4IJPqOyl4vfyJ+fZDWLeQYvdykpqWRKYSewD3/ZxbpAvs2kfWPOFTbJ8JvReBn
	fOEOYi6Ot1sWxgbJDnkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha3vL-0001Dn-NI; Sun, 09 Jun 2019 19:56:15 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha3vB-0001DP-Qa
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 19:56:07 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B352114DEB0EC;
 Sun,  9 Jun 2019 12:55:59 -0700 (PDT)
Date: Sun, 09 Jun 2019 12:55:59 -0700 (PDT)
Message-Id: <20190609.125559.2049293229840348873.davem@davemloft.net>
To: grygorii.strashko@ti.com
Subject: Re: [PATCH net-next v2 00/10] net: ethernet: ti: netcp: update and
 enable cpts support
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190606163047.31199-1-grygorii.strashko@ti.com>
References: <20190606163047.31199-1-grygorii.strashko@ti.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 09 Jun 2019 12:56:00 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_125606_007234_06DCF015 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, w-kwok2@ti.com, netdev@vger.kernel.org,
 richardcochran@gmail.com, nsekhar@ti.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, m-karicheri2@ti.com, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grygorii Strashko <grygorii.strashko@ti.com>
Date: Thu, 6 Jun 2019 19:30:37 +0300

> I grouped all patches in one series for better illustration of the changes,
> but in general Pateches 1-4 are netdev matarieal (first) and other patches
> are platform specific.

Patch 1-4 applied to net-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
