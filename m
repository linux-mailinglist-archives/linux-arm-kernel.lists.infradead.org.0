Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6663417A7BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=khSd19p8Or/Ks0LY+CVZ+BpDUijWKTWKtlDhSPR1ryc=; b=GQvKQntQNmf4GaKvLcNWrjuYAp
	scJz0I7gKnc0cqm+931T4C79gJHcvqGlRICXyJnWrB7xi2deomxynGJr+mBdT/ro5zW+/1dZIYga/
	fXWvFGPobJSRm3wLEUolVHiGE1azf3chRy/cKviNVEauS1NvQE2ODjMegYTNA3cjvx1xCb4kXKxyn
	LYaczThqNeuwGrfnJ1Aq9yD1+64D9lkglFzpKHj0cpfAFs+qNuj/6H0ozQswJyD7j/XannPmq879J
	wi6yfJA1XbBEgsSrD7GktuMV5DNuHik1vxxBiEU6+pMsRZ66wXdBaAbs8J16lQ95BaXUd/U30Wm4S
	xVseL6Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9rcg-0002Eb-Pe; Thu, 05 Mar 2020 14:37:14 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9rbt-0001bD-2U; Thu, 05 Mar 2020 14:36:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id i9so6576645wml.4;
 Thu, 05 Mar 2020 06:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uFpuBBMUDRGLySlw2LJfDDLm6H8b76IieodfF2vnzXM=;
 b=Kta2qzw1d1E8RvneBZj8HMEMVqounDkPjTu1e2EkWI3hjdVg+nSI/vQLcrDc+bsK25
 hpT8OWlYEh7M3lyAmx4iyVg1RUyJyQAYqvkIhYsqjUxrddniWhdn2c0wGNr5K2pIWsZV
 MXm3KAcY/SKN+i6GfwPeI+j0+rA1OvGRv/3tv3ZlFk3sZNajlYcgR0SleOPh6+gDWp7k
 OcFSjN8xHJVMMbazkB0XWWr5RwAcmX7B+PKmrpXoFyr1buGIzVo8ZhgeqiHmdk9NOc81
 rb+b/Q0CliAZ7VUoRLF+U9a6K1rI1kNWBmG1ZqVd1TNna6tnzJePbz0xS7glMqXTkon3
 Dnsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uFpuBBMUDRGLySlw2LJfDDLm6H8b76IieodfF2vnzXM=;
 b=qV3O75QY7UUpWynpZ+w9rOBzZp+ukXumlW9yDpla68j0vo4NGTBtAVQCFNz11wTS57
 HrZryVX98FUyqMkuCi89k2Pv9Enwm3f32d7Q3FaJchMhctIOQbmVaPYnBXAv5fPmG6O6
 JJYpih4MUPZs1djJNOWyqQ/sqPZNenUOseEO8lokCJds+1+XFxeQFMEsNIHJiOHdl5bw
 IT2h57EsrjOWgklSn3/qsqHcyWH4FIOk6GVu7dRIxZnuM8Jo91qm2t4wK9nxGyN95yFs
 TdFA62BDGHK97E4NgLew2V1WI2uqfQYk0UzxXrsXNn6cIZuGrLpfZCx2Lj1BLfU44GnK
 jdaA==
X-Gm-Message-State: ANhLgQ2B+p+gO2Boyg2V8BGNsNvxJ619sT082LDOHva4ShSD2/QHfM0B
 3eHbLGMQQRKOnHXFwtfWqEE=
X-Google-Smtp-Source: ADFU+vvsmmrg7ZLun9VSaqp5UjO/yXs+1arXJoFVq6y39FuhkgNuvHyEwjKoto903tolYaS7Zcpzxw==
X-Received: by 2002:a1c:9602:: with SMTP id y2mr9742694wmd.23.1583418981555;
 Thu, 05 Mar 2020 06:36:21 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g201sm9365124wme.23.2020.03.05.06.36.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 06:36:20 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 2/5] dt-bindings: i2c: i2c-rk3x: add description for rk3036
Date: Thu,  5 Mar 2020 15:36:08 +0100
Message-Id: <20200305143611.10733-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200305143611.10733-1-jbx6244@gmail.com>
References: <20200305143611.10733-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_063625_110638_121BB194 
X-CRM114-Status: GOOD (  11.08  )
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

The description below is already in use for rk3036.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3036-i2c", "rockchip,rk3288-i2c"
for i2c nodes on a rk3036 platform to i2c-rk3x.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
index 962aefb7d..0bba39998 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -28,6 +28,10 @@ properties:
       - const: rockchip,rk3399-i2c
       - items:
           - enum:
+            - rockchip,rk3036-i2c
+          - const: rockchip,rk3288-i2c
+      - items:
+          - enum:
             - rockchip,rk3328-i2c
           - const: rockchip,rk3399-i2c
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
