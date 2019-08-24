Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE0B9BC86
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 10:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/Rm0LtQpXVDtorthBo77sw5Hl63F+h+Vb7YNOTyVIHA=; b=l0GCJjrX2B7DHiGKasKbm71PJ9
	MMfOAt6O2VsrdDJlZjwfqivHzF9GqnohcFw+TT1oCpcxYxpeT1MYJRzFU1MNvsSgWh4eTPUrHqujh
	appWwBbxEcuY3EKCfI2GQK4mh5bK8C+cJoYyDO6NAfDIOA9eEcVgSz76JLhgNCwsj+EVFJ6Gd/Wry
	lZuuH0515WzEEx8UcxPRg0dBEJUiU8Bt9L/lCbcWFagfeT39uA3UN/HHlqimYh5eS2Z8l0mw9n05u
	SIShgvPLrzP/IdeHAD+ywBIdEvkk0glPEi9WFj71cbceNTh2XkSxpgh1wNRZDr44ZkHrGyn7hRG8a
	xTKGfSuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1R3O-0002RN-JQ; Sat, 24 Aug 2019 08:05:42 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1R2m-0001JZ-Q6; Sat, 24 Aug 2019 08:05:06 +0000
Received: by mail-wr1-x42e.google.com with SMTP id g17so10612975wrr.5;
 Sat, 24 Aug 2019 01:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8VCD60Jb/+pjJ/5tE2H1gE1kn+YA9VqYcdsUMqOXSco=;
 b=IRLobxtjE94mqtQg5b9qleFlE2Cr+arwKQzrAYp5C/aNxsGM14b/lZ2dMXxVbNthdZ
 RXT0JvYJ6VLojJQ8flXvXLfElikgys4OKbTZ7uCfTrS9kY7qoKCZvKtaDBiwsKuGCXgZ
 UCmQLG8DdYljPqGL/NcbUrObjhNqWcze/M5j/QvB3G9HjGnXsNTFWaVGYPEvW6ruhDzO
 cpXP5zbyqTl4tiNdFoVgtU7ThJt4HFQib+9ANuJCrVSYI5cPC0RTtyPo1TWsNeFbR0LS
 +08sNU1i4ZqzR+v61c9nMlqbsFV6H2487Xkw6JkTNt70sP0QVm496cIipNg531uk7kod
 T6TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8VCD60Jb/+pjJ/5tE2H1gE1kn+YA9VqYcdsUMqOXSco=;
 b=RCp6RDbeNwM6Y5zX9pOs4cRUgynT7wB3/H8kH0WkC/EU+v48BihwQj6Kt48ZJlhYIc
 +kS6EgKuvt6oPh0ykOrjIL2GXh+0jW65Oel5sEePmrbiaOa/wYbnaumrYsl2RKnM6jv3
 SFF/EMUDIHUsfCC0onAQBmV6goZZRQvgqTsT1uY6aJmquo9/ElLBacpP/HjDA8MpfcfQ
 YbEVuPti6q3R3ZAoYrq1c9PEjkRsvS+8jrVM7iPh4HT/1w6K7GymGcEASHG83nwBbCBM
 f34sva/JWaZxALhUQTH/iBsucT5p4AZoEsVX4BP7hzOUiYJnop7v8buTegPGroKOMApq
 J9wg==
X-Gm-Message-State: APjAAAXIbBXnWLo0qqpa4X/FLHKBACfOmlKqBYwKtSiNO1W95P+ObtGy
 Gy4wI6z4+orn1xBqI5mDc7E=
X-Google-Smtp-Source: APXvYqxmIa4QM7AcW/83pmrZJxqiFUk74JNfWaLeB0hSRpCmPT8473gpHyeXLWjKOEQDzkQWTtWY+Q==
X-Received: by 2002:adf:e5c4:: with SMTP id a4mr10230811wrn.87.1566633903310; 
 Sat, 24 Aug 2019 01:05:03 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id w8sm16615656wmc.1.2019.08.24.01.05.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 24 Aug 2019 01:05:02 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2,1/3] dt-bindings: Add vendor prefix for Ugoos
Date: Sat, 24 Aug 2019 12:04:08 +0400
Message-Id: <1566633850-9421-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566633850-9421-1-git-send-email-christianshewitt@gmail.com>
References: <1566633850-9421-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_010504_914504_956C9D61 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ugoos Industrial Co., Ltd. are a manufacturer of ARM based TV Boxes,
Dongles, Digital Signage and Advertisement Solutions [0].

[0] (https://ugoos.com)

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
