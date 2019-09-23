Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AF3BB610
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 16:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HzU6jVH9eh37d1HE3aX/hfTngbSGNpBXVVRTN10HhJo=; b=FCRHunR518EXGfwwtm+51zPs3K
	1dBnhBm5w90P/3Fdfd/2jCBERuHGnk/IQ/SVdH+QNJ8cb3mtsCMizd3fMshH/JwzIF4UwjDy5I9x/
	aDQfqmO2+2gko33tUaR6ppJbFdIQNzX5M3JNouXlXODvPO1zbTW1z3Bf8JXjJYV+DghqxYep4HeOS
	e0uncEvQ9xorhYZWDReMAmCseawAbcNzU8zyNnNq87hdHaM5H6E0fUvMn7jAYO9C8wAssOW9tGQ2H
	f6+A4wjdgI2e1dcNMyIEIT2N25oEnSrSpwAfgDnLGqoYC4Q+SZ5H47L5RdMw9Hqi4XRkWGgkk4RBW
	JdoNqh2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCOsy-0007Bc-OQ; Mon, 23 Sep 2019 14:00:17 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCOrc-00064u-Lz; Mon, 23 Sep 2019 13:58:54 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5so10127645wmg.0;
 Mon, 23 Sep 2019 06:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xDojPBQ0esilIp1GUWD6dVVMPDHyVZuOXZ5O6hXNfas=;
 b=PyBmnvGAVmeNZXVQCdhZuMm5xmUKjafJcs39w+VF3xZRW1ukATZ9MM17I1J5yZNxWd
 xUXioii8j849Qsr7+EivroplglGGCZmkQFXoQ8fVDUs/smlVzNX0ym7X/kShnNnWHB8V
 1Joo5oMJhn4DUS2E4CZgWJvij8n3nb5xNxJd96p0X6zQPPVfWEUFQDuNCLIXEAS2/a3a
 F+NDc+WB4bAOsDhi6UWEGLNKXBHwi93vC+i2ha9Snfv/jB94tcyK3Lyr/suRBfoCIa2m
 jVIGyxhMZqkJRUVn6UDhL+BT4Envnv0yumFDIlBfCM90X6Tt8lyH1tysSSG4FfA9c44E
 f5Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xDojPBQ0esilIp1GUWD6dVVMPDHyVZuOXZ5O6hXNfas=;
 b=sqeqwb/T4JgK5zeiasEzigZZ41XhnlNWH18a0KmF9WUpegkxInmfsBgQEFz1WllUGU
 2yCp1TKuM//B2rck+Cteh9r40raE0fjCjqnhJC0xi/rOHezEC7QlSiY1EyVD3JXMyx5o
 6zHw3j/Fr2FsyBUZ8+CO5y1ehfMJ+A3CF+VlQ3uRtTknIY87IAOqgzjNnGweJ5stiCxa
 /AUzRvWAoQ1IG5LyeyUAazPmnKTdpbdrCxIwtHfCIBNTNSlY6kAY0rVeBpii3Q669mdJ
 3YjjumZVmBxM555oSBUQLH//Iqnsxvm1aYcVT8DiKUAaYsT9na6rFUM7k57MIQsoIvcv
 fRUg==
X-Gm-Message-State: APjAAAUz18OsGhx+iNJw7r63AT+6O/WuyNyV8eL2R0GMB3NgjEz2LGGd
 lnitae4mmncClwSQY58GLio=
X-Google-Smtp-Source: APXvYqwbM1mVAeEhkw7RAsOqpdjVQEUzhYsQX0hZyFely5cFNmwIhidNTc5umAi2fF9q96DYEPgpIg==
X-Received: by 2002:a1c:1b0b:: with SMTP id b11mr638211wmb.82.1569247130847;
 Mon, 23 Sep 2019 06:58:50 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id h17sm25266184wme.6.2019.09.23.06.58.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 06:58:50 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] dt-bindings: Add vendor prefix for Ugoos
Date: Mon, 23 Sep 2019 17:57:55 +0400
Message-Id: <1569247077-5212-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569247077-5212-1-git-send-email-christianshewitt@gmail.com>
References: <1569247077-5212-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_065852_773118_15FD0562 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ugoos Industrial Co., Ltd. are a manufacturer of ARM based TV Boxes/Dongles,
Digital Signage and Advertisement Solutions [0].

[0] (https://ugoos.com)

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6992bbb..d962be9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -965,6 +965,8 @@ patternProperties:
     description: Ubiquiti Networks
   "^udoo,.*":
     description: Udoo
+  "^ugoos,.*":
+    description: Ugoos Industrial Co., Ltd.
   "^uniwest,.*":
     description: United Western Technologies Corp (UniWest)
   "^upisemi,.*":
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
