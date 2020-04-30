Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 800271C0210
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j/oRvLiHCjtQ3TDmNK68WXQvEEvFAEb6trOtNMhotdo=; b=bQbV8j0BxkCrux
	BdyMbPF7KYA4CHo4FGrEnldbZfhdHOlXljzW+y0n//RVers7vKQZlL/uZIpZcmFBWPPh5p9PLtMse
	ZA3puXQGVsvYhwJ7TkebUoX9RvFCN9Dj+6JlzI92KM1TfRR1B6SWtzsXIs5pI6PE1oqClzFEwWdNT
	xDcPi4o93moz6mC4fMuL+0fGsmCRwEKQKMijzrTDbsBoWqtrStURxOwPuzgmqlcvF2tlAgfZCpbLK
	1851f0dDobKnB5G5w3Em+LdXAdvzmVWyc5LOaogyV31oII3rcvB4uKv+W18PqHIVosd87swd6itDB
	L6f8LzxFtcqH9mg1EhIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBu2-0003yZ-3I; Thu, 30 Apr 2020 16:19:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBtW-0003hh-8V
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:18:41 +0000
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A7673208D5;
 Thu, 30 Apr 2020 16:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588263517;
 bh=ugCY3y9aPneko9xp0OW8Y5PqnnRdwIA6ZnhjiQw0pbg=;
 h=From:To:Cc:Subject:Date:From;
 b=jkbiKuotKQWoJifXoYaYKWd4u1OUCkFJTCeaJ2hFfc8Mmzm6hL99xXi+5i8oLaR6e
 GJ1b6u5OLXCuKZdQPYYbqcEoGl4qcjUVxJHvEaPOc1nGKIjtw42GlkxhXUFJCRfzBO
 IWB28xT442895dIcuie8By96F883CyyppOigyJ4o=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jUBtT-00Axgb-Pl; Thu, 30 Apr 2020 18:18:35 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH v4 00/19] Manually convert  thermal,
 crypto and misc devices to ReST
Date: Thu, 30 Apr 2020 18:18:14 +0200
Message-Id: <cover.1588263270.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091838_344849_50832175 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kvm@vger.kernel.org, linux-pm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linux-pci@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 keyrings@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-sh@vger.kernel.org, dmaengine@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Manually convert some files from thermal, crypto and misc-devices
to ReST format.

This series is against linux-next 20200430 tag (as I rebased it, in order
to check if some patch were already merged via some other tree),
but it should very likely merge fine against docs-next.

The full series (including those ones) are at:

	https://git.linuxtv.org/mchehab/experimental.git/log/?h=misc-docs

The documents touched on this patch, converted to HTML via the 
building system are at (together with patches from other series):

	https://www.infradead.org/~mchehab/kernel_docs/


v4:

- added some acks.

v3:

- removed the cpu-freq patches from this series, as Rafael should
  be applying it on his tree.

v2: 

- a small change at patch 2 to avoid uneeded whitespace changes;
- added 13 new patches at the end


Mauro Carvalho Chehab (19):
  docs: thermal: convert cpu-idle-cooling.rst to ReST
  docs: crypto: convert asymmetric-keys.txt to ReST
  docs: crypto: convert api-intro.txt to ReST format
  docs: crypto: convert async-tx-api.txt to ReST format
  docs: crypto: descore-readme.txt: convert to ReST format
  docs: misc-devices/spear-pcie-gadget.txt: convert to ReST
  docs: misc-devices/pci-endpoint-test.txt: convert to ReST
  docs: misc-devices/pci-endpoint-test.txt: convert to ReST
  docs: misc-devices/c2port.txt: convert to ReST format
  docs: misc-devices/bh1770glc.txt: convert to ReST
  docs: misc-devices/apds990x.txt: convert to ReST format
  docs: pci: endpoint/function/binding/pci-test.txt convert to ReST
  docs: arm64: convert perf.txt to ReST format
  docs: powerpc: convert vcpudispatch_stats.txt to ReST
  docs: sh: convert new-machine.txt to ReST
  docs: sh: convert register-banks.txt to ReST
  docs: trace: ring-buffer-design.txt: convert to ReST format
  docs: kvm: get read of devices/README
  docs: misc-devices: add uacce to the index.rst

 .../endpoint/function/binding/pci-test.rst    |  26 +
 .../endpoint/function/binding/pci-test.txt    |  19 -
 Documentation/PCI/endpoint/index.rst          |   2 +
 Documentation/arm64/index.rst                 |   1 +
 Documentation/arm64/{perf.txt => perf.rst}    |   7 +-
 .../crypto/{api-intro.txt => api-intro.rst}   | 186 ++--
 ...symmetric-keys.txt => asymmetric-keys.rst} |  91 +-
 .../{async-tx-api.txt => async-tx-api.rst}    | 253 +++---
 ...{descore-readme.txt => descore-readme.rst} | 152 +++-
 Documentation/crypto/index.rst                |   5 +
 Documentation/driver-api/dmaengine/client.rst |   2 +-
 .../driver-api/dmaengine/provider.rst         |   2 +-
 .../driver-api/thermal/cpu-idle-cooling.rst   |  18 +-
 Documentation/driver-api/thermal/index.rst    |   1 +
 .../{ad525x_dpot.txt => ad525x_dpot.rst}      |  24 +-
 .../{apds990x.txt => apds990x.rst}            |  31 +-
 .../{bh1770glc.txt => bh1770glc.rst}          |  45 +-
 .../misc-devices/{c2port.txt => c2port.rst}   |  58 +-
 Documentation/misc-devices/index.rst          |   7 +
 .../misc-devices/pci-endpoint-test.rst        |  56 ++
 .../misc-devices/pci-endpoint-test.txt        |  41 -
 .../misc-devices/spear-pcie-gadget.rst        | 170 ++++
 .../misc-devices/spear-pcie-gadget.txt        | 130 ---
 Documentation/powerpc/index.rst               |   1 +
 ...patch_stats.txt => vcpudispatch_stats.rst} |  17 +-
 Documentation/security/keys/core.rst          |   2 +-
 Documentation/sh/index.rst                    |   6 +
 .../sh/{new-machine.txt => new-machine.rst}   | 195 +++--
 ...{register-banks.txt => register-banks.rst} |  13 +-
 Documentation/trace/index.rst                 |   1 +
 ...ffer-design.txt => ring-buffer-design.rst} | 802 ++++++++++--------
 Documentation/virt/kvm/devices/README         |   1 -
 Documentation/virt/kvm/devices/index.rst      |   3 +
 MAINTAINERS                                   |   4 +-
 arch/sh/Kconfig.cpu                           |   2 +-
 crypto/asymmetric_keys/asymmetric_type.c      |   2 +-
 crypto/asymmetric_keys/public_key.c           |   2 +-
 crypto/asymmetric_keys/signature.c            |   2 +-
 drivers/misc/Kconfig                          |   2 +-
 drivers/misc/ad525x_dpot.c                    |   2 +-
 include/crypto/public_key.h                   |   2 +-
 include/keys/asymmetric-parser.h              |   2 +-
 include/keys/asymmetric-subtype.h             |   2 +-
 include/keys/asymmetric-type.h                |   2 +-
 44 files changed, 1358 insertions(+), 1034 deletions(-)
 create mode 100644 Documentation/PCI/endpoint/function/binding/pci-test.rst
 delete mode 100644 Documentation/PCI/endpoint/function/binding/pci-test.txt
 rename Documentation/arm64/{perf.txt => perf.rst} (95%)
 rename Documentation/crypto/{api-intro.txt => api-intro.rst} (70%)
 rename Documentation/crypto/{asymmetric-keys.txt => asymmetric-keys.rst} (91%)
 rename Documentation/crypto/{async-tx-api.txt => async-tx-api.rst} (55%)
 rename Documentation/crypto/{descore-readme.txt => descore-readme.rst} (81%)
 rename Documentation/misc-devices/{ad525x_dpot.txt => ad525x_dpot.rst} (85%)
 rename Documentation/misc-devices/{apds990x.txt => apds990x.rst} (86%)
 rename Documentation/misc-devices/{bh1770glc.txt => bh1770glc.rst} (83%)
 rename Documentation/misc-devices/{c2port.txt => c2port.rst} (59%)
 create mode 100644 Documentation/misc-devices/pci-endpoint-test.rst
 delete mode 100644 Documentation/misc-devices/pci-endpoint-test.txt
 create mode 100644 Documentation/misc-devices/spear-pcie-gadget.rst
 delete mode 100644 Documentation/misc-devices/spear-pcie-gadget.txt
 rename Documentation/powerpc/{vcpudispatch_stats.txt => vcpudispatch_stats.rst} (94%)
 rename Documentation/sh/{new-machine.txt => new-machine.rst} (73%)
 rename Documentation/sh/{register-banks.txt => register-banks.rst} (88%)
 rename Documentation/trace/{ring-buffer-design.txt => ring-buffer-design.rst} (55%)
 delete mode 100644 Documentation/virt/kvm/devices/README

-- 
2.25.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
