Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82689171663
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:52:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=XMO0kBFcyLRIGtqhowDTA9R0dyMMOwRorABj1legeX8=; b=hD
	yZfHPjvyqWBG+j5UUgjK2a92f8O4ILC7ZAS9eyhODlAGvewNtZ4QpS7YDdWUfizXb4vTefsLLBQTr
	HWb9+KipNTPxn91OK/Of4s7NJQhMK6NoSWAvnxVr6uL5ExbRxSEed+YIRKUH+nQIhoTRepMksTg00
	oSZkelNwDW1+ZPMUPgihB8im31KexvMj+iMHenatXulLKLrUci/kikcibEoq3GXbya3SoIzohupsK
	iEJkEuWOi6HFv6zO2e2JtS7AG7vkpiicmv/hitU8oJ8FdmYsc+wW2sT9DPpIgwCMM1Xrlc8Qb6XD4
	I2dsxdROSijbDUW20tkOk49HRrVgpbNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Hi8-0005Ux-I3; Thu, 27 Feb 2020 11:52:12 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Hhs-0005Ra-Q6
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:51:59 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200227115152euoutp019209cf7f26c8f5eff9d74a0857c03686~3QCLVfmR41642416424euoutp01q
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 11:51:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200227115152euoutp019209cf7f26c8f5eff9d74a0857c03686~3QCLVfmR41642416424euoutp01q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1582804312;
 bh=3EmbG3tIsUVU+euXxv8svqYHWtp3RefmURy/Bm4oE2Y=;
 h=From:To:Cc:Subject:Date:References:From;
 b=GuE3phDriPKdmRz+yVJ/SCJxzj1AtyPVs8q1NhVM60dbEEl3GMEULMDzlo9MyMUiV
 CtLg6N2MuEguOulxnb7LiUEljLpe8tFeKwqTORXGwOXeMxUrUXMwcBAS9t4kymTVc2
 YCj4hvAuAMAiWDP54XKQxk/lvPJlo7kJgB1OMBD8=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200227115152eucas1p164f7e8fe212a8527b05c5a8f3f8523d6~3QCLKDD9t2247222472eucas1p1-;
 Thu, 27 Feb 2020 11:51:52 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 3B.0A.60679.85DA75E5; Thu, 27
 Feb 2020 11:51:52 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200227115151eucas1p22ff7409009d917addcc7e20f523c9051~3QCKzogZl1499214992eucas1p2M;
 Thu, 27 Feb 2020 11:51:51 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200227115151eusmtrp2f12427f90b3c6d046b265c4788884a5c~3QCKzCQaa3190131901eusmtrp2x;
 Thu, 27 Feb 2020 11:51:51 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-f3-5e57ad585a4a
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 57.52.08375.75DA75E5; Thu, 27
 Feb 2020 11:51:51 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200227115151eusmtip1321c3ea5662c027f51c54f12309a59ca~3QCKU13Jm2289622896eusmtip1H;
 Thu, 27 Feb 2020 11:51:51 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] pci: brcmstb: Fix build on 32bit ARM platforms with older
 compilers
Date: Thu, 27 Feb 2020 12:51:46 +0100
Message-Id: <20200227115146.24515-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSfSyUcRzfz/Pcc4/Ttadj85tMdaphQ1fanpWEaXtaVq1Q01xOnh26O3aP
 l1Qb0UpHDbXoNGReyltCV4c/Yuq0GypNL3cI1XQOGbZI6h6P6r/v522f77774oiokOeCx6uS
 abVKphBjAlT3YrHf+2TDCekO4yWc/PjgNp9suP4cJSuz4sil6W4+2Tw+yCMH2u5iZG+pASML
 TE180vpzwmbrHuKTOm0NFuhA1ZfWA0o70otReu0QnypvTqFaKjOoG621gGoxXqBMP1TUXLPb
 UftIgX8srYhPpdW+AdGCOMPkMEjqEJwrHtNjmWAM1wAch4QfrLBKNECAi4j7AN6bq0U0wN4G
 5gG0LsRwwhyAZYszfFZgAzetH1BOqAFQl1PC44AtUfg9H2VdGCGBmikNxgpORC6ARW9nAQsQ
 os0Ojn4tWHU5EhFwpqQPYxdBiW2wZ9CLpYXEPjgzrEe4uk2wrukZwmYhkcuHlzsmUU4IgXe0
 jRg3O0KLoXVtP1f4W19mxwWyARzta+BzIA/AgaxiwLn2QnPf0mozQnjCh22+HB0Eh6pWAHeZ
 9fD91AaWRmxjoa4I4WghzLki4tzbodbQ+K+289WbtZ0p2Gtu5HF3jIKVAyYkH7hp/3eVA1AL
 nOkURimnmZ0qOs2HkSmZFJXc50yishnYPsW4Yph/CtqWY7oAgQPxOiGMjpCKeLJUJl3ZBSCO
 iJ2EjxbCpSJhrCz9PK1OPK1OUdBMF9iIo2Jn4a6Kb1EiQi5Lps/SdBKt/qva4fYumeDJ8Yz2
 rTPv9qiGAz91VB873Gldzg2yYn7eCqEl67HFFOOoufi5+ou73ONI2ATjKi2zU46/DDgYWpW9
 2XRV7O/3eiThVsu1SjdzaX5wyLCRVKAuFofiSHNe2CmP3gP9qGd1UyivA0vWJfbMloe7/7pT
 uGV3muP0obpgPbo/oV0iRpk4mcQLUTOyP6qm8sslAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOLMWRmVeSWpSXmKPExsVy+t/xu7rha8PjDKa+M7C4tXIau8Xa3qMs
 FkuaMix+vTvCbrHp8TVWi8u75rBZnJ13nM1i4u0N7BZvfr8AKjtyl91i26zlbA7cHmvmrWH0
 mHX/LJvHzll32T0WbCr12Lyk3qNvyypGj82nqz1u/8jz+LxJLoAzSs+mKL+0JFUhI7+4xFYp
 2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384mJTUnsyy1SN8uQS/j+Ot7jAV7uCpmPNrJ1sD4iKOL
 kZNDQsBEYvKbmyxdjFwcQgJLGSUO79nKApGQkTg5rYEVwhaW+HOtiw2i6BOjxNObe8CK2AQM
 JbregiQ4OUQEehkljnzIBCliFtjHJNF4eBlzFyMHh7BAiMTvMwkgJouAqsSJa1og5bwCthLv
 7+1khpgvL7F6wwHmCYw8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgQG8rZjPzfvYLy0
 MfgQowAHoxIPr0RCWJwQa2JZcWXuIUYJDmYlEd6NX0PjhHhTEiurUovy44tKc1KLDzGaAu2e
 yCwlmpwPjLK8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2Ms1w+
 +4VfLP1wffXzPt0d705XV0i0OEze9N1a6saMLBXtuEKOVYvZs99UCB9Q5WNwzFcqs/m64bmp
 7+31RtLznEO1fcpTfNUd1lm5+lYnd8z1MnrP/kutwmdLrH9I9bq5j29t5udkWsrQaV4Uqvxz
 y4Zo28S0qbm/eLqTFH6Lz5i1Qemu7X0lluKMREMt5qLiRADdBbMJegIAAA==
X-CMS-MailID: 20200227115151eucas1p22ff7409009d917addcc7e20f523c9051
X-Msg-Generator: CA
X-RootMTR: 20200227115151eucas1p22ff7409009d917addcc7e20f523c9051
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200227115151eucas1p22ff7409009d917addcc7e20f523c9051
References: <CGME20200227115151eucas1p22ff7409009d917addcc7e20f523c9051@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_035157_050725_BC125278 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Bjorn Helgaas <bhelgaas@google.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some older compilers have no implementation for the helper for 64-bit
unsigned division/modulo, so linking pcie-brcmstb driver causes the
"undefined reference to `__aeabi_uldivmod'" error.

*rc_bar2_size is always a power of two, because it is calculated as:
"1ULL << fls64(entry->res->end - entry->res->start)", so the modulo
operation in the subsequent check can be replaced by a simple logical
AND with a proper mask.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/pci/controller/pcie-brcmstb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index d20aabc26273..3a10e678c7f4 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -670,7 +670,7 @@ static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie *pcie,
 	 *   outbound memory @ 3GB). So instead it will  start at the 1x
 	 *   multiple of its size
 	 */
-	if (!*rc_bar2_size || *rc_bar2_offset % *rc_bar2_size ||
+	if (!*rc_bar2_size || (*rc_bar2_offset & (*rc_bar2_size - 1)) ||
 	    (*rc_bar2_offset < SZ_4G && *rc_bar2_offset > SZ_2G)) {
 		dev_err(dev, "Invalid rc_bar2_offset/size: size 0x%llx, off 0x%llx\n",
 			*rc_bar2_size, *rc_bar2_offset);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
