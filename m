Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D633B7FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SIPjpHAMkXcIJ6N95YJKqW9C/9+Hp6rM3Pa7lvOTFIs=; b=XVHp6cIieZSEEZ
	h7R340wc9k22qwWEUBYq6jr/I7ZMzx81Wbp3qFIvEg/Q8u5bAP+DSbXZDGEirgit/dVo+FgzsORcv
	AZU2aFl8rh1PltMSPoitJwXBQ1NGN4bEcL7wHqZHuqTyjHic1lnASTvouHfDetAzlHr+sg++3/Q55
	k0UXPL/4kthuMzMK/A1+s6pa/rUEWz/M3UQhGwJF5G2vo4p32hiBchwkKIfdJ4D97XUUrD/KsmWIg
	KkNKuKf6dCYbWQAT+v9GErVEBN3jq3IyoJ8VDBiOz7+HkopV0Kt8yYy6RGgSOPeuwHOq1uQk1QN2H
	i6aNzCF2w+dhSWWjxwHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haLrp-0000vY-Qm; Mon, 10 Jun 2019 15:05:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haLrf-0000vA-2z
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:05:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id u8so8525888wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 08:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RkQ4CjPEDkGzkvOTsVe8hBovG/baYmxmmxTNcRwbQ6A=;
 b=cgDk7wTG4n038EhFmcAwzmy2sh3c3WnR4WUxrgOgCpgBWcRWcud2NzuopspUI5VY8y
 asGjnzPx86XbuC8jCJkrFmmlKwswDTLD365JhPYxCfBTpEv1B7izqOXPOuBeyR0OSp+E
 MpzXaxyZ36enUF41A16Z+IWIv5j0xfx0IzzIGjHTt4cNWQOvckBLLdOKwy4YJFsTfxVC
 Ko0ESWZYNyJjQ23Kjx/Rj+ii+91I2T//H9TLKgie9coGA9cGfZFiEehcSSiAEYxwJJvX
 /Bj2u6DWb8lpa6lJpqOMqp3XFwqmxkhgzVPV2yWbbeF/XJ2fbG44Mb02TBUJxx4SIe4i
 3wKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RkQ4CjPEDkGzkvOTsVe8hBovG/baYmxmmxTNcRwbQ6A=;
 b=FNg872w7Y9Zjasv+mHQT8SfThBpq9qZWRloigqfzT9jGUR9bpnA5TS9o8KnlPCGgqV
 +emQYDpz6jnJ3tCB/U92dsH0PAfzRL1X8Zl5pJYiGAFeu89TkSqBdnYVCcXZP+zPqQlK
 VjczHO1Iw4dlA1+EaXM6x3Z45+9G9MKjcAYelAKbyk0YA3Wpo/pwI41QtfGPTKnco6pG
 Rh6x9EOSiqZgEYHCMUrudRUWtJHFIKq0CPdiSvypy21w+h2hwXez1R1i1VicPpj4eSLw
 yZa/ZiGaLcJG5U69KkNh4jPVxza67kVjiH6ucT9VaS5AanBgc2TEUSywjjS3bkrASPSD
 IaPw==
X-Gm-Message-State: APjAAAWEFaZvDZcouZQ2Ua1HbhIiY24iFIulK1GensZr2nJ0NHEijSVk
 UYzh/AnlQq9x2/UKSOQNBl23og==
X-Google-Smtp-Source: APXvYqxJg943SALFFymt1y12G7kifsXfVhOXdBnuXAcUNu5l9BSYevC2+qtkoLgUaxAp73ncfkfUeg==
X-Received: by 2002:a1c:448b:: with SMTP id
 r133mr14454728wma.114.1560179136378; 
 Mon, 10 Jun 2019 08:05:36 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:fc6b:c1c2:30ed:eca3])
 by smtp.gmail.com with ESMTPSA id e7sm8633054wmd.0.2019.06.10.08.05.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 08:05:35 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH] efi/memreserve: deal with memreserve entries in unmapped
 memory
Date: Mon, 10 Jun 2019 17:05:30 +0200
Message-Id: <20190610150530.10306-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_080539_197061_EB42DF50 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jonathan Richardson <jonathan.richardson@broadcom.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, marc.zyngier@arm.com,
 bhsharma@redhat.com, ray.jui@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ensure that the EFI memreserve entries can be accessed, even if they
are located in memory that the kernel (e.g., a crashkernel) omits from
the linear map.

Reported-by: Jonathan Richardson <jonathan.richardson@broadcom.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/firmware/efi/efi.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 16b2137d117c..4b7cf7bc0ded 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -1009,14 +1009,16 @@ int __ref efi_mem_reserve_persistent(phys_addr_t addr, u64 size)
 
 	/* first try to find a slot in an existing linked list entry */
 	for (prsv = efi_memreserve_root->next; prsv; prsv = rsv->next) {
-		rsv = __va(prsv);
+		rsv = memremap(prsv, sizeof(*rsv), MEMREMAP_WB);
 		index = atomic_fetch_add_unless(&rsv->count, 1, rsv->size);
 		if (index < rsv->size) {
 			rsv->entry[index].base = addr;
 			rsv->entry[index].size = size;
 
+			memunmap(rsv);
 			return 0;
 		}
+		memunmap(rsv);
 	}
 
 	/* no slot found - allocate a new linked list entry */
@@ -1024,7 +1026,13 @@ int __ref efi_mem_reserve_persistent(phys_addr_t addr, u64 size)
 	if (!rsv)
 		return -ENOMEM;
 
-	rsv->size = EFI_MEMRESERVE_COUNT(PAGE_SIZE);
+	/*
+	 * The memremap() call above assumes that a linux_efi_memreserve entry
+	 * never crosses a page boundary, so let's ensure that this remains true
+	 * even when kexec'ing a 4k pages kernel from a >4k pages kernel, by
+	 * using SZ_4K explicitly in the size calculation below.
+	 */
+	rsv->size = EFI_MEMRESERVE_COUNT(SZ_4K);
 	atomic_set(&rsv->count, 1);
 	rsv->entry[0].base = addr;
 	rsv->entry[0].size = size;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
