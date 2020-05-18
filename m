Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD4E1D83B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 20:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYnYM2uoByn9tvemnT2nhkUAGzge12Nx0DcUt9evdNo=; b=vBqZt1xkLcp+hm
	9KvmkKtMALkCZlJsNv4m/7HFppmyBb5xiFcuajUQ2O4+tb8bGCnnoU0DUyGtbt0OxUnMi5yS1POo0
	Q9k2A/YbItFlTXVJHtvjFyeOhB/+8fqWyFxubcuXZsNT+ACpnIZYjTCeyEIQyWl02GV+loPCVTj/B
	eD9kcth3aKsGQuQ2C1j2Xq+SdbE/cVhiO+SnuVUg4H9WR0waIrzW1lv2eMtMZnYhujLz10eyTI3j2
	SX2KR6uDHQvocwCzdTOyQNTcLfSrDUs841o5w3lLEKqMgFeKeWo1O17R8uee/SYjv9qrfffCM9Onr
	e+zpsJbgLSQidyLX8GkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jakAF-0000Dw-58; Mon, 18 May 2020 18:06:59 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak6J-0003MJ-Up
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 18:02:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id f15so4545129plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 11:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2A9HocrxMs257cTec0YZIZY33yZiZ7tmE2rTI2roxDM=;
 b=kCZGWJVJ2emAGBcMUNHKSEgPISG3V+qwTPq5IodhFtv8RSt7vZKJ+6nT+X7PVAqNcw
 yk3+TGXY6kUu9csoWjxOinTFS52/FKyD/6gMo/BxihHfjJ+rII8Qnm9ACDeLWk0m6a76
 v4T9OZC39+WK1LJuLzQT2bpyxqfqmUvNfJBdY330F10RpZErnz/bvTKG2A5Ni0uczAyz
 dzfEA3oJwJgiq4UkUatIj2OVG5AWRoOXsn6NLE7DHfNGS+Vr2ZtwrEszaJMb0+fjpBcI
 yafVAfiYdOLUnq4z93N/GRJpObQ5lUFYvV9+KElRtttF76HROmDlyp0Hr928IpQuLlLc
 PW9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2A9HocrxMs257cTec0YZIZY33yZiZ7tmE2rTI2roxDM=;
 b=eWpt/DtUsLV7kI6hGOOHfLPgwHfPne6dmgMrUfIncO+pFVYmQPvbjIL+vradyyZBTP
 oaHuP0ZAcP8V/KDJckz/t1wxU2jQGHB2bAs4NdWhkK2geY7JuSv9yW0vMi47EHa9g0W3
 paKKgrznjW1RaZZ+6rBpEw9HRiRb8I7a+ylVBSJtccilOWUzoQeKPEtPRsVZ2Vme4CTb
 4EdBv9WJKugmnUbGW9sUkOlcdASums/9pFA3UhqYlrOyjT0EZqjgyfadII8qCWddzhvB
 QS7btF7VjcYRXxNWJc7uJ9rTXJjM8pkJQHf1oVzlNwsF0+ytGSLKqhPIv/rONJPNZfKl
 CmRA==
X-Gm-Message-State: AOAM532XHw3TiNE9s8cJbd7XpK+qNWw16pvl18EVpOaNJcu8J+GkUp1r
 Szoz6cXJ6EJvBoqq4xVw6khgHmTDqV0=
X-Google-Smtp-Source: ABdhPJyL6JyCQ2Xa5lIT48ArPl8ym3jjBVYF0/tj1fmdxcsay5G2titcnt4GDHUZBuPqGSHJhICPAA==
X-Received: by 2002:a17:90a:dd42:: with SMTP id u2mr619809pjv.65.1589824975057; 
 Mon, 18 May 2020 11:02:55 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v3sm9212314pfv.186.2020.05.18.11.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 11:02:54 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 11/23] coresight: etb10: Make coresight_etb_groups static
Date: Mon, 18 May 2020 12:02:30 -0600
Message-Id: <20200518180242.7916-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518180242.7916-1-mathieu.poirier@linaro.org>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_110256_030998_9057EDF1 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jason Yan <yanaijie@huawei.com>

Fix the following sparse warning:

drivers/hwtracing/coresight/coresight-etb10.c:720:30: warning: symbol
'coresight_etb_groups' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Jason Yan <yanaijie@huawei.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etb10.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 3810290e6d07..03e3f2590191 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -717,7 +717,7 @@ static const struct attribute_group coresight_etb_mgmt_group = {
 	.name = "mgmt",
 };
 
-const struct attribute_group *coresight_etb_groups[] = {
+static const struct attribute_group *coresight_etb_groups[] = {
 	&coresight_etb_group,
 	&coresight_etb_mgmt_group,
 	NULL,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
