Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA7210500A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 11:07:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6MQg0pyuOgkraoluSfuoccTE2jJauztq145QtjRWI6A=; b=QsK
	I7lMOS511OT1fAnMooea3p0OdEpXOchvOFFommt7K34mabBnnJofLPdrSjmgrONt3l6+2HX0wJi+K
	XLEY0kGTQY0DEspfx9HaubVSbzJrzJqXwyrm6ghs+pzG2rlzCF9fmqAfRE2JX3rJzH+RKQl4dXjVj
	QRjJ4CUhxK96KZ8PRDfL5vPisjCzKKS5brbOR7JBYau+o179Prz9pp7o/p/RcJEDNFpO6DnR/4+KI
	jIjQyDYWMsPhhgeWkgWBqSLmzPa9Nag27FzA3eBJsv7XzGx4ehSrTKxxB/QUBUC+cD/l8UgWuLU7/
	4s/MD/JPFsdp+X0nF2TFRfMshM82bFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXjNR-00015j-Gk; Thu, 21 Nov 2019 10:07:53 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXjNJ-00015C-Vb
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 10:07:47 +0000
Received: by mail-lf1-x142.google.com with SMTP id m30so281358lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 02:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=cDsTRS6zAE7mRYoicKkPTdOWwjEcLdzSV0njcc4xwSA=;
 b=wnUrxl18bkklegb9/2wwReT5GAqSYiEQSglVeA8/lpyKtLjS7rC7ngj5TrNOB5q1W4
 aCx7w0MFygG2A5DNkWSByxubjG/1OCQ4RPZ2RENqU6MV8DdYJy9uRT1cuNd+pbL5MIwO
 v/1Dt5i0a8FakDUvioV32OmKeatNT8pcArcSf2HpPu+hln+L4V08e2EhmgX8bfUAcvT/
 BNOLtKUHE+W4JgXDsibdkGNDBd69SC5XnDmEZmb2d/eHRaKm1oKecYrB8hMpZFqpMO4x
 SXWRbWVokydjJ+lJmVSfBvWGCSyRo9Y/Lo0tjlRCaUyqZeDm68IkjR/bFutyp2xUfPKi
 t43w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cDsTRS6zAE7mRYoicKkPTdOWwjEcLdzSV0njcc4xwSA=;
 b=uldwQYexC/6z2q2l5jOEoTo0xkQLToeAVQ0Nv4zNVQSxpnwmDc0VSAgBLCSCda127k
 Ttsg5tAM+N7K3+PoxVymHKqPAaIqy4XibvNmXrl18Np6lo5rmT51lxoLTuN4IR4EV31N
 0c11NKo+AEOf5fLVYmkS/0hgKLXRmOfm/cWW6GwmmSLiLgnFYjARqOutS9AOdofpIzJJ
 IiFnorCSozQ/acXA7RKEIRQU8KTDXIN7i8n8vhbv7oqhj9njnFcJOd4OWkdcDS7J92J+
 oX3y+5h/MAu1FQY6lOHguqLF75ALwUscxZumJfDh5sP5I+P5fkKmXExtaKyjWKFpOrv2
 8nfg==
X-Gm-Message-State: APjAAAXqYuuuK93tRUmfrES1LTeHAYjEJIcpI9bgNOmcWhoDr39UgWU7
 FM1dDWAFsBJ/UL9jfOOJzb+1cg==
X-Google-Smtp-Source: APXvYqwGonSHXjt019NHquqzPPpPWCd8HKL9m23a4F74Gtz/dhyWAlovk7ir10u/uaufk0pwjhcrJg==
X-Received: by 2002:ac2:46c9:: with SMTP id p9mr6287822lfo.166.1574330863403; 
 Thu, 21 Nov 2019 02:07:43 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se.
 [158.174.22.210])
 by smtp.gmail.com with ESMTPSA id y6sm959204ljn.40.2019.11.21.02.07.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 02:07:42 -0800 (PST)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org
Subject: [PATCH] MAINTAINERS: Update section for Ux500 clock drivers
Date: Thu, 21 Nov 2019 11:07:26 +0100
Message-Id: <20191121100726.17725-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_020746_091168_B8AC8739 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no longer any need host a tree solely to serve changes for the
Ux500 clock driver, thus drop this from the corresponding section and use
the common clk tree instead.

Moreover, let's also add the generic linux-clk mailing list and rename the
section header.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 MAINTAINERS | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 296de2b51c83..753a84cfd753 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2490,10 +2490,10 @@ F:	drivers/reset/reset-uniphier.c
 F:	drivers/tty/serial/8250/8250_uniphier.c
 N:	uniphier
 
-ARM/Ux500 CLOCK FRAMEWORK SUPPORT
+Ux500 CLOCK DRIVERS
 M:	Ulf Hansson <ulf.hansson@linaro.org>
+L:	linux-clk@vger.kernel.org
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-T:	git git://git.linaro.org/people/ulfh/clk.git
 S:	Maintained
 F:	drivers/clk/ux500/
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
