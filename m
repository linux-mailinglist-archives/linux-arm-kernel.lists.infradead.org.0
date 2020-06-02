Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7251EBDE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 16:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rjazXjun1aaOrYsyLEVhSBB4VbF+HxPksmphlmMOeEs=; b=WnF
	y/eKyitLVCFVNb2FNufttYP1mwFoXpqy3vUB3vlXkRLpBywsMnel3JeshLFCt7BBSFjShmJfmXS48
	oSjx4Dsdy+iLr0rxg0ESG7ENFB9GZ7xXviRDnGBM+T+bHF/djXqoZrOkfTMnfp9IdnVqP7JJ/gzbI
	GrsoAfSADJkn6ljTw4ROWKWT7SK5nBotntPZMCqL+iFOWNkng+1So4/hwQy8RFTbBtmqSDfkzD282
	G+zk3IWUfEqZozZgTvds/qj0ftVhBWdCRdRDLUORUlyzpk0tm8kfplq82c2+Pq9rH0F3wEwXnrziw
	KXLEfNhyzuB7RfDzJxSiUEz3g0Yh2/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7kt-0008CS-IC; Tue, 02 Jun 2020 14:19:03 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7km-0008Bw-LW
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 14:18:58 +0000
Received: by mail-pj1-x1042.google.com with SMTP id q24so1523170pjd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 07:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=IFVZxk2HGJlMEd0AkzA5r6bJ1EWPxWtJbu5fiwrTlkk=;
 b=JvpZSL2lWhR5tYa+0MyrURuF3XxT4Bg05zgghXWrj8m/9g+1Ox6Ir5KISwxK/MpNTP
 ZffKHyQE1dUV1zirFPktPK6i7z16ntuaOjYZ9A8P1OZSkkD3qx2GtsID1JO/gtTpFcYM
 2pZqkBlMO6NoKN/YPKlFeOSQKkZvWOuTuRHeHjs8Jy6fLWlzoHouK2HGOPVBUWTYFMGf
 RFQFyMVfYpxNN2fzo5WWah0E6j6QvQ/I7aOA+6WhewtBo4ASxJyyhUcMvSa9IxyGzTFg
 aO4E+qT2PdLHJZp7NDFT4uG75TDUwgUrMz4lixMisDIeKT9AAYW+6bvntiSYvqW+hODb
 WkrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IFVZxk2HGJlMEd0AkzA5r6bJ1EWPxWtJbu5fiwrTlkk=;
 b=p43nI49Hp71qDsFF2MND6xv45ATd8EtU2AsglBXi7FOwTLWy0j+ZXIrRSFmUnfsUAR
 lZRcQtuq1fsQTwy74+oeS9kmp9FjW5Cyx9v5mF18F2YmpoZNjLaDKreytQmtKPh9THDz
 vdBUnOX4onHQ0syitmnaFbcBIpzb1EWOsRi5b411TSarHl/+nqqLTzHwZj7U/7YqOMyJ
 88sjdmlcjFk0RM4T0olzNahK47KE9GoVSbYJ6IcSMwKgjypDGLtZb8rGLzi3ZSu1IpQC
 fx3EpJZVPlvP+KwCeYfpl09paLfnLkeOXZE9M+zui0GSlC5Y0swc+KWrYCynK7GZWCxJ
 uOOA==
X-Gm-Message-State: AOAM533tYd9OYEYKxgyusNDeUTRtogYnkzH6moDP+ffajB1Xf7U9vw+A
 qGP5oN/hGEs6IBSnCXNh8MOm2A==
X-Google-Smtp-Source: ABdhPJyEDi3JjDMMnzCMHmH2BT/npctwWmmUyygPOyrdqNRu+XCIL7pP9LG1SrYenp+nsP4IZAqzgw==
X-Received: by 2002:a17:90b:4c91:: with SMTP id
 my17mr5390973pjb.81.1591107535207; 
 Tue, 02 Jun 2020 07:18:55 -0700 (PDT)
Received: from localhost.localdomain ([117.252.66.248])
 by smtp.gmail.com with ESMTPSA id 141sm2529670pfz.171.2020.06.02.07.18.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 07:18:53 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: jarkko.sakkinen@linux.intel.com, zohar@linux.ibm.com, jejb@linux.ibm.com
Subject: [PATCH v5 0/4] Introduce TEE based Trusted Keys support
Date: Tue,  2 Jun 2020 19:48:21 +0530
Message-Id: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_071856_743687_A0ABBD54 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sumit Garg <sumit.garg@linaro.org>, op-tee@lists.trustedfirmware.org,
 corbet@lwn.net, janne.karhunen@gmail.com, linux-doc@vger.kernel.org,
 jmorris@namei.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Markus.Wamser@mixed-mode.de, casey@schaufler-ca.com,
 linux-integrity@vger.kernel.org, jens.wiklander@linaro.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for TEE based trusted keys where TEE provides the functionality
to seal and unseal trusted keys using hardware unique key. Also, this is
an alternative in case platform doesn't possess a TPM device.

This patch-set has been tested with OP-TEE based early TA which is already
merged in upstream [1].

[1] https://github.com/OP-TEE/optee_os/commit/f86ab8e7e0de869dfa25ca05a37ee070d7e5b86b

Changes in v5:
1. Drop dynamic detection of trust source and use compile time flags
   instead.
2. Rename trusted_common.c -> trusted_core.c.
3. Rename callback: cleanup() -> exit().
4. Drop "tk" acronym.
5. Other misc. comments.
6. Added review tags for patch #3 and #4.

Changes in v4:
1. Pushed independent TEE features separately:
  - Part of recent TEE PR: https://lkml.org/lkml/2020/5/4/1062
2. Updated trusted-encrypted doc with TEE as a new trust source.
3. Rebased onto latest tpmdd/master.

Changes in v3:
1. Update patch #2 to support registration of multiple kernel pages.
2. Incoporate dependency patch #4 in this patch-set:
   https://patchwork.kernel.org/patch/11091435/

Changes in v2:
1. Add reviewed-by tags for patch #1 and #2.
2. Incorporate comments from Jens for patch #3.
3. Switch to use generic trusted keys framework.

Sumit Garg (4):
  KEYS: trusted: Add generic trusted keys framework
  KEYS: trusted: Introduce TEE based Trusted Keys
  doc: trusted-encrypted: updates with TEE as a new trust source
  MAINTAINERS: Add entry for TEE based Trusted Keys

 Documentation/security/keys/trusted-encrypted.rst | 203 ++++++++++---
 MAINTAINERS                                       |   8 +
 include/keys/trusted-type.h                       |  48 ++++
 include/keys/trusted_tee.h                        |  66 +++++
 include/keys/trusted_tpm.h                        |  15 -
 security/keys/Kconfig                             |  31 +-
 security/keys/trusted-keys/Makefile               |   6 +-
 security/keys/trusted-keys/trusted_core.c         | 321 +++++++++++++++++++++
 security/keys/trusted-keys/trusted_tee.c          | 280 ++++++++++++++++++
 security/keys/trusted-keys/trusted_tpm1.c         | 335 ++++------------------
 10 files changed, 981 insertions(+), 332 deletions(-)
 create mode 100644 include/keys/trusted_tee.h
 create mode 100644 security/keys/trusted-keys/trusted_core.c
 create mode 100644 security/keys/trusted-keys/trusted_tee.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
