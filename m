Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFE5AC369
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 01:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YyDrE8vUpnG32owie3I18FCeYWQeQo0720TVS+SaLFk=; b=ov5
	4UKmrXJMxRyQQOIDfh0sFgB3CBndQqwQasoVzSKkiLvuA81exWJ+LR0ubRYVCMUSM7t3djlcCovRF
	KlPu3lggqoDUbNh+gkVor91ZX2fLh3PFRc+uLGVo9lfXfYpsP99JbgqpfMj4hWyFU8ssmwm9oYIWb
	MBcQvNNxRS1IyIFjoup2eLWKjqlWgbqhkWIW4pvfSiK3jMwCGXaQCJiMpErNCmYea2W3sG8KXZMSb
	2b2vWw0I2/o53Jk9+AbjOEBG+Q9srZt7Tm7G6zVBHyCEr0sN7jABA4LDp1HxYggBE0KzzMWyaxqWT
	HKZyRV0WONi6UPITAi7sfitmxTd7Z8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6O0s-0006X7-9r; Fri, 06 Sep 2019 23:51:34 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6O0e-0006W3-6I
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 23:51:21 +0000
Received: from prsriva-Precision-Tower-5810.corp.microsoft.com (unknown
 [167.220.2.18])
 by linux.microsoft.com (Postfix) with ESMTPSA id 86B3320B7186;
 Fri,  6 Sep 2019 16:51:18 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 86B3320B7186
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC][PATCH v1 0/1] Add support for arm64 to carry ima measurement
 log in kexec_file_load
Date: Fri,  6 Sep 2019 16:51:09 -0700
Message-Id: <20190906235110.15566-1-prsriva@linux.microsoft.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_165120_259829_BBF5AF87 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 takahiro.akashi@linaro.org, sboyd@kernel.org, catalin.marinas@arm.com,
 yamada.masahiro@socionext.com, kristina.martsenko@arm.org, duwe@lst.de,
 bauerman@linux.ibm.com, james.morse@arm.org, tglx@linutronix.de,
 allison@lohutok.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for arm64 to carry ima measurement log
to the next kexec'ed session triggered via kexec_file_load.
- Top of Linux 5.3-rc6

Currently during kexec the kernel file signatures are/can be validated
prior to actual load, the information(PE/ima signature) is not carried
to the next session. This lead to loss of information.

Carrying forward the ima measurement log to the next kexec'ed session.
This allows a verifying party to get the entire runtime event log since
the last full reboot since that is when PCRs were last reset.

Prakhar Srivastava (1):
  Add support for arm64 to carry ima measurement log in kexec_file_load

 arch/arm64/Kconfig                     |   7 +
 arch/arm64/include/asm/ima.h           |  29 ++++
 arch/arm64/include/asm/kexec.h         |   5 +
 arch/arm64/kernel/Makefile             |   3 +-
 arch/arm64/kernel/ima_kexec.c          | 213 +++++++++++++++++++++++++
 arch/arm64/kernel/machine_kexec_file.c |   6 +
 6 files changed, 262 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/include/asm/ima.h
 create mode 100644 arch/arm64/kernel/ima_kexec.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
