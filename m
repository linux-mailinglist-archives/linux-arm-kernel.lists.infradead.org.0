Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 113313D2EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7vQUCEiQVKmYzV0Z78V6pV7pbUDcRD18W3dqzX093o=; b=izvt24mGmNUoNt
	ti5T6rViiG1x0zfdhbMm+rpHvSHNhLXD30VfX790B1MaEigC4x+JSXWcEkmjK+mPB40IjPdQXLIE+
	aD117rPuAGRsILE3EvYCTDMdcxjaL1OkaBBylx3XWyBYFlcQoxTcav50ibJu+QtvrjJkxWoryAxrD
	ju9l63Zq0kOqfE6tbszpAS7KxFfrlwYfYfkJe5NfTalo3wJut+aVYQQO/sweFUIZSAwB8SsEthYLM
	E4oVvARISk7F2vAC9uYbY/R+MT8D4AU/b5ItNJibRYZfTHblM3k+LjXqPEZv6sSpYkoN9CMN3H8kc
	lGg07Xf+BzVAT5SIaz+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajw4-0000et-JF; Tue, 11 Jun 2019 16:47:48 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajvY-0000Qc-KQ
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:47:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g0xnD1Rli+vmm0bIFsX4Xnzg4DPIMJRmreQbwgl3vdA=; b=kEzsO+5z/iwma+LU27UyPi5bdi
 pkVfNqJoa4im5Scrxz8LZ7oc+bq5XRaOnM1zUQFhSpyIxbVmYel48hiyNlT0tty+JNeUAVyc/PrZP
 kB+yFoIEaX1lyn3DkraI1uJAhC3Xb85s6TV1txduyaNu6LP7cQrZ0SNZD7EGyoQNIadW1jp/8HCU6
 oWxPrzPoYRQuM9PW16FWwjbe4UsbCP4tweV7RBRVmEHUtz8gUtT670ExEXem59euAw86OdSUUyT5J
 AUPFsdgjFq/s6Zxehc7Zy70pRW2JY6rpjsEmFx2TOG0bszKM4b/4GxSUoJidv75UUlA+07mqE+5NS
 +w8sKEHA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:55460 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hajvN-0006rY-Fv; Tue, 11 Jun 2019 17:47:05 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hajvM-000377-8M; Tue, 11 Jun 2019 17:47:04 +0100
In-Reply-To: <20190611164634.lojmqu3ojfteeyet@shell.armlinux.org.uk>
References: <20190611164634.lojmqu3ojfteeyet@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] ARM: riscpc: parse video information from tagged list
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hajvM-000377-8M@rmk-PC.armlinux.org.uk>
Date: Tue, 11 Jun 2019 17:47:04 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_094716_742241_430635F7 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correctly parse the video information from the tagged list, so that we
end up with the right bytes-per-char values.  When booting with a
tagged list rather than a param block, this allows the decompressor to
display its messages during boot on the screen.

(Boot loaders normally pass a param block on this platform, but the
latest boot loader version recently released does not.)

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-rpc/include/mach/uncompress.h | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-rpc/include/mach/uncompress.h b/arch/arm/mach-rpc/include/mach/uncompress.h
index 654a6f3f2547..edc1961e8d1e 100644
--- a/arch/arm/mach-rpc/include/mach/uncompress.h
+++ b/arch/arm/mach-rpc/include/mach/uncompress.h
@@ -118,29 +118,22 @@ static void arch_decomp_setup(void)
 	struct tag *t = (struct tag *)params;
 	unsigned int nr_pages = 0, page_size = PAGE_SIZE;
 
-	if (t->hdr.tag == ATAG_CORE)
-	{
-		for (; t->hdr.size; t = tag_next(t))
-		{
-			if (t->hdr.tag == ATAG_VIDEOTEXT)
-			{
+	if (t->hdr.tag == ATAG_CORE) {
+		for (; t->hdr.size; t = tag_next(t)) {
+			if (t->hdr.tag == ATAG_VIDEOTEXT) {
 				video_num_rows = t->u.videotext.video_lines;
 				video_num_cols = t->u.videotext.video_cols;
-				bytes_per_char_h = t->u.videotext.video_points;
-				bytes_per_char_v = t->u.videotext.video_points;
 				video_x = t->u.videotext.x;
 				video_y = t->u.videotext.y;
-			}
-
-			if (t->hdr.tag == ATAG_MEM)
-			{
+			} else if (t->hdr.tag == ATAG_VIDEOLFB) {
+				bytes_per_char_h = t->u.videolfb.lfb_depth;
+				bytes_per_char_v = 8;
+			} else if (t->hdr.tag == ATAG_MEM) {
 				page_size = PAGE_SIZE;
 				nr_pages += (t->u.mem.size / PAGE_SIZE);
 			}
 		}
-	}
-	else
-	{
+	} else {
 		nr_pages = params->nr_pages;
 		page_size = params->page_size;
 		video_num_rows = params->video_num_rows;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
