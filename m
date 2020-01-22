Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174CC1452E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xq8scCUxPsCTkFkTOlAL0m+bqb+I4GKEETpQUCfZziA=; b=YeTys8Vn7bygfF
	zkkUkR7X+VrymFDrRig4tvFe1tNkWQPKDjQSdNRExbcUn8Dw9OdAFndbCaB9rOFjD8G9PdqNLwm01
	YHfu0qgzRCMJSglN/Bq/oSdWKLh2aw52Re6VxEqjBeXvHUgqm2B9pUNIu2VpfmPki57wLt8htUxU6
	WttVBGX4k2XvRRepBQY3LPYMkuDyYRvXn0xQOVPqsh4g3TtsBBL2VbaKgVMFUpynh9Wsy7mJEZJLH
	MICtSC9jrXWLCIR7+7nrmSi1B5KFfazquTTIEsJxPlYbDQIN7pCUXtIb0ZgVGrvrt0xOwJx7DZmxz
	3Z+rcdR6/kRgtIeDbG3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDWC-0004t5-FN; Wed, 22 Jan 2020 10:45:52 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDW1-0004rH-Ex
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:45:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id b19so6279236wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 02:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5zYX4Jf3SoJmK3XdkNoRVBS9pHpU9EWpsuHkQgGbzAI=;
 b=hxjQD1cOckw3ae6t2qBrX2hWBY6QnRIJrmzY+XWV7qqk0k++mg8OwtTjDFPE4UfFVz
 DeYO22zyfQTVYwhlEmnEvzE/IzFDx2RAb2g9C3sXQnJDCKKr4QVjEkeX+Bvx4x78sCum
 KQlSgLxEnJfAkEtTUnUuVCmF9U5vX0DR+fT5Ufhebh1IVBrwNpd4BhFC7vMgBwoWoO2+
 q67TlsT6augRPFHoaan14pL748i0aMPNCnafZ8vwZbFxH75RRk9H19C4fx5qKUATpoIt
 7g8d0PYCzK/4/+T2mnOpbWmdQJ7InrgjP/nGl03lU6kCK/PpY5CMb0ToYR86w0wJVJHb
 pdHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5zYX4Jf3SoJmK3XdkNoRVBS9pHpU9EWpsuHkQgGbzAI=;
 b=DKra4VK0wwqFsOOUeJiNSTofxKhqyU/fPlNRX5GBchAui9sfCdBokxMFkN72i/9qrG
 RiabwCQLZmmkISBvQ9cdcLdmJs1ZDMJhE80wOZ1vizZWPEiIUvjECyhRvEUSv8FJF2/k
 ac8oC5ZJWF9Pbhx1bQPvPyvfz/6LbO6D1oIbgLjkcY0fie3/QFbnRbnQP6GJT/ZUW6py
 KC/+mJIxznZ7eJpQlOwRSL57MtQepOfs+lmspiho1bTdaVxsNvjyYVGiiGSPoy10XDnF
 EhhGgkYyfJXwt1PhABQIMarFy+bmmrWh81GX4NUxDtAY1xp/hJCY1M/rFFA0vCoaZQe5
 cALw==
X-Gm-Message-State: APjAAAW5IBT+3U8z8VhOS+vIvb94PBc4OSM8an8KsP3G6hAurZkqVM4w
 JQQzlUZS8nH2eDE+vukhhSQ=
X-Google-Smtp-Source: APXvYqyOWDMb0OEWsOhxrr6+wZfB8A7e90KHh+ZUyDKcI6pFfhr1s5iEfhz9hjgMqOxLSNSkrc+vqA==
X-Received: by 2002:a1c:5945:: with SMTP id n66mr2248657wmb.98.1579689939491; 
 Wed, 22 Jan 2020 02:45:39 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n3sm3443953wmc.27.2020.01.22.02.45.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 02:45:38 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org, iuliana.prodan@nxp.com
Subject: [PATCH 0/9] crypto: engine: permit to handle multiple requests
Date: Wed, 22 Jan 2020 11:45:19 +0100
Message-Id: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_024541_502158_1F396C8E 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

The sun8i-ce hardware can work on multiple requests in one batch.
For this it use a task descriptor, and chain them.
For the moment, the driver does not use this mechanism and do requests
one at a time and issue an irq for each.

Using the chaining will permit to issue less interrupts, and increase
thoughput.

But the crypto/engine can enqueue lots of requests but can ran them only
one by one.

This serie introduce a way to batch requests in crypto/engine by adding
a new function can_queue_more() that a driver can implement to tell
crypto_engine if it can handle more request.

For testing the serie, the selftest are not enough, since it issue
request one at a time.
I have used LUKS for testing it.
Tested on sun8i-ce (with/without batching).
And tested for non-regression on caam, amlogic and sun8i-ss drivers.

The 4 first patchs are cleanup necessary for permit crypto_engine to
handle more requests.
The 5th patch introduce the new wrappers for handle multiple requests.
Lasts patchs are for enabling batching in sun8i-ce.

Regards

Corentin Labbe (9):
  crypto: engine: workqueue can only be processed one by one
  crypto: engine: get rid of cur_req_prepared
  crypto: engine: get rid of cur_req
  crypto: engine: permit to choose queue length
  crypto: engine: add enqueue_request/can_do_more
  crypto: sun8i-ce: move iv data to request context
  crypto: sun8i-ce: increase task list size
  crypto: sun8i-ce: split into prepare/run/unprepare
  crypto: sun8i-ce: permit to batch requests

 crypto/crypto_engine.c                        |  99 +++++++-----
 .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 153 ++++++++++++++----
 .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c |  19 ++-
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  |  20 ++-
 include/crypto/engine.h                       |  19 +--
 5 files changed, 213 insertions(+), 97 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
