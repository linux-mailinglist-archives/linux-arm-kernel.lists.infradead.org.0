Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C623159CE9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 00:10:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LD5aJvmxCnKb7ZgGvLIrBze+2NcEF6iEK97CO89rYLE=; b=ZoliGVgVgCQ3Mm
	0vod3t+0UU10V3buqzD2vMrPRnCgragA1A8flbdCF9oSk34urOYl1CjMMwkvxqysUvRfgvtQ0b03T
	r+6VVnK1T1ehN7cORdyRZrxeEsomt8uKKoAuXXjaZ8mL60Em6dgextfygYgnLk1FJwyzKctR+EAD2
	NoEbQ+TVt5vUWPDt7BT3qj4/pTIO3JLqqpFkGNtcrZaCksjgFdxfJ5RuAPg+SLICFi0+K4AgDmxIC
	XyCllv0D09qDddfune1FUctILTiEvOTwO8t+IFiG8Am8LUotpDN/0lYRh8sQP5AzR+lXpd4DmNmVW
	GwyyGnvgjG/VJP6wW9WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1efk-0000ev-6H; Tue, 11 Feb 2020 23:10:28 +0000
Received: from gateway34.websitewelcome.com ([192.185.148.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1efc-0000eL-Ay
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 23:10:21 +0000
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway34.websitewelcome.com (Postfix) with ESMTP id 1FF17F6AFD9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 17:10:19 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 1efbjLJ3PXVkQ1efbjjcYn; Tue, 11 Feb 2020 17:10:19 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yFnjx64dgiiZ1XH9rrRxswSzvLdbpn4JZOzII56j4gI=; b=RTAP6TFYsYbS3jnM1H8QKtOyew
 liDksF7Xr+Shdf4rVEJd6rPyamrfoXRqhl6lm38z7UJ9+7PZPMQhLrWU2w1YXuvlbKnUZEduQSebB
 dNIjUzN/P7cM6XyIS4uRD7NEtoJX9m1WForLlBVuc0pCXwV6j1xEh2Ohf4pNzzQ1aXpsAIdYQDsXx
 y6/trsllEObVjj+zMyQhK87K8ZMrxKDAP8ydwroUK9MZ8HXj4R2XXatHDNdvoB56bfLThueeHZjYr
 PehUGF1bm4hHcTZba5bO++hpCpgq0DAQQP1ukDMI1/puCCdySCpHP17wXnDPJvfrkZeFlfC68iqFP
 RD0i6exA==;
Received: from [200.68.140.36] (port=29435 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j1efZ-003Ugu-Qg; Tue, 11 Feb 2020 17:10:17 -0600
Date: Tue, 11 Feb 2020 17:12:52 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH] firmware: arm_scmi: perf: replace zero-length array with
 flexible-array member
Message-ID: <20200211231252.GA14830@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.140.36
X-Source-L: No
X-Exim-ID: 1j1efZ-003Ugu-Qg
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [200.68.140.36]:29435
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 14
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_151020_427790_8B974983 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.148.196 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertenly introduced[3] to the codebase from now on.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/firmware/arm_scmi/perf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 3c8ae7cc35de..8f79a98041c4 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -84,7 +84,7 @@ struct scmi_msg_resp_perf_describe_levels {
 		__le32 power;
 		__le16 transition_latency_us;
 		__le16 reserved;
-	} opp[0];
+	} opp[];
 };
 
 struct perf_dom_info {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
