Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E945C7A83B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WjnwCjpiMmju+kjNraIJaKfEL5gX63fQzWOo3kxUU84=; b=Fri
	Pgv1NvR9JikoImOBRvjgztd3fVxsiLUeHooDaBlfZV/QddNdlYrbJNWkpbIOl1LTp7lkb8Rh8h8I/
	j6lAFFiktxoGyDUdHvU8hOa356HYst8bBG8Pb698OdsAew5RAbyF3B+402kIaLVjONKPQhi5dTX+X
	gDMCblbR/DC/eRYjB0w4zU3ROxl70eeuW2FxPe31eewgj3vZw+s8tC2EgT8vcqYdm7dKMU125YdKC
	jyv8nsK86090Nyo3n+HIBCjaYq7NkcQv1PX9Zt6L6hH+cxysP/86qiXtXa0Tdad3iPt6c1SQ/mCyw
	2fZI29YkzWyTzHMAj64Zl+0BTCh53Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRBK-0000ph-49; Tue, 30 Jul 2019 12:24:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRB7-0000oW-2C
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:24:30 +0000
Received: by mail-pg1-x542.google.com with SMTP id r22so2384337pgk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 05:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=6ZePv7NXstL+Sqt4m1uBMWD7mL3/ZMzlrVfaZ2NvhzM=;
 b=lB6yIwwCNSDjrWVykyeL4K++VnFNec4YxgddVvaRS4/R/0oHWt7LQVpKqdjpAASjgc
 0iPKuYv15NgUSHfKLcA6CR1Nt0rx5zAGcXi/FyaiI3Xda53pvauMaNAfx/1m2rxCwa0Z
 crzWacGPYYLLS5WXzVHnAOSrRG2imu9I/H7H4MXZIRTWu2zC2Zr5jM99w2uIL74nv9o2
 i3GLJevzUkxAKOe8KmddtnXsoghJmrXz7PF7/cL5Ph7z9nx8OAyBwxbwRwYd+OQInO1o
 tw9DWp8rvkv2AIt4K5pjZmJc0yRBKpJaeeStReenRYdnj1+Iiz60kQljwoVnlels7CqU
 z9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6ZePv7NXstL+Sqt4m1uBMWD7mL3/ZMzlrVfaZ2NvhzM=;
 b=EmYINy/KhBRgeDF0bbXFNQvZ7qd4VTfH4bprDkwDFvT8uwPOO9EVR/E8YdGxKEoVEk
 KwW+77tuVDfoSmFk56ZWVOeGZvAalmThnTsszTnpFWaq6xkJJSuMWYei7rFYOyosgjxZ
 mDtqJPjUIB/KZ+v+gkSmOTpOFgbCpzno8qWQZG9quaxYAEOrO5CydH/Hoe8H8CAQqZHi
 CkEDKEwd2gqfrqmhA8XflzX5EmSIM76PQsuTtKkU0RoPSImI8149AuG5Zg28ZAOd9W+C
 ZZqSyNPCRi2ZkPKlk/xiNgPN5eQ+wlg7U6Ck/PV63fX7AuGIZGPhTc9PzhyGqM40UzBc
 73hg==
X-Gm-Message-State: APjAAAVU8XyujmfUaklph8XHqneC8xP5GisgZv34DrG12rJUtono4e0j
 bK2PIUeVgM12a+WR8OcntY3UHg==
X-Google-Smtp-Source: APXvYqzz0ouwcr+qO6OuAcn5WOt/R6U7643Qf7Q0IRtZgQR9bhTL3t8PR7Ke8ewd4iiIWjlDBn2OnQ==
X-Received: by 2002:a17:90a:ca11:: with SMTP id
 x17mr117801760pjt.107.1564489465898; 
 Tue, 30 Jul 2019 05:24:25 -0700 (PDT)
Received: from localhost.localdomain ([45.114.72.197])
 by smtp.gmail.com with ESMTPSA id v8sm54895462pgs.82.2019.07.30.05.24.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 30 Jul 2019 05:24:25 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: keyrings@vger.kernel.org, linux-integrity@vger.kernel.org,
 linux-security-module@vger.kernel.org
Subject: [RFC v2 0/6] Introduce TEE based Trusted Keys support
Date: Tue, 30 Jul 2019 17:53:34 +0530
Message-Id: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_052429_109272_C2E1552D 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org,
 Sumit Garg <sumit.garg@linaro.org>, corbet@lwn.net, jejb@linux.ibm.com,
 ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 jarkko.sakkinen@linux.intel.com, casey@schaufler-ca.com,
 jens.wiklander@linaro.org, linux-arm-kernel@lists.infradead.org,
 serge@hallyn.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for TEE based trusted keys where TEE provides the functionality
to seal and unseal trusted keys using hardware unique key. Also, this is
an alternative in case platform doesn't possess a TPM device.

This series also adds some TEE features like:

Patch #1, #2 enables support for registered kernel shared memory with TEE.

Patch #3 enables support for private kernel login method required for
cases like trusted keys where we don't wan't user-space to directly access
TEE service to retrieve trusted key contents.

Rest of the patches from #4 to #6 adds support for TEE based trusted keys.

This patch-set has been tested with OP-TEE based pseudo TA which can be
found here [1].

Also, this patch-set is dependent on generic Trusted Keys framework
patch-set [2].

[1] https://github.com/OP-TEE/optee_os/pull/3082
[2] https://lkml.org/lkml/2019/7/18/284

Changes in v2:
1. Add reviewed-by tags for patch #1 and #2.
2. Incorporate comments from Jens for patch #3.
3. Switch to use generic trusted keys framework.

Sumit Garg (6):
  tee: optee: allow kernel pages to register as shm
  tee: enable support to register kernel memory
  tee: add private login method for kernel clients
  KEYS: trusted: Introduce TEE based Trusted Keys
  doc: keys: Document usage of TEE based Trusted Keys
  MAINTAINERS: Add entry for TEE based Trusted Keys

 Documentation/security/keys/index.rst       |   1 +
 Documentation/security/keys/tee-trusted.rst |  93 +++++++++
 MAINTAINERS                                 |   9 +
 drivers/tee/optee/call.c                    |   7 +
 drivers/tee/tee_core.c                      |   6 +
 drivers/tee/tee_shm.c                       |  16 +-
 include/keys/trusted-type.h                 |   3 +
 include/keys/trusted_tee.h                  |  66 +++++++
 include/linux/tee_drv.h                     |   1 +
 include/uapi/linux/tee.h                    |   8 +
 security/keys/Kconfig                       |   3 +
 security/keys/trusted-keys/Makefile         |   3 +-
 security/keys/trusted-keys/trusted-tee.c    | 282 ++++++++++++++++++++++++++++
 security/keys/trusted-keys/trusted.c        |   3 +
 14 files changed, 498 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/security/keys/tee-trusted.rst
 create mode 100644 include/keys/trusted_tee.h
 create mode 100644 security/keys/trusted-keys/trusted-tee.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
