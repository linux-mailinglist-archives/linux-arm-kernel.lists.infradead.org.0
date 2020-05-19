Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3BD1D9F3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qqtrHRDhJlmgFnrDuW7hVb/at7vwYjJscWkxRPoUSqA=; b=FazOH1tVvWUX52e3xNCGjCgdNA
	c1y9EMIxPntvGLdrsTfz6HX4niFNet5nug/yfgAJe5tQd65dUW5yeuYalVE95CRqh14/Obj3zkJIJ
	UpTAd4XgFiVE9yzIqMtdX0qsS2JNU0+yGa4WwPOKB+E6G1bqCyqtd42bI0jzarTx+VHDQyNw2t6Ui
	RJhYl07R/hcX5eZNQLA9nprbS1K+EL2Ys6sPaL9oQU5jGdQj8AeNM/fwJ1xq9n0UWmo4waV4yG2Wo
	J3n8DhmsBrlsGGIcr2qJxcbadA71meKgjS67Dp/LAHCMLWdxnsXSMiY7c/PGj0lxtXpgQH19Zu+C7
	SgGuN+QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6tf-0001Y9-By; Tue, 19 May 2020 18:23:23 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6sO-0000XE-Fd; Tue, 19 May 2020 18:22:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id b190so286967pfg.6;
 Tue, 19 May 2020 11:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nIw/Wm1p9mhtngU9JT40imNSzxd+hOjNvy14i5Yi/sk=;
 b=m/RAtZBA268ogWyV0zd+y7ddhFSa2wnf7yzaJGsJZPgcu4Du5QqE5dNnUqY8YAsO8V
 Ab8otkj74dK65n0oUJwIgKaUa8CW7RR+coQo2VaFpAnrxXUog/AVlPPx3uEUAvsAS2J1
 uJk8BGHatFyX4+oEEeq/mJQDeG1tHArO3XRSzKNuGyqWpy2HY30MTP/Rqn5VxB6kw8hq
 KfXBWO+8OYMDvuzmYzWYisQuKxYsL1BY5RY7fNCoDldvNe+I3opBCLypYGPXhEvSfOBd
 sFCqlDW+mLZz6Q2DVjgIYXIVYos1D2xQI3SM8359abyfNPKCl2NA2DA6bwz0LpX/m4d8
 ursA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nIw/Wm1p9mhtngU9JT40imNSzxd+hOjNvy14i5Yi/sk=;
 b=gk1ON9wqScIr7rZsNxT+pazdUVKJH1HsWnTa+zOxdeNE+khFi51qiI2tWkgD+7GMv6
 Su0mXmL8ot58xV4FUmecwqyqe/8TFI/TFF8dyZSSgQrAaiBLkwMVTUry6J1Rfr7lURqB
 rVXAKq8fwF6ozNxMbhKbQ+NyTLMlrkqa9xcneisFU75P7Yb2hDngXN3twJgjkX6bF51R
 //MyVri2iJtQUDClDCoGWm0DDpULiaK7ahQEG3oqXGvvJb5Xw/lV0ca0FABypH8H3y75
 8Kj9MEF2uZXrqIanRKbX7HYDXH7eMJGylwzvqXVSr2HlBEf6FQ9zrDR6enu2aVwhQ959
 1Vxg==
X-Gm-Message-State: AOAM530gg9/xgxO8ZiBNA7Y2SZhprRqiWfifoIA6pOpOdc+sAEFSlHT8
 ML3liK2o6w+fUoRjOBX6JjW42B4mRknl5g==
X-Google-Smtp-Source: ABdhPJy0U1J+zwnKEq+EV027rYJd4hOUnGCdZisBhQTKyjZoAWY9B1JJ1MqYTpbjWgwZSDs/yhPqXQ==
X-Received: by 2002:aa7:8b12:: with SMTP id f18mr363582pfd.81.1589912522309;
 Tue, 19 May 2020 11:22:02 -0700 (PDT)
Received: from localhost.localdomain ([223.235.145.232])
 by smtp.gmail.com with ESMTPSA id p2sm148399pgh.25.2020.05.19.11.21.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 11:22:01 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v2 04/10] arm64: dts: actions: *do not merge* disable sps node
 from S700
Date: Tue, 19 May 2020 23:49:22 +0530
Message-Id: <1589912368-480-5-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112204_526989_2D6A2901 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After commit 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for
Actions Semi S700") following error has been observed while booting
Linux on Cubieboard7-lite(based on S700 SoC).

[    0.257415] pinctrl-s700 e01b0000.pinctrl: can't request region for
resource [mem 0xe01b0000-0xe01b0fff]
[    0.266902] pinctrl-s700: probe of e01b0000.pinctrl failed with error -16

This is due to the fact that memory range for "sps" power domain controller
clashes with pinctrl.

This commit disable "sps" to avoid this conflict and let us test DMA and MMC
related changes.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v1:
	* No change.
Changes since RFC:
        * kept as do not merge.
---
 arch/arm64/boot/dts/actions/s700.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 2006ad5424fa..0397c5dd3dec 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -220,6 +220,7 @@
 			compatible = "actions,s700-sps";
 			reg = <0x0 0xe01b0100 0x0 0x100>;
 			#power-domain-cells = <1>;
+			status = "disabled";
 		};
 
 		timer: timer@e024c000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
