Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07761FAC7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MM9bphamxH5CuW5ALGKQ09B2SEVqRXQ6aevElk0dVtI=; b=Ccteqa5JflCHVopiUmC9JMmNU3
	WnMFVt4rb646T/b2azeBGa1ijoHGqzk90JinDW7F8B0kuupzFAi6KGYb0d/dr32u/sewoU8BQ5aWK
	XzQKpD7aiuzgj9qOU03YlqA4h3N7Bh2DchhHYdfJ0cw7T+fFTQn4LBiRcuItbiVuuJzGu2UOEgvmH
	hSjfzj4LNU80rapFHdKALav3BRGA43iOXlfno8rl0nK0W50uNLihA/v4oSjRYzCYz5MAo8WCo5M3D
	/Ry0HYYTGm8gW1dKVM+ulBPo8fwUHmcf40VXnh5lhbNuzkTxGCM1B0WH5VKjYUjz96NeXo8fAHffG
	65TEc7eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl7yn-0005sy-9C; Tue, 16 Jun 2020 09:34:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7yN-0005fe-Jq
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:33:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id l10so19973513wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 02:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UkxWceIqGQ7XQKBCF9BsfRIAOtRo9bMGnldWME5GM5Y=;
 b=Ma+8k4LR3nbuxqMK1pSQBi9He02YkzVDFiG5Jqtlk3+XnUBkct4frBtzw6ME21PLgh
 J4QrLAsGIkFaTg5TWACIW74Ym3jQb7y5RGGrGdCyYL4mWV8jD51TmjRzEDLE0p7oqLds
 twrbBnVOK9i80i7gFAmA2qcf2+LAVD1vQl2xi8/WLCJtMiiExSWMqX0CIwnZal0Yx/sW
 2QktcBS1Rw0ntsno3X1ufnQpVqC8KhNUcIoUffLQuuRt7BUS6RgiBUapCT0vlbCzZT1E
 mcYy0H/Any31kARoBQnVqXWqw/Zxo8Osz4XhVYvKoTD5osfWz/RWD185rX9QS4BllAWq
 7S9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UkxWceIqGQ7XQKBCF9BsfRIAOtRo9bMGnldWME5GM5Y=;
 b=mCXG8hctP7GVMJEDxD5WpAfxWXwxJfwCSRMjiI4iEFSi5u4vxI/3BT3EfBOGCwzTdp
 VZMGg3mYLFb0c0nFNXvHzKfDZKRug9pL840O/2cBgyWRzSX2Mg7cQ53EFIak1TeuVvfR
 HCnUHZdcDZ5i254DEKISbGaYrGJIJyq5YKRTOuCqydehFg9xyV4+ONC3RtUFbNaSBX9Z
 GIltbHlkbyVqzMJQ7jsVxl8afWvNwK9DP/nfT9V6Ejar6840T5LNQ0bXzFkBsKfUjWLX
 lRg9iOaEiVCkWzOpjy4mJxZvo4a8JwU8D/c/X4DM0NBPBLP0tKZxBnNLNoCpVxPDbW0t
 sqqQ==
X-Gm-Message-State: AOAM530B93fFhYJq7WrSDIexNfnV/IkwBtmX/N876eVHPXk5ddxbBUmu
 Occ/l550qpxxlcss4MtF3GfqcTo9oTM=
X-Google-Smtp-Source: ABdhPJwxawRamVODM5GFxF6vDRZPipRKcLiPXgHT5YIq0YRXlPVcaclmm2PuQlJOS4PoOVMbP2BDHA==
X-Received: by 2002:a5d:6b86:: with SMTP id n6mr2014868wrx.167.1592300017807; 
 Tue, 16 Jun 2020 02:33:37 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:c5c1:794c:e67f:3280])
 by smtp.gmail.com with ESMTPSA id s72sm3166391wme.35.2020.06.16.02.33.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 02:33:36 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH 1/3] coresight: Fix comment in main header file.
Date: Tue, 16 Jun 2020 10:33:31 +0100
Message-Id: <20200616093333.31283-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616093333.31283-1-mike.leach@linaro.org>
References: <20200616093333.31283-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_023341_299810_EDF42415 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Comment for an elemnt in the coresight_device structure appears to have
been corrupted & makes no sense. Fix this before making further changes.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 include/linux/coresight.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index e55499dcc010..fc320dd2cedc 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -180,7 +180,8 @@ struct coresight_sysfs_link {
  * @enable:	'true' if component is currently part of an active path.
  * @activated:	'true' only if a _sink_ has been activated.  A sink can be
  *		activated but not yet enabled.  Enabling for a _sink_
- *		appens when a source has been selected for that it.
+ *		happens when a source has been selected and a path is enabled
+ *		from source to that sink.
  * @ea:		Device attribute for sink representation under PMU directory.
  * @def_sink:	cached reference to default sink found for this device.
  * @last_sink:	Name of last sink used for this source to trace into. Set when
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
