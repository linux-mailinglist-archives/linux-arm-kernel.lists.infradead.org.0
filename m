Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6016AE065B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 16:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5iMU3jI29XboAr/UMyAJsTAfeQfDxwu45zRd7tOaqrQ=; b=JoAbgPYg+/xvgE
	Nqaacp9swkQg6MVsnDPVYFMn90ujPRYpUNT70Vq9nMiRAmJJCGpI7shz2XcSrwNvSrCQ8a0yfqQ8r
	tzc5eh7HZdiXsj7xcngeepboaIH+ZYtnewgdGXQy4Wp4577ARHBqAUUOVYjvjlNdMEJPxCz+L81RU
	MsITLg29C96vysdmlzhlcD2oO8hEvmBss7CKvA6wRtMNjtpGkdnTp2xiDUrJjUnlJaMsrLa2gLKdq
	bY0X0HExH/dzskxbXDuDFQ2F9wvV0P0m93SiUe6nanW++Kqnoovu0D8VNi3cQW4k9MDilwpuZb4hZ
	o8khft6gIQsyXgDCXQsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMv89-00087H-99; Tue, 22 Oct 2019 14:27:25 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMv80-00086e-I2
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 14:27:18 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mzhax-1i9dMY3aYT-00vdGx; Tue, 22 Oct 2019 16:27:07 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] PM / devfreq: events: fix excessive stack usage
Date: Tue, 22 Oct 2019 16:26:48 +0200
Message-Id: <20191022142703.1789898-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:qh/RvLmjzDt8CUVV7ACatn1skvYcyfu5E28VkIq7AS6tttHZlMz
 TIjAjlq//c4oE0S7pk2+qn3TwWn+zIIDE+irKrPdUQkLSm9C+UMARBbwSYsXjmQ3A4Vj4+m
 WaYPiiDoSMGCRXT0S2+joZKLny6x7/4mgNiuXorMgIEGEcbqw0dHAFpnjrAPOburAvNGWF+
 9WZ22K4YeTldC144O2aUQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sL01PcIlAAs=:AntrFvxzg3D8JTrZICKrqN
 1ZPcU53wnTXZaTpk0RQYe0TbS0a4kx0bLi2NKVF//lAiil22BuvuewyWdDVifb017uCRjc23M
 a8bn7moO7kXmW24pWlqE+VddKGpvytQMyzEzzGqKZPCHhUe7IErLHu6/FsS0GZj+qI3WiMuSj
 sdZrCdC+hXXvm+yDqnzpqzQ2PNTiGqUeYncWNojpuimzpwSVNBkd6ZUhaGp/ffsVMRA3ndliV
 P8ePYjyBGCeEOiCGk+WSL4mIsAJhFgopmppPVrLN4Y/L40+8DVKFXHJu4njXeEZxz7S4flg/H
 syJEdRIGPIpMeBIqzfhtr/YfVMRuiey+q6s4j9ibCcz3HZlDAxgHjM1USfC1qKlLiD2F/qTKL
 2aB6GnHIJ/n8MqcKJBN6LcVOklxnFb62hwn0IF7mB9i4ZbUgwuQMoZJn7iq2S+uC86BA77rSZ
 77t2x1ygZ+fNSEP2Qdee08lDS4Q9N7qkcUKrm7JPIK9meUfMzOgsnSwAPbc9pFIxAsJgD73El
 HN8hbnxKcaHLSKXN4RFXBMka2+4KtDTCQPqISfbeWJyEkUZY8Q1lNdsTIxtR80lVCL0XxtP33
 gx9qE9CPg0iYSV8AbwAggbQ3Aag0BfGSnPClLTRIhOY3NcISc7LnCzvryq8hmcpPpqLDOQDLW
 DBb4COdvFcGH+wED2mv5Rp4f/jkAz7Rj8f2re+ij6KoQuU34ryYMH6VA9pTnVqAQx2W/Bek+H
 iJqeYhoXUFR47tPo3Xo1uxkr+oYSmEzHbP/4WCDejGwmlioTth7WUFtwvbv/pYbZ3nCbst2bv
 zwbdwYn6oSVjStsGxfOWHEX4D4miVBlCvShwv//yhKuL0HP/BCDhx3o5UrU8O2YXXRBPlIu61
 ZV8Swi1xkpPum25vukVg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_072716_895747_DB6A63B2 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Putting a 'struct devfreq_event_dev' object on the stack is generally
a bad idea and here it leads to a warnig about potential stack overflow:

drivers/devfreq/event/exynos-ppmu.c:643:12: error: stack frame size of 1040 bytes in function 'exynos_ppmu_probe' [-Werror,-Wframe-larger-than=]

There is no real need for the device structure, only the string inside
it, so add an internal helper function that simply takes the string
as its argument and remove the device structure.

Fixes: 1dd62c66d345 ("PM / devfreq: events: extend events by type of counted data")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/devfreq/event/exynos-ppmu.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/devfreq/event/exynos-ppmu.c b/drivers/devfreq/event/exynos-ppmu.c
index 87b42055e6bc..302e466549d3 100644
--- a/drivers/devfreq/event/exynos-ppmu.c
+++ b/drivers/devfreq/event/exynos-ppmu.c
@@ -101,17 +101,22 @@ static struct __exynos_ppmu_events {
 	PPMU_EVENT(dmc1_1),
 };
 
-static int exynos_ppmu_find_ppmu_id(struct devfreq_event_dev *edev)
+static int __exynos_ppmu_find_ppmu_id(const char *edev_name)
 {
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(ppmu_events); i++)
-		if (!strcmp(edev->desc->name, ppmu_events[i].name))
+		if (!strcmp(edev_name, ppmu_events[i].name))
 			return ppmu_events[i].id;
 
 	return -EINVAL;
 }
 
+static int exynos_ppmu_find_ppmu_id(struct devfreq_event_dev *edev)
+{
+	return __exynos_ppmu_find_ppmu_id(edev->desc->name);
+}
+
 /*
  * The devfreq-event ops structure for PPMU v1.1
  */
@@ -556,13 +561,11 @@ static int of_get_devfreq_events(struct device_node *np,
 			 * use default if not.
 			 */
 			if (info->ppmu_type == EXYNOS_TYPE_PPMU_V2) {
-				struct devfreq_event_dev edev;
 				int id;
 				/* Not all registers take the same value for
 				 * read+write data count.
 				 */
-				edev.desc = &desc[j];
-				id = exynos_ppmu_find_ppmu_id(&edev);
+				id = __exynos_ppmu_find_ppmu_id(desc->name);
 
 				switch (id) {
 				case PPMU_PMNCNT0:
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
