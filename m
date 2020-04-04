Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4031319E47D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 12:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=arrWBpRSlkp78JBK8DzExcL82FZqQ/rNP5wU4yRYiw4=; b=q0Ny8wByRCINwLOzmC5mYEqoiN
	6LXivBV/Wh3bU/5+qw8mjEl66z4ogcXk5IailBTVOmJWnJxE98OVRvq+iCN/hhW0cYaZAYN8rADPL
	Lz2Fcig2kKX9Yqr9LXOAEVsOImtfCN4w29P0E1vEoqJSeQlqTA5SB8nNLWfLMjPhHrTwh1g5FD/vY
	HV642iq1L9X8lvUsEhq4tFyPR+Sk4y+y0LbKHim4T1+US9W9EQXb8iTpbVqD89NlYP42WotGnfOIV
	8jdLwO1GkRogYcRteHwgutLVpv9jFFc5wGZT0rJKySjyzeycRjZKntCk+hK00Xqm+1PcaLbIYnwTh
	9oy4WOVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKg2Q-0004Yq-5k; Sat, 04 Apr 2020 10:28:30 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKg1j-00044B-Li; Sat, 04 Apr 2020 10:27:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id c195so3966129wme.1;
 Sat, 04 Apr 2020 03:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LKn/T/YOjm2g49N2GnTJO8IqVO2wTeZD3GHQLfr9788=;
 b=dtRSXMGhG4s18xOq7nSqtCjqkc4ylms0u0M83uQs9rrN9ymNzrG/RR5hIC1Xr5vlND
 HVpogzca5XksTkmZg0f8SU1Rc/9gXyOT3yvCbWRV44j51FJjThSZVFH63vTdk9HFx3uY
 DwFS9xNp3YQKmjmd5suKwSBEePJjZInMSaMQt/GRVw56rmIEtesTPYU9c71qJi/+cs8z
 P80A6ZMoUOfi0WDp2Zaa1XnxFae+FsgY+TLmNvGbYZXZwIAL+WLeh/tTMZirwziWkITb
 Joux3aOdYMqYUepG5nDeb0ZfbHb6Ifoo7kdX4IsFG6fR4U+AF8ujKOfEbOdcwH3s5JPV
 MfYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LKn/T/YOjm2g49N2GnTJO8IqVO2wTeZD3GHQLfr9788=;
 b=nM2Phglv2oiOecA8aOfsNcYWGp9vfSJNBwlpEzn+nvallWHbmoIYH8L1+9vr5UmJ8A
 avuyoJMROmFhN6AoFd81hMeUVSD9YjhFVBQyFMJbSrmpULGwqDHs+WOxmRlqKFeyfX+h
 I2o6vTQXH/fRAzAjQOVpKWcFpSghbkkMZhPwcliqQLLQ+2K7KmIxxVBxZMQqxKedRNOG
 Lbo1f/4N4G3RLdlelY67fHCV6KBv2kdBB0ZEhHfmwuh2ObzV9tjIBjL2aKuoz4m2HWz3
 2bFJY76XSwRgtospNjjvsKib+/Cg2G+G2iciRetRyc5FH6fY8HGd5YJ/OEGZvbf4DRVU
 xM+w==
X-Gm-Message-State: AGi0PuZkL7J9MTR3qvd6He05AuZcCjBz8mdeIGXLky25GRX5qztpQ7Ni
 Wqfx674ResJj/wtQLZi6EBk=
X-Google-Smtp-Source: APiQypJ1TtPTEK86zb3XBL8CXguASyxCagcMjtYiJSPZja45TmT27ARgAd7NnAbtGutgz0SpzfoZCg==
X-Received: by 2002:a1c:4805:: with SMTP id v5mr12759826wma.98.1585996066182; 
 Sat, 04 Apr 2020 03:27:46 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c18sm15833178wrx.5.2020.04.04.03.27.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 Apr 2020 03:27:45 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: jic23@kernel.org
Subject: [PATCH v2 3/3] dt-bindings: iio: adc: rockchip-saradc: add
 description for px30
Date: Sat,  4 Apr 2020 12:27:30 +0200
Message-Id: <20200404102730.3295-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200404102730.3295-1-jbx6244@gmail.com>
References: <20200404102730.3295-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_032747_709568_40F185AA 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Acked-by: Rob Herring <robh@kernel.org>
---
Changes v2:
  Add acked by
---
 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index 7653aa480..bcff82a42 100644
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
