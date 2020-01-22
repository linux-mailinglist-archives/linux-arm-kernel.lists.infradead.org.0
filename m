Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7711145EC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 23:46:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+NMhNntw9v/lpRT3vG3hKGauA+qGUQt0bJR/XyIcwEk=; b=Xvhh6VdxJz9u1ixXuKBCJWtfFa
	EEkOO/B3obI4rJZscC82lP1t2eC5RDUG2iCzboIgIAnU1qRNn1NNLmLK3eRhWnE19ZHFildiHHnAO
	5h7qSdAVN676RpwYZjsjusAIlCSUWBb9b443Bi/nvE0qMzT/GkLQjdDgLEZk1M8ICt3JVzECYUrzN
	kdwu4v0WlAqZQeu0H8+fHiyRS6/EK4Y9Nfs3xEveQl6ZG1jHXRIT8uQVMiD2LfbrGpvigSUa9AYO0
	wHJamJFLSr9xCWchtw/vljz8fjNQkLq3aTrzlDgh9wyZHKvejcj7R7hwWdx/6yKYmL5YAVOuEjVxN
	lbeEfgkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuOlb-0003h1-Ei; Wed, 22 Jan 2020 22:46:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuOlC-0003Ti-Sw; Wed, 22 Jan 2020 22:46:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id c14so921246wrn.7;
 Wed, 22 Jan 2020 14:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DUZxqXCTw8R6QCBbI197sah0uzk3QRUQFWT9ZOyB7Yw=;
 b=ogBzJA9dCiPDKlIna4Bucj5L7dAS8xsMTknUwWz+zmlCHETAflT6aML3KdCaPEEPl9
 i5+uApmpVcAOXZvfvzYqcBYYc9wFZaKZvZjyRNZyYFrHrPDoG3q8LIlbdhjAv6sHyXaM
 Me2d4nLWFV8X/iMcUaIf0w/aqa1CO7il0kH6GPQ0/R3gOwy0eF4JD3ikRQFgdhv/GdP3
 l5o1wEVwOL3uucpfwD3eDRxPDpNI5NkfIPkyTMIzOZsRJBd7VjDEns6XKkvBPn0MZ3zl
 5e/8PZlOmhvGX15QtBygZgvWoYLIvV5cwS8EP2mV/8ZSinC3RLgqudno+ItfJKXiNZRN
 3kzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DUZxqXCTw8R6QCBbI197sah0uzk3QRUQFWT9ZOyB7Yw=;
 b=Oz8qZBu6OTT7xaGqarfq/kdl2l+x/1XH7V8Jj7zjB9JD5LnVoxmXKaknkRQf7wGO1W
 hhqF54/JvL3Y8vNFvZ4jmIiYlXA1eqFt6GGONqAveob35k7Si7EpFgJC22VahZK0QKFb
 msiTEsUcMLJ+bpk6yh6kbeZcc5zwdFe9vWeELmp5WcCkW5NQ0nsWj8ZSxvceuS9fZSmE
 sng8xJe7eT1UmfpjLglnzXwzLJ0S/n6OoH8IAn4whT7r7lvsWC9k+WrVzOkVNHFOglkD
 bLYc25MAbK97VfqxT8+xg1G/Vo6jbVuU+OKcT4TNpQ4S8IPPegOM24A912yqK6N03KNa
 vz/g==
X-Gm-Message-State: APjAAAUSFoAmrYI373JC5eDXlCR+w4SdOoZnK/851+gg3rQjrcNQ+Pim
 3o3Hpmg7Cy77luRG9vt7fDQ=
X-Google-Smtp-Source: APXvYqwv+FPTcvtz3itSHxg+QI3+P6dzgJihxCbSWochxhZPiMdt4J9IWnoCeRlGJMyGwNcYMl+E4w==
X-Received: by 2002:adf:db45:: with SMTP id f5mr13294137wrj.418.1579733165530; 
 Wed, 22 Jan 2020 14:46:05 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f1sm342559wro.85.2020.01.22.14.46.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jan 2020 14:46:05 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: broonie@kernel.org
Subject: [PATCH v2 2/3] dt-bindings: spi: spi-rockchip: add description for
 rk3308
Date: Wed, 22 Jan 2020 23:45:54 +0100
Message-Id: <20200122224555.6845-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200122224555.6845-1-jbx6244@gmail.com>
References: <20200122224555.6845-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_144606_931408_198D5D47 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description below is already in use for rk3308.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3308-spi", "rockchip,rk3066-spi"
for spi nodes on a rk3308 platform to spi-rockchip.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index bca8c6142..a797a4748 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -29,6 +29,7 @@ properties:
             - rockchip,px30-spi    #for px30 SoCs.
             - rockchip,rk3188-spi  #for rk3188 SoCs.
             - rockchip,rk3288-spi  #for rk3288 SoCs.
+            - rockchip,rk3308-spi  #for rk3308 SoCs.
             - rockchip,rk3368-spi  #for rk3368 SoCs.
             - rockchip,rk3399-spi  #for rk3399 SoCs.
           - const: rockchip,rk3066-spi
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
