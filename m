Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA223058A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 01:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KWAEgZzBFcVXAnkfYDCpHHl8AZws5I8ir2ue5j9t39Y=; b=nVeH8vLoClxUur
	0IcIh+ZpxmlgTwX6YMeVUEh+760McOVP/HDn5Svprrmflq+1XSiWiCWwApFldIYPIyH+NUsx7tDBX
	3cxiQtON4EvaNC5EmKQo++zjqvQQTCsprpRfZDLvZntxmggmRjJ663VfpGmx7dbNuiXtk7c0zKU8P
	rWh/rGLfm3sVlTOVV9ow3tOr5Au7YLyH643h81S3JGksNFFz8vicXPTAXlLQUlg/cArMU8/+K4MFm
	RWF3JapwcFImn6bUPvkUg0xck4wmeox+Ukn4rRmDzYVc9RMrr1XPpJKNMgqV82W3YxIkEtjwqVM61
	66l1ZFDzNgYPErrrJMOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWUs7-0002dA-3e; Thu, 30 May 2019 23:54:11 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWUrz-0002cl-Ho; Thu, 30 May 2019 23:54:05 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.nyi.internal (Postfix) with ESMTP id 08B342CBB;
 Thu, 30 May 2019 19:53:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Thu, 30 May 2019 19:53:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=fg8Q3S/7A0Lvcu0KZhM1U56P+Ty9w
 LituQugZp3Wx28=; b=1wZ7DofR81+AVVRncg64Dh2dnG2VFEGEXP2wP2N3QVQ+n
 5FNGX/d4LmjZ3NnYvG2bW0Zoh+cjytajtnBqbGsAly/11IWIvucawy4qG5MqCSuq
 XN8M2jzgcMFByCFHivht7daM5BGL5NRnDsbTjonejUF2G+WBtwixQkv50+nKIyFc
 cMbkP+ni0zaYL5Uv0VnhUN73vKjLyrwbr+Nrbobn2VklHui5u69cCTSZGwy34o62
 rYY6k7vZWDTXWqkBc35Crdb29uRXxJy2UftV96DC2tOknsENc2zvJkbI53NmN+Hw
 jMHvFu+oyk3ndFvYlOKrhne+GSiHV1yErC6AjVY2g==
X-ME-Sender: <xms:Fm3wXNv1E-ENAWSDhnXBlM_XdMntB_mGFzxb2_n-I6gycX9wunqHTQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudeftddgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfggtggusehttdertddttddvnecuhfhrohhmpeeuvghnjhgrmhhi
 nhcuufhhvghrmhgrnhcuoegsvghnjhgrmhhinhessggvnhhshhgvrhhmrghnrdhioheqne
 cukfhppeduvdekrdduudefrddujedruddvvdenucfrrghrrghmpehmrghilhhfrhhomhep
 sggvnhhjrghmihhnsegsvghnshhhvghrmhgrnhdrihhonecuvehluhhsthgvrhfuihiivg
 eptd
X-ME-Proxy: <xmx:Fm3wXBGgxtXFLXR35JUbGB6VDROkFFb-rmTg1pHybHnDSBGqRmWJCg>
 <xmx:Fm3wXGwjr9hOzbcQGxTf9wGKxtgrM9zMAdl4JuDDEHBkq-1gI64f8w>
 <xmx:Fm3wXD0Z_LT3TUjzb7Qp5WK15PzViFs9wcUfBPvR77XuRnQLRgehmA>
 <xmx:Fm3wXGRLT314edzJsOG7mgDX1lK3OGnh_NO1aRkGFHEK3GY5-6AGCL2mLVk>
Received: from valkyrie-prime.rpi (el-tovar-33.dynamic2.rpi.edu
 [128.113.17.122])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2E3A9380084;
 Thu, 30 May 2019 19:53:58 -0400 (EDT)
Date: Thu, 30 May 2019 23:53:48 +0000
From: Benjamin Sherman <benjamin@bensherman.io>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: mt7621-dma: sizeof via pointer dereference
Message-ID: <20190530235348.j3orly64wadtjydx@valkyrie-prime.rpi>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_165403_699274_30D886A4 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devel@driverdev.osuosl.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pass the size of a struct into kzalloc by pointer dereference.  This
complies with the Linux kernel coding style and removes the possibility
for a bug if the pointer's type is changed.

Signed-off-by: Benjamin Sherman <benjamin@bensherman.io>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index a58725dd2611..60db06768c8a 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -468,7 +468,7 @@ static struct dma_async_tx_descriptor *mtk_hsdma_prep_dma_memcpy(
 	if (len <= 0)
 		return NULL;
 
-	desc = kzalloc(sizeof(struct mtk_hsdma_desc), GFP_ATOMIC);
+	desc = kzalloc(sizeof(*desc), GFP_ATOMIC);
 	if (!desc) {
 		dev_err(c->device->dev, "alloc memcpy decs error\n");
 		return NULL;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
