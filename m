Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9C911EDC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 23:31:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o/afqZEwg+X1WKgGociXKGLZA+4oboB1/euK8dk4kiQ=; b=BsZ
	7zk2rhhhsa9LvW85cft9PsOaMDHc2wFuxTkUnm+1ehB/fWzWZpoeKwagEiflb3RlsQLcp0Q/GXyLT
	FesnOiIj02eghF5iDBcuGqrxLqtgXvOtR669HcCRc1Er5An56O28avU64phC7i5zHpfwyLdZ2J5aN
	I/LSl2EQBFu+OIKEXg1nsLyoTucxc5VJo6IFvdj9yscw9nQhZSCqHoV7l3xpmGo2ZecH+m8T2SHTi
	qqlECDMZ2+5XRYt2Y2XD74KgZhqipdxBeibghE0DNN/mfB9bnAYBYcnd9OxMnx1eq0cJoiCW2C7wE
	0qf7S4d8HQvFTTx2ku1Rn6OGIUYYeGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iftSw-0000DJ-HJ; Fri, 13 Dec 2019 22:31:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iftSo-0000CI-IO
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 22:31:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id k25so170074pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 14:31:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=LHoIae2XNCa3AukmEzpCJ7hn/t0mtHhIaNOkcRhKOG0=;
 b=hU1x7VCUvKIt7Cg/eg0wfaKvqD1IFsyIilDpGwxLmedBHlc57jIwuVRLykhhgnlF15
 pXEkRXNiVOnpris7PSvO4SXDdYoV/4r8PjVjg6Psp0jjSJ5GMbZxPdiRxp/XIC3yEoTy
 YAD7RaGTrmZ8z5dcM6+C2shxjzlAlTg6AR7UXN0NQOCsPrlrlqWFM76RrkaBPHzC4H3Z
 TvBQac9a39iOdD2lH8sPVrC6VaYGk+hcXZmeVhO0QXzLnGhwzPn3udyxehROqh7l9dm3
 XPGbp1iz/h/771ZHP2xIedtVK7140ipS2BNzCSzNH3b05Bufl4E1cAfIkdG2mMfsBMcL
 cqmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LHoIae2XNCa3AukmEzpCJ7hn/t0mtHhIaNOkcRhKOG0=;
 b=eDGYcKeeok1oUTWulzz7QhgH5pYbDqHzbhNV0vt55nnj8g8IwNOP7EOrYDgLFVURd1
 s0osxw3CTImdiS+dOKY9dLJqBzM8XqifR+HHZ5KqI9ORh1YzgS/Gj9XtZuEAWw2Sq9vO
 85WBxgYU8MePvd/n/zI17+62yMdLoOuPYbko25BSVGUNW2UuwzNxl+YIah3+zwgw3q3D
 Whi7dIOozNL/oZzbp3zCjtfvypuPD/8CJjEHzxTDvvQvzkmVyHtdJJhS8Hsi1rWUQvm5
 aYV9zms81+Sw1x4z2ePWh1xu8V/zuR1GdM8xwn6vDa66fyMuYXg7U2DcIf654nFv1A0n
 m9hA==
X-Gm-Message-State: APjAAAWclZUXYtr9WscgqgLs1p/GaFASbXEOoba3+x2zNEXexIQFht9v
 6EHMDjAN+QiYdQojGH0qC+fJxQ==
X-Google-Smtp-Source: APXvYqxjGsOY8wNPiQWZLO7QyfMd7NVagT5u/0KddkS/aD8uWQT99Tud+8ZE/aeIyFzf4UG2IRosGA==
X-Received: by 2002:a63:5442:: with SMTP id e2mr2058808pgm.18.1576276269733;
 Fri, 13 Dec 2019 14:31:09 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id d26sm11556782pgv.66.2019.12.13.14.31.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 14:31:09 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/1] coresight: Fix for v5.5-rc2 
Date: Fri, 13 Dec 2019 15:31:06 -0700
Message-Id: <20191213223107.1484-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_143110_653357_49220D24 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

Please consider this fix for the current cycle.

Thanks,
Mathieu

Arnd Bergmann (1):
  coresight: etm4x: Fix unused function warning

 drivers/hwtracing/coresight/coresight-etm4x.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
