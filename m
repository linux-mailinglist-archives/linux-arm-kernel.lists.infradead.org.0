Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A907160AF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:45:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+vfHz2upGvoC0r69K5QDQiJN3nKt9z9dZA2WFMHE1k=; b=YS+1huNpjjlO5D
	Z1kZuuDp4U1kJAGAbRVhKD/7SdF4S+tmK3FyQcvBHWoqRd2yauWNDkXH8Mu5UcrSTCh0QbFY0Jum1
	Isain97as5aKF7vHB4ATmbUh5MJdX7e5n2Z8DE7rNBXmWPzQA0m0gjiY+4OQcn9c9MHIy+WlpVa2U
	TB6c3gJ92odKJaGhW+8MmjD2TRxsaaq+iaHqLQnQP2UEDpLAHUQ5fNaJur/3+r6zIxTkpaQFmF7k4
	39QXMtQ1f5dXVWpAf7ZBPRP6TDI+9gv5FVP/kKXjw7/HFPxb4fqS7OhqvgcSOdGJh1xTF72TCb+2P
	qTmD76nXvA+Ages85JQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3a9g-00057h-Kt; Mon, 17 Feb 2020 06:45:20 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7L-0003gL-OD
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:42:57 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 58674539F;
 Mon, 17 Feb 2020 01:42:54 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:42:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=if7xr+Sp8ss0f
 9YqwMqw18AX7QTuXK6q1CEVj33p/34=; b=nQN89O1nFLZtQYlqH89I0Kmx5EBrM
 JMjAqr2aBnz9Jw97GauexifTLIRYSYN5hIxTERMKL/QnzrjwN5aKGUtkEqk6vYOi
 OQFo+90INsKRq+6zr0XagjGvUqLrKOQ+ZYJNLFYuw5h6Ru23GFvWhXGMQohg7HFO
 mHUpYtDKm1vwTBT7biF9+Ip7G7q0S47GxfFFRkl8ruwXjvGxDqORdboD5d+P7L7v
 DdyWxwzb0ML3LLFNeU8py2b+wJQiTNxDFhaPQlr/AlgqAuucOWVW95cdkX42zqop
 XKe2THxeuGSxNzUgTDwkJQynH0mG5K1Seqtyi+t/0J+Rm68wEtBQloIbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=if7xr+Sp8ss0f9YqwMqw18AX7QTuXK6q1CEVj33p/34=; b=NWebf0hC
 YRw2t54WE710Iix4f2kX216aODyK7MaXe40G22nwq4NM1S8E83ycvMWxTFOngoJy
 96tGCTRiGTZsHFpu6iAcP6MXTy/Am8MqItLB46CyXmq8KI1YHtFZ8OVwIupjheOA
 RT4VNK1gopc22IkSlHqBZcHKl0EQNEMZcrfnvQBkYdPSxuFQv9UpDPtzrxIJk7vm
 fPiBrvRoofsLEAsnwMHHVqHdz3MiWBpm93ykAsX+BVrF2T5hMr6QnyeTgw3y4oes
 SSKUAVa6PetTsGFM81A/MZloxu0pHtl/jivQVWKA2eYdFJaPJwrP5oWHd+LbzCRs
 d/tC/IzkTI1oHg==
X-ME-Sender: <xms:7jVKXgk9WbQi4qoVVqHJXTPVoZa2Gp-2PbCu8zF1DluYo33TYXt7AQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:7jVKXrwoToJ4ItX6p0QNZsgmwgbQpmAgW0R4SKpsT07CB7_EaExfyQ>
 <xmx:7jVKXhtdweaRWVC5t2ZNqexYIqTV1RF1163UNVD99zGVBrkrcMFUYQ>
 <xmx:7jVKXn-Wrmj-oeXIaSZVXpPjBdgerAzMoQR6JKLSiGDScpYpTQ_iMQ>
 <xmx:7jVKXnNN2Lg85QfQl7EnCuE65MmvuxwZ1WWkfHTJXLne0esz1VcxpA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 935FC328005E;
 Mon, 17 Feb 2020 01:42:53 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 05/34] ASoC: sun8i-codec: Remove incorrect
 SND_SOC_DAIFMT_DSP_B
Date: Mon, 17 Feb 2020 00:42:21 -0600
Message-Id: <20200217064250.15516-6-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224255_925723_49998B91 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Samuel Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DSP_A and DSP_B are not interchangeable. The timing used by the codec in
DSP mode is consistent with DSP_A. This is verified with an EG25-G modem
connected to AIF2, as well as by comparing with the BSP driver.

Remove the DSP_B option, as it is not supported by the hardware.

Cc: stable@kernel.org
Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 33ffbc2be47c..32b7410540c6 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -236,7 +236,6 @@ static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 		value = 0x2;
 		break;
 	case SND_SOC_DAIFMT_DSP_A:
-	case SND_SOC_DAIFMT_DSP_B:
 		value = 0x3;
 		break;
 	default:
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
