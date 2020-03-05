Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 412BE17A7D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:38:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7ltRPk85QKDkkfVF9maWDIGL17PqKY2ZiXLGkmGVRfM=; b=b4XcgBJGr+0qTBgjQIE9sL2pPx
	S0GME1WVDpktkoqdeJF+CKJ02C3RezxMuq5wBem8SA5AxeEa4J4Rs0rmZk5Qjfs4LtoB9BQcT3vx6
	zWpCv+hqCcdxLIwyusce46RLo6wmhLCfNFOr8EkFwyNvLuOGSo/UPEZtN0yTeY1q3N8genJNGJkft
	htz0MWXLqg9AHN0Wqwbfx+qC55OTUzRglVYZXF8tGj2q4gJv4ccVj6/pCmwzJjteBOyu0m7M7gj/N
	vzfot+QPlsrnUZtfyGAGCMnN91cfYltg/+3u7Xi0FcAJDDCkHgJ7pa+B5/PNKx3V/2CatylfF+aUc
	63m1UkDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9rdF-0002nM-S0; Thu, 05 Mar 2020 14:37:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9rbu-0001cN-4N; Thu, 05 Mar 2020 14:36:27 +0000
Received: by mail-wm1-x341.google.com with SMTP id g83so6002990wme.1;
 Thu, 05 Mar 2020 06:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QlXzIeykIQUpEBdYcwxd+wvAWmRVIxL3eGhm6mPv2tU=;
 b=bLCvUgvqw8iVKbPkM4EtHEjlr9hoXI6ts2HiI7NyS33acPByckia3FvdKNdmCw+shk
 dzqU7y7L3wfAuvNZSkXea2DmXqj9gOftfhhf3HnhWtGd5rQgdfsWBmyIvQpcTFftHPYr
 Yy2JE8V7sk/cTfBwh0xdC4AX7qlqgQAqPpUyOikjfX4/zrT0gDtySOja6ziWgHJZS7TF
 THFlRkQYf2xwcxogTqSRleSo5Tsxrdc5y+ksVnpEU38JWpZVU4NbBZH+hSfcYeqZ3oto
 inPT+91oHpIhwEjHmow5anaiUDsBUjQPRKyQv7iJ+9RFwOB7JR28vmSJIx7EqUGuay9f
 X79A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QlXzIeykIQUpEBdYcwxd+wvAWmRVIxL3eGhm6mPv2tU=;
 b=tuZo+6XHTt2scKkmfKmhNMpe13/vLVgfWu1ixuiVyXc2KDhSHol5+ixhE1F6NlCx+R
 33lLmZ2YBshvTXILZ7DQLKcGdInIWGaRKAFlMb6KgNavtLNcN03a+pmnXcZNg0dT3ndi
 Cqmc6g135MGNp2tmOMhkESzrKf6DEOvSipc8363OhhZsmLnXhyhD6NZlFAKWRzud/38y
 aOQsyyjdtv2lzSKHZeAjIOhIkiSiOlM2I9lqxTezenzZkRpz6d3h2cLX5ryNgXf10yyB
 eW/BhvFDL3wh50x04dbHdgjmvYWHjFkKSuWeJim3SrhwVaxa1v/D5q95UO0hJy4L3b4D
 z+hw==
X-Gm-Message-State: ANhLgQ26kp8OP0u8Kzm/W0fk4+fekMXyeXCegrCcfORKhrwEJYXJyAnx
 vaqqvJnxeeiTtMdVKZ3zvK0=
X-Google-Smtp-Source: ADFU+vsdfwf4i6qjYFXBcYbvtQoEzb0ZAfQyCvkvWDrzRecAr1kQ48Dp8uEzHOKDHtF8X0uY5u9yIg==
X-Received: by 2002:a7b:c3d4:: with SMTP id t20mr4123131wmj.102.1583418984953; 
 Thu, 05 Mar 2020 06:36:24 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g201sm9365124wme.23.2020.03.05.06.36.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 06:36:24 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 5/5] dt-bindings: i2c: i2c-rk3x: add description for px30
Date: Thu,  5 Mar 2020 15:36:11 +0100
Message-Id: <20200305143611.10733-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200305143611.10733-1-jbx6244@gmail.com>
References: <20200305143611.10733-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_063626_175553_D7579CBB 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description below is already in use for px30.dtsi,
but was somehow never added to a document, so add
"rockchip,px30-i2c", "rockchip,rk3399-i2c"
for i2c nodes on a px30 platform to i2c-rk3x.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
index edee8f699..61eac76c8 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -33,6 +33,7 @@ properties:
           - const: rockchip,rk3288-i2c
       - items:
           - enum:
+            - rockchip,px30-i2c
             - rockchip,rk3308-i2c
             - rockchip,rk3328-i2c
           - const: rockchip,rk3399-i2c
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
