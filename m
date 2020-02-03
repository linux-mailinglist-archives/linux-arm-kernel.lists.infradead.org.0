Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4809F150115
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 06:03:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CJqI8R4Q+Ca4Z+5lPideDaJaJr5mVIVZgocrCA2mV7s=; b=dPxZnFw07Idtox
	A90qvzDPshqBCrw/+jR+/Qoq3ByGrzBj4Xn9qbmk4YSQAud/+eUtM/g8H4PguN+80owDqGFim8Pn8
	/99v1+wxRHM+N9qe8weSqbLicgf4WEpoS+fOje7WUa+Qa7KU25WY9GfAZ1VJLZ3B3bZb+MCHIJ0GB
	HjrFLdFV59EOnV5C+cADyRvW6ddaqi18LxdTMQvXJT7nhZqzYtRCt70tPYcSvs9ZZX9x3Iil+vMCy
	WDCgJ1IfO3vRsHUb3uw7yjHRrMFQEMRatPSLQ9daseDClZqEWC2tuPdd4PZ7Q4m9RaTAjkTPaPN1a
	UWg27AIljtlCpd5ZZimA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyTth-0001h7-Bt; Mon, 03 Feb 2020 05:03:45 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyTtL-0001YQ-N4
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 05:03:25 +0000
Received: by mail-qt1-x844.google.com with SMTP id c24so10502309qtp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 21:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PWETuN1Ct/aBktiJB2sFTwNGzVs9/Rhblhe4P3oaRJY=;
 b=HkuwH2bub7iIvO57E0i9lDHUF3m+LwVNRVnbSdehpOMJ+PDBp0xVO3m0rG1ykfB5FU
 B7K3kVzledfBK17Mz5U+DPvWX1uJ0XWN9QpePcYnui0zfLUz9kLPU8Qn+oraz1LtjgSU
 AbfXOOxCFhifOISWKDh2xaQ0+qISmretXlYVTHbpVGksN8+2nsi7PFXtmsxWKaV2G927
 ViaAZLe/Ogu1KTKFcdPiqwvuH1dCng+FdGSf/iBgWOog8c60qKymxzGADt9f5dEfbzzv
 tDov8kA2Sb9hYLx/IMKWtJIeVRK10k76i3tioZX0JelH/PwsfBfNFkgdO9AaTgF0KfRQ
 j1tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PWETuN1Ct/aBktiJB2sFTwNGzVs9/Rhblhe4P3oaRJY=;
 b=aMUxnrz7K/S6xci1WwiJXRMdS8cigmtxxDxCBpSzVmaLJJV0SsSFdJQsHdlrOvhkRe
 V/xLtDXu8fgqDEW24zv9ZlsMZ050HP4kgHson2dfn8QoqQEbiUKChvX/DAFfGzahAjem
 F/9Bnlj52uSfA4E/lEmz2vZFxNBBUOHhZf0600pKTmDZCyLlEH/Nn2fU70wMW4KjoZS+
 5qNUDbgWJS3otq8SxY5PiWOZ11aQZjRHOq9kvWFkHdEQX8dnNUGJUpdVFOlHtF/lEHK6
 LR0HTllTnrq7KrRFfgKB+HULCKIkrpTUEKTJQ/PDlDE7+xOl35NzxQ3onhuyraMY1+M9
 fUDg==
X-Gm-Message-State: APjAAAXP3RLrSFHSzyt93XAG5SCJ0WTfTuODL8pCXB8IYb73skXhzilV
 5jdWhLIkNnYt06LiNfJDZgQ=
X-Google-Smtp-Source: APXvYqx5jpsXp9AeJcxrEs21tUX1LfSm/Td+nyy+2Xg93XES6+FgF0WKPll2zf0C6SmJAwoxK/g+wA==
X-Received: by 2002:ac8:108:: with SMTP id e8mr22244723qtg.101.1580706202246; 
 Sun, 02 Feb 2020 21:03:22 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id v2sm9435343qto.73.2020.02.02.21.03.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Feb 2020 21:03:21 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 54C3E21EC3;
 Mon,  3 Feb 2020 00:03:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 03 Feb 2020 00:03:18 -0500
X-ME-Sender: <xms:lKk3XnS7TAJMSrraTFkuhbT-Xmy7nggDlkHu41dzguP_BhJxkHmxdQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeeigdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuohhrthgvugftvggtihhpvdculdegtddmnecujfgurhephffvufffkffoggfgsedtkeer
 tdertddtnecuhfhrohhmpeeuohhquhhnucfhvghnghcuoegsohhquhhnrdhfvghnghesgh
 hmrghilhdrtghomheqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphephedv
 rdduheehrdduuddurdejudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpegsohhquhhnodhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithih
 qdeiledvgeehtdeigedqudejjeekheehhedvqdgsohhquhhnrdhfvghngheppehgmhgrih
 hlrdgtohhmsehfihigmhgvrdhnrghmvg
X-ME-Proxy: <xmx:lKk3Xt8KCi63j6F2Q-uEdywfZMtbCYGspogt7A7kyJcxsh8a7SGNuw>
 <xmx:lKk3XtOFZkqp6zCJmR4qgUpZUE0RJYje7Ha-ylVJLiSj5nvnwICY2w>
 <xmx:lKk3XgHciIXfgh-o06VN2x4mhgIqpffW0PapUfy3hukGfyQGoj5zjA>
 <xmx:lqk3XoXgRmlF_qzXVCzXkAVoNLIf1u3j_wDK2sABnOmyYXVNXgDx5DSmm2U>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5119D328005E;
 Mon,  3 Feb 2020 00:03:16 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-pci@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] PCI: hv: Generify pci-hyperv.c
Date: Mon,  3 Feb 2020 13:03:10 +0800
Message-Id: <20200203050313.69247-1-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_210323_749709_268D6651 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [boqun.feng[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, x86@kernel.org,
 Michael Kelley <mikelley@microsoft.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Boqun Feng <boqun.feng@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This is the first part for virtual PCI support of Hyper-V guest on
ARM64. The whole patchset doesn't have any functional change, but only
refactors the pci-hyperv.c code to make it more arch-independent.

Previous version:
v1: https://lore.kernel.org/lkml/20200121015713.69691-1-boqun.feng@gmail.com/

Changes since v1:

*	Reword the commit log and adjust the title as per Bjorn's
	suggestion

*	Split patch #2 into two patches (one for moving and one for
	adding new structure) as per Bjorn's suggestion

*	Remove unnecesarry #if guard as per Vitaly's suggestion.

*	Add explanation for adding hv_set_msi_address_from_desc().

I've done compile and boot test of this patchset, also done some tests
with a pass-through NVMe device.

Suggestions and comments are welcome!

Regards,
Boqun

Boqun Feng (3):
  PCI: hv: Move hypercall related definitions into tlfs header
  PCI: hv: Move retarget related structures into tlfs header
  PCI: hv: Introduce hv_msi_entry

 arch/x86/include/asm/hyperv-tlfs.h  | 41 +++++++++++++++++++++++++++
 arch/x86/include/asm/mshyperv.h     |  5 ++++
 drivers/pci/controller/pci-hyperv.c | 44 +++--------------------------
 3 files changed, 50 insertions(+), 40 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
