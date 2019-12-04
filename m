Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 887C01126FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:20:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rEdINAg0QzPB5lpmKQxgxDzmv5RION3rvM+QLoo/fno=; b=MYH
	Ygq8frOKc/yQ2uzUkjCjTxj0XKAv3jocpSFwxBXl2V/v6qQS/glc5m1ktGkVXkAR9o2khJ+PAsCKP
	DrUNMKazvimG/2mduTulmWdQZlWnlnByDtVEWZddHZHKiv1b3XJ7TTnVGgOvupe2Zyn9/yC12JEki
	KDaxk4161lQ+ijL0yN5gjM4SoVp/hYU9dsiW/puynb0JCEu0MBQ3ZdQVUg+sGWH+Yk3J7AzLAcvQh
	f1zwxuchUNNAraXqk2Cdfqx6yXKsLkFr+yhPkoAf/8TIxHDQ7LkN9G0zWvmgZo70F67CzlgTAcuwe
	FXbEwqj+Qqh6A51Y4vJA6o1Z54Cc7QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQph-0003op-Vt; Wed, 04 Dec 2019 09:20:30 +0000
Received: from a27-185.smtp-out.us-west-2.amazonses.com ([54.240.27.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQpX-0003kE-Vb
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575451217;
 h=From:To:Cc:Subject:Date:Message-Id;
 bh=p2y2RwyPERJGQCVp0lw0O6oIy5a8Ly1gvR0t4JSILNE=;
 b=o9Hy3g0YiAN6DMKhqdduJOiDnuLP04VazH8h1ogA1T2iujBlEA6JoYVSv4gyawbB
 9WorE/e0NPmR17rpO2QAk+78VQ+8/Igmm9j7LsnNeWU+35GR6xsCYMSr8KdsaL+Gmmx
 Lbb4b3BJrFd7dwGfyy50VSWmWZDFiG35PMFnzxWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575451217;
 h=From:To:Cc:Subject:Date:Message-Id:Feedback-ID;
 bh=p2y2RwyPERJGQCVp0lw0O6oIy5a8Ly1gvR0t4JSILNE=;
 b=QSdq0Jx5BEVnisaIn7fchUUV6HjiMAjMvPXEzUiOOTFpxNMFXivb/ABv8Z8AfS7H
 HDlUCYgUghK8xo6DQybtm9Elwlbqk+3SsjCRXSQdQb+mA2KwKooF0BSahqtEUxCNGoZ
 dvErbe8Y1JkWRybwjrUFatYzfkqapeNfrt2Ll1xA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9CB94C447A4
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: Rakesh Pillai <pillair@codeaurora.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc7180: Make MSA memory fixed for wifi
Date: Wed, 4 Dec 2019 09:20:17 +0000
Message-ID: <0101016ed035cd8d-18254d1d-8162-4e00-a101-698f3df8c35c-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.7.4
X-SES-Outgoing: 2019.12.04-54.240.27.185
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_012020_053250_59A33196 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.185 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, Rakesh Pillai <pillair@codeaurora.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MSA memory is at a fixed offset, which will be
a part of reserved memory. Add this flag to indicate
that wifi in sc7180 will use a fixed memory for MSA.

Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
---
This patchet is dependent on the below changes
arm64: dts: qcom: sc7180: Add WCN3990 WLAN module device node (https://lore.kernel.org/patchwork/patch/1162434/)
dt: bindings: add dt entry flag to skip SCM call for msa region (https://patchwork.ozlabs.org/patch/1192725/)
---
 arch/arm64/boot/dts/qcom/sc7180-idp.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
index 8a6a760..b2ca143f 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
@@ -250,6 +250,7 @@
 
 &wifi {
 	status = "okay";
+	qcom,msa_fixed_perm;
 };
 
 /* PINCTRL - additions to nodes defined in sc7180.dtsi */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
