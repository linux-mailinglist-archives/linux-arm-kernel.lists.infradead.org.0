Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0CEADC02
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zGddR3ig3s78ZJT8UOwmK5Ubun8WXz0FAnDSqHuDuqY=; b=Org
	mKpcbmq/4BzrSBThQOdEcgFCVKVp3fhGJlW989pBL0F9wU9gI4IVFK44amY+VQySf7dZgvxPqnd/W
	ObMRYjzrXuuqT9mIZu1aCf7fvI/Z6pqosy6qZM+Dbihf8slAjbzR68zpzVNZq01qN7s5HK8B8gkwc
	dbKUrohtc6h4YhTKs3CiLzWcACn2qHNHEJKYZF+QeEUpXYA45UFqDmqSi3cTA6vu/9+6nwUPEt5WF
	O7x67YYZmiqjBlzA+vrUZ4D77I3kG9MA41NK5+C4nGd3O3Z+YXbGD8NNj/4WeoXNrntsi0sZhhoo5
	pcY8VmuPe374Loz6NM2HzO6JQ4SuJdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LTs-0001rr-Q8; Mon, 09 Sep 2019 15:21:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LTj-0001r8-7x
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:21:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5285D169E;
 Mon,  9 Sep 2019 08:21:17 -0700 (PDT)
Received: from usa.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CEAC63F59C;
 Mon,  9 Sep 2019 08:21:15 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
 Etienne Carriere <etienne.carriere@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH -next] reset: reset-scmi: add missing handle initialisation
Date: Mon,  9 Sep 2019 16:21:07 +0100
Message-Id: <20190909152107.4968-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_082119_330674_5E99A899 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

scmi_reset_data->handle needs to be initialised at probe, so that it
can be used to access scmi reset protocol apis using the same later.

Since it was tested with a module that obtained handle elsewhere,
it was missed easily. Add the missing scmi_reset_data->handle
initialisation to fix the issue.

Fixes: c8ae9c2da1cc ("reset: Add support for resets provided by SCMI")
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Reported-by: Etienne Carriere <etienne.carriere@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/reset/reset-scmi.c | 1 +
 1 file changed, 1 insertion(+)

Hi Philipp,

I can either take this via ARM SoC as the driver is getting merged through
ARM SoC tree, or you can apply this once it gets landed in mainline.
I am fine with whatever you prefer.

Regards,
Sudeep


diff --git a/drivers/reset/reset-scmi.c b/drivers/reset/reset-scmi.c
index c6d3c8427f14..b46df80ec6c3 100644
--- a/drivers/reset/reset-scmi.c
+++ b/drivers/reset/reset-scmi.c
@@ -102,6 +102,7 @@ static int scmi_reset_probe(struct scmi_device *sdev)
 	data->rcdev.owner = THIS_MODULE;
 	data->rcdev.of_node = np;
 	data->rcdev.nr_resets = handle->reset_ops->num_domains_get(handle);
+	data->handle = handle;

 	return devm_reset_controller_register(dev, &data->rcdev);
 }
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
