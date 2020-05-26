Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C3C1E200A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r0MlAOa6KS047CLw2mrST82/KDIWsaAGySMHye8hoVc=; b=tiyK0GhaS9sXXNgXWiu5uTKXUZ
	B+JedF4ywwd04/Yq/PK3BsoBywBAnLqeVaK9ZAR4ez3gt87Z2SPGYBzJ/CAsg5neEiadJ6J3LTWV5
	zh6f2FsQC26aJi/i42O5k1+6uF4hDBXDiVPrAWDKoKM6KhdoI7NQNLTneacyUotDH9V+inhClTL/6
	8Wb0XdbZKFIQFE8ITnsOFKPDvW0UPiXQRrjK70ISt1kjMxb159cwiOAT/zPDTEBpVt9Vw4plI2f7j
	q6eKokFnKR7xHyoU0+wfkaM+i2hs/5aYNZrbfeDoJ1sKuugU/1xoFDSL4iWZw9kCmUMpp8NW4pvHh
	eqwo3h1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdX7D-00021R-I1; Tue, 26 May 2020 10:47:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdX6i-0001q0-AP
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:46:53 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so3226324wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 03:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FgO6AdP43Um2PGzv5S5Pfi8oIKzNumXYXeRwuAF9in4=;
 b=Jj93FwV5ywea0S8lQEL+hiTtDlb/eLep4niAG6flvp89Zuw/bp2jcQFCbE+QLYTMrG
 q/XsCFXN3LNdwe9EAQ5VP+glqqrce+cjcS2cQO2R2zP++cJsudNO/CC9gVRWT868A1hf
 KEBfyAY6VdxyQgAWicuOMx8RlJl5oApMFP0zVLelCfAfXOV9cc02UZoXlLxTLmUSsxfK
 YzMAGJ4lGm1gFzuKQKeCX4r/S+wyDpgzqfS1u0VcLdcfH+AG3fkz4Uu5VCbHjpxhPHe/
 nG1GV6IansVFQKhj+i/z0/nhtNTgd7Jqp7dM8+PhK6RpYXNB4RQ31JJxQp1W1KlocfEa
 cM/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FgO6AdP43Um2PGzv5S5Pfi8oIKzNumXYXeRwuAF9in4=;
 b=He6MjYNivOgo1knTgoJ+KAb8ki//goTiJoIZSi0Pwqrt/F3XoF1l3ZIYunn6MYBqgx
 rSHWh3aq8Wfl8S5SGriU/ad6GR8FdRnhkps7hcLi0Y11M0NTrPrg+dRYzgu6Q/NqAI2H
 cwzuuVzx2O15O+612w0acJeUmyBX7pX0csWahtJ6a8++5gTIRvTKO3Aerkka5pMOx1oq
 18zB93K7LfIGjw12o1BOw0PaRkgikRR4KTqLuxhi1yiGRRnOx/vie9zlhNdcxSaJYNrq
 h7uJHK9nHy6SWnwEHn+fRUr5s7gu7O7bConm18phgTmM3p91qPc8YmN+wiSLko3QFIJF
 QtRg==
X-Gm-Message-State: AOAM532Z1N2wTXHx0hyurQdEDcKsTu6LNxW1pteXG7ywT8ZFerkvG/Yi
 IKPGRLQyOCmbD2kZZbtLr9+h+MHwsTo=
X-Google-Smtp-Source: ABdhPJyT6zCbwVCsSmwHdU12WYd+YqWO8s90+X8f3a2fGotcE1+8vWQLTvnoXXVD4YwXsrfUR23KRg==
X-Received: by 2002:adf:eb47:: with SMTP id u7mr19363635wrn.14.1590490010085; 
 Tue, 26 May 2020 03:46:50 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:8bee:312:6092:58f2])
 by smtp.gmail.com with ESMTPSA id u3sm393441wmg.38.2020.05.26.03.46.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 03:46:49 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH v4 1/5] coresight: Fix comment in main header file.
Date: Tue, 26 May 2020 11:46:38 +0100
Message-Id: <20200526104642.9526-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200526104642.9526-1-mike.leach@linaro.org>
References: <20200526104642.9526-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_034652_427823_F3E249F2 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mike Leach <mike.leach@linaro.org>, acme@kernel.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Comment for an elemnt in the coresight_device structure appears to have
been corrupted & makes no sense. Fix this before making further changes.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 include/linux/coresight.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index e3e9f0e3a878..84dc695e87d4 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -179,7 +179,8 @@ struct coresight_sysfs_link {
  * @enable:	'true' if component is currently part of an active path.
  * @activated:	'true' only if a _sink_ has been activated.  A sink can be
  *		activated but not yet enabled.  Enabling for a _sink_
- *		appens when a source has been selected for that it.
+ *		happens when a source has been selected and a path is enabled
+ *		from source to that sink.
  * @ea:		Device attribute for sink representation under PMU directory.
  * @ect_dev:	Associated cross trigger device. Not part of the trace data
  *		path or connections.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
