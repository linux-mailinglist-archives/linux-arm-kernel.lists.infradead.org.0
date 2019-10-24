Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA09BE2F11
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xRyvZTn4QSEQq2ap1E8hpAWMWHJK7MF2Yjsx4oAUWS8=; b=PWgMGOz6OBnPkN
	JTT6uJzbkC/szguBbYQsP0TxpCT+bWOtpnSjSppcTWXLBChVLT94H7wVDGYIpmUWUt751RKHKgWg2
	XKoOfTwN3L5rX5LTUeduyabyWnrOEBLs/cyXpVYE8fzwsVsjJtxr5qAUbd6Jxe2Y6gOAP46jYuK1E
	z1RKfzjS/wZAn0AQB2dQ1mxAYfpYeAk0sxbX9RVB2ooZW6Ob6qI1IP45QGrPOTuO7QOd14eV3SFfH
	mKHBPI6X/8QO6hEuerBgEX3JRQ5oyg7jd7FwGxj5MRdBkd+aZ8qNoEe29/LvOMJLlgNnQcK/7eNQy
	siedvlYSgNVJiaWnOm8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNaPS-0000Ad-Vo; Thu, 24 Oct 2019 10:32:02 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaPD-00008h-KH
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:31:48 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 2F2243E951;
 Thu, 24 Oct 2019 10:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1571913104;
 bh=uiwwS5b2IphvBHKc+YmPSSJR2+batggLeJo4PNUTWsY=;
 h=From:To:Cc:Subject:Date:From;
 b=cdAuO8oWyjlmWMukRC/NePYDvVUGNozIkpuaPbKYgQ7LKo5WFfoyVH9SftAY55rye
 iHckatKd1mQ7Hlq6OStIDxpYWoOfYffm1FekXcPB4M16yOC0kGqRduEj2v8c+ziOz+
 fch16IavG7qW9DpuNZjW3XNVDb9ZMug3DnTNyagM=
From: Brian Masney <masneyb@onstation.org>
To: agross@kernel.org,
	bjorn.andersson@linaro.org
Subject: [PATCH v2 0/4] ARM: qcom: add defconfig items and dts nodes
Date: Thu, 24 Oct 2019 06:31:36 -0400
Message-Id: <20191024103140.10077-1-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_033147_738208_F8F41B62 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here's a small patch series that adds some additional functionality
to qcom_defconfig and to qcom-msm8974.dtsi: interconnect, ocmem,
and HDMI bridge (defconfig only).

Some high-level changes since v1:
- Updated interconnect support. See patch #4 in this series for details.
- Dropped ocmem defconfig since that got merged.

Brian Masney (4):
  ARM: qcom_defconfig: add msm8974 interconnect support
  ARM: qcom_defconfig: add anx78xx HDMI bridge support
  ARM: dts: qcom: msm8974: add ocmem node
  ARM: dts: qcom: msm8974: add interconnect nodes

 arch/arm/boot/dts/qcom-msm8974.dtsi | 77 +++++++++++++++++++++++++++++
 arch/arm/configs/qcom_defconfig     |  4 ++
 2 files changed, 81 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
