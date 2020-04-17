Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D47511ADB9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:52:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=49dHdX1OcRIxUdOPDG13sq0Lj8nqmVmao7OkoxHqmNE=; b=Byc2tsaabXLGIi
	fKcktAC9HhwiutX20K4oB/ybwJlAKEk1mAT2hMh1Q0aVO0JCU+LHSzJybZuZedSap96dyxsCZ2Q/0
	437nKr8/+pVG4cPIgVJ5aFhiMxIOZi7NzQu4H+PvGNhSB/BDun+EwF3v2m4/b1IKQaUI2AnlFEeoL
	OnVSIW0F43zoq2NMJ8hzpEfmnGK3jKQ6/ZDzcMQXFU2UOvM7CJis9PFE5SKt4aSDYOtWfm2CWSdle
	n2qbI4uHLeSRDVSlb4ybLuowZl9zIyH7gr/uXeyT6DQIqQ9iKTka4582bl0vEUVlIYYsEdfUpIF5d
	TJrU1GcuAXo5MV3dNMAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOZX-0005wa-F7; Fri, 17 Apr 2020 10:50:11 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOXr-0003Rg-GB
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:48:34 +0000
Received: by mail-pj1-x1041.google.com with SMTP id t40so921587pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 03:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6tJkEnovKiyDlmv8OCPoZSMp3hCgfVK38VbbvSk3vu8=;
 b=HaU1a535RXRPCyyRJ+BmFyRLC2vxL3Yy9Cas+iZjxURX8UAqvLJl/6dh6bWQIrwX/A
 gxZO9g/OLjihxK0sLbozikFgy4gCywol6Ig0DcsOhfqRwuEzdnQUSmLgsBxsqutqQ6di
 w2b/Q2bC7RbTBuH1xAunF9TopXXIsaUh4WG4JsJMK+rfcqcikyVY3zQCp+lLE3CMTU/q
 /PndkdaULSeWF+5QfH8exA1VZlbS3GjsVPzMuPWIPqLsaSB7HrbNSW0R+YZ9qrh5hx7p
 jkaXvrYPjUsBXvV0UP5/LUVy+es80aGrxPEfkqeZzohPWndKq2P9MG8cS1oLSvqsXp7p
 S5wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6tJkEnovKiyDlmv8OCPoZSMp3hCgfVK38VbbvSk3vu8=;
 b=QSLxF/dCgESZJ7bG1TFyCz96QLXEzjYLuKn7dMcF1NA4vLHLc2ybhuuic3MMI2eZCb
 2UPl9OubSIGHZNW7Iy1V4OTL8yKsZLVSX7TqhoaFNClkYhmgnuL2KUr6+tFimzk0Khk7
 GqscELwmmInSvEOitmsYXahubWXgGNs21ACc6AQ6C+p4Z5gIrQobzAt/ThoP8pql6LnR
 WENcOF7bSbrt7knNs16hTqM13Z0w8ribrQojAkKoG66d9B899mkiwo6dHuNa3FZH/GyP
 6nMuQS5QNC9bmjBwROPdO4/fyu8zvTTjfzT6mrp+0k4tehHY9To/tyP7HOFb8vocDtpC
 ESpQ==
X-Gm-Message-State: AGi0Pua2K0khCXpLiQaaQ8JSBIPO9y8FY6quymboAnXVQZt8aJE1LsGB
 XknY/aNaf8a20JhP3ow68H5GPkp/l4o=
X-Google-Smtp-Source: APiQypIRebQbp1RrDDLbjumCMDF2OKClwQKFxAdjNsm+cOdMWvAsk+4uUpO0dtVQIpq9q5XODReZ5g==
X-Received: by 2002:a17:90b:300a:: with SMTP id
 hg10mr3671648pjb.42.1587120506741; 
 Fri, 17 Apr 2020 03:48:26 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (unknown-105-123.windriver.com.
 [147.11.105.123])
 by smtp.gmail.com with ESMTPSA id a12sm12771844pfr.28.2020.04.17.03.48.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Apr 2020 03:48:26 -0700 (PDT)
From: Kevin Hao <haokexin@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] arm64: Fix the call trace when running kgdb test suite
Date: Fri, 17 Apr 2020 18:32:10 +0800
Message-Id: <20200417103212.45812-1-haokexin@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034827_737613_5B469C72 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [haokexin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys,

This fixes a call trace when running the kgdb test suite:
    # echo kgdbts=V1 > /sys/module/kgdbts/parameters/kgdbts

v2:
  - Add a patch to fix a typo in el1_dbg()
  - Use the method as suggested by Mark.

v1:
  https://lore.kernel.org/r/20200401052107.36076-1-haokexin@gmail.com


Kevin Hao (2):
  arm64: entry: Fix the typo in the comment of el1_dbg()
  arm64: debug: Always update the IRQ tracing in debug_exception_enter()

 arch/arm64/kernel/entry-common.c | 2 +-
 arch/arm64/mm/fault.c            | 8 ++------
 2 files changed, 3 insertions(+), 7 deletions(-)

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
