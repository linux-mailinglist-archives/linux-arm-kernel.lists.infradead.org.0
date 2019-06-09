Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E993A50E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 13:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Uc9RAxm+a682Y2EysBDOS6dGzG7alV2kA0GiySXXRc8=; b=IiQ
	M5sBueEn2dJ1GHShqlReWamy9rZ7rljxWsZW1IPyRCrJwVYQirXnan3tKp2NhctmPN1s1+NAoQNxb
	VJbsydZc5Ym1oOyyDbQcZOOhr5hoI3zCo8lZsmgBk7y9smcx2yGPjMo+IfBYbcm8dK6Iw+7/5OdcD
	YJE7LuXJ9Ddq0Qnbhn9NavPtUBxqGYE9EMygr9ndI3zBPFmmS/SQoqaYznThnITsngSQcgLpLkAkH
	fYSk1dwSnRRsxxgvHXSdYpiXtArIbmu7nwG7HSmXtpEvvrnLYyAZwLASysDe/s0MTjUHIDHKAp1C+
	IqkmS4vJJzCSch0Rf2fKPGx15uWJ8xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZvjP-0001ny-Tc; Sun, 09 Jun 2019 11:11:23 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZvjI-0001nQ-Qo
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 11:11:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so3668510pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 04:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Cal99Amho56820U+yaSv28Wp6x6GMFa0vOsQA8BETVM=;
 b=DGnbZJhkml/GTOCwVXJvaUey11Nl1HrUBpWW+UGtTOrKk9FDas7yBbzrPUGGRblMRZ
 kco/zHq8fPBDcPxE6kv8vjkqL3IXBu4TCCCwLtPPgajaXHALH07W1A9Fx8IIzXvMkBvK
 L8HdkAtcEF1e6E6BUDbMCPj0jGBMay3qz4xCeMp9ZtVFR220SBXIyn1B0t91nCzXXpYt
 Z1mBRzg2/VM4byb24w4s8gEgSvWxmqLk0Grms4Scam42vt5lFYzkniWRIkK4g2uK+04c
 hnWVDdJrlRbzaiisyviSADBpS8eZHoZfiEV6l6/E39nnkQ1Wha4jOPkTgWSPPjyaSM/0
 3mJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Cal99Amho56820U+yaSv28Wp6x6GMFa0vOsQA8BETVM=;
 b=PaIqW7fMxpi63IbL3PNe8huTl4OoxNdANL4Oyk3FDs1WJ6Kv35hsLgx9vD6fY5NDXO
 WN1kl0LI7PeJuzAPhQclJZOd0LQhqOg5WWCNQunGZx0SXWIEcUWkZ2zNZF8Hiy8gc1jA
 ZjKvcCbsB2h2A48BKG5n4+ZZbkEx4pSy9elcg19+/tG+9a63JfSOuvHAb2RmkHjRQ761
 clYzaQW0b8PBI0TVy5fH7FcRG9IXBq3WtLTR+0K8vB+wOwPfnGgNbPQmpBmnSjXA4kL+
 KZTcdExA3NM/PbwGzV68SOZaTCyLoW09iUc75BlXGPv2G7AQrGecZCVfv8rzdTELZDBk
 kW+g==
X-Gm-Message-State: APjAAAWXfngViBr/8KB5pxYonY9s47D7xjXvb0qOlVQiIaX1c44fqUlQ
 8rH3uaSZKLgfDGwJnnHhHM3cD43J
X-Google-Smtp-Source: APXvYqxCfcIxwP7AKWkVHFhsyr84pjDhY+aFzuau/WjL2GZNFqXjILpU+R+ceWGUljVF7kk8/AFhrA==
X-Received: by 2002:a62:a509:: with SMTP id v9mr67392094pfm.82.1560078675959; 
 Sun, 09 Jun 2019 04:11:15 -0700 (PDT)
Received: from localhost.localdomain
 (p2445105-ipngn21501marunouchi.tokyo.ocn.ne.jp. [60.37.178.105])
 by smtp.gmail.com with ESMTPSA id q7sm5590985pfb.32.2019.06.09.04.11.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 09 Jun 2019 04:11:15 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH/RFT] arm64: dts: renesas: r8a77995: Add cpg reset for LVDS
 Interface
Date: Sun,  9 Jun 2019 20:10:59 +0900
Message-Id: <1560078659-19236-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_041116_868966_704B950A 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is necessary to reset the LVDS Interface according to display on/off.
Therefore, this patch adds CPG reset properties in DU device node
for the R8A77995 SoC.

This patch was inspired by a patch in the BSP by Takeshi Kihara <takeshi.kihara.df@renesas.com>.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the devel branch of Simon Horman's renesas tree.

 arch/arm64/boot/dts/renesas/r8a77995.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77995.dtsi b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
index e0a0149..7816fac 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
@@ -1001,6 +1001,8 @@
 			clocks = <&cpg CPG_MOD 724>,
 				 <&cpg CPG_MOD 723>;
 			clock-names = "du.0", "du.1";
+			resets = <&cpg 724>, <&cpg 724>;
+			reset-names = "du.0", "du.1";
 			vsps = <&vspd0 0 &vspd1 0>;
 			status = "disabled";
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
