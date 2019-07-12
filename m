Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C98667565
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 21:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVhWOykLt0fxqNvIhgX0CnOB5cptTpEmF8eVr4KCzyE=; b=Wrm2EDv9JZ9Q/o
	BbGGyY4fBIX+boWCH17Xa6rL/TUqwqyYWa9oiEHfOxhRTSFkuBmUOjhbFISblE0HPULzIY6YcIpb4
	UnnvgIac9qKohmXsXE+HrLCkHyUCf5fVjtf1WvuE2XE7LE6axY9wNsrA4XUPt8asLajUqw1t5bCBX
	fesfag2fLF94MUwyCP+cQq0ig8Wh94pBFinFR0W9CBhmSnbOibhiO7WILCu4GAYcOUK1H9HZ0fpny
	AhfkT6/uMUvxT5vue1ibjBo/+6CXut/tsKmW1lPVqRjuYNnjKPNuXBHCbf9Ui95H4UCjOTjmMmed0
	hCd0kiIuj3Y3CE9Eh2JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm1In-0008NT-Gw; Fri, 12 Jul 2019 19:33:53 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm1IW-0008Mt-Il
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 19:33:37 +0000
Received: by mail-pl1-x649.google.com with SMTP id j12so5686466pll.14
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 12:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=WfKn+pO100GfFyUPcoCg/5BERsEevHMdaLHxZNiO0d8=;
 b=E3d8vXKBjTj8DFRiQ+Aw2fe/Xn0abb/HR/T6JvIeoja9ZciedCcKO0wtsHF0x2YWSk
 sb/k5XobR6dVlbCMUyidNmDfhJQ1lhLM1cwi2GLmL0/TrZVq0Qg4+oV9r13LlxqwiiI7
 L7mwdde6Bvi5Bv8zkxOpDmWsPaeGdK4mLpObcgRlLLLq7BblJP1znAU8KBCeFHpAz+1C
 SRFfRYliSwK4QgTN7uiJdz5ktEIM43FXio596ihukGXAR3zNuauWx136kutioFq6n0o0
 /oWsPYy0ZFJGzxFEFirDN2uuGqMxh01YFtrS13Yp27p2aGzizv8Sb55TjG2RZLqrqJuJ
 96Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=WfKn+pO100GfFyUPcoCg/5BERsEevHMdaLHxZNiO0d8=;
 b=tDzA04DqojMdBDlhf66XHPHRJGeslR2azuc1kW9aMHRfRBZF1eTA/a0hiLt54rLvQP
 w89Ne1Q4KJynlg5ydbotMUdpZ35Ic5fcHTJhvbU5zGlh/jgBDm6sSPoYFg9sxsNTq+UF
 K8GK5DEjdD0Fhj+Yw5jhCv3AkXlQ6SeugG6NaIm73Y+6sW+voAVVI2PCKS1h1uQkiOud
 6ROOZ+xD/hiyq3b77GrE4RXi5Q4ZWAjKnVU7gAjHf3AMZnHUCllahLUWrxbJq1jo66lj
 CLFhbDQnxeZBV1Pajh9VeUB+AEiJBL7YZVIz0leiqcHwEzcfzytOQWFfcRKnDzQ1Fw8R
 UGhA==
X-Gm-Message-State: APjAAAXZMlRgPq9oo8yK51sUav6d9G9P5jE8+Zh+yL0r+SzvtdDuuKfm
 CHibFGGtPC1dA9pt59dylsC9kTM=
X-Google-Smtp-Source: APXvYqwzYlW4oDcfH5WzwI2igLPtyteAxmd0T127KpVdHPC5Sqzl3H9GlPOGwfdH7FFWMbu0S2xm/Tg=
X-Received: by 2002:a63:f304:: with SMTP id l4mr12859734pgh.66.1562960014464; 
 Fri, 12 Jul 2019 12:33:34 -0700 (PDT)
Date: Fri, 12 Jul 2019 12:33:25 -0700
In-Reply-To: <20190705080231.123522-1-pcc@google.com>
Message-Id: <20190712193326.173208-1-pcc@google.com>
Mime-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v2] arm64: Add support for relocating the kernel with RELR
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_123336_668819_BCE25CC7 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v2:
- Reverted change to RELA processing
- Added more comments, as requested by Nick and Will
- Added a feature test for NM and OBJCOPY
- Made CONFIG_RELR=y the default if the tools support it


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
