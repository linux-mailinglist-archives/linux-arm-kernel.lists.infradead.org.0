Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC0391DBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PFKy4RpgvVKCTBUK0ZTjCQVBm/ttQ47RdQc8g9XA2s=; b=nykPCFsbqErqy8
	FNQJD5+LTEhI8HIP6d0oqZmNbj8AtPrcI6GgnlJ71lAzVtlc88hK1677tpQLgk6RHZtTFUJI/4zSC
	6Fy5FKFCh3kblmv634VxxVmxAcVoarsaPwQNZUNbUZ5/d39XVug2j2XS6IUt4mFDRn8MneRKHZvjs
	M3JOupi8wpuH58flXf0YV3rEUqALC6FEnKKtF9cOgGp7dOVPeHUhMw2HHX0IhSrMew3vnCdwH1HjZ
	QDOB5MYQtQKXL5JdHmTbSFN/7a2XXD8YsjyJ0gyvI8KGKr10LFlw/C5cl/DBzMdYFYsaDnMKOY1Qz
	TbS9/8Ndej2q833mMoSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzc2c-00042T-Vp; Mon, 19 Aug 2019 07:25:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzc28-0003Tw-G3
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:24:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id bj8so544548plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 00:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n7dhYlMl//z73eacQGweSKumEFWSfBEWN+KSfFfbHHI=;
 b=VhH0eiPmWx5SbrmRmNTyZ+Byd8qqhGRd/QLUrNsVw6eRyDNWa+PPfBCxG5EhP/0ynJ
 06rckRpaLN+OBrdr17FJqWlf74d3miggbogYkxalARhmPPAnLNiPN8BSwL6xkYEepv7g
 GpNCZ6z+XA2EOtXNefssS04Z6XGDZtd3ttD8uEoHa361laIzlxvH/5QOkCdmFZ+r7jfT
 BiyEvst69I+yNbVOsUjpdckeQuirWzcAn+Jlz6p0dZQbTPEHCDOjedc3JL80sBRApbf4
 o7AfVwMw1MWqnC4w4hoqimp6G+htJPqhk9uPzn0+XEHx7LZW20thLbmV7uWAGsQmjGzt
 KvVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n7dhYlMl//z73eacQGweSKumEFWSfBEWN+KSfFfbHHI=;
 b=WffioKINFDYxLBJZ5Oh0VRxC3a7nrGN60ABsYAzdGLcHaUFy/P6QbrLrK0yYQTzj2n
 KTuS5u8jIwGwwsHcx3lBrE1MbFw0m+mpI+m0h1ttHCqa/y0tQNsYXYsI8TxakZH7DNvd
 I4eJ+yHN9UN+G7RqFLKpMMeX7D/WiA5Ga3eiTxONB4mqS3gOq0IatvXKXFsQPWmq7Sg5
 yPwadoDVbcfr5JjTZatUlkgpjF9blJLeTrxE31rLiWOE3Y7M0ejPiNNODs6SLALKNzLB
 VkjtQg8f3b2zkqGoae9ffCxHIpyiQ1XQJGXnxL4XhVHqVAOzsZ8jrvr6eDi86my02Cas
 ZVQQ==
X-Gm-Message-State: APjAAAWEqXi/murpiQjgi9S4/OFi6JZ4wJ1WGyLRIKW34+pt9fy4hXna
 hy5dh1SyGUOJwF1f8wRrDtU=
X-Google-Smtp-Source: APXvYqyoWxQlwcpntJ672OeWe7rLF7xYFp0iacILMOmsGwKthmm0U3ynEBTnbdeuQjHC50gFN+IIrw==
X-Received: by 2002:a17:902:29eb:: with SMTP id
 h98mr21709529plb.128.1566199491894; 
 Mon, 19 Aug 2019 00:24:51 -0700 (PDT)
Received: from localhost.localdomain ([110.225.16.165])
 by smtp.gmail.com with ESMTPSA id u3sm11064496pjn.5.2019.08.19.00.24.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 00:24:51 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: patrice.chotard@st.com, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH 2/2] usb: dwc3: st: Add of_dev_put() in probe function
Date: Mon, 19 Aug 2019 12:54:36 +0530
Message-Id: <20190819072436.31402-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190819072436.31402-1-nishkadg.linux@gmail.com>
References: <20190819072436.31402-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_002452_567628_89D25146 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In function st_dwc3_probe, variable child_pdev takes the value returned
by of_find_device_by_node, which gets a device pointer but does not put
it. If child_pdev is not put before the probe function returns, it may
cause a reference leak. Hence put child_pdev after its last usage.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/usb/dwc3/dwc3-st.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/dwc3/dwc3-st.c b/drivers/usb/dwc3/dwc3-st.c
index 6f52c749cd58..c682420f25ca 100644
--- a/drivers/usb/dwc3/dwc3-st.c
+++ b/drivers/usb/dwc3/dwc3-st.c
@@ -274,6 +274,7 @@ static int st_dwc3_probe(struct platform_device *pdev)
 
 	dwc3_data->dr_mode = usb_get_dr_mode(&child_pdev->dev);
 	of_node_put(child);
+	of_dev_put(child_pdev);
 
 	/*
 	 * Configure the USB port as device or host according to the static
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
