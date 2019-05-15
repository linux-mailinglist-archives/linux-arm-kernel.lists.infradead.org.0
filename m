Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB951F4C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 14:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z/+XAyekUKYvR+DWYJRPQO2Al1WFCE0NOHaFKn6vzb0=; b=Dkyq4K+XKkuLyC
	0SvaXyEYz7kiBrxwlk4gkhacr4+f8KUviT4zDFRsvuZLfDim5bHEwMU5f3j0oDaOG70ZpHxVehCb8
	dUg08F1qm/4+jthvqFoE4pUVczyTqL+eTJ+BQP6vOwd7Tsx70IDkao1FaSZOO/E6JCH0u19qpHaw6
	akeQrBYfqxH3913/Z6QRZ9n5Fle+LFsQIm2nh85FzUTa6/gcP2x8MbeVYh1xB4dCdBEXJ6jo0cXCE
	wzu/6UrqnBQ3VCQgdZHhXL1ad7YnzjQxJcu3qtTGZP2eXgjqHQuOhO6L6noO0u8ZAe7o49SvnvPkO
	bT257WU2BhB3QlBBCDGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtKN-0000Yr-TL; Wed, 15 May 2019 12:48:11 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtKF-0000Y4-J7
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 12:48:06 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 955111FF4E;
 Wed, 15 May 2019 14:47:57 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 7D59D1FF2C;
 Wed, 15 May 2019 14:47:57 +0200 (CEST)
To: arm-soc <arm@kernel.org>, Joe Perches <joe@perches.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: [PATCH] Opt out of scripts/get_maintainer.pl
Message-ID: <d1427cd2-9111-025c-1a97-d0fa498f1a03@free.fr>
Date: Wed, 15 May 2019 14:47:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed May 15 14:47:57 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_054803_774041_CEDC4264 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A few months ago, I submitted a trivial arm64 defconfig update.
get_maintainer.pl now outputs my address for every defconfig tweak.
Add me to .get_maintainer.ignore to opt out of these notifications.

Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
---
 .get_maintainer.ignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.get_maintainer.ignore b/.get_maintainer.ignore
index cca6d870f7a5..a64d21913745 100644
--- a/.get_maintainer.ignore
+++ b/.get_maintainer.ignore
@@ -1 +1,2 @@
 Christoph Hellwig <hch@lst.de>
+Marc Gonzalez <marc.w.gonzalez@free.fr>
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
