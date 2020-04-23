Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163751B54E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 08:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xcJyFG1mjQ2oFtxkywGE0Ov2gCeFXwFzeuNE9gHuSfs=; b=LXH
	QR6EZeSSBNXNllZUMmoAMTmbdjRsho1ITdKigJqGxc061gjoQ++yL3tFyte1K1P73NISd0Pf++RAi
	WY8E7Sd4gJMCXhsapTDk0pyfAInWBMN/nZGpHT497JcDA28rTo0evVC0bgidZIo2tAQm6LM9eXj/e
	6zxN5TdOCmXf7m5Z9UTiKBxzX4LdC6TTLRrsb2yMH4nyf0zlVhqkJ7J7swhLwzdRNGaRIq8aQoZA2
	rJPrM0nd7co/9umr8N/LiZ6/BOm7nd2bofop71U9OFxHNYcMnYdXwNs2fytVN9WSTm3ABtrBenoWh
	VMS+5YDyQ+KupjWiyZgw0w4+5h4UAWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVfj-0004SN-Dz; Thu, 23 Apr 2020 06:49:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVfU-0004Nr-Ld
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 06:49:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id i10so5428924wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 23:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=EFfxe/epc7L2g82M2YjSCSd5iJjobRL2IJO+04GvmP4=;
 b=i5GjJenzjF+Mtmr+euiOruLYS80OFAPAUNbhBwVawispTe/Y76HORAzc30r6GUOI9N
 xZ0NkHoIQ6xbn6AZoag6AllXV3LJYc2DDQ8bBDvbIJuaAds1aKCBk8jCgB4gVSg/fJ1C
 klCIFCRZPCEqIZWd2keqEMNfOtd7SW0Jrx+/H+CgRYaC3+sCyqbX8yqgmPqTN5DzHyFE
 5oTe1grM4U2EDBLMVYb+e9RXI5tmGh8Jz9Aut+tpiD7+BDpUI+h3XomGQAIZ8GgymGRz
 86RDH0jWg925DFj4o5r1rcJ0MY7g0GD7i/XeBYng2zbKPfEyabbvLhlCtcFG2kovF3cF
 JSdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EFfxe/epc7L2g82M2YjSCSd5iJjobRL2IJO+04GvmP4=;
 b=Z74piL7zIJd9X3+grVxhOEyJMVRoY5fBP2hLYdcyKE6rd8lPu/oSOtvMzGDz5LHpBR
 e33Wx2p+fBo2HOKI/haVAg6yi+LT/7YzqWZMVVvXZBPLFSzZwykPPNnVF9O27bz97cqA
 To1pQch8dgjSAmvp/sYZkKaStvdUpjoC/p7gVAXbdvDXzzkynrUwqSmxGdgHR5iwiPAi
 NVh2CjVvWi4bgulVHpq5DrjXLJ0JC3eEsEGKxpzxhhQb1xKenfC/aoUGKsjvKV2Yb1nA
 gihjgjFGbv2mRS+c1cCo54gcrcAjEexKyKmnaFWD81M6qVko7XkFkjMn2d+kKyorheXl
 h27A==
X-Gm-Message-State: AGi0Pua/3osfOt82QlxRYPRpT8u/UqTgQ3toIkscxn+eer+Zu9fK8M/u
 XZbf2XcoPLLC/1Ls5JAo9z6QZQ==
X-Google-Smtp-Source: APiQypL9V/xynzD2GzjmsaioxVGXnzw2BCQOJ51nOTMuoE/OVvc54AgkNwrHjY9FrCXuWV7XQC6XWA==
X-Received: by 2002:adf:afc6:: with SMTP id y6mr3065014wrd.74.1587624541812;
 Wed, 22 Apr 2020 23:49:01 -0700 (PDT)
Received: from lmecxl0524.lme.st.com
 (2a01cb058702ff004d8cf526990082b9.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:4d8c:f526:9900:82b9])
 by smtp.gmail.com with ESMTPSA id k17sm2254910wmi.10.2020.04.22.23.49.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 23:49:01 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/2] Add examples of secure- prefixed property in
 documentation
Date: Thu, 23 Apr 2020 08:48:06 +0200
Message-Id: <20200423064808.10468-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_234905_227102_9F753255 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 Etienne Carriere <etienne.carriere@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This is a proposal for adding a bit of description in the DT bindings
documentation of how secure- property prefix can be used for. The
changes in this patch series describe that for clocks and resets properties.

Documentation file arm/secure.txt already states that secure- prefix can be
used for any property hence the description proposed here are not mandated.
However it may be useful as explicit examples of such usage.

I will be very pleased to get your feedback in this changes.

Regards,

Etienne Carriere (2):
  dt-bindings: arm: Add secure-clocks binding description
  dt-bindings: arm: Add secure-resets binding description

 .../devicetree/bindings/arm/secure.txt        | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
