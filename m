Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038FEEBCC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 05:18:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RVeWBheYFD5Wkdq4P3fjCPueFIMXaGnaBXh/2c8uJaY=; b=qHU
	MdWCHHaTVFb8r5bRDNPQQEqgwX91kIF2vJHzDu58bKO5xQpUUDwmymlUkZrQNbsQ7RIQzYBR0ZqfN
	AbCt9QzRtDR0QdZ4/EhgMYUS+ER1Wo2xIAjleoCuHO4B2AzQSAPSpbQa/Cne28MGoyQLhHOOz4+cN
	Frfrf7C7XrqiUU9l1Yu3X5tzq3ThF+zKzsgIQkOzYu0KWcJ4KRyqK9QrIlos4bX/vST8i3z1K9zIQ
	pRgQ2Brdn7MRjRq/J3UhYEtVFbjqQNQn+meD+uaD8O28MKqMZFTVr5lVLjXT8TKyaD8h2WA3hm7uM
	FoG8XNazlRz9VJRWqzGLelpV2vyFtUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQOOc-0001Pk-Cv; Fri, 01 Nov 2019 04:18:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQOOQ-0001P1-Oc
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 04:18:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id w18so8490835wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 21:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=NGhlTP8oZ8XipxhHTj4eiIdTcdXbzg8PKGeLDXhalyY=;
 b=EdIA7qYjj9Zrt774dt0oiZlMSGvi26KO8YGtd8OncH3ftqlG3sDO7XXs3ZBmrOkdzY
 GhK2zQWsc/CevxKkQHy7w6etZdItRLpoqxbTO85PYop92kE31u+VCn9R5PU99TJ733fS
 HyNQmDhCOXd8ingVeTEfdm3cwW6B83MZsSzGSiWhctbM3eCbsNeb/OeESSt32yBv7o5f
 fOB2cNYRpQvr62F1yXZ/ydjq+lK2huhe6m9zTL++5lvjmgypI+hFfEiyrO4eAjfrWiKq
 GJ3gNdNOGPinrt3NCiS5mIRf/laE2m3t09If/VTVQ0tQD2MpOvEBY4fm/RjYSxhumfta
 T+fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NGhlTP8oZ8XipxhHTj4eiIdTcdXbzg8PKGeLDXhalyY=;
 b=eVzuXq6VPuSeVkZMVZe089nesoEHdievcMk4tjZ2KApik+Q5Ihl7cYnfAhpvfULxSa
 Z7hMtfZrpyXDRT4y65GxnJXEFQ6VmRLmF2NibEtOlJGg/SXMXGUI6vgYOAUbyOP+JN+G
 nGsJ0S9D/Omt5ZPxAgbLojj1Fmopk5PaSXg0ZlTIJucZ0LwAYmP2kzA3H8v/zlPUvHjI
 pB9xiVqD0OHHD5pa3KXXVyH7BwJTnRU7s3ZLA+GAz3JjJem01p1aoRrrzXj66EJlGdzo
 cnsh+o/10XFdhZKIOSquA2lC0B+JX33L2q7WdhWNOFi0oLhQiH5lkWSH9hCpGU8Jm+PT
 Q6cg==
X-Gm-Message-State: APjAAAVH/48k04KJzXnGKY4mowhEWIuqzV45E6CUdLtThkmu5xGDYjwt
 SZ4e/wVuY/tpZQhtf7S4bjhBJpEo
X-Google-Smtp-Source: APXvYqwltumjagUsai+cQa/vVBU2gQPEaUNhz0/YGjLbZNJV6oODNZWhklfyejFkF987nzfWojq+Eg==
X-Received: by 2002:a05:6000:12cd:: with SMTP id
 l13mr8822750wrx.181.1572581912624; 
 Thu, 31 Oct 2019 21:18:32 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u187sm5743536wme.15.2019.10.31.21.18.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 21:18:32 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] reset: brcmstb: Fix resource checks
Date: Thu, 31 Oct 2019 21:18:21 -0700
Message-Id: <20191101041821.30931-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_211834_828373_BE1BE17E 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The use of IS_ALIGNED() is incorrect, the typical resource we pass looks
like this: start: 0x8404318, size: 0x30. When using IS_ALIGNED() we will
get the following 0x8404318 & (0x18 - 1) = 0x10 which is definitively
not equal to 0, same goes with the size.

Replace this with an appropriate check on the start address and the
resource size to be a multiple of SW_INIT_BANK_SIZE.

Fixes: 77750bc089e4 ("reset: Add Broadcom STB SW_INIT reset controller driver")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Changes in v2:

- simply check that the resource size is at least SW_INIT_BANK_SIZE

 drivers/reset/reset-brcmstb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/reset/reset-brcmstb.c b/drivers/reset/reset-brcmstb.c
index a608f445dad6..208a87aaee53 100644
--- a/drivers/reset/reset-brcmstb.c
+++ b/drivers/reset/reset-brcmstb.c
@@ -91,8 +91,8 @@ static int brcmstb_reset_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!IS_ALIGNED(res->start, SW_INIT_BANK_SIZE) ||
-	    !IS_ALIGNED(resource_size(res), SW_INIT_BANK_SIZE)) {
+	if ((res->start & SW_INIT_BANK_SIZE) != SW_INIT_BANK_SIZE ||
+	    !DIV_ROUND_DOWN_ULL(resource_size(res), SW_INIT_BANK_SIZE)) {
 		dev_err(kdev, "incorrect register range\n");
 		return -EINVAL;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
