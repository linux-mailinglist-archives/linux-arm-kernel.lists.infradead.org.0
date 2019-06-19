Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF19E4C00C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cLkrFJqDXObFWBHij2XMxinnZ2lJiQVmrUfk6/wkCAg=; b=mq9+8I8k8DbKTO7+i5fsE3AJOv
	lzRfzu58govFKI1N46fGu2hNsIoQ3g7IuxWgt7tcWVlnvdK4Vf7E9SJjeCfg9Vnas3dLRy7OXKDkV
	qYepLnNvfmGmo8b6UtCeUTwAOawLThuI25xGSJIVnR3iTbPW853CrkxF8Qu34PvRqNfP3Y8e1Jnta
	f5rwpcEirsUtuWWVAZNAICDYVw2uJGmk/7oSYEjvOHhn5j9QU/xHO4jEl2eglMk5CDsjH+iT1iXg1
	9yS8rmVRZEeyvfaCiJh4wXEhxTmlFeE7H5ieWwIYdm2rjSdpL9t008YlhsHYLcbF+rKLERONBCr2M
	nQfO/RMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdedI-0007tF-VY; Wed, 19 Jun 2019 17:44:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePq-0000Go-Hf
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:40 +0000
Received: by mail-pf1-x443.google.com with SMTP id r1so10159885pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DXUk5qmda2XK8XQ2pM+me+/3tfkapIvCeu+/dr6te0Q=;
 b=vxyQUCZ04GDZhmUfTaGO10SVer4VSPFl/6/gm+NUQnWQZA2zUs1H0oXaxhRr7SRyT6
 zSl6LGY1nQkyErXj/kKiCbira9KuqhU5go0tP5Qk1eLdKYdaDiZbSrhN5mOfddDadCxD
 /gJjuVE8yBPyueUFE5kySYRcn4fezCK0sHW1EFtfulijZqB/XAOu5KOzB9k3NZ+COoEr
 Q52Ymov4SIqJHVG0hVLRsipJwnP3zrYFky2GWFSQS7vEQZURMPS47mKGBX79b3JOfV1t
 csYIzUkB4y5szvW8QF6Wp51/ykUHzI0QLGEVku0LT1qpYlALJVuXe2KkL7Cf2/14DmbV
 MFDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DXUk5qmda2XK8XQ2pM+me+/3tfkapIvCeu+/dr6te0Q=;
 b=jLkQ9y2qbuGdXHTnfG6QhIQv3uvI2D2ndxSrMcVKvz3a4wDy9ZRZH2dBA0g1CRCKzp
 vNtAe7++fXJVqiAyXs2ZSHiWsX0UvXL3PJLWP3u+5rURfnMZwXl5Ie/zo/kaD09okRIR
 yXAJNRcEDJqBC5tPpbzLc6nWp8ui4F4FUer+4tateMRl+KFzzbot99sRBfRK3WhvSVi1
 KR+Nqe6T/J5mc5hjzHZxv69K4Al/jrDbXW89o4sVIGUiDuv8KLuAhqZLJiydiDQOrOcr
 EIffFeMjo8h3L1Yh+h/mSoyc29P1E9mp+PJQx2ICo0vWgj8/lTh5FC6r5nXb6fpnPNIG
 fAeA==
X-Gm-Message-State: APjAAAUjgKlcjJgyvnig/EfnRzCe1aex8mR2aAXrMy0wknwlGXMtJnI5
 R0qYENnQllQrSEl5LNiJhwl0xvPTUyijNw==
X-Google-Smtp-Source: APXvYqw9Mudp321XeT3+tO1OHS6OfbtuVXp2P2SFCqhhUuZIid/NCnt36Qfzedbh5GmeFVFzVP0dGA==
X-Received: by 2002:a63:4e10:: with SMTP id c16mr8577976pgb.214.1560965432754; 
 Wed, 19 Jun 2019 10:30:32 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:32 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 45/45] coresight: replicator: Add terminate entry for
 acpi_device_id tables
Date: Wed, 19 Jun 2019 11:29:49 -0600
Message-Id: <20190619172949.4522-46-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103034_734688_1E50EEBC 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Yongjun <weiyongjun1@huawei.com>

Make sure acpi_device_id tables have terminate entry.

Fixes: fe446287ec9f ("coresight: acpi: Support for platform devices")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-replicator.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index 542952759941..b7d6d59d56db 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -300,6 +300,7 @@ static const struct of_device_id static_replicator_match[] = {
 #ifdef CONFIG_ACPI
 static const struct acpi_device_id static_replicator_acpi_ids[] = {
 	{"ARMHC985", 0}, /* ARM CoreSight Static Replicator */
+	{}
 };
 #endif
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
