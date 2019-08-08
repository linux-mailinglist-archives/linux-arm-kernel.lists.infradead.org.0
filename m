Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8008D86253
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hijc8PIEOVSRG7uNErQQQMRAlL6LoQdzZy194UrUu4I=; b=hc49XRjujH3tzz
	HttWEdnLJ0rV+Ar9J5b3I3jR3yKYsFepdfT8OhwE5EAZneKjsk34A9J+UmzPbWapfthcP26UJ7sxf
	i63XZjJwdI25/xC4YSxTr/85SwRCy3SEU0F9qgo1aomFQ5ona40DnpSeLPtQXi4W62k+4Om6/CWlk
	OYKpHGZZHHve89Ybarq8dFa7pJADSgebtIXaOMmKDf7B7v1scxrsX+X92eBOV9YrWz3ZLt9ZxrzR+
	Sgxm/whJ1oaMFEgi9Su6wEMxxZayZmf/MzzWo/ZOtic1vxb7QWgspsREbUpz9boTowxIqSWW18vrj
	vw8ezdSZMJDDZOyabpDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhvv-00034P-Rg; Thu, 08 Aug 2019 12:54:19 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhvk-00033O-0S
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:54:09 +0000
Received: by mail-vs1-xe41.google.com with SMTP id n12so51667vsr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 05:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ShrSLL/b1gcsvb3GwViTFYu5JAokgZtYFwFRvV/oi94=;
 b=oDJgQhcC45DpyXpfSGqGVR4b6ApvW/vXAvi6gCml3EbP8RpxY5sAqFpxbcaYqnhw1W
 3dYGyUe7yYlBul/Xrf4WstmuOI70fG//QTeiHWFsgzRblhQZ/mgyiA/T4t0vaT4znuAv
 shaDNxDtbz6uQ+7XWplbL2Qk+2WuQW/jubkdNCVErS5dQiPvrKpDCkOYJDtDuE+ivrsh
 PVmM+gm9fv0pYowHvHk/6UHu3WZwhSQ/V+fRqRaHTYWbiZCGiL/RqlAk8ySxXsG0m9Sf
 nMsm5P8ybyQAtiqL/F23yjhVmvXcyvkfNS9nUGRSLSLyyWf8tk79F7y4zgKfD4J0rmz5
 DfNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ShrSLL/b1gcsvb3GwViTFYu5JAokgZtYFwFRvV/oi94=;
 b=bpTtLiE/otza0GhQjstrSdCi1tBKoS5P5pweQwqGNEL9FBzmyM8eBc85F/QV/+RfX1
 Kgc5YnwoBlnTIkTcQNTgYE/Sex05uI4qU92ZUflmw1WCpGwF5T0Qa8cjGJZ7FEVWWyJU
 tkxPFz9KRXqmBk9f0OZHVniVL9C/edPXn9mzKjWNKVx7T1P2jhnVnfZo2suFeHWOc/D+
 7pSI0AOU8Wr7hOyYPWQ5OmlepJRcq3rhLvJCB5NQYRTPpMWSzuQD/IF+Z707vE43epiE
 fun1OzbKpMueZP7TFQgWAML072Bl785wEF/RDNYlYkfVwjKO1qeYxoljwx6K1jv1CS4C
 100A==
X-Gm-Message-State: APjAAAWbR+s0TvFH91KPxrhyGFpDGOCed16/0oYvd4MI0dJP3+5oqTDS
 So3ioI0CkUmCsEeC9/LPYAk=
X-Google-Smtp-Source: APXvYqwj2RNvx+wVHtRWzSRNhC1WiKniTpz5H8AEJV5En/XVfzbP19t9I8pBKpg+ACVw6YXxtr5sjg==
X-Received: by 2002:a67:f75a:: with SMTP id w26mr8870678vso.148.1565268846176; 
 Thu, 08 Aug 2019 05:54:06 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.21.218])
 by smtp.gmail.com with ESMTPSA id r190sm26961692vkr.8.2019.08.08.05.54.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Aug 2019 05:54:05 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: linux@armlinux.org.uk,
	michal.simek@xilinx.com
Subject: [PATCH v2 0/2] ARM: zynq: smp improvements
Date: Thu,  8 Aug 2019 08:52:41 -0400
Message-Id: <20190808125243.31046-1-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_055408_076777_42B8D27F 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for kernel compiled in Thumb mode
and fixes a kernel panic on smp bring-up when FORTIFY_SOURCE
is enabled.

The series started with the second patch as an RFC, and
the first patch were suggested on the review to complement
the fix.

The changes were run-tested on a Digilent Zybo Z7 board
---
Changes:
v1 -> v2:
- Reword commit messages to include related commits
- Add Fixes tag to relevant commits
- Add Cc to stable to relevant commits


Luis Araneda (2):
  ARM: zynq: support smp in thumb mode
  ARM: zynq: Use memcpy_toio instead of memcpy on smp bring-up

 arch/arm/mach-zynq/headsmp.S | 2 ++
 arch/arm/mach-zynq/platsmp.c | 4 ++--
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
