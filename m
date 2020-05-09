Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E124A1CC457
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 22:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BiZj66MMYU23h6p74dsMw0sx5ihdO7dZntA02uR3Wwg=; b=I9nn4V3mphLcsn
	ZP8+7z46rfA/6bZ+T8eQZL6yYXpRdO2tnTSXwzn5i29xYz/960hESD6U10fyl4ZqFdop33p9ZrZAl
	cOoPe3ZFElN2d6fX/6MB81c6I9jIXqvXdwQuutjNkdAOQwvkuenFiVD8eiE1W1jmZwiDry5p30gqZ
	FtI3XC11MfbzNeOaK6db7Y/ijOKGxCBGotLePEsZABas2F/PUct37GFom0zkXBOm9xuFSFAQNQFJw
	m5goo4CDmziimlLoBTosxxm3/5Qd5hzn4JuZMEOXKd92BdXyyATypiy9MebYoxOIEMrMiAznacFz7
	qJUaVgVndgcN7X9oP5Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXVjP-0005zY-HO; Sat, 09 May 2020 20:05:55 +0000
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXVjI-0005yo-4L
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 20:05:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 687935A2;
 Sat,  9 May 2020 16:05:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sat, 09 May 2020 16:05:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=Ew42L4+sGtXg1rthBvoivnjXlL
 0sKSK0vrB5L8HvPIw=; b=irwi4PiEEnm3yS5ojpXizK80wCkAe9CqI4cpobElyE
 TMstGge/F2IG24p9/WnXexsl1FXvy9Xeyuq2JWClBtd9e36yR8NQGuX8Z1cNKamf
 ks3++I88EDJyOqSof+lojfivo7aqbBNuq4NwZJhERmCD6HOEi/Tpq3oC+ain7J1B
 Ut1iSkoT7TdY/9teezX6f/OAEg9UX00RHIQO4TQ3aXU6Rmqml/3xWCW3IsCyU2tV
 Ln1h/f4YPBX5hN4yGy+PIe07oFUVIt7SX37xM1ZgXTPUsBf7XqlxytSKqciVuvoK
 T1qoLIPjs+sjpg5wnrDAA6Tjos6mTaXIoTm+VhUfFJoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Ew42L4+sGtXg1rthB
 voivnjXlL0sKSK0vrB5L8HvPIw=; b=wWniHsJMia5XslNF4Fk+sJqHm5PB/aMPb
 gfg9SpVgMf9ZcKRUxNXuf5AUfC9BrRlLMbg7rl+ZdFoQRNLDZIDxuDlC+jrQFEAg
 FDBveEJCxarX0xxF/FJbFH//UOj14cAi08YrtwaJtbXP5XfRjhzV+zq6ZV1Knc8k
 IKi2YWtZgxB2MJzHReUW9DzZVAT90glgc+6kWz2ocza6w++le3p7pgagXGbOXloH
 cN10WK51o3S9S7xUTFg2vemlP/YNYLE/JfPBpMuVYyoigoWSERnyrsuYRCpP8+uZ
 35+KIGKEGZaQYRhyNNmlf7DHF/QraaM+Sxh0nkGJfxmtGEIuEu0pQ==
X-ME-Sender: <xms:Fw23XmtOCK3AFqkx9u8SK_NmO06cgXyWfJY3QwX0nGq5LZuuP81S1Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrkeehgddugeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtffrrg
 htthgvrhhnpeeiteekhfehuddugfeltddufeejjeefgeevheekueffhffhjeekheeiffdt
 vedtveenucfkphepjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdr
 ohhrgh
X-ME-Proxy: <xmx:Fw23Xp9wBgF6l1tux0T5LNtaq17_ACd09z7ePsLbCRceQqfTrFgBug>
 <xmx:Fw23XoFS9-EkLd1c1PhvNt-NDga-LRqTdc1dsm4Wz1E0Z-YxV2oUbw>
 <xmx:Fw23XnxC25xuzT2AWRDxXxE4MVhUl72sb7HcK6BJnF6V3vugeEjNRw>
 <xmx:Gg23Xu1pwmeq2-Kij57xRjyI5jCSc_krsWXtEQkQMlErMMkxxhh4qjfHdh0>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 21E8D3066240;
 Sat,  9 May 2020 16:05:43 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/2] media: cedrus: Program output format during each run
Date: Sat,  9 May 2020 15:06:42 -0500
Message-Id: <20200509200643.30597-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_130548_212391_3A07C718 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Samuel Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-sunxi@googlegroups.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Previously, the output format was programmed as part of the ioctl()
handler. However, this has two problems:

  1) If there are multiple active streams with different output
     formats, the hardware will use whichever format was set last
     for both streams. Similarly, an ioctl() done in an inactive
     context will wrongly affect other active contexts.
  2) The registers are written while the device is not actively
     streaming. To enable runtime PM tied to the streaming state,
     all hardware access needs to be moved inside cedrus_device_run().

The call to cedrus_dst_format_set() is now placed just before the
codec-specific callback that programs the hardware.

Cc: <stable@vger.kernel.org>
Fixes: 50e761516f2b ("media: platform: Add Cedrus VPU decoder driver")
Suggested-by: Jernej Skrabec <jernej.skrabec@siol.net>
Suggested-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Samuel Holland <samuel@sholland.org>
Tested-by: Jernej Skrabec <jernej.skrabec@siol.net>
Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
---

v2: added patch
v3: collected tags

---
 drivers/staging/media/sunxi/cedrus/cedrus_dec.c   | 2 ++
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 3 ---
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
index 4a2fc33a1d79..58c48e4fdfe9 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
@@ -74,6 +74,8 @@ void cedrus_device_run(void *priv)
 
 	v4l2_m2m_buf_copy_metadata(run.src, run.dst, true);
 
+	cedrus_dst_format_set(dev, &ctx->dst_fmt);
+
 	dev->dec_ops[ctx->current_codec]->setup(ctx, &run);
 
 	/* Complete request(s) controls if needed. */
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 15cf1f10221b..ed3f511f066f 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -273,7 +273,6 @@ static int cedrus_s_fmt_vid_cap(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
 	struct cedrus_ctx *ctx = cedrus_file2ctx(file);
-	struct cedrus_dev *dev = ctx->dev;
 	struct vb2_queue *vq;
 	int ret;
 
@@ -287,8 +286,6 @@ static int cedrus_s_fmt_vid_cap(struct file *file, void *priv,
 
 	ctx->dst_fmt = f->fmt.pix;
 
-	cedrus_dst_format_set(dev, &ctx->dst_fmt);
-
 	return 0;
 }
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
