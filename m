Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CFEE8909
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:06:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6aK9AcXCYs3OZ1Na1DoBvydTUaLZ7q4NqNhoYvi5+3s=; b=DzO
	WF/dSbITROjooMzyBwXV3zNAL+fshvPleTjeExMpRYtXDR6AbtkJa1+3cKmmw5vK8b54XLrRS9gMP
	5xSHZndWOVqgkt0gJci+Bgu+nJkAR0YSgHtNElO0fbJkVStrY8oRIUCvGZbrAd4XJZX9k7SeTGH6W
	LEA1kBsZJbK6Mjx9RZJPakB90JoAraig7V0OrEwxf0xhKTKcbyv7aFq3VRztQ5o6mVvW1YZi+wcjh
	0JiZGPvvyOfMXiajdrbo1YraxKl9LvmEse3FXQKS7wdZZYZIyNa0wKIuAaEQya2EowjAleIxnhrk2
	EMqeCCU8sYm6qIRXDYOTyZApZr6UETg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRCx-0008Rk-Fu; Tue, 29 Oct 2019 13:06:47 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRCm-0008Qy-OX
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:06:38 +0000
Received: by mail-qk1-x72b.google.com with SMTP id c25so5877776qkk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 06:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sKlbK3H1ruevjI656mGQdF6pA7LQOsk7wfrHcFqeEUc=;
 b=C5pOcR66qusGdM06JIyOs9kZOoCKzBtfPQvTQyXEzcu4RwEuRL6u1lE2xRzED3f2BH
 0hODf0XDTIyLKsmRVbYdKxn2l3+1CCYhYNuOKhzyHGNPGwOgT9b4ntrjFgQlGMJ2KWDj
 LUVZoFYTEqTV0xODjrwUC0f5mgaIN0Ig6GuKTl7H4diZ7Zna3H/GcOTLL1qiW13PUJev
 vniThSSyT8KCYABzO7jA5Z5S8fRp3dP5T5l4fiESrD+1YCpJ2WxcQQEmGMd4e6Qod/X4
 2H33ax3pMmRQuUJoIYdoRk4XYNsZIqgWBLH8A0hlpKj7az+QWhUavtrASpteqKI+PHy8
 amZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sKlbK3H1ruevjI656mGQdF6pA7LQOsk7wfrHcFqeEUc=;
 b=StXg+RyrkB7qeinCa+koeGA0nkiqnh/5i/jtgXaQAeftNOY7516CVqUO1f/+fBD1rh
 6X4GVikq3gOjUTzTlDTBL0jZKK5wv/YHg3PPC5mjIp4CI3gK4U+TgvCJYPkdvcwcvPOy
 ccOF4lbVvuIGuijp+In3i7XiDZficpfcGT48Lcr/coQzKQParF1ovrtYFenISFFkwvy0
 NvFEEMascmChkWnu2U3HmalEOYA9Zs+wQBs8FM5GVrMDLImTfl7Mb3yN3ErwRyCSuT2E
 P5q55saAph+g8GpNrBywbbqndMGeeezfjIAUNx5uMrjzVdMb3vDq+HwRlmwKskeVQmeZ
 djAA==
X-Gm-Message-State: APjAAAUIOT6akdcl2MfN1iEab8ZaBtcDv/IvT9PMrawtfsztDPL0rHZj
 d7BvafLpT8lYVidgnJ43itA=
X-Google-Smtp-Source: APXvYqwrh8hwcPugRql19k8XUvfHZRge2IsWW01iV10lsHI9bP2koEy2a0i0gHUMAWNjAKj6WkQHgg==
X-Received: by 2002:ae9:e50f:: with SMTP id w15mr2997658qkf.436.1572354394288; 
 Tue, 29 Oct 2019 06:06:34 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id r7sm7565029qkf.124.2019.10.29.06.06.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 06:06:33 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Document i.MX7ULP Embedded Artists
 COM board
Date: Tue, 29 Oct 2019 10:06:38 -0300
Message-Id: <20191029130639.29108-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_060636_801840_D0FC66FA 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add an entry for the Embedded Artists i.MX7ULP COM board.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index b08ae59cc57f..e75f03bf8fbb 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -234,6 +234,7 @@ properties:
       - description: i.MX7ULP based Boards
         items:
           - enum:
+              - ea,imx7ulp-com           # i.MX7ULP Embedded Artists COM Board
               - fsl,imx7ulp-evk           # i.MX7ULP Evaluation Kit
           - const: fsl,imx7ulp
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
