Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1071B75AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 14:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJ3EzxtcNd4IN6AzRCxzpigF1EWtduIoaTx2FO8agJc=; b=der6Q6qIWMBpmh
	qYxyK+FvVuzHh/G+N2niAsFZ2GnLgjt1m+jYB4mRsP1MbYMs51UyFUI/zrPQTuQMw/i1CojkE8rXd
	yxtYxJlZKpU9OAyHb6Kg3GrOC3iSeW3FL/iM5KofDzmvbPclWWaiGNihULePmX9xEDp136TsFW1DL
	VNAz6IQ1Z7xm6GaLqtNQxyDw2Zm/z1ozEYfUOTCgsImQwvQyUE1RV2I383XoPQ73f8LuOg9B7rALf
	Kd8UdyJBcf2+tWTt2Xp4fOKhA3UxpLE24RSWg6eCHnsS3MGsUHBxuzzk+ZUFDnMBxFQisgsVc12Gt
	i36LQRyPmkf6WtODz4Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRxhE-0005j6-5q; Fri, 24 Apr 2020 12:44:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRxgk-0005V3-OH
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 12:44:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id h2so10283955wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 05:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xOdCgu/2Jy1tRi9zrYa6LH0k7m/VVjyha5EYFTG8NAo=;
 b=Fqx8dSb4SMac40DSvMTs7OdAWMYlayXuzLjkXiSvM/Hffc5WJknmgmnXLrrTHKpn2X
 0LkAKofMeSpQHMPvFNZSJ1Muv0cvJEXfsrkTjZ8le0kNVd10v/kh0p0mGsoPn/Sd01EK
 BE4vRSTePinMwUD/eZb/gMQ9AqXloYjTlbrsEFUpRzRz+z56zW9PSXgllsk4vUpjv9J0
 2PgpgaEiqX/z+UR0BmAH9WVGA5kwS3s3kxg1mBDXq6nkX+IFlROXk79HQnmAlz300v/j
 QxJCl5BQ9xbhC1Rh/MZKGylXN4Uj5ZrtMbxDzoDbay3FocxYJ1jarsL12w114sDejED0
 CeVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xOdCgu/2Jy1tRi9zrYa6LH0k7m/VVjyha5EYFTG8NAo=;
 b=pVyvBFNIHjBmjPVFZ1WiYKAT5eLAuWK39gVlBa7YBq+t+i8/vcaJ6rJ9v23oR/sMfY
 IPDuNjKCnr9N1uc2nB6bpQSRLWhf1nuzD/52WRCxP+tQ6BOcKPXZMOTw2uitNQkiNqDS
 0BneqVGXCMIIyitWiaen1RXKWHV7nZsTQ+XEL+qUZ62pqzx+8GJTj2kMsvogZevJYbzf
 5YoTyvWgb9/CgRSGt8G7ZZajmaErUuEhx+XVi/xhDs+OUeGCZbdLrW0zni73bwBoQmu/
 eaSViF/hKzFpZtwTLe2Zar0/sEtYN/tGpNnZ8zYRQKymgKc+ey+TVVrr7siJH9hqqtZU
 rmsg==
X-Gm-Message-State: AGi0PuY5qMT7SJwwpF7UcVjMdsHWtLgL2BpIb/QJ+xLkt26x096OwALI
 Pi3vTw67rdROV/XcnGxc81BvFQ==
X-Google-Smtp-Source: APiQypI4uWmGIsxURAuSlISBDYaM7+FkzOgegq+RzXjv0ah8X7qTCaEjsrJvykKg8cNJ2UGbrdaBFA==
X-Received: by 2002:a1c:44b:: with SMTP id 72mr9777439wme.58.1587732253434;
 Fri, 24 Apr 2020 05:44:13 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id
 q184sm2692689wma.25.2020.04.24.05.44.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 05:44:12 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: amlogic: add odroid-c4 bindings
Date: Fri, 24 Apr 2020 14:44:05 +0200
Message-Id: <20200424124406.13870-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200424124406.13870-1-narmstrong@baylibre.com>
References: <20200424124406.13870-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_054414_782959_B3878E43 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the board bindings for the Hardkernel Odroid-C4 single board computer.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index f74aba48cec1..11908b151e0a 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -159,6 +159,7 @@ properties:
           - enum:
               - seirobotics,sei610
               - khadas,vim3l
+              - hardkernel,odroid-c4
           - const: amlogic,sm1
 
       - description: Boards with the Amlogic Meson A1 A113L SoC
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
