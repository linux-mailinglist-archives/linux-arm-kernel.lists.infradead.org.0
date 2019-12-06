Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8902E1150AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 13:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=csR6opjVo6AhVObq3oLkqNgbOwnUW9gvmWQ3eOxsLfY=; b=oD
	KjK2qFOBdIWu2dm6i61Z3E2+AQqCtj4WdsdmBlI0a4IrHgwzVIirftq9/VCoW8Gw8PW7u1H+h5EZw
	7Q38J7Zor6wvg1BZ1RmzF/Bo16QHwbJbMyl9bTSb1yF3Uq/6GqyzRbiRQTeDLH+Zj8vOcezqUvTQk
	kyJQJ5ZJvZUxlX122+/dY5wy8D8YSbNNW+lHbj13QOv2qSP0bWV+vfAM6Zu1GlAaoLbOwYXhKnd9V
	Q0LbXkfkg/XSG/Eny8zXzD4FrRmDo9wy/P1Zq22A8V/KY1IjpwlRCTcJt073hwzHcNt8TwkUFEL5i
	hco+iKzd14wZe+VRosMk7WSa9qoHCQdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idD54-0004rV-RW; Fri, 06 Dec 2019 12:51:34 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idD4v-0004r5-Q6
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 12:51:27 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191206125124euoutp0265dd918c5e82c5a607c4c20f0bc24f6b~dyTdgGWSA0882108821euoutp02V
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Dec 2019 12:51:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191206125124euoutp0265dd918c5e82c5a607c4c20f0bc24f6b~dyTdgGWSA0882108821euoutp02V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575636684;
 bh=wF1Iy7VsoT2dA4yuiPpiriyC0w9NhNDxY4A8+kILiJk=;
 h=From:To:Cc:Subject:Date:References:From;
 b=X9D+TJ1jpuWYWlNh0VcSUHOxpmchQi+awZxcGlzfUNxITsJrm+8goXrkw+qkfwNoK
 N5IN9G8dfyyz+7r4bJAu6PzBaIjdGiraQ4BNGSU5kmBYiMb1lWjrnx+vzJ1KW2q4oY
 vOMUrEKjImTLJkH/78ZmTuwVi8PLG/AbOFmRDwcQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191206125124eucas1p1d7f4a644ba4feea13d90848c6bad9607~dyTdO4M7b3207632076eucas1p1i;
 Fri,  6 Dec 2019 12:51:24 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 31.D7.60679.BCE4AED5; Fri,  6
 Dec 2019 12:51:23 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191206125123eucas1p1c1652484cbccef8d8df37e09affe4e25~dyTc0k1df1825518255eucas1p1d;
 Fri,  6 Dec 2019 12:51:23 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191206125123eusmtrp2ffb17d3f3f0243921fd4239724b33edf~dyTcz7C4Y0189301893eusmtrp2I;
 Fri,  6 Dec 2019 12:51:23 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-1f-5dea4ecbcf79
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D4.D6.08375.BCE4AED5; Fri,  6
 Dec 2019 12:51:23 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191206125123eusmtip2070f004f9a6e9b6c4ef2024ffd34fe94~dyTcVHUsz0588405884eusmtip2K;
 Fri,  6 Dec 2019 12:51:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm: multi_v7_config: Restore debugfs support
Date: Fri,  6 Dec 2019 13:51:12 +0100
Message-Id: <20191206125112.11006-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuphleLIzCtJLcpLzFFi42LZduznOd3Tfq9iDeZ9Mbf4O+kYu8XGGetZ
 Lc6f38BusenxNVaLy7vmsFnMOL+PyWLtkbvsFqeuf2az2NfxgMni+auzzA5cHisW7WX3+P1r
 EqNHy75b7B6bVnWyeWxeUu9x5UQTq0ffllWMHp83yQVwRHHZpKTmZJalFunbJXBlHPj1h7Hg
 PEdF356rbA2Me9m7GDk5JARMJGbf2sTSxcjFISSwglHiztJrjBDOF0aJ6ZPvsIFUCQl8ZpQ4
 d8kWpmNrz1QmiKLljBK/+r+xw3Us7rrPDFLFJmAo0fW2C6xbRCBbovPxA7CxzAKLmCT+LNwH
 tlxYwE6i8cJaoAYODhYBVYklbypBwrwCthITT81hgtgmL7F6wwFmkF4JgWZ2ieM7/kIlXCSO
 dE5jhrCFJV4d3wL1kIzE/53zmaAaGCUenlvLDuH0MEpcbprBCFFlLXH4+EVWkM3MApoS63fp
 Q4QdJd6+aWUDCUsI8EnceCsIEmYGMidtm84MEeaV6GgTgqhWk5h1fB3c2oMXLkGd4yHR2b6M
 BRJysRJf1m9hn8AoNwth1wJGxlWM4qmlxbnpqcVGeanlesWJucWleel6yfm5mxiBaeT0v+Nf
 djDu+pN0iFGAg1GJh3fG5xexQqyJZcWVuYcYJTiYlUR40/lexgrxpiRWVqUW5ccXleakFh9i
 lOZgURLnNV4ElBJITyxJzU5NLUgtgskycXBKNTBO0VhYfyP1mEPbLNncLct7giTZEkqeiscc
 8D8ZPqN4T+HrXp8vF/5vfKZ6l1e76LPTNN3D7xZPr6swtW9+9SnO4O09/xonwYk2V7WMDK0i
 GX7pPfG8vGzlhl+LptVtmCazIod79QeuuL/zbutO2v9lq+PmB+1ia379Zchb1mnvf5hhJ2M6
 1zc5JZbijERDLeai4kQAXjPhyx8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrILMWRmVeSWpSXmKPExsVy+t/xe7qn/V7FGkw8pGjxd9IxdouNM9az
 Wpw/v4HdYtPja6wWl3fNYbOYcX4fk8XaI3fZLU5d/8xmsa/jAZPF81dnmR24PFYs2svu8fvX
 JEaPln232D02repk89i8pN7jyokmVo++LasYPT5vkgvgiNKzKcovLUlVyMgvLrFVija0MNIz
 tLTQMzKx1DM0No+1MjJV0rezSUnNySxLLdK3S9DLOPDrD2PBeY6Kvj1X2RoY97J3MXJySAiY
 SGztmcrUxcjFISSwlFGi5egpqISMxMlpDawQtrDEn2tdbBBFnxglVs/9xAaSYBMwlOh6C5Lg
 4BARyJV4s0wcpIZZYAWTxK1n+8FqhAXsJBovrGUGqWERUJVY8qYSJMwrYCsx8dQcJoj58hKr
 NxxgnsDIs4CRYRWjSGppcW56brGhXnFibnFpXrpecn7uJkZg8G479nPzDsZLG4MPMQpwMCrx
 8M74/CJWiDWxrLgy9xCjBAezkghvOt/LWCHelMTKqtSi/Pii0pzU4kOMpkC7JzJLiSbnAyMr
 ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDo0HLzVflKYarshuW
 uV/Mn+WonvHV3WjJ1PNMpjFhctWBB65ceZBQ+X3R5m0WB6V+e726MbGdn2dWetyCpuObE7W4
 2J7eOsZz/hxf7KQL1zjZ72efSTweve4rdzu/Jl/84yif4knt4fcun772vePvtvlrb0zbL/Vk
 0sXZ23PX+yn4TJio4PvYoUmJpTgj0VCLuag4EQD4BPjIdAIAAA==
X-CMS-MailID: 20191206125123eucas1p1c1652484cbccef8d8df37e09affe4e25
X-Msg-Generator: CA
X-RootMTR: 20191206125123eucas1p1c1652484cbccef8d8df37e09affe4e25
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191206125123eucas1p1c1652484cbccef8d8df37e09affe4e25
References: <CGME20191206125123eucas1p1c1652484cbccef8d8df37e09affe4e25@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_045125_978664_F219A409 
X-CRM114-Status: GOOD (  11.15  )
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
Cc: Kusanagi Kouichi <slash@ac.auone-net.jp>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Olof Johansson <olof@lixom.net>, Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit fd7d58f0dbc3 ("ARM: multi_v7_defconfig: renormalize based on recent
additions") removed explicit enable line for CONFIG_DEBUG_FS, because
that feature has been selected by other enabled options: CONFIG_TRACING,
which were enabled by CONFIG_PERF_EVENTS.

In meantime, commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS
dependency") removed the dependency between CONFIG_DEBUG_FS and
CONFIG_TRACING, so CONFIG_DEBUG_FS is no longer enabled in default builds.

Enable it again explicitly, as debugfs support is essential for various
automated testing tools.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 24962d0e71c7..0ffa957f2c94 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -1121,3 +1121,4 @@ CONFIG_CRYPTO_DEV_ROCKCHIP=m
 CONFIG_CMA_SIZE_MBYTES=64
 CONFIG_PRINTK_TIME=y
 CONFIG_MAGIC_SYSRQ=y
+CONFIG_DEBUG_FS=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
