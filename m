Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 457F91150A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 13:48:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=WY8+tzgMHv6MP0aeGt13Ui5ZykhpFYxOa8Bw6dKBlzY=; b=rv
	S4ThGXEfeklLCCPPl0J9X5glGYUSoHqYS5hydDXmTwzzvhFnolFXC3qKe47RGjcO/aFcpOiXy6cSp
	I+lhvmGQqxKFWFHAKnok0aUJd9eyoYISw+VFhLoSTAkLMM8jbeWzNfPOdgulA0lTYCqEKPFAIzT/Q
	wP0BvqJc0Kn9kU6ZvzUv6qYPVAThRJQ3fnULUoWlMkmJTUv8nTsiWm7N5tlcZztQSGc1jHvbAHLFw
	nAnKWfzArwKPGXzGyQOzFqaY38Bpwuz2ZFvK1cpUAJQwPtnBF+4SeyjchckUh7oDw/TAcgAbU6S58
	rvnQtQjKWt5nULJ5+fc/BG5yKI9WeJDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idD2C-0003Bf-4H; Fri, 06 Dec 2019 12:48:36 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idD25-0003Ac-Hc
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 12:48:31 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191206124827euoutp0246346372c72448fd05ac81963203a9dd~dyQ4YcNQm0590605906euoutp02J
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Dec 2019 12:48:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191206124827euoutp0246346372c72448fd05ac81963203a9dd~dyQ4YcNQm0590605906euoutp02J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575636507;
 bh=0mPnHOxifTMNnDk+T8fh9C2CByasDOb3u9TlEkhdvR4=;
 h=From:To:Cc:Subject:Date:References:From;
 b=XEKnfpA2fXDm6f5sVUNBzF7SDyQ1nqBIgq4EY0vg8um2pjYjvIHpvcujsVYUUS+MY
 YT2nVXy5GJkcgdTGuFIUKb7YD4WpX+PgQhz9arZ7Maplnf7kA0L63vK+8NLaNNeNNF
 NjXAN/+5hSBn+z7ELVvB48UA9CXcFWpW0JyQqQWs=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191206124826eucas1p1e6e997b1a7927169c80d7d73249bd548~dyQ4LYOdH0877408774eucas1p1h;
 Fri,  6 Dec 2019 12:48:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 49.77.60679.A1E4AED5; Fri,  6
 Dec 2019 12:48:26 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191206124826eucas1p246538607df51f2d68bce3b09d974b292~dyQ34_iYE2365523655eucas1p2u;
 Fri,  6 Dec 2019 12:48:26 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191206124826eusmtrp2e9ec69db6caf0d03d430b187952856dd~dyQ34Z2LY3235632356eusmtrp25;
 Fri,  6 Dec 2019 12:48:26 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-4b-5dea4e1aa5a0
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 91.86.08375.A1E4AED5; Fri,  6
 Dec 2019 12:48:26 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191206124825eusmtip216330cd05f244d74a0f3faecf941c28a~dyQ3Xd6RI0676806768eusmtip2B;
 Fri,  6 Dec 2019 12:48:25 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm: exynos_config: Restore debugfs support
Date: Fri,  6 Dec 2019 13:47:21 +0100
Message-Id: <20191206124721.9025-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOIsWRmVeSWpSXmKPExsWy7djP87pSfq9iDbY90LXYOGM9q8X58xvY
 LTY9vsZqcXnXHDaLGef3MVmsPXKX3WJfxwMmi+evzjI7cHisWLSX3aNl3y12j02rOtk8Ni+p
 9+jbsorR4/MmuQC2KC6blNSczLLUIn27BK6M8+t/sBTs5qz4ePwlUwPjNI4uRk4OCQETicPX
 rjJ1MXJxCAmsYJRo33SVHcL5wihxZdsbFgjnM6PEjWtH2WFarh/aB9WynFFidtc/FpAEWMuz
 yYkgNpuAoUTX2y42EFtEIFui8/EDRpAGZoFHjBJ/dl5nAkkIC9hL7LuwixHEZhFQlVjRvRQs
 zitgI7Fy5U+obfISqzccYIawn7NJTH4nCmG7SGye+YMJwhaWeHV8C1S9jMT/nfPBrpMQaGaU
 eHhuLTuE08MocblpBiNElbXE4eMXWbsYOYBO0pRYv0sfxJQQcJRYskQZwuSTuPFWEKSYGcic
 tG06M0SYV6KjTQhihprErOPr4LYevHAJ6koPiafrTzBDgiRWomfbfLYJjHKzEFYtYGRcxSie
 Wlqcm55abJSXWq5XnJhbXJqXrpecn7uJEZgcTv87/mUH464/SYcYBTgYlXh4Z3x+ESvEmlhW
 XJl7iFGCg1lJhDed72WsEG9KYmVValF+fFFpTmrxIUZpDhYlcV7jRUApgfTEktTs1NSC1CKY
 LBMHp1QDI0PLcrP1E0veiShZ52gunGXyS/pZQYn3GoYrX/aaBUhd+hFh0v04Vrtsm4cOc8Wy
 bvFpfruma8yUM0jb9FxjmfIfXtYT3HlLWoTniCvdmykWfuWU3Fy3fosV4SvCm76tnjBhg4ST
 bfezrNnb4r6dXr1mWRujFcvR3lVM1wSrXhss2ilXuD6PX4mlOCPRUIu5qDgRADJOk0kKAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLLMWRmVeSWpSXmKPExsVy+t/xe7pSfq9iDdbtFbfYOGM9q8X58xvY
 LTY9vsZqcXnXHDaLGef3MVmsPXKX3WJfxwMmi+evzjI7cHisWLSX3aNl3y12j02rOtk8Ni+p
 9+jbsorR4/MmuQC2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1MlfTublNSc
 zLLUIn27BL2M8+t/sBTs5qz4ePwlUwPjNI4uRk4OCQETieuH9jGB2EICSxklpq7RhojLSJyc
 1sAKYQtL/LnWxdbFyAVU84lR4t7Ey2wgCTYBQ4mutyAJDg4RgVyJN8vEQWqYBZ4wSpxad54R
 pEZYwF5i34VdYDaLgKrEiu6lYMt4BWwkVq78yQ6xQF5i9YYDzBMYeRYwMqxiFEktLc5Nzy02
 1CtOzC0uzUvXS87P3cQIDMptx35u3sF4aWPwIUYBDkYlHt4Zn1/ECrEmlhVX5h5ilOBgVhLh
 Ted7GSvEm5JYWZValB9fVJqTWnyI0RRo+URmKdHkfGDE5JXEG5oamltYGpobmxubWSiJ83YI
 HIwREkhPLEnNTk0tSC2C6WPi4JRqYLRdvzU4NH/fweRlmtv3GFX0THs0Z3Jg+BqO74vP/5Cz
 zHZcvbDmGPvWPyphZRtvGEg3vN+i9Vlw26TXmUl7a+ZOy+L+r2a1T8t75RZZrl9yz6K2mR5W
 TbioEvQxdmvR3a2G4lwdlt+eFcV/FyiWuBO8asfTKEVBu+ajHC/1Tr3pYXf32XTa6K8SS3FG
 oqEWc1FxIgCjTb9tYAIAAA==
X-CMS-MailID: 20191206124826eucas1p246538607df51f2d68bce3b09d974b292
X-Msg-Generator: CA
X-RootMTR: 20191206124826eucas1p246538607df51f2d68bce3b09d974b292
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191206124826eucas1p246538607df51f2d68bce3b09d974b292
References: <CGME20191206124826eucas1p246538607df51f2d68bce3b09d974b292@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_044829_791392_6C8AA3F9 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kusanagi Kouichi <slash@ac.auone-net.jp>, Steven Rostedt <rostedt@goodmis.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 9f532d26c75c ("ARM: exynos_defconfig: Trim and reorganize with
savedefconfig") removed explicit enable line for CONFIG_DEBUG_FS, because
that feature has been selected by other enabled options: CONFIG_TRACING,
which in turn had been selected by CONFIG_PERF_EVENTS and
CONFIG_PROVE_LOCKING.

In meantime, commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS
dependency") removed the dependency between CONFIG_DEBUG_FS and
CONFIG_TRACING, so CONFIG_DEBUG_FS is no longer enabled in default builds.

Enable it again explicitly, as debugfs support is essential for various
automated testing tools.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 arch/arm/configs/exynos_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
index dd3e0684f746..3758311bcc27 100644
--- a/arch/arm/configs/exynos_defconfig
+++ b/arch/arm/configs/exynos_defconfig
@@ -350,6 +350,7 @@ CONFIG_PRINTK_TIME=y
 CONFIG_DYNAMIC_DEBUG=y
 CONFIG_DEBUG_INFO=y
 CONFIG_MAGIC_SYSRQ=y
+CONFIG_DEBUG_FS=y
 CONFIG_DEBUG_KERNEL=y
 CONFIG_SOFTLOCKUP_DETECTOR=y
 # CONFIG_DETECT_HUNG_TASK is not set
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
