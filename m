Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6CF195B18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:30:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+hh+ABaZiTZ6vGCOdsBjBNFLa28EOjXpITZrFNmBtC8=; b=G0iyJsUgc142Mz
	WGCNZHJnHyC6FmVL9g39TtXJoBVDhbOLrEaQ5K62HencuWjOtAueGSviAqLVlQ92QIeA2XxO1bZGI
	JHcnNRpA6bMiNzolLdE1CbaptoTGZT4FOmV29BVNteM+8UalFAz4xMIMakx4HuuFBplSH+02wXBjF
	vE+siWVp3apEmNbkxkAd91mQ/08pZacyz13GcLOFx5nVgeB+aULCP0Oqrgv2wVG7nEooed4mA8Ljh
	aFyx4AAyg9/BbwCYhJcmkNS+xeRYnML3njTKYvdVkrYHP5cHR20CG3/D1DX5Fj48+jo9Pv8afaSKg
	FFsMzM10gRSZV9YZH8PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrs8-0002NS-AR; Fri, 27 Mar 2020 16:30:16 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHrrr-0002Lr-9C
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:30:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585326580;
 bh=1Em0LI/KVl1xxriM0SUJ9ct2bhqg2n0IpV9lkveMp00=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=VFK791c33sNkRSMGCC6CNnw4TjESkCF/FwFciz50fiUiWEs64KqatwrlDZHe+emQp
 rWNhqpucHDYR+D1pl8ySVMmJipSGdf9fIDSMZVSUOGmERFbpKWEA3ueQevXpV4nb84
 ontBHXKtafBRP0og9+BsQvmsbehQNJlQWDObOTOY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([82.19.195.159]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1N7i8O-1jLuL343CU-014kxm; Fri, 27 Mar 2020 17:29:40 +0100
From: Alex Dewar <alex.dewar@gmx.co.uk>
To: 
Subject: [PATCH] arm: dma-mapping: Remove unneeded NULL checks
Date: Fri, 27 Mar 2020 16:29:13 +0000
Message-Id: <20200327162914.24948-1-alex.dewar@gmx.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:Vflazi5to4WwXtKcR0FGBcrbXYZ36lA8poJ8iwEZ1rnQsK7j7s+
 vIXToVShPwP07aJxDadCHyZ17J4FxImijCtv9DLX+5kelt88bP010UqQ+tgUfqY4D+VrHqI
 edxmB2JsfLaq4YGG+FFW2MzZ6NZwsKBBU/dEVynpi98lDdFQC653JBhMwkP+LbPWGnahLkd
 vQAb2/t/ANGz4Otdqi45Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:f09u4bQ98iM=:Y494TvphxhbHLCNgofeeX+
 1ZQxJ8nYdLhJBywlKG8jb6GRAVO6ZyGB+S+cp9/LFS5iCIyuXU8qlr3wMHr/c3YroRZPNXm2V
 DknnZTDhLb0uEt7Cc5w6Ko/ZoV6ZVvvC0l9KOWH0YBXGyAraQjTx3H/ov3yF/buELAGrboG9X
 hohBcPDICNMhzNBxXZC15AQlLrDa3fR8j4u/Adr/wJmu3Zyxk3wpzIoQM9cpEPB88ur32dBHy
 DY/99Nop+CHZuaqENdmmGHx+oJpuPPaN5IRHKgsFJTbDbp/Lbo0WHomEUdAv8fAyUaFaEamUX
 8F/tgtE0QXSwjAVZ/ypSpveEVqR7I3LrOpdStLvahGaOYG8qK+6O+lorw1aECIvzYLtZjiBd8
 fOSTSvleyEd1J8JaSmNDbbYo6ooRddqB206p9Lb6z5i3K/wEsoqZZdWt7B+fjNHjH983cc8kl
 xjibT3NKIgIUrEt2nUHsKayIgtADr904PNlUqe0HrnvUc06ZyQuqyCEGGuhmpwtmO2lDBgSvm
 huAy9LE2wAkfwGkNLYJhEPlZWIEmJhHWJzf1uU6n9TxAwV/7LZekvuUAaMZWZxhN0qcE6F76D
 GZeAgWmG48SYkvateeah8GNwmK0ZSBc2IMoICM8rC7WVZypFQhHeGHZqc5At+6N5BfKj0s2wf
 Y81XFC3s6kozQbEtNECuWWZ9Oh43nplPvK43h3faIIeSeHo1qi+V6Zknzy1BqrO4YjwsY6fOP
 3Eb5JbtGYNn7b4pqPnE/86ojXYQ+5dhns8W0hZFHGzEuTdnzh41lMmtW4EBjNseO3eUtd36+7
 cOZ/QN96cco9Q/G6AGiTEgYG8HYDFfenQ2RNAX15VeGXDP37GL1LB8/kjSZq0IOcd+muP8HZj
 ozgMVU1EFK5PxmsrO2Y3BixwA6B9HZ4RjYhU8gGHzez8ekxTCSm9r7WvEPgkyYD3d39ZTOL4y
 o/cpE6/qQfK2ZwcsWV9w2CESvlugL0sedgF+s2zMkm2PtWEfqO3SzAw5xiVaipO57J2sUWCjy
 m1Na9JCCikwA8F3rjS9oD+oYDzJPQ6fMOGDf+zoEP1JGZ7uejsbI54JqWmS6eiAbk+q0MYd/J
 qURvUgvRgd4inLTinChk+vhsFs2BI4liqzVbK8tVTQp8oSFxlEmglymz0VhqJpLcsp0kXsFFn
 H+b5MnjzP2LAL/b1S+w5gp86kYyCiWCbrnpQVu+hNj7+hOWikYUtqT2bP5IsoeCkq0MaE5BWT
 JTuqgtCMB1aqg4ouW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_092959_656815_D24450F2 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, alex.dewar@gmx.co.uk,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_pool_destroy() already checks for NULL arguments, so the extra check
is unnecessary.

Signed-off-by: Alex Dewar <alex.dewar@gmx.co.uk>
---
 arch/arm/common/dmabounce.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/common/dmabounce.c b/arch/arm/common/dmabounce.c
index f4b719bde763..a7c776cdc38f 100644
--- a/arch/arm/common/dmabounce.c
+++ b/arch/arm/common/dmabounce.c
@@ -560,10 +560,8 @@ void dmabounce_unregister_dev(struct device *dev)
 		BUG();
 	}

-	if (device_info->small.pool)
-		dma_pool_destroy(device_info->small.pool);
-	if (device_info->large.pool)
-		dma_pool_destroy(device_info->large.pool);
+	dma_pool_destroy(device_info->small.pool);
+	dma_pool_destroy(device_info->large.pool);

 #ifdef STATS
 	if (device_info->attr_res == 0)
--
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
