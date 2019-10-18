Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A51D2DC588
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sbZFuaSCbhOt+Fv0Z5FusX0zdm0wghL8blGySyuNAEk=; b=tOIB5I2c1RNCl4QhJ2prQS9Wvc
	x48bO+I/A4NpgzbDXeuM91r/0HhDBJQ+wpHSjR+an0ES6TjznSXRQLh0d5NzXGwsfsVVcUv3EkI+L
	KbxVmecEpoqVVyYP1iQvLBwze8qEcB0UVwyoA4dVbXVFhNMFsoR6wyrj4waFZTfSxDH4fLcCptqQH
	KVEYn4nw546rqBd4vRVxfGh3Wzhg+za/6CknW3MlvYbiaO1jia6Qxj8L+5hGJATXhooKuinqfBb1D
	/emTqJ545vxCp9d9dAn5De4i6/aELoj6SRxmbC9rSzpALX9MBAEFe/PkBBx5ZvXxY+7jqiiKf6f19
	bccQGtQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRoL-00088o-O0; Fri, 18 Oct 2019 12:56:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRnh-0007ux-47
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:56:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id o18so6128527wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RI1bFjYRN5JoMtaeqs26PN1sSu7fROvvqss/8HZl7T4=;
 b=Tkump4dkVHciY3EeN1den7fHXElV+9LPol0+LGG3Z7MWtrr7yGuf5RVZ41hMkz6dL7
 pQDq79k4nyRfYaA1srfAPUUjnTfnixSxG/3HVivTenEJ1j+axHw4aH9c3ZleE1gp7cQf
 DrZWH2k2B12+nwMszZ5/5W7wHgoITM5o+D8IVlOdJrE7lFGvHcjP31AoaUprRjTU3XyB
 t7sm2PpXhN4LLXJPIYLbVz7vh7qVTByPvW24Iid7J8l6L+YZ5OEVulRWRaIcWLQVxj/Y
 yLvz2i2tfSl6U88FWJPSqnspRFwayraj9hJakM3sJQFRaBIAjORWXkWMfgOnq6qUtDqQ
 3ErA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RI1bFjYRN5JoMtaeqs26PN1sSu7fROvvqss/8HZl7T4=;
 b=bpxpJIW9pzUGEIpmOEX0lIXy6DlxR62SHbA6RrebBKc6Kbi/wHja0AqOt9n3EV6NIq
 GHpOjva5BE9vn0Yp07/9oBSyGoO0W3cTMjjAfv+eSX99dw7FRy7/f97vapLOJ4e3Rknl
 whisxpLdWt2jaOEpdFMjPyNJq22+NGZYOXwSXzWbbMAL+EJ791JmM5r4Iwe2d6gwuwrG
 xkQMXbqbX/cn1suHmYrrLMISm0i2NcS8PDOM8NUpbstAa/baL7AocghAC8KL+oAQceUe
 v3GqT+Y19DQa8palGiQQspbspl9WCtxXHtUhQ7tzYgCyp0HWCNhKpb7eCizXSK2V0AOs
 ipjQ==
X-Gm-Message-State: APjAAAWPIE1cSIf/MdKEXV3q15xOM716wCvTxkext9xrSgdsacSg/p2a
 eA0miL8o43nzJYkOBPbXhF2TDA==
X-Google-Smtp-Source: APXvYqxviqehwQj2KMJTxb29i2NMIz5kZ16QzwRcaK4PH4t57iD2gSga5z/RCWxme78LpO7Yl7arYg==
X-Received: by 2002:adf:e292:: with SMTP id v18mr7628000wri.190.1571403371768; 
 Fri, 18 Oct 2019 05:56:11 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.47])
 by smtp.gmail.com with ESMTPSA id q14sm6058491wre.27.2019.10.18.05.56.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:56:11 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: broonie@kernel.org, linus.walleij@linaro.org, daniel.thompson@linaro.org,
 arnd@arndb.de
Subject: [PATCH 1/4] mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and tidy
 error message
Date: Fri, 18 Oct 2019 13:56:05 +0100
Message-Id: <20191018125608.5362-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018125608.5362-1-lee.jones@linaro.org>
References: <20191018125608.5362-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_055613_161636_D1C8E6DE 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dilinger@queued.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In most contexts '-1' doesn't really mean much to the casual observer.
In almost all cases, it's better to use a human readable define.  In
this case PLATFORM_DEVID_* defines have already been provided for this
purpose.

While we're here, let's be specific about the 'MFD devices' which
failed.  It will help when trying to distinguish with of the 2 sets of
sub-devices we actually failed to register.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/cs5535-mfd.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
index f1825c0ccbd0..2c47afc22d24 100644
--- a/drivers/mfd/cs5535-mfd.c
+++ b/drivers/mfd/cs5535-mfd.c
@@ -127,10 +127,11 @@ static int cs5535_mfd_probe(struct pci_dev *pdev,
 		cs5535_mfd_cells[i].id = 0;
 	}
 
-	err = mfd_add_devices(&pdev->dev, -1, cs5535_mfd_cells,
+	err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, cs5535_mfd_cells,
 			      ARRAY_SIZE(cs5535_mfd_cells), NULL, 0, NULL);
 	if (err) {
-		dev_err(&pdev->dev, "MFD add devices failed: %d\n", err);
+		dev_err(&pdev->dev,
+			"Failed to add CS5532 sub-devices: %d\n", err);
 		goto err_disable;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
