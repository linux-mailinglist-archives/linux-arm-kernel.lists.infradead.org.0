Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E974156DFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 04:41:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LIpkerDMZlK/NESQQd9/nqrKVAOXxQriDnKLvOcCZEQ=; b=oC3FMyjjMPxkxJ
	F9Pfbr68lIYfs1+IIdrxkTSEsuN5gNT2QJpCY85GBDvb7XoxFhpQeb5O10F+d6+R44CWbXbtcpZrp
	7k4ub9mwYFZVvQUhc9+QrmJU2JuF75APz8rclaudzuHOooiJKJhiFZJfQlDLky0Ic524mU50hARk8
	S/Z8jV4LJWZUkh1pNN5eXwn+QS8YX7X6RmYlyxNZJ4XJuyh7UJmKlCdfjzAXOWixSR3qJk3ZYD4l3
	5ycH+5uK6ceEwx9rUCog2IsyofaCYzgwfyxEjcyc6LppRhktJ3uqAAFloAmN/AckNnWKD5HYWxBAw
	B2IRxwyr0qShFF0UtBsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0zwS-0004rD-2p; Mon, 10 Feb 2020 03:41:00 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0zvc-000466-Rs
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 03:40:11 +0000
Received: by mail-qk1-x741.google.com with SMTP id v2so298737qkj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 19:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=frfitOFXox86XEifRvZU8CHfdOpsMURa7f2gjVq2U28=;
 b=iWycGiy96SWpQJ31sL6iYLl3KcJ0dFgExK3vPC1U1Fedgb3NlUkSaKIEFQfH9YvVLC
 ln8/R5P8WT6z9PWn02Fop2/cllNGbdbj5ep2xctdG6NThRWxxA9MKl4zIQ5A7cxfBSKr
 CCGoA4yLGYtDsSGQZUMOXsfilqpP/GG9O2C5Z40P9Dc3OobsNaimCzo7VuWd47HqG7lQ
 pl3eYuC/F6aMi1cFdKIlJYCMwzr3c6sjkMPPUbqYCBFpIG82lK8+KjCt4HBtfdfwMRny
 GNU28UQd/oxAZ7VdbmFrwXBFxuwmvMld0M22OC9av7R6TS5MqW2yh0iHDSr5UrL7M+jw
 /ylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=frfitOFXox86XEifRvZU8CHfdOpsMURa7f2gjVq2U28=;
 b=Jy/M3jm0BiscUeET+yH8JJL5apfAjVKJPbWbc7JxjrvB+cpnBjDeTBCYa4puJk3QZK
 lYfJ99Fn8VkwZoHphxbX5dxVKCgjn8uMId4mdPNmf149LhInZvANn/GkQiaVyOiMgE23
 UMlzy5WOc0u6ozuhE/FDjqsIpehGpaP3H/7y0xZxKjss+fJdFOoHlhmIqd5o/ir1bhZN
 nLZVXpzWRU570937hzs53ySEF562ufIUtkitlwVBvd3t4/QPRtbc2oeHub+6crWllBOW
 Z8d2SFbIoDBi61PkD/1m484yY1YSvu4aBJuB/y6NcuVZUTzw2gGlI++X66Xg+OLKADBr
 fe5A==
X-Gm-Message-State: APjAAAU2u4nEI6wKlO/tVbAhPz37LX/0Bv4ZRwrgP+UFQ64rMBfWwozM
 aObEiumbcSxitsf3uqE2rf3ZAHo+
X-Google-Smtp-Source: APXvYqy5b4i4DNfRHydf+m6nmbdF5HggBHGwaG5kMgg6NU4ZOf720NShyORmng4qsE7dxslJkWlUdQ==
X-Received: by 2002:a37:e10f:: with SMTP id c15mr8958157qkm.331.1581306007417; 
 Sun, 09 Feb 2020 19:40:07 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id h4sm5471601qtp.24.2020.02.09.19.40.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Feb 2020 19:40:06 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 5C3B921F34;
 Sun,  9 Feb 2020 22:40:05 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 09 Feb 2020 22:40:05 -0500
X-ME-Sender: <xms:kNBAXhWsLdcLV5cUxDW5opGAKDs4sQWXvOnfHGzIRHTVpVekWHC-Mw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedtgddvkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuohhrthgvugftvggtihhpvdculdegtddmnecujfgurhephffvufffkffoggfgsedtkeer
 tdertddtnecuhfhrohhmpeeuohhquhhnucfhvghnghcuoegsohhquhhnrdhfvghnghesgh
 hmrghilhdrtghomheqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphephedv
 rdduheehrdduuddurdejudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpegsohhquhhnodhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithih
 qdeiledvgeehtdeigedqudejjeekheehhedvqdgsohhquhhnrdhfvghngheppehgmhgrih
 hlrdgtohhmsehfihigmhgvrdhnrghmvg
X-ME-Proxy: <xmx:kNBAXuCj-GPfaTSVhcn-B_H330oKSgKg0IrD60tUjHS2ufrJ1Z-Z6w>
 <xmx:kNBAXkpRd1EKS-4cdLOqnj_ek9htrQ-5dxXYJnao9cLe2w0nHJTGDQ>
 <xmx:kNBAXq00Y7ybEDx318PH8LWF-N9dEWx-qj7i8iGU4pqSp90_wXT9Bg>
 <xmx:ldBAXtdqqKvhaiNWE0B3vSM1N5p0ryPyzeJ3sxIRtCk4o3Zk4K5SHCwsHr8>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id A8C6730606FB;
 Sun,  9 Feb 2020 22:39:59 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-pci@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/3] PCI: hv: Generify pci-hyperv.c
Date: Mon, 10 Feb 2020 11:39:50 +0800
Message-Id: <20200210033953.99692-1-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_194008_942976_06ABFB4F 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [boqun.feng[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
v2: https://lore.kernel.org/linux-arm-kernel/20200203050313.69247-1-boqun.feng@gmail.com/

Changes since v2:

*	Rebased on 5.6-rc1

*	Reword commit logs as per Andrew's suggestion.

*	It makes more sense to have a generic interface to set the whole
	msi_entry rather than only the "address" field. So change
	hv_set_msi_address_from_desc() to hv_set_msi_entry_from_desc().
	Additionally, make it an inline function as per the suggestion
	of Andrew and Thomas.

*	Add the missing comment saying the partition_id of
	hv_retarget_device_interrupt must be self.

*	Add the explanation for why "__packed" is needed for TLFS
	structures.

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
 arch/x86/include/asm/mshyperv.h     |  8 ++++++
 drivers/pci/controller/pci-hyperv.c | 43 ++---------------------------
 3 files changed, 52 insertions(+), 40 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
