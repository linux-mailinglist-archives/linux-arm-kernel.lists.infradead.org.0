Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D25BEFC82
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 12:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Ol0nloXNl+QxKhWzMij1LKFEWTT4188YBQiXH+S6Bc=; b=QYVw8X9Ra0qnWo
	w8Y+EkRw83N+u4O9bMyWGgOrVN9UWbm0+RWSP3A/F0HZ1sweHy2+6NdVlhbjSZKvdaN9Axo7LTZZ7
	tSUg5ZvcigQunopJqtDWA8POIB4M6qavNDHsCtGO31KJF+Wjly6x3CsC0kGE15PQgoqv9XwzTp/Yb
	r0aAJfSpSPgfJjrMDkAbEIPMRFCovUM/cSscXLC3jZ66Sev66ALKLKpVyvVWrQKsWHYE5MbivvKnq
	iAe2oZAmCwe6QFeEmzWAJeQOSF4pAXjM5PO9dd/r5slAyXswbr5fUOSCA+B6lzVJrMhsiFaWfi5cD
	XlyzXk/VpNNzteJZ8O7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRx8U-0001GF-JN; Tue, 05 Nov 2019 11:36:34 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRx8N-0001Du-DH
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 11:36:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1572953776;
 bh=v9/3tGIUXP+Rc5WO9HEDBxVSoQQRQxOxc/FWNESEPzo=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=i0y34lFylzkhGbOnhKWbMBRN89WiSM530x2iM0PPzoOp98DD0Dr2NxQUohPdBx+hY
 imGVLu6Sc8tc11mR2mFfThHUNk7Q/pi5UqnTyJvGcrxn5E7LLoDiuLIn2ymIbi+Rrt
 gnfmV5NXA47gaxj8RUMBENPLQ0JK8GG9ffXQGxwk=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.164.204]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MUEoU-1iJfZ70wd8-00QwxY; Tue, 05
 Nov 2019 12:30:23 +0100
To: linux-arm-kernel@lists.infradead.org, Jason Cooper
 <jason@lakedaemon.net>, Lokesh Vutla <lokeshvutla@ti.com>,
 Marc Zyngier <maz@kernel.org>, Nishanth Menon <nm@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Tero Kristo <t-kristo@ti.com>,
 Thomas Gleixner <tglx@linutronix.de>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] irqchip/ti-sci-inta: Use ERR_CAST inlined function instead of
 ERR_PTR(PTR_ERR(...))
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <776b7135-26af-df7d-c3a9-4339f7bf1f15@web.de>
Date: Tue, 5 Nov 2019 12:30:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:ZIYL2Dh89bxgwfXHZn46bFKEDCu40YGgF7ZYP06RA5Xo3NqAay+
 9+FBNAD7KGJBA8C+kgURhnL8TiywTXI1UZX7/D438CBIQXUtrgWmWiUbWoeUDEcXPoXL5ll
 75FpMVV29lBVtjOWyHEEppzTliCshb85+IQvzaiRWQ727ZSve1ax5G+lNy8fjwJN+0kAY8I
 C/lBhwmzE6LF7vjsF+J7g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2Gd/6O3UfoQ=:84HZsQroUzLgPmEI8X45ZS
 H6aWdrKa3M3btAi3Po2U+Ib5SU1sCfwqzvzd0WVcJM5XL0wNBmIkS/DgiILCM2jW6Mb4y9glQ
 Z5w0LPUEr7oFqyGSMVCBqgga4nqr06ODJPC+1HoI4c6xcv+qgu8fT1Hox1UyDZ0Hrk4FjPX8k
 2J1l3LbvhkSGm5aOEntvYHWPoFB2Tlngaa2Q0zdOew5Ni9NTq2riUcJeE27g4bKmkKsIoc24y
 g3qSjM1V5hsZMpg+D2541sO81w457s0hY+TEWp1rK5uwvVAAWzEblQaPWnRQUtPZC1o0Tvl2w
 +4+REBTsHdFX4J2RD/s/g1xERo+FLXfWUOeE3VTtyLmKB7LGKnixIvZdc7EUf380+QdM3pWt3
 bnCVXt7MmuBEHSIhFGbayuS2qGUWpruHlz9a4wth3IVHGo1m6BvNBBQo9BKv+JP2I+XTz/td+
 qulYZG2UZTntf+kUpi5/Mv9FxGuf+bgitGO/8M/iZlfv7+hwb6PPF4+jQLkJ2/vo4Zocuybzt
 46lWeJn0KBKZRft+7+71myf78d64RAiYnVyDkIlkZ5JBHJQA3/DeVcGE6AEETF+lpzjTA6epL
 +nMInBy9AAY9XxnFBpKtpFfJcuxjXH21CWc9GKsdGYUj8ONnAetlZzFPM5Z6LabF36fCGCqfa
 8qMj9AL1PMxGmrRaxBh3ODnOu4t3Fa4zdeRbWiQsELJBdkjHMCTla7XFVZVAoZhY+iBfoI7dX
 r77Kq5z60anxEnTbU1mbb85gpXyfGGsx80O9Am10OV/mihijmm/FVttvGD/Hh5M2ehZkwdXKu
 UEDy6iiQhcpFNnL9ONfmBsxl6NGMjsQkzimOaDBpDTo3Qj4/doVq2UCneNzFmO4ffw5kBWFCt
 QSFA3ikabGmtqb0Q4rMHbor39+E0py7qlfcjxO3hmFItHQqnJM5OxrntAJ52j0xwEs9CIGKzu
 nYz6HiLDHbxMKQeIIRuQ8iQQDIBJemLSLMiCNfzv6SRPa4J8Tdj79R01m8L0XV+E0gSc70t7e
 nfgxQFbPNpTH0isf1PwyPUE3ILWcsTtjm4oKAhAsHDuQ3IonpUfxEOSUASg6JhCs7asp0V/tA
 NWnugE6Yy5n2VquWRBK48jqiPuW3oBuGv6KiHqCUwzGo6FvAAXe11bItZCtvOV9ahZDQ8M0go
 RtIL7KYkuCLx2cOF8214/LtItXcsiWB34gNOZ0Oc/SU0M74XTa+NqB+RLa6pNj1k0e7oUdKuH
 KpRDQx/pTmQsyNzYvMdEvh+4+PlYakL8G/H0E42wWurzO98JmPJ+DFnVah58=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_033627_745430_875C0629 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Tue, 5 Nov 2019 12:19:39 +0100

A coccicheck run provided information like the following.

drivers/irqchip/irq-ti-sci-inta.c:250:9-16: WARNING: ERR_CAST can be used
with vint_desc.

Generated by: scripts/coccinelle/api/err_cast.cocci

Thus adjust the exception handling in one if branch.

Fixes: 9f1463b86c13277d0bd88d5ee359577ef40f4da7 ("irqchip/ti-sci-inta: Add support for Interrupt Aggregator driver")
Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/irqchip/irq-ti-sci-inta.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
index ef4d625d2d80..8f6e6b08eadf 100644
--- a/drivers/irqchip/irq-ti-sci-inta.c
+++ b/drivers/irqchip/irq-ti-sci-inta.c
@@ -246,8 +246,8 @@ static struct ti_sci_inta_event_desc *ti_sci_inta_alloc_irq(struct irq_domain *d
 	/* No free bits available. Allocate a new vint */
 	vint_desc = ti_sci_inta_alloc_parent_irq(domain);
 	if (IS_ERR(vint_desc)) {
-		mutex_unlock(&inta->vint_mutex);
-		return ERR_PTR(PTR_ERR(vint_desc));
+		event_desc = ERR_CAST(vint_desc);
+		goto unlock;
 	}

 	free_bit = find_first_zero_bit(vint_desc->event_map,
@@ -259,6 +259,7 @@ static struct ti_sci_inta_event_desc *ti_sci_inta_alloc_irq(struct irq_domain *d
 	if (IS_ERR(event_desc))
 		clear_bit(free_bit, vint_desc->event_map);

+unlock:
 	mutex_unlock(&inta->vint_mutex);
 	return event_desc;
 }
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
