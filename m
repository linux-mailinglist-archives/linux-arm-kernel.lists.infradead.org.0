Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D73D5BE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mJFajSl1LqkEVY0V0tP0NwZYABdKWtkUe0BgWuV8mDY=; b=tzK
	0kyuifFJb5RN55hBNnANtz8hQ0BsxeOB2E4cnH4Ml6mHIywGMz0e0t5KROyuuQ3MqoZG6rRqD7TgT
	OtNn5/o6oVZOYF2wkdD363sLXkWwdK/A3m4WLAaN9fFemjtU3qt2H8vrlY+33yaXld4nYDOMhmZPz
	9vOd1myopvve1w659mqJ1ULTQSctAm39y3SP80SC2huesfzj0byuQszbWbkHpGJV0Ge8hIqDC81Ih
	TFzfWwee4t01xi/6+gXtnLOzSrX4hGLMsTakyoI0M1EGwLZFNhAPN77Me4evSojDw07jeld3Bj2lC
	myTPwCTpKu6fqsUloj57u0g9Bpg2AgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuT1-0003UC-8n; Mon, 14 Oct 2019 07:08:31 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuSl-0003TH-F1
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:08:16 +0000
Received: by mail-pl1-x642.google.com with SMTP id s17so7596719plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 00:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=NguePtiRLqxxPERuaTU6qYGHlLMZjTiDWKMVkMyftlI=;
 b=pxXPOhc4f+9VgOl55DLeIiVMic5UpGOtXZyhX9MkkzluVA6Hb9lV7/dwJcIh4u9zy8
 DDhzHzZmg3EfkwS0ZALwQlNWzvM5U9HLaIff2voswp0oRABMadlT8GEAnhxQC+y5OIqI
 CNqnImA3S66tx/nFbxFvfKM2+t7ZNENG3hLw+1ZM0K3VvYlbpcNBPm8lelOFTh3bXhmM
 gMwatu4vE8ZYstGm7fkMssvWoVHgkTQ8bPVXKeqK5HaLs2F/ulm/AW7Jneyb24PLF6Fu
 mSz7/XLFsCEn38aKUkzyf4YkusQEDcWLNREJx9njDl3z9f93jsfexS4ZUlmeCJmzf8gy
 fubA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NguePtiRLqxxPERuaTU6qYGHlLMZjTiDWKMVkMyftlI=;
 b=KbavA7LHtRx/Xwb8T5nFmZMnI+eyqLWvGAkYtJ1LfbVXb/ZxiAKsrNCmPLOV4Rbfdp
 tyKaECFTcferivD6uN7eCrX0DMhYKnw76+vL2YLCbk+9pCgcloWjITxKk9uJf757WGby
 z5rlrL/Q8EFBLSspylM/HamlvLcJFyHAW4hN6SJ8Lgd9tw1ww+M1PJ3ijjhOOa6aGrWW
 TeePAnX21SiwmoKx/mXdtYrPN7rtS+cvA+Rhjka9cx0b+jvrk5++8D9/Jp0jX3BpDMu8
 ZC1UJaRddVQDH3ewnIxbY/u+9ffqkKhHJxakLS7mFSTWUTJBMoXzQMV9RqKVzOpgs82d
 UdLQ==
X-Gm-Message-State: APjAAAWc4Kw7zalO9ZzLl/sf4OJVPsf/PFdIAUE5KuCOd8m8J7OXbsWr
 wiEy+Fswq1smOxDLlRQB4ReHAA==
X-Google-Smtp-Source: APXvYqwejRJqYN+1PN+rmvhGFte4RQiA22AwEs1KXqwUn+eV0HR/gMGjIqh5w5+BnvYjRJHsoXZdvQ==
X-Received: by 2002:a17:902:9696:: with SMTP id
 n22mr26782696plp.252.1571036894371; 
 Mon, 14 Oct 2019 00:08:14 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id p190sm20619948pfb.160.2019.10.14.00.08.10
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 14 Oct 2019 00:08:13 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org
Subject: [PATCH 0/4] Some improvements for hwspinlock
Date: Mon, 14 Oct 2019 15:07:42 +0800
Message-Id: <cover.1571036463.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_000815_510665_61AACB65 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baolin.wang@linaro.org, zhang.lyra@gmail.com, linus.walleij@linaro.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 orsonzhai@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set removes the BUG_ON() from hwspinlock core and changes the
PM runtime support to be optional.

Baolin Wang (4):
  hwspinlock: Remove BUG_ON() from the hwspinlock core
  hwspinlock: Let the PM runtime can be optional
  hwspinlock: sprd: Remove redundant PM runtime implementation
  hwspinlock: u8500_hsem: Remove redundant PM runtime implementation

 drivers/hwspinlock/hwspinlock_core.c |   16 ++++++++--------
 drivers/hwspinlock/sprd_hwspinlock.c |   21 +++------------------
 drivers/hwspinlock/u8500_hsem.c      |   19 ++++---------------
 3 files changed, 15 insertions(+), 41 deletions(-)

-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
