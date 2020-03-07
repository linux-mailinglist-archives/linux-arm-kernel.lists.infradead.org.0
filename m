Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB4417CF3D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 17:06:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=T9yDVYR0089sjuQVWAZZ1lPaKV/TwcDUG0GmkBBrnC4=; b=aKk
	euCImOEwTks71AXNCNNiBC8726rZRoGR7EwF40e6yIomYl+AVdoj4Vj5qjimYENBPvC1FER26O7nL
	fuF7y5L+rRJGFMrK+/xZnm0h961vFOfXcZ88DQozL2GQKlMyYJEo+hDRfbRez8fcWI+E7UfQb+os2
	2TvWGXHgaDv8q/hkNO7y+2s4xT0Jl+ASSlL49o4VT4hgJ/cQdVs7Yr5j3Oi7kd6xIE/g1JykbcrML
	kQByOVUOhH5wQdjGlteEE236lzOIVShAkA0vg7KSpg1zx9wSxKCHZJOoI0AzzFUbEvkQCQ6M3Sr3y
	W45yMBbLXKpn1nXqKoA1JMeRyz4NBFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAbxt-0007Xr-0l; Sat, 07 Mar 2020 16:06:13 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAbxm-0007XF-Sy; Sat, 07 Mar 2020 16:06:08 +0000
Received: by mail-wr1-x435.google.com with SMTP id n7so5842227wrt.11;
 Sat, 07 Mar 2020 08:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=iAetEvZraiflUEUc7nvvm8pl55tWCvaIeillv2HHKY4=;
 b=RY4MKxaSmII1woTtclCslMgTGxlofSmYGl3WFzVaIKcUYL1o5RIExjEpCmugp4szQA
 pnSfn6kQwEjA920C4NsfvqYiGQpOeXPVoot14HAWuRIIgHEjyA5f3/vkg+EYGbwD+DI5
 f6ha9Pk8t6NbYSoWJD+Y/9rgfM6ZOdxABsDu6mdEk/wO89+pBZUuL6dCdHCaX3z11lVx
 KNUgvmHmXlbCpOLFpnaN+oK3Ppyjt0Q8YbF9qP1YAOfzMFIlEFr9Ms38QRNxPwdzAkgx
 OE9xcgVoZ+WSzP9c0LDrpQbFUHgoUzCDx6Syr2EdVHdhtMjO+3hcziTkuITm3mF+B9gy
 1LXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iAetEvZraiflUEUc7nvvm8pl55tWCvaIeillv2HHKY4=;
 b=tg9eBBNXOiUd1KZJKZOrBo5n2C7eZxJMNTC3wI79BWA44fNBGz6r3Y/4/u8K2buJvP
 0oqWrfkdsivKl+Vw+wcTqtN6hPmfjuzj+GcMFh5n19F0AtH4MqTPuWaGFGhuorQCJBVA
 c7boN6FNgIB2R0b6UBxuqNnm2wdZybgfWYeyO/W8TDOSKjCNF+7uTcFwoFgnewv5iEb6
 /EEDKKNtzl07ULMkXxCe+YUtdxWWvt0yDnDm+aakkxm7y6CjWypdV8xlELvJ+O+mvUWz
 rWzIV6Ww2Qc0/YL0COVQuUXh/Re9txmSQfzpuNBskuDRGE39azzkvx5sTsiEEMu47ldH
 dNTg==
X-Gm-Message-State: ANhLgQ0voXAq83bs85Zn/MZVEe2QmOqhqo+LmtzRubG9LYyGDD9LrPCK
 e2ucoLim7qBkp6RKWpyhZgxfbfT3
X-Google-Smtp-Source: ADFU+vsORIHVIXY/NGjz0qd0dQ3z+z+LGwdJWHv2GehbGa7/k9ONo/m7C/JJ4CkIdkadrGxj6NNxwQ==
X-Received: by 2002:a5d:550f:: with SMTP id b15mr10220750wrv.19.1583597163324; 
 Sat, 07 Mar 2020 08:06:03 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k126sm17555105wme.4.2020.03.07.08.06.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Mar 2020 08:06:02 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: ulf.hansson@linaro.org
Subject: [PATCH v1] dt-bindings: mmc: synopsys-dw-mshc: fix clock-freq-min-max
 in example
Date: Sat,  7 Mar 2020 17:05:56 +0100
Message-Id: <20200307160556.16226-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_080606_960760_D889A3F7 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below does not detect all errors
in combination with 'additionalProperties: false' and
allOf:
  - $ref: "synopsys-dw-mshc-common.yaml#"
allOf:
  - $ref: "mmc-controller.yaml#"

'additionalProperties' applies to all properties that are not
accounted-for by 'properties' or 'patternProperties' in
the immediate schema.

First when we combine synopsys-dw-mshc.yaml,
synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
this error:

Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.example.dt.yaml:
mmc@12200000: 'clock-freq-min-max' does not match any of the regexes:
'^.*@[0-9]+$', '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
uhs-(sdr(12|25|50|104)|ddr50))$', 'pinctrl-[0-9]+'

'clock-freq-min-max' is deprecated, so replace it by 'max-frequency'.

make ARCH=arm dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
index 05f9f36dc..dd2c1b147 100644
--- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
@@ -62,7 +62,7 @@ examples:
       cap-mmc-highspeed;
       cap-sd-highspeed;
       card-detect-delay = <200>;
-      clock-freq-min-max = <400000 200000000>;
+      max-frequency = <200000000>;
       clock-frequency = <400000000>;
       data-addr = <0x200>;
       fifo-depth = <0x80>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
