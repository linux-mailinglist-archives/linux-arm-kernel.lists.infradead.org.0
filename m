Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9FB14E86C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 06:28:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NJH2aUGjlF7netta7YBaFTpEnbsBvxCEkUNMh/oIvHo=; b=iF41IkpuGk0oWj
	YPZRiV5OQlwaGlx74mWbUplLtcjbyDIlHCgD9GFj2YQvp7cNCS2SNkLNp7I6WhZ+dJy2wU/9cVD+x
	by87+p3AnuEAJrcowRLPJ0T6tBZtLfoXG01g/W8aq5M6QudFm2rXiPbU2t/clZCzvr1+v66PK4Odi
	FmwfHneryuaZ0PJ8c1sMA59+tM2o+NVALIVxrS55iDUsLJNYBsA6R3J3oZxgP6n43zBgP7oKQ7qsd
	iWG1LIu8N9uudxl6iSCz+00EIl2jlnhGiG/oIIR9a824VfuxJnGBVc0f9Oya7OalNiBWDmhMKcK3M
	Oa1JS1x8ojTV1dDamIRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixOr5-0000sY-F1; Fri, 31 Jan 2020 05:28:35 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixOqq-0000sF-A5
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 05:28:21 +0000
Received: by mail-pf1-x442.google.com with SMTP id 4so2711044pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 21:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XIJuIwx+uZ/XMXNLR2EZ8VQQbkYP9Jl3B/FlYJ52chg=;
 b=GJJwM1k6h2uFAG4zQaZSh1S+M3GK+TaUphjkvARINrHAOfmtfMFiax8e1B5NhmNtJX
 xzK6NlbLBaIHKgdIupYB2YcrvXo+68BSBsX91XcQL6D1xFfz3ubiE3A6Y5Pd8+tnz8VC
 GOjDs8B+yBBt6BtSdSJgvbrAsMDxn9+UlWmnvDJ0jKI7iwWpLlCXCuc22LkNGPY6teoC
 9TPRtGtgQWP7kSBLB8+RZGQ2uDTQbtO7WJrlvgcxzRQWN54v3NRRJV99Yfzq/DQnPjIw
 mJg3WgMY2BZBSWYRasB67e+kr4MwHdxKbVMVwTpAj90FKhmwojV5O6jNYmZiWyLYvG/S
 qNbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XIJuIwx+uZ/XMXNLR2EZ8VQQbkYP9Jl3B/FlYJ52chg=;
 b=GGukcbXdwlHYv1dkVXjsBhxqttKrFTwn7y4u4ZW7ACwXSrVTe+3qv9vFXRT8sERpJB
 y4hSyhlGBtwAxOz/ZGTfkI7E6J509CM5uOFqJAsSZitEKwvswzn++fZJSMI02+JRnGfT
 RpwvjzRlAQolepjlbHCtiAPeoSr0uv8/InpAPm1oGu0intVn0XF+v519rRpozVDZzQi9
 wRwNK+QHizVM/gpJoYYpIDCZmWdbv51M0Nxr2redDt2yzJYJ04QghQ18eOo53m9JXCvl
 JVlYCamtr0lO7x/WvDfPygXsSWgAQIuXHb9seQDZAMRm1of7Eq2bmlstjSHMnB6I2kX9
 O4+Q==
X-Gm-Message-State: APjAAAVCKwpX73PpSVAjpcIVxmBrYx0j8+pl+V1vRkCoRfurEOkPfWEu
 LoOhlL4VYIJ90Hx9j2yMfhYi4Q==
X-Google-Smtp-Source: APXvYqxBoLAqbWna8B4QXmmmJlTHUuV1LGOaIEXyLauNT0LaUZKXbj4uqg4+VVdUd23y8KmCw/+n3g==
X-Received: by 2002:aa7:8502:: with SMTP id v2mr8493620pfn.232.1580448499304; 
 Thu, 30 Jan 2020 21:28:19 -0800 (PST)
Received: from localhost ([122.172.141.204])
 by smtp.gmail.com with ESMTPSA id x8sm8694689pfr.104.2020.01.30.21.28.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jan 2020 21:28:18 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: arnd@arndb.de,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH V6 0/3] firmware: arm_scmi: Make scmi core independent of the
 transport type
Date: Fri, 31 Jan 2020 10:58:10 +0530
Message-Id: <cover.1580448239.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_212820_461479_21B127E8 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.172.141.204 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: peng.fan@nxp.com, Viresh Kumar <viresh.kumar@linaro.org>,
 jassisinghbrar@gmail.com, linux-kernel@vger.kernel.org,
 peter.hilber@opensynergy.com, linux-arm-kernel@lists.infradead.org,
 cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset makes the scmi core (driver.c) independent of mailbox
transport.

V5->V6:
- Divide the patchset into multiple logical patches.
- Create shmem.c to separate out shared mem related helpers.
- Make mark_txdone() optional.
- Drop inclusion of stddef.h.

V4->V5:
- struct scmi_shared_mem is moved to mailbox.c and it is completely
  handled by transport layer now.
- And so lots of ops change due to this.
- Fixed a bug from previous version where wrong dev structure was
  getting passed to devm_kzalloc().

V3->V4:
- Rebased on top of linux-next.

V2->V3:
- Added more ops to the structure to read/write/memcpy data
- Payload is moved to mailbox.c and is handled in transport specific way
  now. This resulted in lots of changes.

V1->V2:
- Dropped __iomem from payload data.
- Moved transport ops to scmi_desc, and that has a per transport
  instance now which is differentiated using the compatible string.
- Converted IS_ERR_OR_NULL to IS_ERR.

Viresh Kumar (3):
  firmware: arm_scmi: Update doc style comments
  firmware: arm_scmi: Move macros and helpers to common.h
  firmware: arm_scmi: Make scmi core independent of the transport type

 drivers/firmware/arm_scmi/Makefile  |   3 +-
 drivers/firmware/arm_scmi/common.h  | 112 ++++++++++-
 drivers/firmware/arm_scmi/driver.c  | 293 ++++------------------------
 drivers/firmware/arm_scmi/mailbox.c | 184 +++++++++++++++++
 drivers/firmware/arm_scmi/shmem.c   |  82 ++++++++
 5 files changed, 412 insertions(+), 262 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/mailbox.c
 create mode 100644 drivers/firmware/arm_scmi/shmem.c

-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
