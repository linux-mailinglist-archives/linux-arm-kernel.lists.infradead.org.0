Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DDC135A57
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:39:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SJM5KVSpoMLnnkiqunt1OzGJDuyGqjHNZ/UikXEOuus=; b=RaBPzb3j04Ubu0
	XBQADq7Zv/tMv9CND6S2upmHLyZSVIAYdwZu1JxR9g1kMIOecP5fOxeaUstOEJVDAkhhH3aWBNBho
	4s+onm2qp6iAxVfYQpIPmiOl+d+2B8jm97lNntu0YJ39kR8561LVTYWAeuYDdC/JtMchGEOUhFlwE
	rdRHp89W9Fwk6eM9ocdYGrZq4cGSFYvOOMobFyKaFzaYqxk9T7tPsHOVINAw4AqG0IIQJy/uHlNRh
	2B0zaaiyuHznVtFIkWnHQ7LZa9htN5Sa8f/oXN0qL7Zv/FUkGdRQNVNImTPbiQOlwZlWkHiI59kqw
	XCEPyCdb0NdXfIf11lgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipY28-0004RO-0l; Thu, 09 Jan 2020 13:39:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipY1w-0004QL-Da
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:39:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id q9so2944632wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=btljfB67qHdrjxduirx8+8GpyguI3bz2CxoaGmxzpS8=;
 b=vw351ySwviRIJKPA8Q0zzDXwDtsIhYFO4r0RObdb9vUY30tiXmPeFopdEye82KVX/r
 l6ilqipW3OsfTTRaqaxhlw7wlY/IbiX+8wmHW9sH+Im2zFTVvYah0o7YjujMM2eClwne
 ZBE/BFdcdRxGU2zUNVRgf3h0JtBoJNIPBByULotXTamyZjRTFKVbBUsA2Qsg2vaNfS9M
 cbTmiJt4D2KW+EqSUWGJSk+WVpbzd7silXU2LZY0a7YAB0VK8L4XeLhMdyYCjRPI1tBG
 fL/BPbqESrXFmdN8uEpV9a/kCNncgAwtdCBW2TtH62KZWTTkSIgxKuppky3NSJhS6/+G
 +ZqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=btljfB67qHdrjxduirx8+8GpyguI3bz2CxoaGmxzpS8=;
 b=O2/OsWKPdGMr1PRWXnOWj1yzt8Uw4YZr6WVHsX+O02qYxpEI4Pdkz3ylW9D+O7o2b3
 +Mq8lGzzAv7A4p3qBAzlGLnfGucIkW0udV0mHHzmAe0fihb136HPoeVlP/oQGfmBRmEl
 sCi+sTyYQYHo+4Ni71sC9Kl0i8qtE073cWhsuXwX1EyG/w3av/f+d/JfK76HOc3mMf0f
 AyRjWpZ5J/2NCfzKG4j/oJ5MNbSMRSDZ9ZYb+FatajyN7DutPM+hCu2ho2PwRHmjChRU
 xrNMiSaB8wNdgCreDdLPn9A8l3C3nHZFWJeq+gOelelYXCjmQ5sYvWJ4zSruztSCseoG
 Drxg==
X-Gm-Message-State: APjAAAX48wgEQuaCTLkGL8MHdw7cN1fxHh3Mk7SGKQiwBo5UL5//vm3/
 EGVlzJjHnFH8TMT98+8BL/DUB+gGsTyf5A==
X-Google-Smtp-Source: APXvYqy1FNte4go1SSvuH+JEJzPEKxJcLvB0V5zulbJ2Nj6EAR0N22snabejqCaDbAolNSQ2vR76Ag==
X-Received: by 2002:a05:600c:2254:: with SMTP id
 a20mr5021431wmm.97.1578577157386; 
 Thu, 09 Jan 2020 05:39:17 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id z123sm3036704wme.18.2020.01.09.05.39.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:39:16 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/6] arm64: zynqmp: Various DT fixes
Date: Thu,  9 Jan 2020 14:39:09 +0100
Message-Id: <cover.1578577147.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_053920_455575_24C69DFF 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Jan Kiszka <jan.kiszka@siemens.com>,
 Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I am sending various DT fixes which have been found over the xilinx
release.
1-2 patches are fixing reported description issues
3-6 patches are actual fixes.

Thanks,
Michal


Michal Simek (5):
  arm64: zynqmp: Fix address for tca6416_u97 chip on zcu104
  arm64: zynqmp: Turn comment to gpio-line-names
  arm64: zynqmp: Setup clock-output-names for si570 chips
  arm64: zynqmp: Remove broken-cd from zcu100-revC
  arm64: zynqmp: Setup default number of chipselects for zcu100

Venkatesh Yadav Abbarapu (1):
  arm64: zynqmp: Fix the si570 clock frequency on zcu111

 .../boot/dts/xilinx/zynqmp-zcu100-revC.dts    |  3 +-
 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 45 +++++--------------
 .../boot/dts/xilinx/zynqmp-zcu104-revA.dts    |  4 +-
 .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    |  2 +
 .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    |  4 +-
 5 files changed, 20 insertions(+), 38 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
