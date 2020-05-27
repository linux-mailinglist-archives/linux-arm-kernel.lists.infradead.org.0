Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1637C1E3FF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zTV+SfTsh9Pb0X1y+EhzoyuGNaYgJifr8r0tPtL0J0=; b=lefHTaW0sDcrhO
	6wyaEC6Bf5b/ESLe0wnuiOJI/VHiediEAF9kyJ4Au0S1EZefatb/ATrkFIIWJViHjDV+5CLcG9knL
	1L78NbY3aEJGqxUFTGzsGtuoJZTmqfvtOwQxwkTbZHYLfucJClHAMElNybz4t0/V92MQMknRZ+Hse
	EbSp+0YYN9C4J9fAlNcbx5ZClXtQ160mGtCsLLVclHyHjc9yvRrgh90RHrD7hJx8yDQFLLzs9FeaY
	OyXuEOOa7FSKJeT/sx2nzDet5MCCBOjMIDkfzYp4BzVSr+tvXHpZM53UlsHEDTJKEdlh955K2opXs
	jPW1NMGFRs3IwR0WdKLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduCt-0003iC-D8; Wed, 27 May 2020 11:26:47 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduCR-0003Xb-Oy
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:26:21 +0000
Received: by mail-lj1-x243.google.com with SMTP id q2so28401706ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 04:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7uD4NJKCCrAKNdXZhG6Aj4i9yfAmRa77MGUIOkJhlYc=;
 b=GhxPzSwZxz/FuMNuYGDzM0k2vcNESJSv1wSCeApiFe9C5uuAhpURWaks7Na0i1OoZl
 fb4TZBpJSzNuud6nOW5MZxTyfDD4j/YafFwKfPIothSviDUQmqjZtVbN/9OsckDhTr+V
 mA4nZK+7Ev17F4Bai5Dz7iASsxNNmXrEs04XGyrUHqeN6xW4Q5C+KoFhevkkttayPL87
 7zp5uZYZ8wXlhnnIafFDbuDwPhbL0kqa5Lrqndy3Dt+APlMRJetnr3S5clk48W130t4Z
 t5topENI91V8YnZG5eGP5YxuPpcGYEnYGLKwCgmWQwI9dwTh07aeg8S3Z0DzqvPwF7/6
 kZsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7uD4NJKCCrAKNdXZhG6Aj4i9yfAmRa77MGUIOkJhlYc=;
 b=PIiDFEnLkfdIo2jnAmYnvn3tzZPdxsDbCJIUSh8bY/n2k/5A1WgnyJg6UuQ+ioFldt
 /OJTXvJqDODUYfKaxYk/qEBK7dn2P+6uve6OAHCijFWSVdGe8boMX5a1svwPyXpUOl+r
 f9TIMApRkVOkw+G8Q+4lbleFtgnsE0AU79slUeeXGpNpEXUJsOtYsmIkJHbrxpUh+5R9
 72pKpOy6S3kg8R2OygkfM9XRze/qlT+iMW1cE5hFNLFRq9DZw/vfsNGBI5SVpeS9PMec
 CY3y0EycdsBBZv30P4yufMu7qarnUvguIc5Pta75znDJasEsuNGqJSCgJw2x1F1TcLmr
 99vA==
X-Gm-Message-State: AOAM5307l6VmIpQdGgFN+X9weZAJVv09WiRg98BoaAuP8hgDUUt3wizD
 qhSeD9U5GgWDslH1YrU7lf4sH9Y66Bs=
X-Google-Smtp-Source: ABdhPJwDVIZKKWsa2g9rM6j4jD0gbLPuXLdz/ptNe0zUdXTeoHpsBq5Wum0HsUHujy9Uyd5zBz27Pw==
X-Received: by 2002:a2e:9a02:: with SMTP id o2mr2659598lji.89.1590578778399;
 Wed, 27 May 2020 04:26:18 -0700 (PDT)
Received: from localhost (c-8c28e555.07-21-73746f28.bbcust.telenor.se.
 [85.229.40.140])
 by smtp.gmail.com with ESMTPSA id b18sm637226ljp.35.2020.05.27.04.26.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 04:26:17 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: soc@kernel.org
Subject: [PATCH 1/5] power: vexpress: add suppress_bind_attrs to true
Date: Wed, 27 May 2020 13:26:04 +0200
Message-Id: <20200527112608.3886105-2-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527112608.3886105-1-anders.roxell@linaro.org>
References: <20200527112608.3886105-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_042619_812502_A9850737 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: robh@kernel.org, linus.walleij@linaro.org,
 Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure that the POWER_RESET_VEXPRESS driver won't have bind/unbind
attributes available via the sysfs, so lets be explicit here and use
".suppress_bind_attrs = true" to prevent userspace from doing something
silly.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/power/reset/vexpress-poweroff.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/power/reset/vexpress-poweroff.c b/drivers/power/reset/vexpress-poweroff.c
index 90cbaa8341e3..0bf9ab8653ae 100644
--- a/drivers/power/reset/vexpress-poweroff.c
+++ b/drivers/power/reset/vexpress-poweroff.c
@@ -143,6 +143,7 @@ static struct platform_driver vexpress_reset_driver = {
 	.driver = {
 		.name = "vexpress-reset",
 		.of_match_table = vexpress_reset_of_match,
+		.suppress_bind_attrs = true,
 	},
 };
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
