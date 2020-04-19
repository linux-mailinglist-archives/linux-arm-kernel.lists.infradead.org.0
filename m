Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9B41AF761
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 07:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tRCHAsB+Q6QV4kjfqAN8S5cPN2V42kO6DvpFimU2v4A=; b=M87D8uJaI9o4AkAbxtbya/a7+U
	1TDKiVHXwjA8G7rxceQdULBfW6OD7rVezc5rujx4lBzPQ8hPGCkeizSD+7EClVZFlRfAgkp6X5Jne
	CZMYKMgtwICIZgMvP8iw3P9m2xtQxiEKASs8Fpe/z376qqPq92olr8x7ymFKLZwB9Yz0bOcvxgiwj
	wI9x09gamnjKXe7U7v1NCpsSgRQl3ZvlkBbaiqGQnmMNjUDUEeZ4wyZRgT6XqyAJRtjiFFo3C2H0o
	PnhZGYNai3oetXyOwKJr4sAV8alCBgt63Vc4CPbZU2aXWsPCwBtLfuyxowzjt4jBKS6hiKwebO2yu
	ZGoUOLFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ2uY-0001Uq-2z; Sun, 19 Apr 2020 05:54:34 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ2tb-0000ee-T7; Sun, 19 Apr 2020 05:53:37 +0000
Received: by mail-lf1-x144.google.com with SMTP id m2so5193972lfo.6;
 Sat, 18 Apr 2020 22:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xFwe9ZwouejBf4AlmJwEBZFdUiqcwR+jV5dE/3vh35w=;
 b=ZNgqJVtzaRN5PPPIigiNaHTejpdnCylOekthURv06SYaJv3P7pn/ERtFEaXtNJhkJS
 BQjAXPCkZdLwMIvT0vKyzuNgftX/NAvH3gQTIM0jxHTob9YST/hWFKXZVr5BwS/mJ3Pa
 +y+FtnEmGgut4ZZBZbMno8QNHja+PqECz4wEdekBD+JYoTX2kKElnvyO+9KxnWLO2qPE
 dqJIkQuFrfmwXcm6G5xjtNk1iZuGTtgzeOtGZAsXr4wS7Vxq1kMJlMkQJukjtVRclJv/
 SjFnfiLpVVhk4WV+MjcWrVg6BVjNdRinozLlSnHnGEOdlfqA0Jajz5CPV8zZE5tT1SUB
 U49Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xFwe9ZwouejBf4AlmJwEBZFdUiqcwR+jV5dE/3vh35w=;
 b=hKtfEGTym08XV/ytI29HHalOfQDCdR3GFuqpedryb9EQciO3tPClCbHP21Ni+Y37/o
 bRMqtFWtfy961lisnt3or2hOiGUoDe9ncdEHtVnR+/aXkPjqRweWvIs1MEwuvLFMKDuf
 E1Y0PPddhJM4jc2bzHGj/zLAOgkGDqDZ2Rjp33pmJom3iueX9TgI3PQB+O86g3vPHqKC
 6WI8WocwJN0uHssVKxVcFlkhqC6/6w9JuiOK5wa+xLs39S60QW1xU37RIkbbl5DjBiOh
 ks3M7xthWOn4+OgEnNZpMvMJiWyVn7ZxIXLf4DDVX3MiE44ou2HiWdlbjT0i5P31zU5/
 pqXg==
X-Gm-Message-State: AGi0PuZ5Qr6dWHhXUhpbAIHMpf8DS7b8mFbJp0WhTIsjlTIltIRU4hs6
 u5xmfDfnwuW2AzpUwEQf4qI=
X-Google-Smtp-Source: APiQypIioYm05i3CpljKQVso1nnH5eeIqBtCIE/EOLm5YSWkwdB6a0iJBxTTdBbfUBFxtdOhly4jTA==
X-Received: by 2002:ac2:4187:: with SMTP id z7mr6678820lfh.113.1587275614312; 
 Sat, 18 Apr 2020 22:53:34 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id h7sm3366247ljg.37.2020.04.18.22.53.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 22:53:33 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] dt-bindings: arm: amlogic: add support for the Beelink
 GT-King Pro
Date: Sun, 19 Apr 2020 05:53:21 +0000
Message-Id: <20200419055322.16138-4-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419055322.16138-1-christianshewitt@gmail.com>
References: <20200419055322.16138-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_225336_252851_5B49283C 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Shenzen AZW (Beelink) GT-King Pro is based on the Amlogic W400 reference
board with an S922X chip.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 6bf9bbcf4968..215e0668663a 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -149,6 +149,7 @@ properties:
         items:
           - enum:
               - azw,gtking
+              - azw,gtking-pro
               - hardkernel,odroid-n2
               - khadas,vim3
               - ugoos,am6
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
