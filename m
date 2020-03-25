Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EBE193223
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 21:48:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=thDEoXQdkEv/qcI+I0pxc8iKTgoPC/YrwDSS6C4pNnQ=; b=qPTKPjbnGpgs4R
	lL6aLgCgCsSJyQ2HVaryt4vXsfTtWml0RC0qxZatSL6cd0CQwJtn8ctwGXsvle8/3u9VzFxvQ/HCY
	VkX+TLnYf1ETNmBwDO9P+0p+6rPi+GSdnSFkVN7u5MHHqmB2/ePAAP7iR3b3W3bm/u1pkrJxRK02v
	NMyh1Tkex8/qWIkXedXn5tmiSl2Y1+ZWkdDGJ64u4a/2YyWvykIYYZAl+SATu1bvd8SgDeI+B7MQm
	cy0qk4ufPDVwDXBOlD5Zo/T0TJHaWRGhktxnyBT1tv/VC5ud6VDi8bLwe+Au7qFK01wtJ+tC4J2JQ
	FlEkQsVb8DNAq0sLBlSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHCwV-0004HK-0q; Wed, 25 Mar 2020 20:48:03 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHCvr-0003pz-0O
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 20:47:25 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02PKl5SK077576;
 Wed, 25 Mar 2020 15:47:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585169225;
 bh=w/UqBt2u20ALR9hXBqeGYXAKy3v6acQbksJMkudmy28=;
 h=From:To:CC:Subject:Date;
 b=yg49EB0pfGXzFBX1n8lzp8fA6mIDckMdl2JsVyoKeAQL+4kaexg8ZJMFSvZ7gknG3
 h15YbvaBa1LTDmEo23XGYBNCpRnBEebwbZNSrhPmakHsX6eVZW0en7AlR2uC6BQdhV
 8c7tduJzmI4Hg3mww99/ixLKe0eGN/cQNqk2dSDg=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02PKl52c102381
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 25 Mar 2020 15:47:05 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 25
 Mar 2020 15:47:05 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 25 Mar 2020 15:47:04 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02PKl42h015387;
 Wed, 25 Mar 2020 15:47:04 -0500
Received: from localhost ([10.250.35.147])
 by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 02PKl46k063366;
 Wed, 25 Mar 2020 15:47:04 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 0/4] Update K3 DSP remoteproc driver for C71x DSPs
Date: Wed, 25 Mar 2020 15:46:57 -0500
Message-ID: <20200325204701.16862-1-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_134723_148287_EFE84700 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Clement Leger <cleger@kalray.eu>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

This series adds support for a new next generation 64-bit TI DSP based on
the TMS320C71x CorePac processor subsystem called the C71x. The support is
enabled through couple of enhancements to the remoteproc core (primarily to
support a 64-bit trace resource entry), and does depend on the K3 DSP
remoteproc driver posted earlier today [1]. 

The loading support leveraged the 64-bit ELF loader support code added by
Clement and already staged on the rproc-next branch. I am posting this
series separate from the C66x series because of the new 64-bit resource
type enhancement needs (patches 2 and 3). I have leveraged the existing
resource types as is by introducing a new version element, and am open to
ideas if it is desired to just define it as a separate resource type.

The C71x DSP boots using firmware segments loaded into the DDR with a 2 MB
aligned address requirement on the boot vectors. There is no support for
internal memory loading, and all internal memories shall be used as fast 
RAMs/scatchpads by the firmware executing on the DSPs. IPC is through the
virtio-rpmsg transport. There is no support for Error Recovery, Power
Management or loading into on-chip SRAMs at present.

Following is the patch summary:
 - Patch 1 updates the K3 DSP bindings for C71x cores
 - Patch 2 introduces a concept of version element into existing resource types
 - Patch 3 adds support for a new 64-bit trace resource entry
 - Patch 4 enhances the K3 DSP remoteproc driver for C71x

regards
Suman

[1] https://patchwork.kernel.org/cover/11458573/

Suman Anna (4):
  dt-bindings: remoteproc: k3-dsp: Update bindings for C71x DSPs
  remoteproc: introduce version element into resource type field
  remoteproc: add support for a new 64-bit trace version
  remoteproc/k3-dsp: Add support for C71x DSPs

 .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 78 ++++++++++++++++---
 drivers/remoteproc/remoteproc_core.c          | 65 +++++++++++-----
 drivers/remoteproc/remoteproc_debugfs.c       | 50 ++++++++----
 drivers/remoteproc/ti_k3_dsp_remoteproc.c     | 17 ++++
 include/linux/remoteproc.h                    | 34 +++++++-
 5 files changed, 203 insertions(+), 41 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
