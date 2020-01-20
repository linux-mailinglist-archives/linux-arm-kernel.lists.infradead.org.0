Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D45143297
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 20:46:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qp7eh6+0AbTBqy/i+B4PAjOfVVLX3kAOPBViHydwVPs=; b=s/H
	oFqM+1A2D6MHqrkSHz9kbpwzYXMc4v4shIvLhHJ8j0e4qWlBcj0Jddyrmq6p7w8dVMm27oE+9JDm5
	QhvGZD30XBEIuS+XvsF4CTBI3HQfXch/jvPI9Zr9sN0J2srtWb8iSV3MChzbZSm2S1Si6uVsFfB4q
	EVwBFZYDNp+KYTh5DrT7ovm5MpDvJco4oyhRSPcJGJp0KmPhMx75pjAyPyd8RBIVoIKsgjPR3EZtp
	GKHyvL32liP9rp+XrOB7SWfzg1gp9m3as04o8MAvVqRML7BdcMRP6eU1azDWWT5uUsLFLmdmwtRGT
	os1B8HC+Dn6/vWakVnlcHfIwC6dSLBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itczi-0000Ek-2L; Mon, 20 Jan 2020 19:45:54 +0000
Received: from outgoing4.flk.host-h.net ([188.40.0.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itczO-00009o-7l; Mon, 20 Jan 2020 19:45:40 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam1-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1itczB-0004Ot-OT; Mon, 20 Jan 2020 21:45:22 +0200
Received: from [130.255.73.16] (helo=v01.28459.vpscontrol.net)
 by www31.flk1.host-h.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1itcz9-0004Hk-Dw; Mon, 20 Jan 2020 21:45:19 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/4] media: rockchip/rga: add rk3228-rga to
 rockchip_rga_match[]
Date: Mon, 20 Jan 2020 19:41:54 +0000
Message-Id: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
X-Mailer: git-send-email 2.11.0
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.01)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0Xm17NJf4el5vffImWwWrhCpSDasLI4SayDByyq9LIhVc0MzHfOnMfVI
 AlgH8Xwbq0TNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0h/RxVysY5Ye6+GGw0VqdJD7ren9RtRNyYim5e3GD8LGfWrcbYvelpuN/Pk
 qhBpvAyWwieZyauFYqHkIbFa+ipFflSrcyn7M3A1M8P7YyCISF7Ax1jp5415hfbnHhmkWKwQ798N
 tjgwOHRNrKlsLSLsR2phe2H+VQ5drqtLHIQXdB2sPQC/ZXf7OFUBPjBV0jlRnibyCuwag8UEnjV9
 dfsBVFAo2VqRJ3PoUK3i2GylNtZWYK6FgocWFgIy83G1Ziw5PsG3ZK/CX16OekmbPreOnw2lIbsC
 g5hAk2rbw6y01wTJsjWw5+0eZIpQIcK9yrSpnIazZEQP7rhBhxNqNx7Ljd12v0hRQV2TuWFKPYIZ
 hSoXjZRXPZeF/ozRyNShALTpAuRsQ7f/A1SBbUaDAMpCdiFVwaP90eVaqnDphEW4xGx2bCpzxgBv
 RJlZffR315YiXq0P29rzRb3/fujGPSO0ZjPN6GBtX9ob7G66M73K7lEBopH59S/bhUmo0Kkx+QUC
 X/JlYVPK+a5jKpRW4VkG9koSZx4AE7ErDJQIhG9sWvIZWUifSNHSdOCLRQ7jpnXnmAJSLoHk+mB7
 rvqdepOw2titfOjo27VsmUXl5Dlu0Ez4hiPVrwbHSJw7Xp/7OsyH8g27Tr7mENICHJaR53upNsj0
 ZNx9ROADUXTdQZTyOamR3KMXZiZ/EdUuc9x8TOdIW6qv7Prfdfuh2V6P2IH+fu/1ze9XG6SFbqNq
 ARXGm2iH1Wgh6RAenBR+licROGZLSOPJ7pouDn/lmAaZNciLjY4Bum3Cz9zMKWDsCgJgzAyOo8uz
 gLvzPUQ4WO1VIxT90NysgdUUHBaOGnMZ3fVqqKS4K27k8O0AKLf9g2axxclWHXeuOCUCSaU4vgJw
 yjPlnmxH7Pd4xT6MyYGIdovMjseuwUIt8Ke1zYmTdImomsn9uPyWahCadieo4QRLnvbNjcvkOxlt
 YcJZ/YLv0cjthSk55ObUg7TpMbFmZ6g5Ky+1Stg9rJ7bhjXv2caQWgXrjuU3A3io6xJmD59iFVkb
 kXGPzFwfHhKt2wjdkKIWbyf+T8iepkOFBDDkCgKb9Tgwyo3k9+KsRmFMu5VQ9KBOovIJzflUDtG9
 b8caIarEvU/OX3xYChUDPsYuWEJtniNfuGO37qWHEu6DA1YYHSc7
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_114534_280880_76E86462 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.40.0.90 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org,
 Justin Swartz <justin.swartz@risingedge.co.za>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an entry to the rockchip_rga_match array for "rockchip,rk3228-rga"

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 drivers/media/platform/rockchip/rga/rga.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index e9ff12b6b..268116cd5 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -956,6 +956,9 @@ static const struct dev_pm_ops rga_pm = {
 
 static const struct of_device_id rockchip_rga_match[] = {
 	{
+		.compatible = "rockchip,rk3228-rga",
+	},
+	{
 		.compatible = "rockchip,rk3288-rga",
 	},
 	{
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
