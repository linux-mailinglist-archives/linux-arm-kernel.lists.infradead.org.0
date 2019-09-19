Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0F6B7A18
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 15:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f8bwRBZfTQYGoeK507yPU1JKtCtfp997qIRCG0yC/AE=; b=OPvM4Zo+uZkMUR
	scEQDeZ2HfW1VuxJ/inLbeZjUhDPUgAgSWWmO/fgCkjGpg4R4Zxw4giO8xpYr75xXTS+7AJOOqPSW
	GEN+dwtqgDxfevLc6C8sPtszwXdjHjzDMLU++sLx/3e3l4Py8CGdC3Hog/fBCaRsL0ZDfkRuJ7U7t
	YJSHpZX8jg5lbLJQURWwyR/RRnL4ADb3Z61UB9kjapB2gJJ8j6+qoVzM1BH55dLZAVgD/6sx4p9wj
	iHfpe3FolCTK1M39QDrvRD8E3NQgTah7rZL8D8YpMhA11P4SFtRHVQOVv9rlQKsm+Cjo0QMAevr5i
	WDgJ5xm7YnqUgElVV/aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAw93-0006EL-8i; Thu, 19 Sep 2019 13:06:49 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAw8d-0006CM-Eb
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 13:06:25 +0000
Received: by mail-qt1-x82d.google.com with SMTP id r5so4142649qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 06:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=IsqRTG9caaUhIK42xkXjoF6FO3aLA3ZmBQE/WyKykk4=;
 b=bX/AXmcFaVfglElnWxWB7XeLoIyuIUuRKwnBOcGM8irKFzDRRnerNcio0q3i5A4QrZ
 cfFzUyk/XPWkTKIGmie6qNNsLqV3OjcAW21aEtGGX5BW7Vqb7/nIiFfi5NvzNi5UMBCl
 vFTUFcnYZ6/7As8USO7Ch8DcS8WfbQzYIxx8Hqiu05tQ3XGoQaOdcXJG7Jt5dpfpHyVR
 3aHQeoHgD5Izv4STeOm35bEQ90niIoP/7YpU/COMAvtqXjRIfuVTVdlEFaOguucjrf3P
 lx5c4aT8F2WZq20vqoSn59Mec7fzVcOEhrBwWS5b0+SCHG0DiWNihwNhgs7u8wkBJIRK
 Ooiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=IsqRTG9caaUhIK42xkXjoF6FO3aLA3ZmBQE/WyKykk4=;
 b=ilIY6Kl/39UtEyjZiAsMDiVHfA5jCDXgLICo6wGxSePe+7iJ7ZJkDn1+Q39wQccCJa
 a7hxncFHMzYOQrDCqesdUwy8go+Ms2XMvdHtNbIE7BNySSwoYoBbCZFziTaXLyT+wSfp
 7yZpfdZ3nUk1o9lH4NaieRXAzxPkDvrAe/vk8VriB+6D8meOLE/34ivy3t38fIbINfOp
 GebjJEespNstMCVIAOK5bzaYAgFUOAnumCkvk/mZjUfXPVOUv+Imuxaq6uhE0s77Wbda
 cV5yN13GrkkTpZahvhooSgVOdX8x51XBCfCWHqgSHELPJTcNqfjggm6AoYpeVqSESX3E
 Fj2Q==
X-Gm-Message-State: APjAAAXhEvobsdhv+gDGYhRcGFA0s/ZFxFv595Xb/4ps49BuFmv+aywT
 3rhX4KER2veKvoH57PcD4S7Xuw==
X-Google-Smtp-Source: APXvYqzasIZpl9AANzlifB7I5Xk/YzI5eRwkZmoUJoB3pNCXKoD51RWkv6AWvvdUe41/RXWOpLAw6A==
X-Received: by 2002:ac8:7502:: with SMTP id u2mr2829778qtq.216.1568898379188; 
 Thu, 19 Sep 2019 06:06:19 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id u132sm4708482qka.50.2019.09.19.06.06.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Sep 2019 06:06:18 -0700 (PDT)
Message-ID: <1568898377.5576.186.camel@lca.pw>
Subject: "arm64: use asm-generic/dma-mapping.h" introduced a kbuild warning
From: Qian Cai <cai@lca.pw>
To: Christoph Hellwig <hch@lst.de>
Date: Thu, 19 Sep 2019 09:06:17 -0400
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_060623_714520_4A2302D9 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Michal Marek <michal.lkml@markovi.net>, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 5489c8e0cf03 ("arm64: use asm-generic/dma-mapping.h") introduced a
kbuild warning,

scripts/Makefile.asm-generic:25: redundant generic-y found in
arch/arm64/include/asm/Kbuild: dma-mapping.h



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
