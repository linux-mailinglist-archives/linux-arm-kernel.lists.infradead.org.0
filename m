Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2624B12AE3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 20:13:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfnH+OK/D9s36Iyjr2NSSR8lG2uqqSXvzcep9H0Kui0=; b=Ea3G2ANiZB9O8p
	GOUniTLFjGu5uZYQaycN+1F2A6lj2IQVMkYbqrmLWRBV0dPMlipuvl9/hvWXYOETuILws1/1JZ8sU
	rmA+yNMkbPl2o4z9gD5yG4Y/11N9LtmWaTnwVtYz246MtYM5Qx+k1LmyIJojbE0mY582KKvOMCrgC
	GC96YRsuomeGdTqcXVFa4eiHaC5N7Tm6XA/q5WjZUst5Oc0iYmmYo6wHmMcutf3lQuP1e46TENCOM
	MbLpX7TeY30NXsTA6R8OSYl89Jkax0TuPnKo7vpDH3Ai+vryedJ9asr45eZZ1IMih8TfWhB+zfTFC
	PwJvSBisx1G2JcKTBTxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikYZh-0002Ak-Jj; Thu, 26 Dec 2019 19:13:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikYYw-0001Wl-OK; Thu, 26 Dec 2019 19:12:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so11719416wru.4;
 Thu, 26 Dec 2019 11:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mmT0zF9OrkbiD8lj/0dOwJG0ayj5vgSHBwzc+nFQ5Gg=;
 b=klF/ucA9NSUXwoHRk1+Si9sfnX9CSLC+s/ebG98azsGLVJj1eJB4Gh6K3XoDxFlgwf
 e4nZ54SihxAA0YFfk6F238dYP9TkFDlIdBWYh29QftbkX6XICz13muXv7qfEFCaUuUQp
 CoschbCdrD2XhSLd6SH9cxWtcrwocY4bonRfJDgF/CSuyvksP5uvGZLJz34FGSHXsrYg
 zsLYDYhhxGFxKmdmRKvL1TWzEJnbemd/PDUm2ivSnrRB7Y9/J1HMeXM/nofk/edIPYUi
 LHC/Mn0XfMUpeWAegjzOMgII4GO2Y5c/8pyPTtVL95QBAq4GwW17CZ6pacVbQsAwGKv0
 faqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mmT0zF9OrkbiD8lj/0dOwJG0ayj5vgSHBwzc+nFQ5Gg=;
 b=S3JvuBZzA61qfpgP8S4cWdfppggw8K1bbJte/IHQaJTuuCQ27/nbZO5Kd9lGtRUTRW
 JTNKE8JSWKNg9SM4/1eThlhCcteN/l/7+iKRKV7NMSg6r3h4ijBA46EaX1SJyxD/Ty+u
 QCDfeP1B8nIaOMP7edENk7OPRNX/r9Ss4XgJJeNtr7E2AScDDt33Hk/H1EfxRr3ObwKV
 nTMrx+vgiYdhAJd9+WRwn1EDFHZiMnEHsoqyWjsW5sxUoOKTNB09/HqCYm3C8aAokRCl
 xNkPvPK+ODSsnF3pHwtFQAXQdt6ehlOaMX/tb011iOTniozAjtz7i2Ta9KmVIttjHcgG
 5PVg==
X-Gm-Message-State: APjAAAV1oiWStr6oc9DKG09fEuaXIOgsWcsjQGasNwEJkuwNOxyHd1VL
 sv0M2RJJyIiwRyOCmwcTJVuzdX2kQM0=
X-Google-Smtp-Source: APXvYqzFEhUhoMbvJ+dMFP1fHZY7u43hjf0Ydx1AtPN8kQZ0UFLEecCP0onL5y0FIk42usYSrzPz3A==
X-Received: by 2002:a5d:4085:: with SMTP id o5mr45964730wrp.321.1577387565138; 
 Thu, 26 Dec 2019 11:12:45 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id o7sm8965937wmh.11.2019.12.26.11.12.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 11:12:44 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, sboyd@kernel.org
Subject: [PATCH v2 2/2] clk: clarify that clk_set_rate() does updates from top
 to bottom
Date: Thu, 26 Dec 2019 20:12:24 +0100
Message-Id: <20191226191224.3785282-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191226191224.3785282-1-martin.blumenstingl@googlemail.com>
References: <20191226191224.3785282-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_111246_789911_F5C55CB4 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

clk_set_rate() currently starts updating the rate for a clock at the
top-most affected clock and then walks down the tree to update the
bottom-most affected clock last.
This behavior is important for protected clocks where we can switch
between multiple parents to achieve the same output.

An example for this is the mali clock tree on Amlogic SoCs:
  mali_0_mux (must not change when enabled)
    mali_0_div (must not change when enabled)
     mali_0 (gate)
  mali_1_mux (must not change when enabled)
    mali_1_div (must not change when enabled)
      mali_1 (gate)
The final output can either use mali_0_gate or mali_1. To change the
final output we must switch to the "inactive" tree. Assuming mali_0 is
active, then we need to prepare mali_1 with the new desired rate and
finally switch the output to the mali_1 tree. This process will then
protect the mali_1 tree and at the same time unprotect the mali_0 tree.
The next call to clk_set_rate() will then switch from the mali_1 tree
back to mali_0.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 include/linux/clk.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 18b7b95a8253..7fd6a1febcf4 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -627,6 +627,9 @@ long clk_round_rate(struct clk *clk, unsigned long rate);
  * @clk: clock source
  * @rate: desired clock rate in Hz
  *
+ * Updating the rate starts at the top-most affected clock and then
+ * walks the tree down to the bottom-most clock that needs updating.
+ *
  * Returns success (0) or negative errno.
  */
 int clk_set_rate(struct clk *clk, unsigned long rate);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
