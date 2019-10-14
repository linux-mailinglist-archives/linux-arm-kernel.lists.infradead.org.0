Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A91FD670C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p1LTQ3aL/ggYWaMZczgJWjcZ6TGodSFmYZaWIlp2nTs=; b=Qt4KjIi26GZFAn
	sRI561HRaO2KgJaSudsXscfWljyyFWZDo5rch6/+loJH9RyLPeZBjFt1yJVyqZVmNopgEf7xInB37
	olKVgl2jFcQ+RxP3Z5KU8L2roaw+83cNyjXm5KVxoEtJKhimyJ1T4n2BlgD6xzbHIjsVxrtvcUncq
	cc0H8FnI5gfIX2AMh/vj0HhpSgXeLe66nnhPj2DWCp/g9eS+w71AJ4dAzMJBkJo1gDqJESfTUDMEG
	tEnVEJZXyETfv2OXRhaaWZfWbbkixRYM3k5h7oRKOhTRAtNnvO0tIFl53wcCkk2ptOwjjRpn7xAqM
	gXskPjUjemoQILzBPlBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK31s-0002W3-AE; Mon, 14 Oct 2019 16:17:04 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK31g-0002V6-JJ
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:16:53 +0000
Received: by mail-wr1-x430.google.com with SMTP id z9so20412237wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 09:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mfy391OkCgKorVuTp3Zz3reemWsXeISYwrwbDVYSKs8=;
 b=PFZR2AQw08fG2ZO9qVCmLyhPvpMjU7vcjM9dMRrGo2K2oOR+wrFlib4j9Wt2CL2zGr
 vgGzoCLZ2U5Vjsg9RBwWP79XWzFIfiNNN6Ww+JhsUTS9Mef2Crrz2BlyF8meqqVP9Tej
 wMRGNUzyXqbGGsPVynt2CSp6y2STkr8sO0XMhbBeRCcZ3k5COnuJa3/UbbahTpoZS0QF
 So45R+4QxaHCHKnm28fy6c8638+rzzFDvXcLNWeO4CFKWE1S8wvyCxu16RvQE2oc0x+X
 MBdyGZ7NU4KHnTKCw2WIs5tn436e+j4ZTRCUMjs0nfFPC1mzJqHDcE/26b8XV3yDUfjp
 SsGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mfy391OkCgKorVuTp3Zz3reemWsXeISYwrwbDVYSKs8=;
 b=T52oR33yKl+pVTXKZZSXhdwPR0UWkpv7F3rMrvMHuvcuHx4CDOGoo0ZwQpvV3ekTgG
 Jw7LhqZ8tbaPyeSCCs0Ludy1/PjrrVbxkBCZ6oYStbXfScKojkyaiqVr96xhduHKWAbv
 J6vSATZySjRJG1bLeh0nByNlAlHYlDnZAr1QBmSSh0sS0kb/++6L4+/4tFwVx7Nc/9gR
 c4CyIXNsAF5rwkJuAnFrHP/mTRPzg0TG2rVMTb8vI0zY9j9jVfFWQRtFr4olJ+38lQAT
 64y6Q1eXMLfa18Uboz3KYzGeMDDz1TmQ9xeFleXQL4Ya7WANs2pjYQZG9Zxw5lJqOB0w
 aiRg==
X-Gm-Message-State: APjAAAXUUG3qmIsH+R4TzoXm4dleHVzM1p6AHmwM0YXpKf9BBzsaG8+4
 2jPvaLS3OnTdkSmWXhJnPnnR5g==
X-Google-Smtp-Source: APXvYqzLJMb7WcIOx12Voq3tcZhfIqXUZM5i+qmP+9nd4M87CKsR+XCYCdDw/2xc49+x+GdEFSJS3A==
X-Received: by 2002:a5d:43c2:: with SMTP id v2mr21145585wrr.153.1571069810513; 
 Mon, 14 Oct 2019 09:16:50 -0700 (PDT)
Received: from localhost.localdomain
 (aaubervilliers-681-1-23-27.w90-88.abo.wanadoo.fr. [90.88.143.27])
 by smtp.gmail.com with ESMTPSA id a14sm17308655wmm.44.2019.10.14.09.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 09:16:49 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 0/2] crypto: aegis128 SIMD improvements
Date: Mon, 14 Oct 2019 18:16:43 +0200
Message-Id: <20191014161645.1961-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_091652_639858_99A9AD69 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Mosnacek <omosnace@redhat.com>, herbert@gondor.apana.org.au,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Refactor the aegis128 code to get rid of indirect calls, and implement
SIMD versions of the init() and final() hooks. This results in a ~2x
speedup on ARM Cortex-A57 for ~1500 byte inputs.

Changes since v1:
- fix missing Sbox loads for plain SIMD on GCC
- fix endianness issue in final_simd() routine

Cc: Ondrej Mosnacek <omosnace@redhat.com>

Ard Biesheuvel (2):
  crypto: aegis128 - avoid function pointers for parameterization
  crypto: aegis128 - duplicate init() and final() hooks in SIMD code

 crypto/aegis128-core.c       | 125 ++++++++++----------
 crypto/aegis128-neon-inner.c |  50 ++++++++
 crypto/aegis128-neon.c       |  21 ++++
 3 files changed, 134 insertions(+), 62 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
