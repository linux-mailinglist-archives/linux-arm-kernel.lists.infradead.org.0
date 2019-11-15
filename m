Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F77FE2D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 17:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EMos2qMT6f8b4Mxc0kUfBNPG+x3cg1kKeKnU0dA7t6Y=; b=KIfhGyUZHVP8nEZ0tKVgBtc2/g
	2ZLnMDoaPpSBRQjmIzeO1R0XYAtDWsXV6Ywi/+o6vTp1s90nuAE6r3Tn5g2H8fmWPyASlzTUHMT8H
	7o7rRAEy/JofY9AaEGGejtkARFXt8uHw/BUWSoBmeNaYrAdZiA3Vl5+/rE9rEfxBQRRcFh/Svi42X
	Y35QlTxzwwpniigdTS4CG/0iPcgcOvZUHXgYW0IB/Q46FPY7CW5phGK8fyzeBYngaKL7c/w49JcEb
	vO73mNa7DJS/tKKNBx67YBfoPRCTGjhZiw4TkLs1MQ9DATBnUU2ijxg86uLZyDTp98vy98LTMAiJ5
	/C0oRMzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVeTv-0006n4-Ok; Fri, 15 Nov 2019 16:29:59 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVeTO-0006UU-7u
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 16:29:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id q17so6232174pgt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 08:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LG1a1A4v+UDy0LaHh34rRqStYpMLpkQr762xn5ClOV4=;
 b=o+MCT6FCGd+WLPn8gFBDBblgf8rcOhwpFOShXrIAWCth1EDnZQgAh9wIktxAFxqmCE
 nYspZdlwdqiIT1+w6cDCDV/VEx9cSjYOGuZQ9Lv7MVj7rfwUSmalKKH0OmFltlO4V1dk
 0ry7DjJAKKNlD87Ms32P0yyyJKSpcSCbz8u42CMhLWz0GsbAe5107hZbmop17mHFa/em
 kx+IKHPL4psSWxuyYHURIkLPf0wTS3F95i6q99S21wsceMzDF2oNFVJT6eOpArwnkktg
 hPendNqL/Yqv2AgbzdS5h+T1Qm3adznCLHo3MC7XtUbswyNlQpzVz1CkhuKXKyhnH4XY
 XA7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LG1a1A4v+UDy0LaHh34rRqStYpMLpkQr762xn5ClOV4=;
 b=YW76MEMgcSyYOTW+d7qMV6IJ9BCe9w6YQ++xbD+qPcZnnsMW8uBowW4ahHRja7hDd1
 aJhKQGsYTLmvl5It/JK6cucHT0WIXMkkTVAJch0ax9WptL4aJFVk9aNdSgfXOdDmQSlt
 kondBq+BUsbNuwzy3PIX5WcXr6ItFd3B+8wTNN/zGHWR6I37AOtFafeMSQxBZkDhri9b
 kEye0wWNjpbv+JNFmkywEyIz67SDkOdfmgMjFglBMv2POreY4Xbuy69C6fhuqnKsy/Ra
 exVjEu8F+clG6dy+PqIGuhxmMdiEK7Q/nrnnThpIEX7L3Bvs8sUfuqT5jzU0W4n/YgSK
 tEJg==
X-Gm-Message-State: APjAAAUYHeHcs2EQy9lLF2a5J6EHg0Bj30Eg+9rVUBN14BW1F8dyIvyf
 ypsdXjbYse81LML6W6wA5jaO
X-Google-Smtp-Source: APXvYqys3mhTCTv093AwgzZUQrAVuIZ1cJROMu4m1S5NVk8Gg3X8cU/Dzy9MjpXeeLsMUPLH2WXqwg==
X-Received: by 2002:a63:e26:: with SMTP id d38mr17097947pgl.44.1573835364449; 
 Fri, 15 Nov 2019 08:29:24 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:6183:6d55:8418:2bbc:e6d8:2b4])
 by smtp.gmail.com with ESMTPSA id y24sm12295288pfr.116.2019.11.15.08.29.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 08:29:23 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v7 2/7] clk: Add clk_hw_unregister_composite helper function
 definition
Date: Fri, 15 Nov 2019 21:58:56 +0530
Message-Id: <20191115162901.17456-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
References: <20191115162901.17456-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_082926_456983_194A5DFD 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This function has been delcared but not defined anywhere. Hence, this
commit adds definition for it.

Fixes: 49cb392d3639 ("clk: composite: Add hw based registration APIs")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk-composite.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 28aaf4a3b28a..3e9c3e608769 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -343,3 +343,14 @@ void clk_unregister_composite(struct clk *clk)
 	clk_unregister(clk);
 	kfree(composite);
 }
+
+void clk_hw_unregister_composite(struct clk_hw *hw)
+{
+	struct clk_composite *composite;
+
+	composite = to_clk_composite(hw);
+
+	clk_hw_unregister(hw);
+	kfree(composite);
+}
+EXPORT_SYMBOL_GPL(clk_hw_unregister_composite);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
