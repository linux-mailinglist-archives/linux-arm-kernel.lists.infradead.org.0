Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A50A12AE36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 20:13:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hf+KnAiQU+y+m4Vn0sATCsWn2rAk63eYOf8xmvUrp/o=; b=UlStm5aDogvU+i
	8cjkgfjUD+RK3gctFIERiBfY3kGS8fNuKslhB11eWF7ojQuS2pEuRrcVGIAJ2dZgbkWwBDAZvqIgE
	ByQBipePu51IzU6JlJK3QFZr4NpURKq7dDEUWC2Ebo1aaoXhKZOmmH+j2v2gVe7G1jA3BKj/RjFE0
	dWpVf7XpXR1t3ESrCoAR6PGYYOGFkeekYaKPDf05xi65ICNrn3HkDRf3u7EJFhqe6IEbRK71hjEVP
	jH8R8Es3raGx0ES0jLEzmSdMrStTA7SRDFW/66PHulROG8I4OIdNntgbn3SgZmS9mjCQfnfi0G0X+
	pPDQh8GaRh8NIe22IE6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikYZ7-0001Y3-2e; Thu, 26 Dec 2019 19:12:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikYYv-0001WH-24; Thu, 26 Dec 2019 19:12:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so24327369wrn.7;
 Thu, 26 Dec 2019 11:12:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o51048wYw9BEZaiitxLj90ZEMjEnTK72AipdZVc4KuA=;
 b=i8vuntspkDhdm9kb7ZKWY0l4L1kEyaFhXOKywZwoQEtIaTXSCJ21zDm6faFsybW7u/
 rYJ0iw3mK/ofkusOEzVsR4Czh4xj7ICqWfnKe0hRA08VcrczuT6A6HIUmZlrtUKj166M
 Q36OV++Jsv1YL+0YSYhnbDj206025nkSTx+JaHQg8BHZkA16NAlmZ4tr3IxMB/bQTm8b
 C3mIqUNInWBkia2ZA64gUEB4yOEJZQydUbNm/6mjCS+BXBHg4pe4rtQePnS9FnN9Ts7l
 1pTSRiMRAO9R5EaL9MLhurhiHxtu3+Jpk8qGoVdgX4Wgu5UgSuHly8WSQhO+4dGm5E79
 TBTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o51048wYw9BEZaiitxLj90ZEMjEnTK72AipdZVc4KuA=;
 b=lM+1VXkHsHRa1MnKfrcGg6bBPYzCnaiPiJWPd1Pti6sY7FhG7iuNjJBQJ79/Q59Rzt
 k5jEj7NoM/+TO5tpdXdX7vs4bAkdfL35CdXTu4rycuLxTTCCCmIHAswK8C7mT+7CaYZN
 MExvkRw6HM1nc4KEsfrUTNwgHPzEt/7vJFUhCLhDE/wO2t4Kp+ezOkhWO6QOuwSlocUW
 YibO38Di9C9jANCY+lVqq5fiJAue3H/ixMfwuRImYA5VHibe02KhYuHYwSZArmvuOhpP
 /AZFuy+CsPrs6ItPIaYDPZ9cMKyayZPYyTGZiDW8KhEdYYK68oHl/BD/vlDefDcUY81B
 F7pg==
X-Gm-Message-State: APjAAAWhxHyyOKkZV9l/2/fIsv7Efi4jHkdPKScAFE2IYIJQhVuegAS1
 N4b1TYDJ3yqy4rEvXiL+YlAxmAJ96Sg=
X-Google-Smtp-Source: APXvYqyLfiM/yY8EI/4Sm/i06hdMrdhfhj1HyNFKjcjBqFpoHTDendyzweHnTqvKQ5F4jw+c9GzBnQ==
X-Received: by 2002:adf:e609:: with SMTP id p9mr45201687wrm.397.1577387563096; 
 Thu, 26 Dec 2019 11:12:43 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id o7sm8965937wmh.11.2019.12.26.11.12.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 11:12:42 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, sboyd@kernel.org
Subject: [PATCH v2 0/2] clk: Meson8/8b/8m2: fix the mali clock flags
Date: Thu, 26 Dec 2019 20:12:22 +0100
Message-Id: <20191226191224.3785282-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_111245_126585_DC1BA6D2 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

While playing with devfreq support for the lima driver I experienced
sporadic (random) system lockups. It turned out that this was in
certain cases when changing the mali clock.

The Amlogic vendor GPU platform driver (which is responsible for
changing the clock frequency) uses the following pattern when updating
the mali clock rate:
- at initialization: initialize the two mali_0 and mali_1 clock trees
  with a default setting and enable both clocks
- when changing the clock frequency:
-- set HHI_MALI_CLK_CNTL[31] to temporarily use the mali_1 clock output
-- update the mali_0 clock tree (set the mux, divider, etc.)
-- clear HHI_MALI_CLK_CNTL[31] to temporarily use the mali_0 clock
   output again

With the common clock framework we can even do better:
by setting CLK_SET_RATE_PARENT for the mali_0 and mali_1 output gates
we can force the common clock framework to update the "inactive" clock
and then switch to it's output.

I only tested this patch for a limited time only (approx. 2 hours).
So far I couldn't reproduce the sporadic system lockups with it.
However, broader testing would be great so I would like this to be
applied for -next.

Changes since v1 at [0]:
- extend the existing comment in patch #1 to describe how the glitch-
  free mux works with the CCF
- slightly updated the patch description of patch #1 to clarify that
  the "mali_0" or "mali_1" trees must not be changed while running
- add patch #2 to update the clk_set_rate() kerneldoc because we agreed
  that clk_set_rate() should do a root-to-leaf update (it does already,
  it's just not documented)


[0] https://patchwork.kernel.org/cover/11293177/


Martin Blumenstingl (2):
  clk: meson: meson8b: make the CCF use the glitch-free "mali" mux
  clk: clarify that clk_set_rate() does updates from top to bottom

 drivers/clk/meson/meson8b.c | 11 +++++++----
 include/linux/clk.h         |  3 +++
 2 files changed, 10 insertions(+), 4 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
