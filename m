Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5CE99B84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eZYXm80IJTsuJNvvgEh9TkT96zv/i4k+guvkU1KpMIY=; b=SoqTJLM2vf9UqM5oSgVEBUQVIT
	PIAWoX5sDNiTUTjYsKsPLd75Fe1xUV3VSx0poxsL8Rny7G4PKTrL6gmhsQHXZxOCNiwabBPcuGEko
	8QmwQpxgWaKsav6xaUtzlZ1EqcLZ2xc8ULm5kuVy/YjnqIOmCjk53swyUPbhrjIEYxqTqXaa/Ijmp
	C04KPs1mdwJEPLTE8+Mf+0YBQd4oYWTGskLWTG0d2WJ1FCkqHlZ9FemECQuDA96cWNFpW80CaDQ/E
	siB70gnVllcq5/FGqRmFtS6SJucGmplK84ezuNDR09/eDNr+Iz6N2G8fMlN7Hh0OxEuduw22yY/uq
	85d7xMJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0qq9-0005yu-7A; Thu, 22 Aug 2019 17:25:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0qpU-0004Ta-SP
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:24:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id d1so4049691pgp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 10:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
 b=RX3L3NEysLNGueK8XYcm4tI5nQZ2pEFyeSxHYiObmFt8nWRtF62qzckIHmf2rpGxrP
 BLn4KXyVPFgfoviJQgPO/s2j82QZFQl96pFgqGNU4z2fsVsaxfgeFqyUhckvdrHLzqrA
 p8HLWOVvrNzJ8jujwhikFfgqm0RNuFfV4wK1Xj4qfo6pDRR2KeGAgorfqhi1U2Q1agzD
 qLOLhFMM0fBHGwattVPoacW0SA8gg+UqkAchcyWJxEspzojX5olDwPFZWk9xUAaO6LPb
 8Qp3+xNgeubaXFd3rIDxjUGNumFk054qag4X+vH9xDBisRUZi4LK940Ny0tqYab7R/zY
 5V+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
 b=AcCTtzrxnGrsLT2Gkcit5rIbWDqoKdmaegwiuSU2DtY/DEq7AkEJwoDoOAIjxL5om1
 3vMC2oTeCot+bNVgbyRpf3uvD4Yl0Y65vV4eQ/Ak3PB85wl4DkK25DylwVuGHLvuLUb1
 bA5rLcWBfOGw0ga0/nHYpgPWdJuE1imo5zXB7tU/QuIlHKVpsV9EasqXUJJUPQ6XsFeA
 J6/IxxaBpoKfdG0LW8qGRhI5iDQU955JfsdV0HKN3idHiVfznvs6BtmOcNF7QTrMqAef
 Kc+e18e1d02qSBv6+oOI4rvSRDKbORLmaMXvIhcRIyOMzaGWPBjEdPN1giD1IC5z09qN
 YkAw==
X-Gm-Message-State: APjAAAWyU9Blt1Poxd8Ub80PLxpR3xid7ouiyDJGwgYfPNinZn4PfbL8
 0zIKFvUlI2dOEd/V+6/ZnQWw7mu16Q==
X-Google-Smtp-Source: APXvYqxXFDaJ955RJz/a34+rWtNfFOs3hBYdX2U9Etyi7MVotAVqBYvnVOl+UsQc16TjNDKQSF4Dkw==
X-Received: by 2002:a63:e20a:: with SMTP id q10mr327282pgh.24.1566494695791;
 Thu, 22 Aug 2019 10:24:55 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:71cc:5738:24ad:193e:4b59:8a76])
 by smtp.gmail.com with ESMTPSA id r12sm31705798pgb.73.2019.08.22.10.24.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 10:24:55 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v4 2/8] clk: Warn if clk_init_data is not zero initialized
Date: Thu, 22 Aug 2019 22:54:20 +0530
Message-Id: <20190822172426.25879-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
References: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_102456_999950_29A6F623 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The new implementation for determining parent map uses multiple ways
to pass parent info. The order in which it gets processed depends on
the first available member. Hence, it is necessary to zero init the
clk_init_data struct so that the expected member gets processed correctly.
So, add a warning if multiple clk_init_data members are available during
clk registration.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index c0990703ce54..7d6d6984c979 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -3497,6 +3497,14 @@ static int clk_core_populate_parent_map(struct clk_core *core)
 	if (!num_parents)
 		return 0;
 
+	/*
+	 * Check for non-zero initialized clk_init_data struct. This is
+	 * required because, we only require one of the (parent_names/
+	 * parent_data/parent_hws) to be set at a time. Otherwise, the
+	 * current code would use first available member.
+	 */
+	WARN_ON((parent_names && parent_data) || (parent_names && parent_hws));
+
 	/*
 	 * Avoid unnecessary string look-ups of clk_core's possible parents by
 	 * having a cache of names/clk_hw pointers to clk_core pointers.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
