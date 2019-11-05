Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF373F0570
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 19:54:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrlbOhOd1/s1Eq33i2W15bjQq97jNFvuQ5q6eT/Cw7s=; b=IGy8GExrphBrDM
	YAPEh6W+3Ob1P3CClVLbc+cx9VbFXdtQlxiH7YCyFYuEs+8ePH+WWdrVUJoDc10B7gx8JJ3sRwfyD
	WP7XYUveS5px2fjtbOmJ5P+2BI1s/hN+vj7VH3jjxxp3DgKN7aN7LEgs8A0dl3Qd0mfSYp7AHPnaz
	lHLYgZmRP/gNNJA/Pc/M+vf3fVlM0GO3M1e5TjcA2vIMrlidsMl1S3GBLzfCqbW6gfHLMrbgUjRn1
	o9Wfn1TkLW1MuYeGpm8NCbmey61cZcdA+QjVmkP9omRyVJPCxfdaCR10aUpEdT3V28hrZIV6JPisN
	2yUf95mDrITgOm/5Xtvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS3yY-0006CQ-Sz; Tue, 05 Nov 2019 18:54:46 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS3yQ-00066v-H7
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 18:54:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1572980071;
 bh=IrHoS5ELADMnGYzpkW9OXRrDyaxbfr7vW949AVfzx8E=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=c6WZIX0lhsf/FQIAGjlonMjOHUY0NYJA3EXmkh5PZ2mfJ8yGPrO/Hdl7hOg7RveH0
 PFYHMntG90mwUsvbM08ZosbK0DpxMhD0BFSnrH1wOVDd+7+wU7XpRVhjLaWI8Vw8OY
 A8MlCDOvumr8/IyreN5s/1Yny79pF/CjJilVSHPA=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.164.204]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Ma2lb-1iDyX2371D-00Lm1o; Tue, 05
 Nov 2019 19:54:31 +0100
Subject: [PATCH 1/2] misc: xilinx_sdfec: Use memdup_user() rather than
 duplicating its implementation
From: Markus Elfring <Markus.Elfring@web.de>
To: linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 Derek Kiernan <derek.kiernan@xilinx.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michal Simek <michal.simek@xilinx.com>
References: <af1ff373-56c0-ca49-36dd-15666d183c95@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <f6f8f94b-295f-48f5-902e-3d6d4052d76b@web.de>
Date: Tue, 5 Nov 2019 19:54:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <af1ff373-56c0-ca49-36dd-15666d183c95@web.de>
Content-Language: en-US
X-Provags-ID: V03:K1:dFo5RsQWKBeUoKyfql5yStMOyrlHR0rO+G9FjsXmshzGuPDZIwi
 CLmjUkjSTijRScg3Nu5tXKzCelMTVxaXX34/cCKMvw7cYr9A/Mqu9ThimDT08ZiGLfHG03F
 bKWBwOmPZXOewykclw11Bkcr3VIC6prNwanqtuPr/5og5EF35M2WpBzScE9s8WvJFVGYhjh
 PgpP0zErR5UrgvUIKosSA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uLMQ6rGCgJE=:Ie6v7c+PMy4IqftgQ0T/kC
 RP8iGRQ/aDyPb+zGwgzdt6rEEnQ8QgY8S/ZXuv1sWP2I0dOkceEs6QMqOa0rFG24+fQ2m508u
 LS11NmuYD2m62FfUwRRhB5MzPw9ZJ+7DJAfwJISdjcUQBsS+rjZSFdLhDA2etZ0Y6Vz71BcqU
 j7hlOqnzJNHK7P3+cjUVyS2dr8SuMV04BbG1lDCEx5mlzdM5KWfiLelNzODL9iQPosPhrnJyZ
 QugPjWu0xKTU5kFH6brpyAJBy5sDvRMZG5IWO+dgzHtrgNbWXYfLrVEnNdD9ueaJkGT73LYXR
 700lLgSHzT8SvEQPgmp3ImdcCoXA/9XPJOGgZHqsX1uQi/ySQnhrGxPqj0hb3g4zRKbQceGRw
 r3Nt5jJTFMLmACOJPNF3OFQYg0PvTQX/dR7D791A3tvVWShzyTr+t9jyCNnbm8VIWCcgzAmOC
 mHN+0IdVokz6MY5tE54Tmko6Z4m6gI/vpjLvPScayoWF1o+OuN9gKwFVj8odvxk+r2MrvgmWW
 4m0UFG2W4u9Wr3g3kknAs6Jr2Q2zIVZtmPCuiItiaOVRsXqkplPM/MVTAHanXYgFtiNTLA8p9
 f1DITw4Vut8BngbGC/cQPgleK++PJuw17r50KValkQrvUEVVCBIN0RjhTmOhKr3gdt1445NyO
 LBB6VL0Wfu2GLzq9VTGfcuNDEbuqPtKnq2+w+mHDnRuhuocxsUnU2lscditZFDqQ9WJKVC8G9
 9l2fKtVUS5UCrt/XzCe9pdxqZU6pT0hbicjXICVkNKAsfgeglXCQpPi4yQTuLCm5JCIclOY2a
 BsaLkf+TtSZCZ9ZDaLR6ZKqLHWVvAYh8KiBEIdw3S3IeYGlizQ4IbtY9SzBgbZOIcdQoUShxY
 1GZKcAwIKYpJ+MbHTorX46Fay+1VTlQ728nf2Z3qeUpE9QHJuN/m+ia7CGKo05cEeVcOn5l9A
 rWzhWySHHqePI5LlT7G4Xxgzpyk0a7NwHdSnQfhCfOn1MfyfH9wLY9nFmCzyBWW/0BgfJfIiE
 2pgtsdUMJbik91rKWj/jsVOnrtQFFGYAhK7Ac2yBmeboSt/jN22aaGDHmRy/Do0AxwsYASC+f
 wleyTJHnDlY8zlTxCKRRi2910P+PzByl8Q4UgvLbA25rHdQJzEWOe8ilv5fFsGLCOJG+8Lc1s
 8SWjxJYw+8RKTuMNkuoVTGTTyE0tgW7yzoOTG+FnsZYOndaSgBNo9bnbgSs9a0tMdBW4oA1Qf
 HJkmLdiZeyAVhJkYbR1aWXJYg90OSr+5ouG9zLMu264ZNBqCEor/kO7H+yKU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_105438_860419_65DD6391 
X-CRM114-Status: GOOD (  11.92  )
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
Date: Tue, 5 Nov 2019 19:09:15 +0100

Reuse existing functionality from memdup_user() instead of keeping
duplicate source code.

Generated by: scripts/coccinelle/api/memdup_user.cocci

Fixes: 20ec628e8007ec75c2f884e00004f39eab6289b5 ("misc: xilinx_sdfec: Add ability to configure LDPC")
Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/misc/xilinx_sdfec.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 11835969e982..a622fcf4954a 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -649,14 +649,9 @@ static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
 	struct xsdfec_ldpc_params *ldpc;
 	int ret, n;

-	ldpc = kzalloc(sizeof(*ldpc), GFP_KERNEL);
-	if (!ldpc)
-		return -ENOMEM;
-
-	if (copy_from_user(ldpc, arg, sizeof(*ldpc))) {
-		ret = -EFAULT;
-		goto err_out;
-	}
+	ldpc = memdup_user(arg, sizeof(*ldpc));
+	if (IS_ERR(ldpc))
+		return PTR_ERR(ldpc);

 	if (xsdfec->config.code == XSDFEC_TURBO_CODE) {
 		ret = -EIO;
--
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
