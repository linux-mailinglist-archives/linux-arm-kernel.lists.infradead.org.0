Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E833F313F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UmHLR5bAHGhpZ43zVeHelEzkz/HvYN6quTV+Xq4JiWs=; b=EUy
	tWb/onF/MjblGcdJzlD3WeaRskueRjlOOUvGVidrx/I/8aGM/hQ+QCkzay8Su6MkofqiuQxqVqsJD
	JjLeGrQQGUpVWnKClS/oqCfLN1iWfZQuVv5A/dZ/sDtnUj1ceb1Et2wDzJ04Zd+Q9TE2ExXqWktRE
	TN+wgJodBF18Afa3MAaQyAJfG/+phfVJc/7eKofEA+hIzwAjFeUV5PUEcA1DjRBbPI38uhYYYJqMT
	Yq5L8tF3XCR8GPs3N8yWuCXJhl3MhfwyZfMzuUcy48/LjtHqfgixbQwSSx6oHVkQdzZVAl7y9GAmJ
	uBUtfmqDMQxKSHRMOf7vsEkCZ2mkJog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlUL-0005PP-DO; Fri, 31 May 2019 17:38:45 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWlUF-0005Oj-3J
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:38:40 +0000
Received: by mail-pf1-x42e.google.com with SMTP id c6so6615844pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 10:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BAfi/wBYPNGeI9XGpj+QGBzyZxUhvDN/nixRkool1w0=;
 b=UAQg1p1mfFjbFiHrkjMt2IvukhiWaQDw3LFaf0hd7yBvOxArMSmiqrnp/+GdvPQgJO
 rgC/4iSZLx9SQi5GCL5r9p9YlxDdjuVVJG42oo113B9rUYg41ZF1A9rLtfHMABg0PrXf
 8M8km6viJhgUM2aHjkm7YmTp2cipbLBH73YeJrcPSJVVH0OJAKoe5qAEFJqB+87nxqBe
 t2mZqgfPricqPGxglEHdHPAcgOd7cJDozZBu7GTJWkY+QvUrW+3RHvc7l0V7IPNeb1kN
 rMiOsZgwfdsIhZ1ztCrFwUCGMO9HJnAx31qIKHwZxYshCkQpW4cnUDo8fENHgMyfaYvr
 viLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BAfi/wBYPNGeI9XGpj+QGBzyZxUhvDN/nixRkool1w0=;
 b=eoyyIo6w4WkpKZQUWIa8gGNBMx4S1ztZ81KzHOznuhOnrd5BvAoMQP14oQT/aaHKU+
 XTpFolp8t1MHVfsJKMRgP86WyVBXiQTNAMbJG+Dqkz0w2jMPugZmjT7TPJzvzlnsni9o
 lJqniwjYRM3Qa2Gjm0kXhET4JNngfrrw6b01mA2aj25PgZZgL1LURClR2Mw3OPxn3s1d
 ggKbT6D6jqvP5swGwDAyPH2UYUHIhvOU/ey+9mFkKOlGSUxj7QexNcGtYGTj1tjpX7yD
 94m7u7UOPYpyN9I4bVcnAwIm3ksc03e8yFBWzikoZBEx2JYMD9I0KCTNh71ZjqQyWtMs
 dtUw==
X-Gm-Message-State: APjAAAXBpXNIVEWonhJIRoeaipk9KqyXXVa23zzoV150BtKgLDwisrre
 1KcCbfAp/7zGM+2iIwDOjHVSdhBm
X-Google-Smtp-Source: APXvYqxNv5K+BDaR6SYNUokm5BS23zA8l5oYFKR0yFivaq1P/mRywfzk9xrgOLTxAjfnueuhr9az2Q==
X-Received: by 2002:a63:4346:: with SMTP id q67mr10499957pga.241.1559324317408; 
 Fri, 31 May 2019 10:38:37 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p16sm14974419pfq.153.2019.05.31.10.38.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 10:38:36 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64: Enable reset and pinctrl for ARCH_BRCMSTB
Date: Fri, 31 May 2019 10:38:24 -0700
Message-Id: <20190531173826.6729-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_103839_136337_E7A09430 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jim Quinlan <jim2101024@gmail.com>, opendmb@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, Florian Fainelli <f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series enabled PINCTRL and ARCH_HAS_RESET_CONTROLLER for
ARCH_BRCMSTB since we have platforms that require these two subsystems.

Doug Berger (1):
  arm64: Enable PINCTRL for ARCH_BRCMSTB

Jim Quinlan (1):
  arm64: Enable ARCH_HAS_RESET_CONTROLLER for ARCH_BRCMSTB

 arch/arm64/Kconfig.platforms | 2 ++
 1 file changed, 2 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
