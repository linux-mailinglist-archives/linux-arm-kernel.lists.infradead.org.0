Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13449EB1D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:00:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uz2HfZqlGR1/ugeFT5bM3yxqwtKYbM07VenKVd0+KAs=; b=hUI
	qrzYvDCmJ97sVArSQLN50/BtHYDVyOgyiMzecdSISNZa75xvXcswqtd/CQpGk3YjILNmQmzJCzb74
	6X1igep/Iz6sdsk3KPQta9R4hVEVMEO22Lk+Sckt9NtNn74FQVRqLLOi0HEzqlODC9GG81JieFMw9
	RexgKyTY0rQfgBUYcnfy5eUadIOfGH7/3qdUVcL1Z/T2XOHUWQlmpl36Apn/fFM7KNeYwxdQ18CGf
	toBHBmVNgURLIAslnFLr0pcMYM2mvfSwbJxKLDr+VgmunPy9fR0VyeC+OvAMbz6je3rCn6AI7UBKT
	vC/lDVl8y6hXEigEt0Lfv6X8NKxTwUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAzY-0006UP-GQ; Thu, 31 Oct 2019 14:00:00 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAz7-0006P7-G4
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:59:35 +0000
Received: by mail-pg1-x542.google.com with SMTP id j30so632012pgn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 06:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=FInjRudIZ1nBXyYRthwNUoyrlLqGhK39QJ4i7rNkC2w=;
 b=q5NzzfdyvqU9FJ8L/8YVWhVw3zm/TD9+GmoDJBcQbO9fthEhMN0aA0zr1Jrn1Pe7Xv
 3yxVpV1aCIy2BlbrmcRSI52doE+NBDvyhqGBcl545OAR+xdAP/8XKGa9aYsXyxpC6c4r
 u/dLASdI5rFuj8KWg0Vg1ucxIfzi2SA6p0SEDwT5MaAY46LtvSjOArYaKC/ICMwgAn7L
 5yuRCDkCXiEplKpIc1i196ovUMs+7c/jfyoF8FuXwJS2nhJb0Wx7IK586+yvbVU7V+hM
 Z6T46N/XjF+k5fnSVRUiPTy/WMYlR9bd07WIAjbDF892AolQA4/q3VfGdCWxQIZ0w7m6
 3cgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FInjRudIZ1nBXyYRthwNUoyrlLqGhK39QJ4i7rNkC2w=;
 b=ul2ALbcja4eWqJn89nvtgnpt+ZpOokZLNmpWMAIOKr7GZyIfTIgOcZeOoULBtMv6d6
 Ji8+UmI/sogtSGUzsJAxfb0ZTNJxVW2xvzAtRFFeXbrbrX1+vrvughrdfokb5dLXRp7J
 EJKBRGzqshr9mdivRRsWWXzw7ZcgmQOuJhffDeZ4kEDpCo0UPn84VKOkJN03kgapYVbS
 b+/y6YKKD1ptvlhIKkvXJof3T4pZzCh4P+0GI02G6yWuuAsX31QaJDRk4wt18JPlrcZa
 FnEvOPyaZh/a3qPbxAC3QXl5ZYqXU3UwDGTITMy+8JgYxrory8JbK91trJI15ihPc1iB
 gkvw==
X-Gm-Message-State: APjAAAXdX2C+4SzZdfjgSgV6W1di0iMDwFvwdlihy6pTIeISfiQ2pMB+
 OCJA6MFV5pXOlGzAU2P1O29hDA==
X-Google-Smtp-Source: APXvYqzSpyD3GqbjVXKqKIxqLX3kf+eG/s3lqHhViq0jkE0RgoF86gbfk8pNgZ03UDv+V7aDn7oogg==
X-Received: by 2002:aa7:8817:: with SMTP id c23mr7024726pfo.162.1572530371532; 
 Thu, 31 Oct 2019 06:59:31 -0700 (PDT)
Received: from localhost.localdomain ([117.252.69.143])
 by smtp.gmail.com with ESMTPSA id i16sm3522441pfa.184.2019.10.31.06.59.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 31 Oct 2019 06:59:30 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: jens.wiklander@linaro.org, jarkko.sakkinen@linux.intel.com,
 dhowells@redhat.com
Subject: [Patch v3 0/7] Introduce TEE based Trusted Keys support
Date: Thu, 31 Oct 2019 19:28:36 +0530
Message-Id: <1572530323-14802-1-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_065933_575154_67324FE4 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, daniel.thompson@linaro.org,
 janne.karhunen@gmail.com, corbet@lwn.net, jejb@linux.ibm.com,
 ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, tee-dev@lists.linaro.org,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 stuart.yoder@arm.com, casey@schaufler-ca.com, linux-integrity@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
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

Rest of the patches from #4 to #7 adds support for TEE based trusted keys.

This patch-set has been tested with OP-TEE based pseudo TA which can be
found here [1].

[1] https://github.com/OP-TEE/optee_os/pull/3082

Changes in v3:
1. Update patch #2 to support registration of multiple kernel pages.
2. Incoporate dependency patch #4 in this patch-set:
   https://patchwork.kernel.org/patch/11091435/
3. Rebased to latest tpmdd-master.

Changes in v2:
1. Add reviewed-by tags for patch #1 and #2.
2. Incorporate comments from Jens for patch #3.
3. Switch to use generic trusted keys framework.

Sumit Garg (7):
  tee: optee: allow kernel pages to register as shm
  tee: enable support to register kernel memory
  tee: add private login method for kernel clients
  KEYS: trusted: Add generic trusted keys framework
  KEYS: trusted: Introduce TEE based Trusted Keys
  doc: keys: Document usage of TEE based Trusted Keys
  MAINTAINERS: Add entry for TEE based Trusted Keys

 Documentation/security/keys/index.rst       |   1 +
 Documentation/security/keys/tee-trusted.rst |  93 ++++++++
 MAINTAINERS                                 |   9 +
 drivers/tee/optee/call.c                    |   7 +
 drivers/tee/tee_core.c                      |   6 +
 drivers/tee/tee_shm.c                       |  26 ++-
 include/keys/trusted-type.h                 |  48 ++++
 include/keys/trusted_tee.h                  |  66 ++++++
 include/keys/trusted_tpm.h                  |  15 --
 include/linux/tee_drv.h                     |   1 +
 include/uapi/linux/tee.h                    |   8 +
 security/keys/Kconfig                       |   3 +
 security/keys/trusted-keys/Makefile         |   2 +
 security/keys/trusted-keys/trusted_common.c | 346 ++++++++++++++++++++++++++++
 security/keys/trusted-keys/trusted_tee.c    | 282 +++++++++++++++++++++++
 security/keys/trusted-keys/trusted_tpm1.c   | 345 +++++----------------------
 16 files changed, 954 insertions(+), 304 deletions(-)
 create mode 100644 Documentation/security/keys/tee-trusted.rst
 create mode 100644 include/keys/trusted_tee.h
 create mode 100644 security/keys/trusted-keys/trusted_common.c
 create mode 100644 security/keys/trusted-keys/trusted_tee.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
