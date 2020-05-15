Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9071D49C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PfEOUuI94cUkc9+hn8/f7DllGPyC/RvuKYwRGXB1ZRI=; b=Jga
	fcc/vU6K44gDMrjUewx4wsAl74jTygicJhOTS6T/SoarcXVXiRTeJeUHgxJGVM41xSLfG3cG7J4VQ
	9XTHpaGikdMacSD8lPQGAbX6vO0SbSxCvdsf+aulT7qr4ZXo+ULN8DKURyGRlmrK7PQMe/s/Mm2p7
	2+yKcvqhczduyd63ieVb4OtXNREksC3nv66XxrPdg2WkVtBf6lsGFV1IjlRhko1lUcQL7pS8Q8BpJ
	mrFZocZ4tA4uP0P3LftM3m3Dv923E11ccIMeQYHa75UJElbNowQl/ZoZIvDgGfBOlMAJjV/gJOvHz
	2wQRVYP/epVCir+5CXZfTGXe9agzz4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWmU-0004sk-VJ; Fri, 15 May 2020 09:37:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWmM-0004rs-PM
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:37:20 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F222206B6;
 Fri, 15 May 2020 09:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589535438;
 bh=5flVIIVoCW9OqOrK26kxVVwyL8Cf+v7jca5MloG5TN8=;
 h=From:To:Cc:Subject:Date:From;
 b=z1uivef2SOZo6Oz9O9V8EN4yuJnLd5w4nXZ/hCNRKtsVRJUq7EyBDjtjunKSCHEUM
 umyJADPcDlAHskHgdGCbtZsEhbvHKx6BzfGp0bD4zSXDzdCoEc4mTXTKE7nR2mkqUX
 m8yHxALCxAn4Lv7oWDnxle6FdKA4XLQVziZegHYE=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ACPI: GED: add support for _Exx / _Lxx handler methods
Date: Fri, 15 May 2020 11:36:13 +0200
Message-Id: <20200515093613.18691-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_023718_845899_5AF4F18D 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, stable@vger.kernel.org,
 linux-acpi@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Per the ACPI spec, interrupts in the range [0, 255] may be handled
in AML using individual methods whose naming is based on the format
_Exx or _Lxx, where xx is the hex representation of the interrupt
index.

Add support for this missing feature to our ACPI GED driver.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Len Brown <lenb@kernel.org>
Cc: linux-acpi@vger.kernel.org
Cc: <stable@vger.kernel.org> # v4.9+
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/acpi/evged.c | 22 +++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/acpi/evged.c b/drivers/acpi/evged.c
index aba0d0027586..6d7a522952bf 100644
--- a/drivers/acpi/evged.c
+++ b/drivers/acpi/evged.c
@@ -79,6 +79,8 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
 	struct resource r;
 	struct acpi_resource_irq *p = &ares->data.irq;
 	struct acpi_resource_extended_irq *pext = &ares->data.extended_irq;
+	char ev_name[5];
+	u8 trigger;
 
 	if (ares->type == ACPI_RESOURCE_TYPE_END_TAG)
 		return AE_OK;
@@ -87,14 +89,28 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
 		dev_err(dev, "unable to parse IRQ resource\n");
 		return AE_ERROR;
 	}
-	if (ares->type == ACPI_RESOURCE_TYPE_IRQ)
+	if (ares->type == ACPI_RESOURCE_TYPE_IRQ) {
 		gsi = p->interrupts[0];
-	else
+		trigger = p->triggering;
+	} else {
 		gsi = pext->interrupts[0];
+		trigger = p->triggering;
+	}
 
 	irq = r.start;
 
-	if (ACPI_FAILURE(acpi_get_handle(handle, "_EVT", &evt_handle))) {
+	switch (gsi) {
+	case 0 ... 255:
+		sprintf(ev_name, "_%c%02hhX",
+			trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
+
+		if (ACPI_SUCCESS(acpi_get_handle(handle, ev_name, &evt_handle)))
+			break;
+		/* fall through */
+	default:
+		if (ACPI_SUCCESS(acpi_get_handle(handle, "_EVT", &evt_handle)))
+			break;
+
 		dev_err(dev, "cannot locate _EVT method\n");
 		return AE_ERROR;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
