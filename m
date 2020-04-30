Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDB41BF973
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Message-Id:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C+LcShjENKFaZfV62QMYrch3QGR5/OtMMSyI2dS4vGQ=; b=ce7/Oda2mARtVm
	zV85v4Xe4uoZOm1IXzivg9pnTUmV1Gy++YmKplkjPCQCwT/l+W/SpK5mijrsSTfLEg7rqpyru2aaV
	4sqIf/k0MWD1FXlUWnjhWfwmScZgPSgSNwSOkB0N/p/Fqpz+bIwQjtIF1UXvSjY9/XWGOvYcHmY61
	dazq3Z+HyKniMEDIXyPm1joxEAPlIFBZ30SirXT1+ajiZPq4bUnUJT2I8E9+CE5/YqNjiXJ8enRm/
	PZAWmJa1xTdKOvjnE8WY90o9aWzpZQY3UcWdfkQFF6Qb53hsPgnGBvdgHHTMF2BE7yoCVzMX9eNGy
	MpjBQhKfnswJbXVwF0mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9BT-0003iU-Ed; Thu, 30 Apr 2020 13:24:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9BG-0003hl-Qs
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:24:48 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so2878838pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=qEBt0vXjbk5Q4ltgNSW+NS8nyELrH+5nfBRUIqyA6is=;
 b=zMWYkcDmT4hqTCH/QaWiUDvaJmDtfNpCMuXp7fMQTUjj5/ObGmnANccRMz2ukYZM4r
 VdaGCFCp4GSIkaMxu0EK1g7XnpMRebRLE23G5Gmoli9sYmZd4qHE2ty74bnAygVOg+s8
 BN1fmMqDugOHXQwg7GD7dzVCZSS1cBxYGlx8AiT7FZ5ZDTIbjh6qeX1+HoueSmuPkio/
 lcX5j72CsYg5J+ZXocME3MQPHiwqNJpKR7XH6pqmok5bqA8AEsrUc/JOaSim5O6BzWfL
 8KdtgjxwQpe+j2flqiPrfsORlb0wXFGqQsTPF5tuNhMxWuQrCZFqsFcT9ZEKtXsZM1v/
 Tm6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=qEBt0vXjbk5Q4ltgNSW+NS8nyELrH+5nfBRUIqyA6is=;
 b=pWddFJ8osOV9a9tbV5hvfBVg9UH12hZdExzwREvnilLml28sEpk2n0x/j89lXobGVk
 x/fGkIStPG3nDR38vbuBcWwcaZJAVWNse7bXrShiF9onoTtpmJbVG7qqPm2QDnHfkhi9
 Jsuh+HJI7kTb2c8Mv/b/MeRdGcx3fRtJyC+woJkGdz3YSALTo8jFQutMkBAjixvzkBFu
 G1t0rCmAK1qq7yvartZ1x8EIx0eEL0I+cUxH/IMnsCYplnX86zUf6e9hMC5YJdS/YQwy
 hmk8UhCLa5iRrlNy3+cDcOQ/B9g5QbIsIuyDg+gL1QhT/7CxR71TdSw9tocDyyK4FyP/
 LTjg==
X-Gm-Message-State: AGi0PubJ0rwHaXFUYFI1E4LlHyYFWHQhe1OD1vRSqGskrXRjh7U8EWfU
 tGTcLA/BDz8bcRyttd74TQ3SlA==
X-Google-Smtp-Source: APiQypLwsWQKfyfm0gdb6TRYobt1/StUc+eLmspBqFN9dK8quZw55tE3HuNkq5Cx5ZL7JpR0ypIpXw==
X-Received: by 2002:a63:f960:: with SMTP id q32mr3102166pgk.357.1588253085753; 
 Thu, 30 Apr 2020 06:24:45 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id u15sm1712135pjm.47.2020.04.30.06.24.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 06:24:45 -0700 (PDT)
Date: Thu, 30 Apr 2020 22:24:39 +0900
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh@kernel.org>
Subject: [PATCH v5 0/2] dts: uniphier: Add Akebi96 Board support
Message-Id: <20200430222439.0ae1c4fa9572c8487fca96b6@linaro.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_062446_900810_B91221A1 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Here is the 5th version of the patches to add a devicetree for 
Akebi96 board.

This version removes redundant setting of RGMII, fixes some
parameters for max3420-udc node and add the address to
framebuffer node name.

The Akebi96 is a certified 96boards which is based on Socionext
UniPhier LD20 SoC. Most of the part is similar to LD20 reference
board, but there are some changes.

  - MAX3421 USB-SPI chip on SPI port3 (for USB gadget port.)
  - Simple frame buffer with 1080p fixed resolution.
  - I2S port which is connected to aout1b instead of aout1.
  - 3 serial ports, only serial3 has CTS/RTS.
  - No NAND, only eMMC on the board.
  - OP-TEE installed firmware.

See https://www.96boards.org/product/akebi96/ for details.

Thank you,

---

Masami Hiramatsu (2):
      dt-bindings: arm: Add Akebi96 board support
      arm64: dts: uniphier: Add support for Akebi96


 .../bindings/arm/socionext/uniphier.yaml           |    1 
 arch/arm64/boot/dts/socionext/Makefile             |    1 
 .../boot/dts/socionext/uniphier-ld20-akebi96.dts   |  189 ++++++++++++++++++++
 3 files changed, 191 insertions(+)
 create mode 100644 arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts

--
Masami Hiramatsu <masami.hiramatsu@linaro.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
