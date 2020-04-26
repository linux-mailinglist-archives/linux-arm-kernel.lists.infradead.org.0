Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7D01B9250
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 19:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eYW0RyqPIRfPzpIvCyByrX/V3+hEh/IqWEyF54UDBmI=; b=bxRbMGov3VrIdTs6h+xscASsMW
	uemXtzwfdaGGJAgaYgesIDYNquD9gWMgdANYO3qCNZ8wGYIldFXJzlDV+zCfduHUCjMNxV3CsPuA+
	SeWPeFw72iR2A+KazycPbey57q30MraU9TGaVhuGdx6ALJHBG1hoj7JarRyqMVpUHYxO5oYhfuz1K
	BY1EDuISigzVPwH9Sug1tuNdUB9bNeyMfJegM0p7Oq/DYFUZQJ1B0l6dEuR5ifmb4/lfBndp3VmFY
	V27FFhqI8FCWCDjp490J2vd0y8iZir8wQuXPwLFvi647A2lsui+78e/Kw/nA53SKPdQ2DsPNjzK69
	Ol+P79aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSlIl-0001xi-A3; Sun, 26 Apr 2020 17:42:47 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSlIA-0001Xo-Qg
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 17:42:12 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200426174208epoutp04e49cdaa19597613906d30eec1daaec62~Jb31-Wo8F0667206672epoutp04J
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 17:42:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200426174208epoutp04e49cdaa19597613906d30eec1daaec62~Jb31-Wo8F0667206672epoutp04J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587922928;
 bh=aZlGHc5xTiWwAyuHWOUJ6KyldBblFcw6DUpelUfBEa8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VOmc3LHoAnPsiadpW7uP+lCjMtCYSBCCBDPIIkpvsm9fEIDaxUtj6QNC46v370J3E
 rZAXdEADaNTjmFRL0OsB9uCG/gjBWQeiRu64QFY5a1K+YXn8qbHQi6U0Hsv24rfStB
 Rw0fYq+QlSdhA52J/6emYgEJyra3Jet+kNePj2dY=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200426174207epcas5p10a309a64b0f5750ce88bb96dc0bdf155~Jb31MDWiv1407714077epcas5p1d;
 Sun, 26 Apr 2020 17:42:07 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 FF.42.04782.FE7C5AE5; Mon, 27 Apr 2020 02:42:07 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200426174206epcas5p3a948de27f9eaa9256e4c3de5294ce234~Jb30pQwcz0554805548epcas5p3H;
 Sun, 26 Apr 2020 17:42:06 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200426174206epsmtrp23798bc6229183f6ec1745eedcd4a91c9~Jb30oe4qx1150211502epsmtrp2V;
 Sun, 26 Apr 2020 17:42:06 +0000 (GMT)
X-AuditID: b6c32a49-89bff700000012ae-4e-5ea5c7ef35ad
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 E3.DC.25866.EE7C5AE5; Mon, 27 Apr 2020 02:42:06 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200426174204epsmtip1d26c5ef798b311816760ad027e3ccd9c~Jb3yxOH9D2626126261epsmtip1h;
 Sun, 26 Apr 2020 17:42:04 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v7 02/10] scsi: ufs: add quirk to disallow reset of
 interrupt aggregation
Date: Sun, 26 Apr 2020 23:00:16 +0530
Message-Id: <20200426173024.63069-3-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200426173024.63069-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHec/OOR6Hi9Mm9KSZtVBTyUslnQ9eCiSOIGHfwrw09KCmm7JN
 zQqUFG/LWxc0G1OkmZqXNZfJtDQzZwkamFcQrBmSlaKD0CyteRZ9+z3v8/+//+d5eSmBuIpw
 o9IUak6pkGVISSHe89rX58SaRZ8Q1Fl7iFnU9ZDMl60pktnoaiaYhuFxgpmYMDgxc6Y3OGO0
 ThPMpFlLMnUTLzFGM9NLMo8tOxiz29/rxOifzaGzInaysgJjjW1lJNv9KJ8tejuAs+uf53G2
 0tSGWJvxMFsyqMFiqFhhaDKXkZbDKQPDrwhTe/pWyax5l2vVlnlBAZoUliOKAvo0mMbwciSk
 xHQfAnNzFcEXGwiWxsyOjg3B6NLvv4XznmO26CPJN8wIlkcGEF8UYfB08C5mV5G0PyzUmvbY
 lZbA8I9iZGcBPYvBYmuknSX0ZdiemibsjNNeYF3swO0ziehQsBo8+DBPeGIYFNjZmQ6Dd3Vm
 zJ4FdBkFMw+NJC+KBN2rUcd0ElixmJx4dgPb6guS3zMdbptP8cc3Qa8bccgjYPCDdi9WQPtC
 lzmQn3IfVGwvYbxTBKXFYl7tBYWrUw6nO9RoNATPLKx+1TiepBpBvUXjVI086v/f2ohQGzrI
 ZankKZwqJCtYweUGqGRyVbYiJSApU25Ee9/EL6oX1Y9HDyGaQlIXEfVcnyAmZDmqPPkQAkog
 dRXFqZsSxKJkWd51TpmZqMzO4FRDyJ3CpQdEd4ipODGdIlNz6RyXxSn/dTHK2a0ADbC2tMIH
 2RC9aV1hdJ7T5/t/9kd4d8bfC23dbDkeHut9Q31rTTtZoDiH7dRs+SeuoyC3GTZkf5ouu2PZ
 p6NQnyQtMZRcCGtv1mqPtBzFLQvqi1GNzqnf4oeuxiS1H/sE72Pk+d0XS8+s9+klu7l0k+t3
 SYPi/klzAYRd+hUqxVWpsmA/gVIl+wMz2aM0IgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrILMWRmVeSWpSXmKPExsWy7bCSnO6740vjDHp6zSwezNvGZvHy51U2
 i0/rl7FazD9yjtXi/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptWdbJ5bF5S79Fycj+Lx8ent1g8+rasYvT4vEnOo/1AN1MARxSXTUpq
 TmZZapG+XQJXxrbd79gKbvFUTDh+i7mB8TJXFyMnh4SAicSNlodsXYxcHEICOxgldt59xgyR
 kJa4vnECO4QtLLHy33N2iKImJonTK/qZQBJsAtoSd6dvAbNFgIqOfGtjBLGZBZ4xSZx6WApi
 CwtESkxefZAVxGYRUJV4/GAtSxcjBwevgI3E4w2yEPPlJVZvOAC2l1PAVuLUjF1MICVCQCXT
 1/tPYORbwMiwilEytaA4Nz232LDAKC+1XK84Mbe4NC9dLzk/dxMjOJS1tHYw7ln1Qe8QIxMH
 4yFGCQ5mJRHemJJFcUK8KYmVValF+fFFpTmpxYcYpTlYlMR5v85aGCckkJ5YkpqdmlqQWgST
 ZeLglGpgEt13v9RrZVn3dm/LWiPR5Ws5K+ufzNXarml+oWbl5cm7f0zhWC4hsexXz5nt3f35
 Ih+uWy5uv1vNGrrVuu14xU6BZhYZ+93Xpj3ZGvxvCteUOs7PU+TPVh18NpXF1FU4gq1T/E/q
 pFl59c+XaTj/tL2pb3+UR8zrVtanGS37bnn+7Pi3x6hB4dHvgAXbpj+aVR6+3CZuh4V75LZt
 BQK12it/pT+S5fm97epWoXhBlQcqzKfOhBVVRGYEaomcO9Lpcihz58EU1bTqTw/YxGS+1lob
 zeALFzP/ek3trlqy7GqZZ++27Ap2jD2+ua/TI1HV0M78+NSi3e03N9tOepl05dezA7sWBPV0
 PZZt8eKepcRSnJFoqMVcVJwIAPgHnWrUAgAA
X-CMS-MailID: 20200426174206epcas5p3a948de27f9eaa9256e4c3de5294ce234
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200426174206epcas5p3a948de27f9eaa9256e4c3de5294ce234
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174206epcas5p3a948de27f9eaa9256e4c3de5294ce234@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_104211_049290_E0D9E30C 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some host controllers support interrupt aggregation but don't allow
resetting counter and timer in software.

Reviewed-by: Avri Altman <avri.altman@wdc.com>
Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 3 ++-
 drivers/scsi/ufs/ufshcd.h | 6 ++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 3655b88fc862..0e9704da58bd 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -4884,7 +4884,8 @@ static irqreturn_t ufshcd_transfer_req_compl(struct ufs_hba *hba)
 	 * false interrupt if device completes another request after resetting
 	 * aggregation and before reading the DB.
 	 */
-	if (ufshcd_is_intr_aggr_allowed(hba))
+	if (ufshcd_is_intr_aggr_allowed(hba) &&
+	    !(hba->quirks & UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR))
 		ufshcd_reset_intr_aggr(hba);
 
 	tr_doorbell = ufshcd_readl(hba, REG_UTP_TRANSFER_REQ_DOOR_BELL);
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 071f0edf3f64..53096642f9a8 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -523,6 +523,12 @@ enum ufshcd_quirks {
 	 * Clear handling for transfer/task request list is just opposite.
 	 */
 	UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR		= 1 << 6,
+
+	/*
+	 * This quirk needs to be enabled if host controller doesn't allow
+	 * that the interrupt aggregation timer and counter are reset by s/w.
+	 */
+	UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR		= 1 << 7,
 };
 
 enum ufshcd_caps {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
