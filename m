Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C159184827
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:30:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I9gjPjKfikWfsdTbuqEKRKFFjaFhD0vphhuLigGCJC0=; b=r944ukvoIHtVV0cKzmfpQgR8dt
	MNogOpiOdPdQ3BtNTRydwW35pAsKGptyt3B5Fnm2wDdQ7+5V8AH9IZgcdIYL9c6LyknpwPhYCpk/+
	TGDTwXnt+2b+yB7zVIVLU6bosCcBMULOBvDL8twqmJGmePC1pIfUYHrx9PkWY6ovmVhdFGY/jcDUu
	yRfWBA7Ux/kUKrNAtck8+uk5V/aUtk5nq7ghR8gs1mJ1MuTHQm7bDx0Pwqt1KW+k5jNWJcdvQb57R
	Y08ZXd99NZob1w1g1FAxA+kzDBRL+MIqU+GxFacEHxi6bwsKNNS00tM1GTc55Sp20VfToxi986hMA
	6/S1m6WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkOR-0002Ak-9J; Fri, 13 Mar 2020 13:30:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkNe-0000RJ-7n; Fri, 13 Mar 2020 13:29:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id g62so10313823wme.1;
 Fri, 13 Mar 2020 06:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GUHN0X5sdrI7D0GMcD6M5Z+3axinNY1E4lzMr1PVACQ=;
 b=G1C54Bdb16WNvSIBd1FwsBhkuDdryGinNrlo8xqYr7AGyLpVtPTtNffGmu5s3IB1Mp
 xPh5AwgNANFWWIG72b7V7Q8EQgEB9VLMRISdv4vZHRWhZla3ClqFfoJB6UlQ2WpPA/BD
 OSGWBT/MADHWNNtv66MqlucLcqi1PbRJHsfO2TnpszE9t/MoZP+37qFzFxWhom/MGeEC
 FlnYVdCPZLOFgzc6ljTbHMEedF05VuLmxcr8K8fepYkadg+ib18o9CCL9sPIralJOiza
 uD7T3VTPWw+8BnKdm/X/KCsfRSwXLQ8vjweE8oTwFpLrpkrdTBm7HSaslkksP/4gjo8N
 3jmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GUHN0X5sdrI7D0GMcD6M5Z+3axinNY1E4lzMr1PVACQ=;
 b=oHJHi+6qIB3jYLyIhIe28uwO1WEprWp2kxQns8E8FZYc5Z8C3OPHcFGwnB4oWGgfh/
 9R7Fx006tia9vgLEqzmC7W59gH8Ds93eNmE1qz65IxICtvvUKPe4202PbyurokSMCPc7
 R1kt2weren1Puzob5kh5zlTe7lVzWn4E36HcVMr71mAhqQ7g34tUlGtD0rxPTczmFgGu
 QGeIcdG3JF9JmTIvOjbQ8UKAQPJpvYMB9PDk8DR42/M6nAb1kZshQEmI8cA2fCejynSt
 Zsa2iQ2grmjCUVUpS7vx1iD7XOmcVHDYUUidrTbAwVJdvE6sevAV4YZFh0fQh/R+7XqQ
 0uBQ==
X-Gm-Message-State: ANhLgQ0id0NeNzwQxkRYoXOCrJyxmd6nsa2xxQnaxjkRm0l58AWyg8A4
 WeddrI3rP0Xf6ZR4o3tU888=
X-Google-Smtp-Source: ADFU+vsqxMJxy9G94+rLdzbFa6PMVw0t6uXOSQDXS2UJ1O6jpUhOXYstXxO0/H6x2XH1SMXnO4Mwyw==
X-Received: by 2002:a1c:ba42:: with SMTP id k63mr11203124wmf.71.1584106175901; 
 Fri, 13 Mar 2020 06:29:35 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id z19sm17576705wma.41.2020.03.13.06.29.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Mar 2020 06:29:35 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v1 3/3] dt-bindings: iio: adc: rockchip-saradc: add
 description for px30
Date: Fri, 13 Mar 2020 14:29:26 +0100
Message-Id: <20200313132926.10543-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200313132926.10543-1-jbx6244@gmail.com>
References: <20200313132926.10543-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_062938_273710_F5C1A91C 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, heiko@sntech.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description below is already in use for px30.dtsi,
but was somehow never added to a document, so add
"rockchip,px30-saradc", "rockchip,rk3399-saradc"
for saradc nodes on a px30 platform to rockchip-saradc.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index d3b78604b..5f398d882 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -17,6 +17,7 @@ properties:
       - const: rockchip,rk3399-saradc
       - items:
           - enum:
+            - rockchip,px30-saradc
             - rockchip,rk3308-saradc
             - rockchip,rk3328-saradc
             - rockchip,rv1108-saradc
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
