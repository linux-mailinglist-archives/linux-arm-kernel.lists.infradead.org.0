Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FA3E35D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 16:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b9b3vbrWIwFD4xeS/d0tpTydYg+4+eLJnEpqua5K40o=; b=MLqLvBEwU9pSZqT/Ki/DLJQyvX
	hTdUjaxxyC8Hw+h0unnHoupZ9HMqUcnRUWs8QBezakR3UR6PEZL85HCP/iFkXaHt94zt5NHApz9FR
	Q8yaBibti4dBWoHfxAhYsu5b4IF+mX/He/LxWfjT01xsfjUVcaQPJVrX6OWGOy5D7KeixtiaZxVRS
	/Pv22zADu63vzSui9Tf67VEdeOa+LfP/DSACsOmp9a6BBPaoSbwfVsMt8RotY+dXtLA4e5CayxcdT
	0W2xbR5c7VR49N2shPDRnrCzBhOmMfETRji8tZoZAoR9X6oUgf3Y8eBUpkvdWdqPCmCUq2hl8/RlW
	4AT2gXsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNeKk-0004x9-NC; Thu, 24 Oct 2019 14:43:26 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNeKN-0004qf-5G
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 14:43:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id p1so14388955pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 07:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2UoSxu4ISRxofxwFZ2v9JG7zQdt9X9lHqu74cjbmWOc=;
 b=NL9naB86Ee+CKVQ+AxELEdANKhDOXHfV2IVHHFBKwkBqZ7aSoH4ytqXml813h/VULl
 BiKGsJVwXEbKNHk8oSNT7RIFwz1vjBuMSTr264xnrqHbtNR0543nDpPoucKnDI7X3+TF
 1iFvC4xwiIffkW60ZxVm51NiUwY6mKJfqEQ6ztvbBSzdxrYgeYRUjRML3KUpCaT8AR4y
 p8VTGVVbNmeo7KXnYytrJSh/mgS0eaEcEWNMSWLsXfj0dgR8KysPMccpuprVOgBIFur2
 aAr1OEWxW/cfIuUM9axxN/Lc3LahT1VIObaRh1YZQntZN7IX2TME5WL2TEX8UxZFMJe4
 Sk3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2UoSxu4ISRxofxwFZ2v9JG7zQdt9X9lHqu74cjbmWOc=;
 b=Ee3LReTwV+Gj06mJz+NTxZFFCZVcK53ZzoERujoH6alHIgnXQaTryHz4carFB9enCs
 1pnylpxIkaU99oDkN5EsBWLJNWbg6cAdM9dHtOOd4Gz59YIPefXj3Q03c1CYHlxws9L+
 NW6qHnAh1TPmvnCKm2qCVpNpG5Pv3SvHG0owpK0bVpIB6Wi5zxoF1GGVD06lLDlg91Qy
 AfwVi8EKWbL3euX/aIC9qcJa3r2QobHcmex4uX7MlIGApmKQqkjJ3DQNI4uilef+F/Cv
 SvtChLzz3VJai+pjIcVKoXzA4+IamRGPPE6bJxhw96H6rZpAxf1ERW6XF/pYkpr5Umbu
 G83w==
X-Gm-Message-State: APjAAAUovkDgyuiSb6pG9zehTWpSee0dfyVmsl0wHC8sVSKOtVHMF/EU
 NqbX/YnV50qdSedkvgPTrzkdvMwGnQ==
X-Google-Smtp-Source: APXvYqwKvgKgE4c3s0sCd/U7krExMDS/JsSah401n4Z/IyqsYW8gYj1usJWSIza+wIgKmHUVQZ0QEg==
X-Received: by 2002:a63:4d61:: with SMTP id n33mr16708322pgl.158.1571928181935; 
 Thu, 24 Oct 2019 07:43:01 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:997:a0de:81a:ea25:468a:5918])
 by smtp.gmail.com with ESMTPSA id
 193sm29059810pfc.59.2019.10.24.07.42.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 07:43:01 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH 1/3] dt-bindings: arm: Add devicetree binding for Thor96 Board
Date: Thu, 24 Oct 2019 20:12:33 +0530
Message-Id: <20191024144235.3182-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
References: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_074303_256391_C63AE584 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 darshak.patel@einfochips.com, linux-imx@nxp.com, kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree binding for Thor96 Board from Einfochips. This board is
one of the 96Boards Consumer Edition platform powered by NXP i.MX8MQ SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1b4b4e6573b5..8016174d5e49 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -239,6 +239,7 @@ properties:
         items:
           - enum:
               - boundary,imx8mq-nitrogen8m # i.MX8MQ NITROGEN Board
+              - einfochips,imx8mq-thor96  # i.MX8MQ Thor96 Board
               - fsl,imx8mq-evk            # i.MX8MQ EVK Board
               - purism,librem5-devkit     # Purism Librem5 devkit
               - solidrun,hummingboard-pulse # SolidRun Hummingboard Pulse
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
