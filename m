Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DD8198880
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=36pj/WrFEIZWXkpG55OJDNR9qb8UK2LyR9BT77zvleI=; b=JtoWpIxoOjDRxc
	Hogvi6BKDU/xHfVTqHuzOMQbzW92+ixgBBzOP4ajNlGKEebFwYYQ83RqARBz4dap1WQQpwwUN3+F5
	GXwsDFBE3ipmb5d/rapPDbQCyhNk2aSA3YH7bcN5aI9flQwM0ecVsdTQx1OsSpwKCQgxhZ+iIDM7F
	KMAsneE3O7PVAv0cTBXzigKCKrb8xq3WbwITjKpHtGf5D8hPclcOa1Xylz2oYp6O8VybxxZq9a43H
	hcjeS2lAldSlzbXaO+4fI9HVd8IDd87hPfOYwUigI1Qu5E7vpZJoxVmtrzD50FmnbPC19VDYThZ5o
	6uLBu1ASR4wiRjKagGxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ46a-0004Sk-T3; Mon, 30 Mar 2020 23:46:08 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ46I-0004QX-UK; Mon, 30 Mar 2020 23:45:52 +0000
Received: by mail-wr1-x42e.google.com with SMTP id 65so23792471wrl.1;
 Mon, 30 Mar 2020 16:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GDnGHW3qNkgvLRDgu5vu6hawny2amkhzRWQ0FmPc35g=;
 b=ABb6LM8ToMRg6Yrah5JleJW/rhbs3rC5+MnLM5ss4L9Xfh1nULPqhBYzglKJ13bYnM
 GeMRq2+Nae3IN7gnVkDxuLoCOSqaXmP3MXm2UxG5mWjL36W+Ya2eqTCk4NFSwP0k2SYN
 WxuwWXZV1tzZ0bydrILV8rQTb4H1n7CLzuxE1H0slY4VXo+0N8gIVUNCsGhMgxSQ9euT
 k6aFpVUbFO3hYCImRqCGFZOWn8Ua52XZPtsPRe2hRh1FcsqWqJf1lcdnDgyDnU5XjZVz
 7f9PE5gLJi+8GIpORxYMWz6v3qCnGsJZLirxmsBijnz7AqnYcccjMG3WmJDP/+FkHeYi
 ocOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GDnGHW3qNkgvLRDgu5vu6hawny2amkhzRWQ0FmPc35g=;
 b=Loxh7HvyW1nmhefS9Vi6QiuIjRKTzE+ax0vYGlDkRVzhT2nK8TsT2NjUQthbHoCzx6
 MEvhbC7EMgoPexb+BHzRNinxQWaeCzmslykTren8GPdz70gLUmYmx7mgyZXOLRzMakkw
 FSYS6YdN0pvTnoBybTUo0jjni/DDr2p78VmRKVmpk+TndxLLIgKf/sxSNh8B5HVj1Maz
 pvoCVESz0qwDBLkZlt6qFy/r+uc9sy0wTBNCOkIFGXVqbig2ox9Aswcr5c3qV01ogkxm
 UlXwEDx9c1QyX7YdjtSVWAR+7w0YcNoML5yI+IeKN17zbwpzBt4LjLQWiqIJN1YRYmcV
 EdHw==
X-Gm-Message-State: ANhLgQ2zJPe0A3LNsefrV4NxS+FgwqHeACaBdgthKHexPH+zJIJ6IP9M
 J2OXwq/mFSGITOYcJzks9kwYOq9o
X-Google-Smtp-Source: ADFU+vsRAJpOrFH+eER9+kJfJgrHjQ2G/YBnZW8feggG/5Lyp88bIurZ3HekKzw9sQpYyAPLoBJuvA==
X-Received: by 2002:a5d:60ca:: with SMTP id x10mr11321086wrt.372.1585611947798; 
 Mon, 30 Mar 2020 16:45:47 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id v186sm1392953wme.24.2020.03.30.16.45.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:45:47 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, jbrunet@baylibre.com,
 narmstrong@baylibre.com
Subject: [PATCH 0/2] clk: meson8b: allow the HDMI driver to manage "hdmi_sys"
Date: Tue, 31 Mar 2020 01:45:33 +0200
Message-Id: <20200330234535.3327513-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_164551_001591_9FA4748F 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "hdmi_sys" clock is driving the HDMI TX controller. The
controller's IP seems to use this clock for example to derived the DDC
clock.

Testing has shown that we can disable this clock without locking up the
system (as long as we don't read the HDMI TX registers while this clock
is disabled - this can't happen as we don't have a driver yet and once
we have one that driver will enable this clock).


Martin Blumenstingl (2):
  clk: meson8b: export the HDMI system clock
  clk: meson: meson8b: make the hdmi_sys clock tree mutable

 drivers/clk/meson/meson8b.c              | 6 +++---
 drivers/clk/meson/meson8b.h              | 1 -
 include/dt-bindings/clock/meson8b-clkc.h | 1 +
 3 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
