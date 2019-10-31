Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54696EB853
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 21:20:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FWId7TA1CI6ABS9lhGlBN6z3/SM7iI1B6bXkHAVWd1o=; b=PTF
	CIleL2LGUQQcqi881M66+3UzR/b95fuD2LbIg61+YTO+KehDa68g5wYhoIF+PaJRehIh7olm7+ucX
	eikz2v3OaTZjnG9zDTHBDpMvBhZsQPfJPD6ZcYbcQb1FOZJHLmCO40+wkz6nN9pKIDe139TRO5uVZ
	4DctkwB+cgMSJS9bS70q6SiSZ5LjgqVc4DB8KRN7lpfnzVvoCYld/mW6dKXnnf09qBe4Dcu0yzoMk
	rXhB1+uRUlC1rDx0UaZ3mTrsn5rvcISJc8S3K3cpCuMvCiw+6H8Zhdn+CrCUcyga0EBa8fyygjDmF
	7xeEm5U5jLhdRUX0NIixBKAl4PEsrIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQGvz-0002Kj-Ax; Thu, 31 Oct 2019 20:20:43 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQGvq-0002KI-Sx
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 20:20:36 +0000
Received: by mail-qt1-x842.google.com with SMTP id t8so10288433qtc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 13:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Xrhy0pJ00cR8T58RNHuSzH7mF7BfuboXGRAqGhS82tI=;
 b=BFvhxVofS1yu1piYLjAg7pL52EPG2HOBc+89Ea3nKclFW13C5AoXrHpez7uUiy+nfa
 Xixov75UQ4QUGwDL7KlJQ3pLTWmpno17jJDTuDT1DlR0GiXEysSB1r+Nq5xdKisqmB6O
 80Hew2QoTYnkMKj/ajdC1PlHajUIGfzCZ1hRhswGYrdTzYQW8FOonum/N376ffvu0Fhf
 atMt0/jYZGcp3T307oO1MBzk05h8ZKw62UX7Q+kkeXuXf+59uERXMGYBkuF5ufajjmqN
 cPVDNDe7lc7o2v5mskcbdsuHiBvU+K8vLmcrJVDDxIHullo+aT8DY+W+F9112gZ9BEnX
 zKrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Xrhy0pJ00cR8T58RNHuSzH7mF7BfuboXGRAqGhS82tI=;
 b=Q0r9i+VFwcLrOcpWgHLFx20O0hDnPaWST79N/XxZDFd9ST5a91mlO1LSKF6Om0DXVc
 JLjSnWMViMyYWKMEd/oGy28+eejCbWpgHtb7f7egIRsIpagGtXAF10imUTH/jmAFIpaZ
 1E6rCO9wKoUEW1qeQEQzkXttFsLvWXRXchTKAETo6GLplpiUQ3TjOuJ3XN9UsfiBaKC5
 x/Be4JW2fIDZvCiXGOviRr0bpd5On56VG3Jjm30h1OjfBff6KqBbegWez3uEysgdJbFE
 3Yst0e/qm3wuE2NP3Z7wnqN+6HIZSpvY/42az+M0SDEAFcztV2/tygFusnsGI34kbWdf
 ND4w==
X-Gm-Message-State: APjAAAVMUcj++HED+DZ6rkWCobOfzW0xC6DcJdBvb5MG8GXeGLzeQ9JE
 v+xj3okEH4P9VQ9BVElDP4A=
X-Google-Smtp-Source: APXvYqwCCAMOMnp1J6gf7YBJ2I5eM/nWxWlqoViaFN77Ox7JbWu9MnHbNFSyoD/SwhBaMaSzBe4P6A==
X-Received: by 2002:ac8:4506:: with SMTP id q6mr1138355qtn.277.1572553230159; 
 Thu, 31 Oct 2019 13:20:30 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:99:1a50:482f:3e7:284a])
 by smtp.gmail.com with ESMTPSA id f35sm2319648qtd.35.2019.10.31.13.20.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 13:20:29 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] arm64: dts: imx8mn-evk: Remove invalid Atheros properties
Date: Thu, 31 Oct 2019 17:20:28 -0300
Message-Id: <20191031202028.26165-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_132034_936949_1A59D3B9 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

None of these at803x properties are documented anywhere, so just
remove them.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
index f64e47828eb9..6c41859de80a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
@@ -50,9 +50,6 @@
 		ethphy0: ethernet-phy@0 {
 			compatible = "ethernet-phy-ieee802.3-c22";
 			reg = <0>;
-			at803x,led-act-blind-workaround;
-			at803x,eee-disabled;
-			at803x,vddio-1p8v;
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
