Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 913991DB1A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdDvQJXm5QX8a7vpIgXdkznTdDxnsU4rh63dbzN5lzA=; b=G81ILyHGaDTeqC
	90iDHfyVxW6xfGu4O59zTFeOwr3VDjiZHOxaG/LOU4bSTSIIA1VdOi3uSdI1HeOSpZDlF9ZUDfTbM
	EqPcXRHLl6eM0MWskpIHfcKgVosF2QVjirucmvYL8xwMVcCgg3r9xIdzIHmpsXzuEoDOSHrcV4dbT
	/RTmHAaielar5GJ3P3fS8Ggj8k5rNm2msbmwsNLG583c0xB5l3+APIE1o72vxRLhuJxD5MH2fM1w5
	DnZJZoTSm3t7OFK2moTFZ93PpcwMozdZ7XJ0lMmymcAcU6YUk9L/6g1+uf5Ek8DUC+/nGgZKzmnq3
	wWUenY6/CRRxz9Bu1ohQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMs5-0007cG-QL; Wed, 20 May 2020 11:26:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMqt-0006sP-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:25:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id l17so2761055wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SYamWCGpGqZL1TdMciPU3s1N0hd2ppZ++0/IfJ1caGY=;
 b=MlZFmJDyD2RZ0Ws/5qF1VLg+XZqBfCrw5K6YfU6++Rjm1khpRCp2qSfB3fktDPddjo
 SIh9uNo9u5rfZE1ob3KokCrgAMAhLPTcLIK8eKdJWkwBxUHcT1oeN6lBdchQAAZUmWUm
 iv3hO7QiHeYoeyE5g4oOcw7e2gZ50XZzRDFrUggoPsuCrmI/HD2umiHSiQWTwo4qZPZL
 padqQ0vvTzkXV/zWCUj6CeVwJa6DNj9juCzcolT0I3DdZXpZMhYPRXpBho3emdf0EZhL
 ofy9F8wr+8xgzSBC+TUvDDIzMq9i1jojRdCeCqEnCj1xBbsJ0A3OgTxz+jUdxV655lt0
 qvVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SYamWCGpGqZL1TdMciPU3s1N0hd2ppZ++0/IfJ1caGY=;
 b=hxf6jXDfBoiRSp46yh8UPj/ciJR1eei4sC+OngAJdnOUXl5rv8kq1TkkxyLq7PA3mi
 uSgEsBEsKMU52p76ueihpXbWqTlfQrJxYfsZNWWr2qjctaQ94xQyaMawBqA5ndyfQuVZ
 Om5Xcc9bYmJ6cQXJTafSEYJP+9Fz6hAbNmj3HtKwcrDppf+AHFsjVhmrffXI6eK4S4XI
 bX8oLOfcIRNelVdjsPj2QIRlBOleJz725/gWebhC+DAqwrj0/zsIUoO4XK+ptgyNq8PD
 9ZcQD/rc+ejHqBV6HX5JDhFDvKsmstuiaVxg9cF+FZzHr/Qlxn/2CrvxpkRSje47CoVb
 SVaQ==
X-Gm-Message-State: AOAM531Ycb0jFmcGWOX1D1uiA8VVwx5JDzsYXI+NUp4p8tNPznsndUbk
 BGpZy7Bhk/qi4lMYNpzWDTgJrQ==
X-Google-Smtp-Source: ABdhPJzP2SU8b7Ejhx9OfVfAUXunYJXKq9PtL2lhB4iCfhl7vIH39xSNcZZZPhsOwqd7i2bPARRi6w==
X-Received: by 2002:a5d:61c3:: with SMTP id q3mr3723732wrv.405.1589973934414; 
 Wed, 20 May 2020 04:25:34 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:25:33 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v4 02/11] dt-bindings: add new compatible to mediatek,pericfg
Date: Wed, 20 May 2020 13:25:14 +0200
Message-Id: <20200520112523.30995-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520112523.30995-1-brgl@bgdev.pl>
References: <20200520112523.30995-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042535_913402_415707FE 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The PERICFG controller is present on the MT8516 SoC. Add an appropriate
compatible variant.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
index 1340c6288024..55209a2baedc 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.yaml
@@ -25,6 +25,7 @@ properties:
           - mediatek,mt8135-pericfg
           - mediatek,mt8173-pericfg
           - mediatek,mt8183-pericfg
+          - mediatek,mt8516-pericfg
         - const: syscon
       - items:
         # Special case for mt7623 for backward compatibility
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
