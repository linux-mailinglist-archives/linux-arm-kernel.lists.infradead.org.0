Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C048ECF45
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 15:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOrNBOrQcRWnfvmfHFlolwQBMLPeFuytJ2vM+7JpQls=; b=R2Wt2VzWzbSP2/
	bbSNzLllQ1ea6cQmAlXpdboRYd5rXjIgaAnaleUwDm3pTUC6DTfyGc/8EHIUU5ZgcVnLPGj7YLuq8
	F1WGPbrW/Foday8INVIubAm3itlgpjNooX1hNJanrablHVFfUCsS9Yqb9+OxejgCjB7Kwk1l5i2J+
	2Yu6HO57rof1A4b/nIpKYYfSV6uIu4pNBsgLZyyESbimEeR2JkuZ7pWmT/+M4rZOxNpRiznV7f4HL
	fqY8LyJu+okn7OHp3FCYanA3GiprNMVD/HxtccNqEAaSV1mG4LKrvRb+8nT38ckt7EZu8S21LYRCP
	WabXC9jMOwpds0j1GRpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQuen-0007s9-0v; Sat, 02 Nov 2019 14:45:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQued-0007rI-Ux
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 14:45:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id q13so12442849wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 07:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uIJKIjYCPlBHk4DNKC7Nuhb+JB+uMa/Qa+51TF1mf/o=;
 b=DFMS56MvP6bXLcOl8XeucYLRueXyFQfDIMLgjAD9tRO1V8s1truoh3IfMlzjqhIUPN
 F+4vFCwz/EsCjiZIYqhq2RbngBLxRFOSlqLuXtY/QTQs/iAgg8ozfm44iHnRkl09Zvnk
 hICpZTOzCl6rrmbu/H8+r0XDctznYAM/sU/D9exi0vOOBQ9ClxNmzjTEzH/hC9hJ7u0U
 M9x3M8or8FdzGSqSucC4y333YQpZ4K3bHJRyutptQCvITVqrTWdZid+c6lKf0/T2CFRc
 gCYvgQ92uXJZksWn91fHYaEkVsgJxCHBm+pTpVy7L8Om4eTqAEoddWMKsrdEjuHfVPj/
 q+2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uIJKIjYCPlBHk4DNKC7Nuhb+JB+uMa/Qa+51TF1mf/o=;
 b=WpNN0kr0OIPwnqGYwTDCevcse+NbjAfbUA5DOoUSN6Yy7XD3DAuhKmROLzl+Ykn7Qf
 U2R20LCMXKHGjmfM//CdhzlYUSS9IsLLfvmituy1LGVROydm8NNbnZI0wZ0E2X9TGeIG
 STQSPNnACm7vP6xLv84/tPLLfz1Fh/spt3w3AYFwrWYBFDs98INe2UP47isrFvgvzOrM
 jBWQIuRy/GciPtLm8fmNvqT06DQY5pv4qEkmaXDcVJRpKlRn3un1TSSiyktGAovkiAKl
 JNkoOmVe8J47nL7ce2ZbzE1NTK3h324qzoaTB7bBLPPOH8ibtyamEtG65SYcdlrsFO2X
 dvSg==
X-Gm-Message-State: APjAAAX5XpQUkcz54FxSlsIg3PiwXBut5PCZKzWNIeblNBDhaHwnQa8U
 jbOaZse8KAXqVpe2vdO8P9Y=
X-Google-Smtp-Source: APXvYqzzFurzv0uf5mrazs3VzK2UtgCQwneM9JKgkLcW+cgU9KJVnQ+tZbrIZqh5ZRJQt5FpaSfZzQ==
X-Received: by 2002:adf:9ec7:: with SMTP id b7mr15694814wrf.221.1572705926256; 
 Sat, 02 Nov 2019 07:45:26 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id w81sm11048840wmg.5.2019.11.02.07.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 07:45:24 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 2/8] firmware: tegra: Changes for v5.5-rc1
Date: Sat,  2 Nov 2019 15:45:15 +0100
Message-Id: <20191102144521.3863321-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191102144521.3863321-1-thierry.reding@gmail.com>
References: <20191102144521.3863321-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_074527_999137_127ECAA2 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-firmware

for you to fetch changes up to befc1bab91171d25de22dbcbf41309582a63ecd7:

  firmware: tegra: Move BPMP resume to noirq phase (2019-10-01 16:38:45 +0200)

Thanks,
Thierry

----------------------------------------------------------------
firmware: tegra: Changes for v5.5-rc1

This contains a single fix for suspend/resume on Tegra194.

----------------------------------------------------------------
Vidya Sagar (1):
      firmware: tegra: Move BPMP resume to noirq phase

 drivers/firmware/tegra/bpmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
