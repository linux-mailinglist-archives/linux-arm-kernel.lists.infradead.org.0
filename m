Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50112E27F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 04:06:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jbHJ4mAv7XAkyEs5cELVKGWk7iCww+IjbzJY6JVGf0Y=; b=LsD
	QJTVqS8cJQwgb7DtfzYZ5975GaQKu4D4ME/UpMkQSe5e1J/5wdKM8C0BEOAogJD/77L4NrkEG5HP3
	EiXpF7AJk9qm5BrEdvSFJDdi9jHtfG/TDl2DJbToJlLXsNRd0VjmDh1VTJrT3/UxJ4T917XbiP1OP
	RCoXSJDmPL+fz/5Xur3JxAMitNyz4x/HFzrSR85o+mIMQNecpu0uEN8nEvY+7cbG3xcVq5nK7sp7P
	zit+9I/gYnSXcYwdFJRCr2hgHw83qVyAdshxXUdY7YGSrSbYBtKNHfjAgVuLRrgkq+rmo4truz2m2
	ijXDG/yEIYKDJp5m0avwz4MlNqmeIJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNSVr-0007SJ-Mf; Thu, 24 Oct 2019 02:06:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNSVj-0007RO-0i
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 02:06:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id f14so13221450pgi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 19:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=krrbLH/izbJso+nY2MWEzP/yC0vSBP8e2qrV9BbAhd4=;
 b=tyM/hUar8nJGqW6eoyqH5D48DWwB6LKnYQBh1Ixgz10lYm9FvMweNSsvnQ3sF0q6rY
 S0NnE6QAuvhtQrTI8vMu7yggnDtDVM5uyCITrBHHX0zlhA81SpdYyyb3gtu/CpkOTGPG
 37xsExG1CJMMuA/R7GhiwlQmwnrsppky4axHxxQ5duaXMFz57ZPtfEhJOR/ly0u6Ey00
 VK9rhtZzUx+fH8WnjpRNcLl1fuOjy3RYjWFCs106jfwYdvhEMevowYbYtY1Z/JHaMDXz
 f9r3MlcVK7AFwIiooGh2oqKe2aG6fmGzWgJbGbZoBpLVLpjseH7sc/NVPeU4w863Hgo8
 wyFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=krrbLH/izbJso+nY2MWEzP/yC0vSBP8e2qrV9BbAhd4=;
 b=T+nkOZXe+8TUd5BGtQ7jd+IbwigZR4Tx6j4yv9axn5v+rUMU2sq9hDEKdvDu7DSRXV
 1NoqiTJa1cr5YbhvMqfOf3zyhJY94e07Lr2sNVaqtFSHy33A7YY6yc7paTMl8gOmyLf7
 1DhA4PC9AQFix6kW86wDNxksQMSjLziRLsTGR/wUmn21VAuNQw/MqEFcqiwOoL3oQTza
 3Q1Lr0TTFdjerwOw6E3nmr3bdapQTO8LNFaRczLNjBQ5dpKfHcQ6QLF1GVGCvXTF0qWU
 ZGG6ODGZHAUGtD9WcIqHeZKAeJFM6oksa4gJk8Nf5JnqRYwoc2S1CM19OEeUxjftTbp3
 7ZQg==
X-Gm-Message-State: APjAAAXKp1A/jLCM3zR1AUwaEwFGP+AnmT5Of+iE5WOReFxgEieOcage
 tBuhT2F0NbgwCNDR69Lh1vSViCNMTWrD/g==
X-Google-Smtp-Source: APXvYqy3USe+tw1G80ZfxrTnh6puU0Uahh6n0QZWoj5S+kT2l2RC5bEHRYhf2wTcVEKQNpxsmBxclg==
X-Received: by 2002:aa7:9a0c:: with SMTP id w12mr14337523pfj.81.1571882758201; 
 Wed, 23 Oct 2019 19:05:58 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id v9sm24093974pfe.109.2019.10.23.19.05.54
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 23 Oct 2019 19:05:57 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: arnd@arndb.de
Subject: [PATCH v2] MAINTAINERS: Update the Spreadtrum SoC maintainer
Date: Thu, 24 Oct 2019 10:05:10 +0800
Message-Id: <a48483d13243450ecf3b777d49e741b6367f2c6b.1571881956.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_190559_075090_1E3B4E97 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
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
Cc: baolin.wang@linaro.org, zhang.lyra@gmail.com, linux-kernel@vger.kernel.org,
 baolin.wang7@gmail.com, soc@kernel.org, arm@kernel.org, olof@lixom.net,
 orsonzhai@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change my email address, and add more Spreadtrum SC27xx series PMIC
drivers to maintain.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
Changes from v1:
 - Add a regex pattern instead of listing each of sc27xx drivers.
 - Update the commit message.
---
 MAINTAINERS |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 55199ef..228b386 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2327,11 +2327,13 @@ F:	drivers/edac/altera_edac.
 
 ARM/SPREADTRUM SoC SUPPORT
 M:	Orson Zhai <orsonzhai@gmail.com>
-M:	Baolin Wang <baolin.wang@linaro.org>
+M:	Baolin Wang <baolin.wang7@gmail.com>
 M:	Chunyan Zhang <zhang.lyra@gmail.com>
 S:	Maintained
 F:	arch/arm64/boot/dts/sprd
 N:	sprd
+N:	sc27xx
+N:	sc2731
 
 ARM/STI ARCHITECTURE
 M:	Patrice Chotard <patrice.chotard@st.com>
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
