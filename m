Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33651CE336
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A+hh0V4aype7k1VYyh0ZZ4juR/QkfFOGJ8zlMh5CKUU=; b=ZSxP0r804CUxdeSk/byl01KBM9
	Xc9e55MIaIrdYdKU839TXqhD1y0HrBefR4PPklCx2KmQDBfWlPXKn3MDimvjBGzBPlJfWqS4m3tv4
	F+Xo+1+OFJwOB+1+ErcyHggx6bMEB3k4ftgGidKcScdBcV7YsahvGA/UpAcOIHzBLz+tqvhbElh7N
	XZUKiwbTstdASDMFd9MOpqq8DMn45BYQVrIrmmjxrHI3OuTaoDKlofE7X4G7Rg9NBZ8NbVpvK6WjN
	kp1NU59rKzdkj/5CDHMWE0ui0Lv0BvkXBZZXVXzJaVRamj+HozlfO28HaGEVhL4r94n3a/5uI15xW
	9FCEHtAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSxq-0005yk-7R; Mon, 07 Oct 2019 13:22:14 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSxN-0005lQ-82
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:21:46 +0000
Received: by mail-lj1-x241.google.com with SMTP id n14so13592499ljj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 06:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9VnY7oyb1nvuj9ddTAC30yl2C1zPK5euQfGRtoYt3AE=;
 b=JEpHRdd9Da/yv0DPUmIpUR6s4h3YbVzoztyMA8CL9/TgFewoVAN1/NrpFqEhKRTGtg
 d3v8veDnDcbrO0guEDNFs+k6OotYXawrL8YKNYjZicss1Vt6XOSh0Ci9F9loZcUryIkP
 JEJmeFFuqWznQnA3QFcS9tW5mLDE3gW1UK8iw14sDQm3+sCeAxxU5+U4XhgYFbXiSgmA
 MK8EgUFiRtcEwRvS9YvQUmUfbTSfbD0PGblyjjuPIDNwucClrw1LgIChyaUM1EuyDIJ1
 9o6G5ykv2yBEh99KpEr7oCPdf+tes5QvRYMaPgjEdjKObIFVJyKnKFX6mUFwiMmlWjo7
 H1hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9VnY7oyb1nvuj9ddTAC30yl2C1zPK5euQfGRtoYt3AE=;
 b=CVnHiTK8NM9ujTDi9LZchubZXftpH3SkuT3hlEtlu2lAcUaHO4+/EE9yi0htLYF3Qu
 Dcw48JNMw6sLAn8ZkkhXxWwC8rqqbN3RvUDbFbhWD64+wQHr++/k/Wt50pRvk+0M254a
 pc+JOEhqMKOJswWH3UnaL2OJnogPkm2EEcLu0amvBHUqE26mTXSulnqH2Y/oRbeCHOwV
 fN/4t3wT4PdOSAy/Z0GsU+HUVbG37ujRtunj8rpvN94DCtCkryV/NKJcRzr/cI216jax
 EnBDbldFi3inFUwzsEMbXX6FjKLOUTd8SJ1LdrK2mReIVgzlZRr9szWEysARKvHeHmX+
 oSUw==
X-Gm-Message-State: APjAAAVAxBtAA9FjB5Rg9K/jw7jQeLhYPALpk6om3Gic9vdkVoUI/1Fd
 Op+asdeC9MYLodROEfp2UIw=
X-Google-Smtp-Source: APXvYqxIKidLkPUfNYBYNvrGjL6HgleWWzc8zpaiOSk+3sO6eInotFeBX5WEtWwVRWuMt+rfY2Fv3A==
X-Received: by 2002:a2e:6a0f:: with SMTP id f15mr8017513ljc.17.1570454503343; 
 Mon, 07 Oct 2019 06:21:43 -0700 (PDT)
Received: from marek-VirtualBox.ccr.corp.intel.com ([78.133.233.210])
 by smtp.gmail.com with ESMTPSA id y3sm2894932lfh.97.2019.10.07.06.21.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Oct 2019 06:21:42 -0700 (PDT)
From: marek.bykowski@gmail.com
To: robh+dt@kernel.org, mark.rutland@arm.com, will@kernel.org,
 pawel.moll@arm.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] Documentation: Add documentation for CCN-512 DTS binding
Date: Mon,  7 Oct 2019 15:21:15 +0200
Message-Id: <1570454475-2848-2-git-send-email-marek.bykowski@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
References: <1570454475-2848-1-git-send-email-marek.bykowski@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_062145_318132_52D8C736 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [78.133.233.210 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.bykowski[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marek Bykowski <marek.bykowski@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Bykowski <marek.bykowski@gmail.com>

Indicate the arm-ccn perf back-end supports now ccn-512.

Signed-off-by: Marek Bykowski <marek.bykowski@gmail.com>
---
 Documentation/devicetree/bindings/perf/arm-ccn.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/perf/arm-ccn.txt b/Documentation/devicetree/bindings/perf/arm-ccn.txt
index 43b5a71a5a9d..1c53b5aa3317 100644
--- a/Documentation/devicetree/bindings/perf/arm-ccn.txt
+++ b/Documentation/devicetree/bindings/perf/arm-ccn.txt
@@ -6,6 +6,7 @@ Required properties:
 	"arm,ccn-502"
 	"arm,ccn-504"
 	"arm,ccn-508"
+	"arm,ccn-512"
 
 - reg: (standard registers property) physical address and size
 	(16MB) of the configuration registers block
-- 
2.21.0.896.g6a6c0f1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
