Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE3A58888
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 19:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=05RHpVD2yz/+Ll4ikdpOvFWrHcQnY7Y1gXKeXzi12bk=; b=uHl
	jYhSu4JA330n1zACsbm8mgKLln6HT5aysNQbe0x2N249TggpaucgN5m5Bv8bIQTNVMQ0XfMZijWoY
	jm2oWK1qWwGxTXOifZAfTRr+3pIkGWMKGn+J2zeY8BRfkGqyg2d5HQ2pjE30Djo9cyJXCpYcjw7Jy
	SaFZeu1usXUZ776ZqvE71YBXutxkiGSEzzyJGrbDjeHGJIY+6it+gzoPpSmIh61Z5+c3xWNHV5at+
	5/pw3dDa5blI8Zldzf3Am1IjH/pCMw40umGdSiTAoI8/9TU/LRoa2FvZX+MMzZ2+tH5ZP5Eq3uIG8
	UGZxmqaT1Sg1VcL0iWuE0K47MjO+OTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYJq-0002tX-EH; Thu, 27 Jun 2019 17:36:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYJL-0002lD-QX
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 17:35:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so1572391pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 10:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=01KFyhJUV3RoNriqLf5yZvf+oiqWf/wBU4j/uLg4Xuc=;
 b=uBVdbE3Jhxyv437CFJJGnINzZBdXk56Qp/pNpZfZPaOVfVl+sZMXIyYzWjz8o0VFnJ
 T+JSipaAlS39HZMZj0VHrh5JLWeYKWebAhdklZafCZzcg8OnY3Ev3gx3zHCi1p9pmUYW
 Lf1rupKSulkylrYR17QzTHWsFDKqc2zLyd8zaAcCT7NurEi89oquIGSkmr/cGCKN6D1m
 8r4MqtBJmIQ7xPm6zn+kW2YGk2ElBGUveuQ3AZWvEmJmINhu4x2v4BEi7lJKh3BVPwGg
 2olzaHXAxVT9n3DBpWU8gxoD1qZPQVbZM/sDKnRTzXt+hoVP+po5g+GYJ2q1+hdki7r3
 P70Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=01KFyhJUV3RoNriqLf5yZvf+oiqWf/wBU4j/uLg4Xuc=;
 b=WXIL9k36vhhXvczIThH8NxCUfBbY89xWfqwBs8nmQllnRt0olbfcK3VSnrxEDUqj3G
 AJUrJr0DKkRdiOy+MQy1GBCaviP8N9buWHrVcxEJrwtccfNmyT5Uy9YxQF4bJjyUw3i1
 KnaIAYm2CeBBJpArSRDSAbS89UPBNctQB6X7wSUVXoLBZMbLmKMNImsI36SQf+oyIrYI
 5aRUg6zDJtIE6CKVrbZYoHo/retnXzezPzsP5HQGeXs3+HH2yMkA75H75qrOTtyJdeZj
 N/lZrTz7RkivDCoJy3q3j/h4Z/X9kr2p0cDh3cjHzj8sTtgJv+M6s8c4zawSdAVkLvkI
 oFbg==
X-Gm-Message-State: APjAAAXPTN3QEi56zfv3AGW/OuFFwNNr18WHs2yoSCG82tAZFY0Mn4ix
 4i4v668ZSmM91rd+LC2dOTI=
X-Google-Smtp-Source: APXvYqx+SNOeQczFkdaeBwmZhm/+mJTRZpohDTl9JOaOaz6UQcducOrh5q7I2LNI6Zl46a6QPO1zNg==
X-Received: by 2002:a63:c34c:: with SMTP id e12mr4711054pgd.195.1561656951061; 
 Thu, 27 Jun 2019 10:35:51 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id p68sm4011548pfb.80.2019.06.27.10.35.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 10:35:50 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH 13/87] qcom: hidma_ll: Remove call to memset after
 dmam_alloc_coherent
Date: Fri, 28 Jun 2019 01:35:44 +0800
Message-Id: <20190627173544.2509-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_103552_016596_4B914D29 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dmaengine@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, linux-kernel@vger.kernel.org,
 David Brown <david.brown@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Fuqian Huang <huangfq.daxian@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

    In commit af7ddd8a627c
("Merge tag 'dma-mapping-4.21' of git://git.infradead.org/users/hch/dma-mapping"),
    dmam_alloc_coherent has already zeroed the memory.
    So memset is not needed.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/dma/qcom/hidma_ll.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/dma/qcom/hidma_ll.c b/drivers/dma/qcom/hidma_ll.c
index 5bf8b145c427..bb4471e84e48 100644
--- a/drivers/dma/qcom/hidma_ll.c
+++ b/drivers/dma/qcom/hidma_ll.c
@@ -749,7 +749,6 @@ struct hidma_lldev *hidma_ll_init(struct device *dev, u32 nr_tres,
 	if (!lldev->tre_ring)
 		return NULL;
 
-	memset(lldev->tre_ring, 0, (HIDMA_TRE_SIZE + 1) * nr_tres);
 	lldev->tre_ring_size = HIDMA_TRE_SIZE * nr_tres;
 	lldev->nr_tres = nr_tres;
 
@@ -769,7 +768,6 @@ struct hidma_lldev *hidma_ll_init(struct device *dev, u32 nr_tres,
 	if (!lldev->evre_ring)
 		return NULL;
 
-	memset(lldev->evre_ring, 0, (HIDMA_EVRE_SIZE + 1) * nr_tres);
 	lldev->evre_ring_size = HIDMA_EVRE_SIZE * nr_tres;
 
 	/* the EVRE ring has to be EVRE_SIZE aligned */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
