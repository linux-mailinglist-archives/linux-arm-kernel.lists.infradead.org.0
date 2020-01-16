Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 193C813DEB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=niagTpHYciIL4+wH14KVBjhYX0DkAMMcyuDvIF7lAXs=; b=OhUF9QQ8lNP5Vk7/md4L4k5H5z
	c2u9bH81fpPm6xYr5f5yWNKqPTrbC9/lpuHVnbyGoMhm1ujJbqPwsJGKAnchLBQCYUi2FtM/WRXbr
	VqmUVC9CcjesedXcCRRCYLbjMOTaOG9ibG3psvFAUt6o7TSrVVszNbakOwjQfSw+pdGV4iOVvPt/3
	dCoOfr91RREOMOtkWFgbJWy5t0tNsHG7eGF3U4tfCdiiSC9KFdvxVYgcT0kNIUwWeCI0SeiijNtmT
	MJylpPVHtVTwvTGyDinFtDSjohcZsoLjuv9T7XC3YHrRRahrc2Cg6oiGoOR7dGTIiFhtEEtFNbvg9
	aWl3HuYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is70J-0002o3-27; Thu, 16 Jan 2020 15:24:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6yo-0001YS-9f; Thu, 16 Jan 2020 15:22:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so19594177wru.4;
 Thu, 16 Jan 2020 07:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vZZ9VyOzV34iQ0VxY5F4QTnc79//k1XDbodGn0X9/BI=;
 b=lzs8yVanbsLsplmx8X5y+FC2PfGxjVxhWovxdAuhr5n1AMnQj6FcgATftk365XldMm
 Pg6rwZzsLrHwxedRZIpfDWG/kaEmH8p0mtVGeojY0qDZ+y6XV7YD7HJH4dR1T3CBYmMb
 2tYs6RM1uClP+oESBKqqsYBi0AuGK+VvDstUPSvOSGhh20BlPZLlOLZIOQujpc4oOABC
 1n18InsiE7iRJBH9QmX9lArDfeWyw+pPptGBBQqd0sROgz27kBLzU3XclzaECs4Zh0US
 fCgktVQY7pHYg4Gl+nQB1JrW4X5QP68n0p1NKuKLr63K1TdzapLQMdjWztcHHYHWhzVO
 WYvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vZZ9VyOzV34iQ0VxY5F4QTnc79//k1XDbodGn0X9/BI=;
 b=G4u2hX8jxPlDtVY30sWBXzY30Bb0p7UzVYoqxQr8PotPKlKRNjCGMmPldEbRVJdPhB
 iZVvTDgsO8hsllR4KWtl5FSXNeQc/NXBQmylxqWe8FvY8rRwyxQwQ6A5b+YRGwrK7TTZ
 VKepVdO6hqs1R9q47CVI0q64es55UCgAkRYFP4BZzVB+uwS0G7gMlNdreu1WB8/ybTet
 dEeqYLfhZMTmGHCNsJuGJSGEXXzf2fxZSL55fz7V1JJzjkraQbrHlT0jTueIXSlXoBVd
 8Pe11CH9qAb5jjME4G/oE8U2KR5f0QS092occ/vPyC4AjfeJZjxjZ6b2TQMMrquxKW6T
 K3KQ==
X-Gm-Message-State: APjAAAVsoLuo5O+f/ENSsso3dl8Vtf1LoRW4KEkzuJYmZPl54Sm709DP
 ErJf9vsXrccotPNmHKLaSCw=
X-Google-Smtp-Source: APXvYqyuFSu4gLbVEvoyKNl3FBhw734PapU1CBJhHea/vYM4blIBscvJQWf3mxNqEwlCKpMp0wwGYg==
X-Received: by 2002:a5d:4fd0:: with SMTP id h16mr3735432wrw.255.1579188160843; 
 Thu, 16 Jan 2020 07:22:40 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w8sm18193wmd.2.2020.01.16.07.22.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Jan 2020 07:22:40 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: ulf.hansson@linaro.org
Subject: [PATCH v2 3/3] dt-bindings: mmc: rockchip-dw-mshc: add description
 for rk3308
Date: Thu, 16 Jan 2020 16:22:30 +0100
Message-Id: <20200116152230.29831-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200116152230.29831-1-jbx6244@gmail.com>
References: <20200116152230.29831-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_072242_438656_E91916B8 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description below is already in use for rk3308.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc"
for mmc nodes on a rk3308 platform to rockchip-dw-mshc.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 2f70f5ef0..89c3edd6a 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -35,6 +35,8 @@ properties:
             - rockchip,rk3036-dw-mshc
             # for Rockchip RK322x
             - rockchip,rk3228-dw-mshc
+            # for Rockchip RK3308
+            - rockchip,rk3308-dw-mshc
             # for Rockchip RK3328
             - rockchip,rk3328-dw-mshc
             # for Rockchip RK3368
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
