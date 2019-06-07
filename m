Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 833273862F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 10:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZpWDjwvhB6Yl4Kt3ncp5PrrCk3I/53I5xksycIFlDjQ=; b=dWkLmZ9uqq9ZIsuGQiWo+21IVB
	b1ioFYTvJWcvYdN0dT0J2+2kTIFJ5x8FxkwA8SpHekn4p4/ojYkJbEgeeatcUmWlEvisb1s7U1Hh0
	PwTdxeq1ShZQFX2shboUwjNyIABDtW4CfYfRG7dcWt+wGLp0P+yp2Shsku2VEOUurnVr5agmORk6y
	Jmc5FRvW1IINufHJ+nNnxui65mfIfEQm7VLZTIGdUkvdbs6SJzTQ1zKVckyJLgphLA8bJDTHl1HiU
	CJYpxa0lqeyBEFBE1PWZOQ15QBcz/tOYBA7awgY8Hnltav2iI0hSld3hwlcbGAqSSKWS0WI79RTLe
	tCU4KsKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZAFT-0007uj-Rp; Fri, 07 Jun 2019 08:29:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAFF-0007tZ-Lc
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 08:29:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so1230834wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 01:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jzlILgVOq+qa8QnWXtHWObcbjxta0J+JIjopEg5uUuk=;
 b=cOSA5ceD6DU90AczpWWeDFQqT7XMn1TslGtXrC+8Qgjy95ZdnObkBVL8UMmW9IYqFZ
 ly1EA8Xk7mSCU+6Q97tX0JUm4+q68XTAiT5Mh8Stkx6bEhUsxeOx0qdEw45vNnkrBk/o
 /RGAxiHMWRp1LjcUAV0QP4+SMHQaUjIfnlbdXIt5EEi3e6g1JqKnlSvd2p5n9IskMzYX
 O5cxIdBRkHbuQletelSuTniO4lKcrqHCsUaTJOOH/wwIODiqHSs2BZLqtQUKArJK3uEh
 3zDlBQREIzgp71Rt4d6nl5fPxN2UMvLeReBM/2nuGvF5iobsw4ccx3az8ignVslYorRA
 pELA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jzlILgVOq+qa8QnWXtHWObcbjxta0J+JIjopEg5uUuk=;
 b=jjLcFjA4sYKWWXmOamsrNinodom4LsCoTuV03d+1MSolJNNCIgdkXuiH4gnGPENsWv
 RxE3s/fpuKUh2MjkUBtVcynWUHrgXswTGcS7tvM5kq67Y6m0NgOBANkNkYkDjmUxmGbO
 R4d8tsx6NJ5alMiWixsw3nnnXRk5yL6rpEEjZ8CABJkIIhWHBCb3HGkgKdNNJy4di6dT
 O7f8+jl7q6pc/G2Pp4BhfX54gZRAQJ6KXovbqym20RVNwdBvUCv1oflVb3M3wHMjfgVv
 kPsXQNGuGkeNuXP+X/kMMSvR8gYLdhq2i3gLTQwykdf5jMNDNJpSAnY/y8y0QFuXPYOk
 kMIw==
X-Gm-Message-State: APjAAAVBvn0D6Ueqfug7ghr2U1ucdBlJ/iuaV6uCoiA4nis+yy9Tc6Be
 /OyRlv/uM3QcDp+Vs8g46Y5Wqw==
X-Google-Smtp-Source: APXvYqx1YuZGxxKFiVBuD7xZybj8kxKfRJulFeBpjaeUZaRQAyQoPtZmlBqhdZPXDhNc0hnte6SOyQ==
X-Received: by 2002:adf:e344:: with SMTP id n4mr8538433wrj.192.1559896144520; 
 Fri, 07 Jun 2019 01:29:04 -0700 (PDT)
Received: from localhost.localdomain ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id a3sm1092946wmb.35.2019.06.07.01.29.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 01:29:04 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH v2 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Date: Fri,  7 Jun 2019 09:28:55 +0100
Message-Id: <20190607082901.6491-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190607082901.6491-1-lee.jones@linaro.org>
References: <20190607082901.6491-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_012905_702140_0AA459B3 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-i2c@vger.kernel.org, jlhugo@gmail.com, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Qualcomm Geni I2C driver currently probes silently which can be
confusing when debugging potential issues.  Add a low level (INFO)
print when each I2C controller is successfully initially set-up.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 0fa93b448e8d..720131c40fe0 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -598,6 +598,8 @@ static int geni_i2c_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	dev_dbg(&pdev->dev, "Geni-I2C adaptor successfully added\n");
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
