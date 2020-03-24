Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65731190D91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 13:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KrLeqUgkBIUyOc9xfe+zkiAemyk7O/SKCwqeMP2hnYY=; b=lI7ifvTGnsilyq0PjxVeJRiFdi
	81GjNA3EjmESNYN7LN4IoRoiXLv6fKBxUSF4ENVWdVIlLFCzXODg+vGCghGh1oFL5cRB2wybG5UVz
	9iva/NoC+E585vVsN9xtF7a/6MVyG9lEMAIk7diTIjK84jiXH3sKtZrJpZj0/efkVC+kFYFWWHcBt
	9Ip83zRwUKOREBNW+6IGZMV/p+/Jk5ObIu37ePnidFes6LXO73QJAe1oBk6cZ5oTMD5uRrpMwcqdq
	Uuln6/+n/YXaKZTPca2kBwwbyaQ0ZRTmk01YJGP4hDJYbkIikSlcqp58KzRliLXd1qRQ785FfoSH5
	+ZaQfnFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGijf-00045v-Vw; Tue, 24 Mar 2020 12:32:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGij0-0003bI-98; Tue, 24 Mar 2020 12:32:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id j17so17790524wru.13;
 Tue, 24 Mar 2020 05:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Q8xyTZiiURMuZz55C+lV5frFi0juzWLh763pjmleRTI=;
 b=XvEENzKw2wGFTbrDGRT3ml/i9ciXc0tz7Wabz9yXGUzdkYE4+jwsp4Oz1tZnNsOQCx
 RmPmOt4EITNYP6enElBEOeeXIbsROyVn/p1lqndCXnzohUIBGvGRb/tiN60CTc0I7iJD
 l/pmAsVQna4eQPy3zsl1/eAfMPmPFeItIjs13dfnfRxcuhygA1DmUnp6Vu6Qm9nrK95+
 C6KCyFvUph3EfIxZqM3ZoEDoFrelVWO3c2sdPswtZjzNRrhkihhX/2HLq+yNX0gom61J
 zOVQeIk0PYGQCuoLabwoEAX8SlcTWE0gGuPQKBMgrN383EZ+iVcL4ZkKcqHdJOK1Htk4
 62JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Q8xyTZiiURMuZz55C+lV5frFi0juzWLh763pjmleRTI=;
 b=NPBQ5IYqlsD+oLJ1Rq8Yt15qnq9EUymtdQlitg7MXZosufhCbmshIqpNzciT20diec
 LuPaqNZr6WajMf5C9VPgtzjVQ2UnqRNM2gDze6WhLo6ZXOOBftL/2rK/MLzMq16M2G91
 jWyb5QG12AwwKhvsEszgPJnP0eheJgp65e6rqqe6uiBT31S5zmy+I3tUnBqIenkxkzDK
 wAjFpGPhL3qIpZhsv6Cb0szw69id1MkL6ewo8Xwhv7J+iaNjzekzai1jPSkEBb5d1tZd
 Hvsk29ursh1rlUeorIk7BTbxRTMFCL4TK2bkZGC9v2gqmlU3OgKw+V6qSm/4857xtTRW
 OmWQ==
X-Gm-Message-State: ANhLgQ05NJxZo8OOpFh+RJaYMKimRzwuQpnv3Ri3QIA3e4gnAplfxdLp
 lY2NjU6qwpMOhE3FhWmTd9I=
X-Google-Smtp-Source: ADFU+vspS2iaiHICA89DEah3/meoLs+mzhJGZMZqXh2WzZtOitG+ZLB8tygXug0W+SCEjGmNzcIUmg==
X-Received: by 2002:adf:f892:: with SMTP id u18mr27024616wrp.367.1585053124710; 
 Tue, 24 Mar 2020 05:32:04 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k185sm4215029wmb.7.2020.03.24.05.32.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 05:32:04 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v2 3/3] dt-bindings: sound: rockchip-spdif: add power-domains
 property
Date: Tue, 24 Mar 2020 13:31:55 +0100
Message-Id: <20200324123155.11858-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200324123155.11858-1-jbx6244@gmail.com>
References: <20200324123155.11858-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_053206_316438_AF65C676 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the old txt situation we add/describe only properties that are used
by the driver/hardware itself. With yaml it also filters things in a
node that are used by other drivers like 'power-domains' for rk3399,
so add it to 'rockchip-spdif.yaml'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index 0546fd4cc..f79dbd153 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -51,6 +51,9 @@ properties:
   dma-names:
     const: tx
 
+  power-domains:
+    maxItems: 1
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
