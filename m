Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D0E172BFB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 00:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5SadqY9e1PpYUqZhoKkWdl56HT6AQg4YD/SMOi9A+Vc=; b=o0uJbGmp+K0S/FDVStAfiNUYJQ
	Geac7sCEw7fFrTF4AYevPwx5R1JJqW/FDj1iXrtWth7gR4g7y02My9MEhB98jmtF0BgE3gjx7niU5
	u+vGeVOWHpFyavGcxq5+vAwSuYu6txLAlcmSgULWWpMjGhmRkEoTFlUiBRz1w4P/jXexzdFxJwv2o
	GTt1X9gKX/Ct7TAuLFnH3tPR8XvQcbz9aik9LmdU0FPZ1oNLs+e4fAMzTzrFRATWu42LnBlqK6lGu
	/xIVFh+rjSZUBAbeyUNOvV+eLDfMBAtd5HB9iqiUXJbJjx4YmEqFY8dcRPRzZ6Kt9BQrFlSFh3xkb
	F8qCI0nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7SFG-0000If-BS; Thu, 27 Feb 2020 23:07:06 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7SDd-0007Ta-Ie
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 23:05:26 +0000
Received: by mail-pl1-x641.google.com with SMTP id b22so405551pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 15:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6ZPTBc16gsRgOtb4TnzocOZ8irwL4eMbyH66vQS/GYA=;
 b=kXDz9qkp6qs92/X6p/L9WmMF6gPd5XAV+dtAGFDrOEy9BrsrFN3gdjeWoMBAfSsN5g
 rFjD+rXGU//RVwilhjvoVKaVw54OFUEJb7vPoeVeogqSnFtpo14Mv2FwW/tr3Kc4QhiS
 qSA3dkK+gn0cpIFRXeBqpQ+o7QpUbDFF8LsPg0Soyp+KeL+A88eeyOQ/Ejc1KQX/7zqA
 mxmWOTjyjEO+LbGyQjJqZ13AZ6cP0bg9vT5qU4RS+eBHIeGoaFSyJefheYkfWA+GC9o7
 k4bFt2X8UIKF8YA1FVZW5L+qk+LtfbA3dYqMKbp4XCcQuVNolALVXTSvDZYsMcqmNNrt
 574Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6ZPTBc16gsRgOtb4TnzocOZ8irwL4eMbyH66vQS/GYA=;
 b=B1JbGac9n6/9ghS2hnUClwqIjUvDCyjAkQ7pc5ke3m1MozmvnbQ29G2VUrNo1KEQn9
 05g72fmqlmT2e2DyZ6wTxoBNeIQo09imUEDMFRodQ/FbPUMHn3tPS8LtCdyIyv6vhi6s
 E8+c3YW0NLckvnGqu010rlYLSWnog5UlkeGjqsOGSbGRGWDGHi+F1FRiq+YnJ8ok4+T5
 YWigsOcM1OGIng6s978K0ewlW0khaX5SnvTBa0YV7qiE/iZjU+mCgcy6lzciKQDOqAmZ
 /KSGD80r8vYcO2RDtADsV1U4CGRkC9HytldgJK8EQ20+/+XdYrnqyx6Vq42MqPvA4/hS
 PiNA==
X-Gm-Message-State: APjAAAU3wt8/A0IyF21TUuhIxsLUN4byd3HvKA3iuHlDcUPAi0tT/xr2
 EsC+v/33VQW8oXCuDM9HAiI=
X-Google-Smtp-Source: APXvYqwaQgE0kh+k6ox6GjNUfuX9eBxyJlL/7uMbDKwkNIQDzt5x2XGvHBsGHIJPgCu9HrHuIlE2Sw==
X-Received: by 2002:a17:90a:8b82:: with SMTP id
 z2mr1395149pjn.59.1582844724422; 
 Thu, 27 Feb 2020 15:05:24 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id w2sm8275975pfw.43.2020.02.27.15.05.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 15:05:24 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v5 5/7] ARM: dts: aspeed-g5: add vhub port and endpoint
 properties
Date: Thu, 27 Feb 2020 15:05:05 -0800
Message-Id: <20200227230507.8682-6-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227230507.8682-1-rentao.bupt@gmail.com>
References: <20200227230507.8682-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_150525_622490_2CD645AF 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Add "aspeed,vhub-downstream-ports" and "aspeed,vhub-generic-endpoints"
properties to describe supported number of vhub ports and endpoints.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 No change in v2/v3/v4/v5.
   - It's given v5 to align with the version of the patch series.

 arch/arm/boot/dts/aspeed-g5.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index ebec0fa8baa7..f12ec04d3cbc 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -195,6 +195,8 @@
 			reg = <0x1e6a0000 0x300>;
 			interrupts = <5>;
 			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
+			aspeed,vhub-downstream-ports = <5>;
+			aspeed,vhub-generic-endpoints = <15>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_usb2ad_default>;
 			status = "disabled";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
