Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8876148315
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+jtZnHBNzgQH/9Px1oGZt5RysFzYApYYAuGUPTs83g0=; b=isuYAdGtnV2Gnn9HFaejXX5oNk
	FE+ANauzKQRQvIzRBcIKDx8ulhJQVhcGuK3T8Jch1Uboq+o3eWsxRoURfYBbGrflIOx21Yg8N25eY
	BI7vshLQoF/8yr4DjMCu38+euxufpLS3Iy1ccfgdSWsrN4xNGQM8EMH9AnNO4CcCRvTNhd66JToDv
	CeewDT5qNKNXJhX6uK7VSjjpqLLlL9xeDVHuVDlRBijmSlktSvXBSpx/foroGCL6PE/PHbTKY+84M
	d2iMxiHV7HFNk88oc+cA1XibLNSKlrQqBSh0cTPEy9/FNF/HIhS2nZuW699O25srjt9WD5kHYTkWz
	Uj9Onb5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcr7d-0005fB-S2; Mon, 17 Jun 2019 12:52:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcr6Q-0004hQ-9x
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:51:15 +0000
Received: by mail-wm1-x342.google.com with SMTP id c6so8984040wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Yh8KWN22mWMhTl8rcvEzBYBWJNOHxR/ZVbPRRDE/D+g=;
 b=q/VQwMJ7CaCCS2TpiY40tB9SR/0BGYUD9cg5QmvyZlgN0oSe9DGo/a+8W3tFnih/es
 f/TGbxw2+NhrkghexAa4OElVuqj6adr3zChACFmOr55PBTOD/M1NIEdtp5/IEy9qU/kC
 fX2Qrs7PhDGqUidNClIWZ04Lwg4RW4iXSfsUN/mQ3Fz6ReP9i0AdV914a9optyVwxJ9W
 Xy6Y1mSeoVn1NeqGDQGLUT+gzK0PwP6QYlI5aEiS1G795pxPRN55vGKPX1Kr7l+p8xwx
 9xxVx3Oo0mrnM/HpISh/Sd3kMq4WHV1BoTnn1nr+LgaU5NktIDT5p1PPAhig5lYx1wqZ
 dRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Yh8KWN22mWMhTl8rcvEzBYBWJNOHxR/ZVbPRRDE/D+g=;
 b=GDDwWmC9vgwB9dEThqnEfHcQ0p5geoDFCFkO7J5KNb9MMmOnioyHSEX/hc/ZVBKMJO
 FJ5WEaXuIM9CNXi8tJnFihBgZh+RrxIyQE0XKiThAbKywAG/0O7CzV8zIALI0gjDuHnc
 Z4EKuFVN6NOFCU4DwnkKs3ti0J1kjwTk4UXRwbCq/tdA25Jfe8s+dpgNFjsGKjJ9rhdb
 0HOQglShCMAL4K98A3uZhiBpD3DEYw0PE5f7bE85ztRROxzeyLdmCpE/7P62Tf7i6rRL
 nLpK6Gkwh6BtejcNXq0oF8WDUhpCWFODaymkmLMZPTcUFsnvALORZa3xnahGffdxUoak
 xpqw==
X-Gm-Message-State: APjAAAVe/oIFvOcyv+/Ca5uByLVj7kZtQ4Dw7Gzo/OG5v4XhjWwar3iK
 OZZ9XFRIxxeYmle7YYU8S4BGNkgSBSw=
X-Google-Smtp-Source: APXvYqyQ7uC0yXE6+rCbtoO1nXI3vuubKGuLiHCQLeIEVsa7DW/HvoU6icIxjcUwUpeyeJFFHJ6L2g==
X-Received: by 2002:a1c:63c4:: with SMTP id x187mr17953607wmb.4.1560775872645; 
 Mon, 17 Jun 2019 05:51:12 -0700 (PDT)
Received: from dell.watershed.co.uk ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id o11sm10477852wmh.37.2019.06.17.05.51.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 05:51:12 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, david.brown@linaro.org,
 bjorn.andersson@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, felipe.balbi@linux.intel.com
Subject: [RESEND v4 4/4] usb: dwc3: qcom: Improve error handling
Date: Mon, 17 Jun 2019 13:51:05 +0100
Message-Id: <20190617125105.6186-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190617125105.6186-1-lee.jones@linaro.org>
References: <20190617125105.6186-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_055114_400272_E30946CF 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dwc3_qcom_clk_init() is called with of_count_phandle_with_args() as an
argument.  If of_count_phandle_with_args() returns an error, the number
of clocks will be a negative value and will lead to undefined behaviour.

Ensure we check for an error before attempting to blindly use the value.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/usb/dwc3/dwc3-qcom.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index 2d050303d564..c59e9d8e8609 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -409,6 +409,9 @@ static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
 	if (!np || !count)
 		return 0;
 
+	if (count < 0)
+		return count;
+
 	qcom->num_clocks = count;
 
 	qcom->clks = devm_kcalloc(dev, qcom->num_clocks,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
