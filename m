Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48D54EB79
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZkHo0UOPeShNX3jCJ5+MvKAJXHHMIBRzTKIEwQ+T8I=; b=kHY/UdvBvKRPPR
	gN686fbYFf0leT7rLtbY6uO/Uh8c8a5dGzbtqBVEF55QD4CO4jYqNuiD2LaR7yVO14kxIGYtWRn3C
	Yaj+ZjmB8tk8SJn7TzVl4igwM5nOqmTrT3ZuudcoUPMuNDCivXzTnuOx8GrB8ZuXYSd/K3ZpPvBj6
	z4Sh4WL5mwICrImE4fjqcKJ8f4BBUuh1AosJtrtIB3cXbn5VB5hOZCNU0Sa1LgDpYcmz9ZSBdELT5
	G16XpK/MMXO6Jg6tf+x6B5wrMEj+6zPpPjvXjwkUJhnOsPSCmOb3wrVck/2gAxnIKmCqkMsFOJXle
	11vedvUw94IRhB4+6FSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heL3q-0004he-Iu; Fri, 21 Jun 2019 15:02:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heL3L-0004UW-Pj
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:02:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so5715707wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 08:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1h6XJ5OhQWJ9WnLTMAcYwIqIRZbHQHwK183NqHTTkqE=;
 b=L8qdZ67/uqfvi3TBYrRdLx/FaNFulsbj6J7nviPrp1E8/9PQ5WhjW858T2IRH7X/P/
 zmUpU83OKDEDlbAqQwStA9QWsm6Z6n0+mFfOOrsGwcqg/MGWS9oB59JeBioZv2RcTKhu
 SLEBvVm3nuTxQpf2RlmWPRikhDCgAOrnEczxzM+1KFf/4JmYL60q34zcuMIv0IzdmdJA
 APKnuC5h5p3sbn0M7U/QbqyEOBJ5E2JFpKVk/+Qo7jY7HlkUgXzdAjAozKoP32ZtyU0A
 hbhVtjxAMzhgoxfsh37CBoP2YsKG4/Uvjr2MvZRXBWrIBcuv6cW7OCEzLd9dG05017vO
 qB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1h6XJ5OhQWJ9WnLTMAcYwIqIRZbHQHwK183NqHTTkqE=;
 b=OfF/FuJBFyyELmOOPkp9M1SDymx+UzIoj3dNS9LZr9503FG64VSol7FaSjohaz1Z4p
 +94e1d9rSb0MpwKLEUiu8CrN8G5WfIrXM1DLUqSlQ1bIallyxmNb+tS0pS5bxGik7vi9
 rXPwJazgEg/Ywf877jfQIxK9bMbDcScKYdEHPq6ssOOKYzLNGvtkN7FvEQGg9G9nrpCL
 jxSQ4oZ6pRXn6fueXbIafaLVMRckYW+ym35wuNRdXiybiuzyg7mrIYWLBtbxCvFcMWgi
 mttVw1EthNT1J403YEe6GhHNcvsl7/YHZuyIyZAARO1N1ETrgPXmcS8bvlaHgnnqDVgw
 XyJw==
X-Gm-Message-State: APjAAAWSblrkdjdbML7SDZGuBIKB4A6SAI6EjLWDM99VwXLHFmtSHj/a
 F2V89PEojaZ/RFghzRgf74c=
X-Google-Smtp-Source: APXvYqyorCk4OcXIKyoPbn3x/xMcQPSmgP9su2DFFoV31EmJZwmwiqzkHUBVKVS8aGsESSc10C91ww==
X-Received: by 2002:adf:c541:: with SMTP id s1mr294725wrf.44.1561129330076;
 Fri, 21 Jun 2019 08:02:10 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id l17sm3684989wrq.37.2019.06.21.08.02.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 08:02:09 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 2/5] memory: tegra: Changes for v5.3-rc1
Date: Fri, 21 Jun 2019 17:02:03 +0200
Message-Id: <20190621150206.19037-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190621150206.19037-1-thierry.reding@gmail.com>
References: <20190621150206.19037-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_080211_832756_1E7A9C19 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.3-memory

for you to fetch changes up to 76ce48bdb303afa6e33cfbadca9d6bee23a4f559:

  memory: tegra: Fix -Wunused-const-variable (2019-06-14 18:02:02 +0200)

Thanks,
Thierry

----------------------------------------------------------------
memory: tegra: Changes for v5.3-rc1

A single fix for an unused constant variable, due to it being declared
outside the only #ifdef that it was being used from.

----------------------------------------------------------------
Nathan Huckleberry (1):
      memory: tegra: Fix -Wunused-const-variable

 drivers/memory/tegra/tegra124.c | 44 ++++++++++++++++++++---------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
