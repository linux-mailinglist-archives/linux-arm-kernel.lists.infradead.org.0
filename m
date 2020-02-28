Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 835B11730E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 07:15:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L1BdRtc/cj/fTjImne/Aj8IsLa0Na1iHxKyr/lnRnO0=; b=gRkTPpJesvYcVJzIH/VpSLJZXH
	TekbJ3SlpclK8PKbs0FfUDTKUfwOyTe8XO2KKrvW6D9+sJHo9TJFZaEpSY6DiDqMOP8+jWRe1LF91
	r0XhOrkTHYFEAdVqUBNqteovcPAZ9KQb/VbGLMj0xipiZfvWSXVrQd1/eziV6zck9kJfVMYSUI0H/
	5QzrjZX76Jj3w7itUuh6bfIzCBzFahXFAKEdtNIhEWjT/tgV3ew+EiVESBQ2QPB6mX/PFwJrM8lbh
	pqwVnv8DWZA2KgRgPdVjifJcgVFzP/YfCleUpmgPOyxAG5GYG+1RC3aMpbj1a/COZB/+IjF2UWSve
	xlVRfaOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Yw2-00023i-NZ; Fri, 28 Feb 2020 06:15:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Yv8-0000Kl-Di; Fri, 28 Feb 2020 06:14:47 +0000
Received: by mail-wm1-x343.google.com with SMTP id z12so1932125wmi.4;
 Thu, 27 Feb 2020 22:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gnsdy3185ncPeDCu04aM13mod5LknXvQmY6PFV6k+Es=;
 b=sWbwqJ5FFtEag/dRIgtrIWnyWc+3s/A91H3JPqrpyB+iE6SQogJjDL1r+AI+DJ1EEw
 zWq2oGLU9ArISWq5LR+PH+fjBKVjSbZ5RhiLdJvxIih/TJMTzzvr2EYKbDddKTGxs6Zv
 SCSRivHvVGozcmJPj1za9jv4VireOKoEzQ7ZFnCQfZhGrg0hraklxJxjuMRUVTfqhJl/
 BZBPqNsqGvgx7sgSRJGQH2tFWSqtzozR4ckbUtxxAxXvGMvLachJ+JXRGvn+nMDPKZdC
 Onb6Ykx1imL8l98OALk5VZt9gTR9GRwY5YVUQpd84RXGUm0mzjd7otq3PudlpGQqerdF
 14cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gnsdy3185ncPeDCu04aM13mod5LknXvQmY6PFV6k+Es=;
 b=mihkC/qso5zzU5+tN7LuEkhgKK8QAT6CEhSFtM+YCzouKftj5V6PLhXqAFwVGk1PPd
 7oL8QgXGCkqU0YBqFghf5wabV3osAVFAmW3W6EUwwCxql6mkfi+AmXdo53BGB/cfFDMT
 /YweariJTAsaR+fVPZwx8/bcgJya/UDl4xeoG4kSupHs6mK4xAuJcLoPiRY37P/COzWt
 R/qpmPvCOR+YgWFyMDwfTtlCzXjHMNs7Z/ztyc2fEZblrLNh/iEQ73KbPZl0j9xD+G+9
 y2FK1Fx1xDDOKHBw+5lzKJF+AlsyfmkfVbfs1qMQBeAbXruXRYpsf2mpqlmCI5jcGWjb
 o5cA==
X-Gm-Message-State: APjAAAUd3QlbTO1DPS0ba99wdVJZLQ/pGPlmSS7GhsRjr9l/1vPgNHiu
 iLUTWLKLrVTk62ktp8r8fWc=
X-Google-Smtp-Source: APXvYqxvicgbrGm82t+XVd96YBTlzhDK+AmuO43jDyiUn5cCb6UCtMVmCCw2P8kKev3sOpHQ65zqEA==
X-Received: by 2002:a1c:f707:: with SMTP id v7mr2964697wmh.121.1582870484899; 
 Thu, 27 Feb 2020 22:14:44 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w7sm682554wmi.9.2020.02.27.22.14.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Feb 2020 22:14:44 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 3/4] dt-bindings: arm: fix Rockchip rk3399-evb bindings
Date: Fri, 28 Feb 2020 07:14:35 +0100
Message-Id: <20200228061436.13506-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200228061436.13506-1-jbx6244@gmail.com>
References: <20200228061436.13506-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_221446_459683_EF2F509B 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: /: compatible:
['rockchip,rk3399-evb', 'rockchip,rk3399', 'google,rk3399evb-rev2']
is not valid under any of the given schemas

Fix this error by adding 'google,rk3399evb-rev2' to the compatible
property in rockchip.yaml

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d303790f5..6c6e8273e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -509,6 +509,7 @@ properties:
         items:
           - const: rockchip,rk3399-evb
           - const: rockchip,rk3399
+          - const: google,rk3399evb-rev2
 
       - description: Rockchip RK3399 Sapphire standalone
         items:
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
