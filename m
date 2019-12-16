Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FC211FC15
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 01:20:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qClPUi478koHKTMSWSrKuTmdKMhLZnJPGwcej3BNhc8=; b=bn9Rk6g4RAyfgP
	+5n5sVQn1Cs/MeBenE2VdW4Nq8s/hbROpvDL1vYS74MXwFt62wVAHnRz4yuMi66B7IfQRA/PQlTON
	J4NbpaBD7uUAcT5WLo1/t7AtpWpmbN4s5T3qMqp2TXuOsON+sjEVDwuTLV2F1zbil8ttKwGQ2LDpF
	zvQRH6SKt2jTmPqxKLhOqrtjIr2F5jz1Ixh2S0D+THdQt0CMkDIGoz3f01sAqWsahtbW4nU4Uz4zD
	1LwA7uvgR8pZkkVi/lKr1E9DCS7tlm05+bQn/KQXu3CEU+oK8ut6xjb5qVVbrnOfKpDq6E1jeA7OB
	kKAuhDcuG8X9ykSnT6Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ige7E-0003yi-3H; Mon, 16 Dec 2019 00:20:00 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ige6q-0003qK-1x
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 00:19:37 +0000
Received: by mail-qk1-x744.google.com with SMTP id k6so1545730qki.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 16:19:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aZ6sGO0KS0Q8EYVwWz/tNENQC8GnXFZ6xRDHj7knL74=;
 b=Gmb45a2redl2v2Psqc9UmK5BWjcPglzmbzjDpsikHLbmggLKdOVorJeLzaOihAp93n
 dZuMPP9Yq0XhR4kkhOpXSkhSDgDY7Q1xUpGZhMf6Ogg+p7xlsNEqI8pOq07smNJIb729
 KRa4FwyruYu+W4RNN1PJgXm4h6Ulv+MJjNPQcDIV0FZh4+eA8lE6SlNe6p65GE7u3Z6k
 Wa+wg8XDsBh++bc/vo63jVSfEKICDmwU/S4INp786dJO2HHJnWsMRwktN9Y0UajVgbpm
 NrNsEFU0hxV8nLsegKRlsf3oghWVDY2nCi+m+2Fp1dRlscQL+URlyVJ1jR+XgzFXJbZM
 L3dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aZ6sGO0KS0Q8EYVwWz/tNENQC8GnXFZ6xRDHj7knL74=;
 b=cFXBJT7Gm1NPOq2TRNYBBdUpWARv5TyceqCG80oVtY5iV9OKKDHwe8gyamGDR+GLLT
 CkDkUk2XJ3WSQaFD1YsiwvMTnffSAAuojLuReC7xMz3wUlj3HswUnsDJhA/ncOu2+UQI
 6nnAqpdtE27/8Qv8ocmW8ZQ2my7U3ewY4Iqx1zqGARnim3ZY4INb8YdP8iyCt0gEzXWl
 8aiLDCk0GHhRKXuST/+HG8cewO81md5+6WCxqYW6Ud8pBvyCn0f5dS/vGWO0QT7/ID63
 hzfwSfQszgBbjFO06EPBJN1c414YBXQeJXBVR7M7WokwPQjuruZD2G/zn+NCniBo50aJ
 pbEQ==
X-Gm-Message-State: APjAAAXk9FBGwjIDcsmj7UHNFMKqkytZ0wLw7AXo2e4svCCi67VSb4zc
 A4a93BSUyp9wOIIbSLcYFbY=
X-Google-Smtp-Source: APXvYqzAQwy89lyacoeuw+asSDBQYlTp0vqfLPII18paqb1S/uBBbW6TqUEv6w6/z3AIjjLrHyaopg==
X-Received: by 2002:a37:48f:: with SMTP id 137mr24677846qke.25.1576455572728; 
 Sun, 15 Dec 2019 16:19:32 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id e2sm5376739qkl.3.2019.12.15.16.19.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Dec 2019 16:19:31 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 7111D22430;
 Sun, 15 Dec 2019 19:19:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 15 Dec 2019 19:19:30 -0500
X-ME-Sender: <xms:kc32XeNibvP_au8cm_jiN6rThl2eefciU1Jc-App3cBtSjKNtAWevA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhorhhtvggutfgvtghiphdvucdlgedtmdenucfjughrpefhvffufffkofgggfestdek
 redtredttdenucfhrhhomhepuehoqhhunhcuhfgvnhhguceosghoqhhunhdrfhgvnhhgse
 hgmhgrihhlrdgtohhmqeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhgihhthhhu
 sgdrtghomhenucfkphephedvrdduheehrdduuddurdejudenucfrrghrrghmpehmrghilh
 hfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrhhsohhnrghlihhthidqieel
 vdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgvnhhgpeepghhmrghilhdrtg
 homhesfhhigihmvgdrnhgrmhgvnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:kc32Xdl8_zahWOQvooHUe9tKxDScPH3OeodcADOCpBCp0dUmiJjnvQ>
 <xmx:kc32XQbukJFCvrLL7M4nc72CTroIKyNCxbhWdtmCCe5vP3l91CwIyQ>
 <xmx:kc32XTTHwezsupdARHAEkG3utLJ_lpz0EFhC-pw3X_mCxe6pmXP0Eg>
 <xmx:ks32XdWhDOQlVK8lfpDMef_v7K-YnFb-v4AwmCwl5TJhn4VnUW0LfBRLVg8>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 992E780062;
 Sun, 15 Dec 2019 19:19:28 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-hyperv@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 0/6] vDSO support for Hyper-V guest on ARM64
Date: Mon, 16 Dec 2019 08:19:16 +0800
Message-Id: <20191216001922.23008-1-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_161936_123173_6C6AE57A 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (boqun.feng[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Michael Kelley <mikelley@microsoft.com>,
 Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This is the RFC patchset for vDSO support in ARM64 Hyper-V guest. To
test it, Michael's ARM64 support patchset:

	https://lore.kernel.org/linux-arm-kernel/1570129355-16005-1-git-send-email-mikelley@microsoft.com/

is needed.

Similar as x86, Hyper-V on ARM64 use a TSC page for guests to read
the virtualized hardware timer, this TSC page is read-only for the
guests, so could be used for vDSO data page. And the vDSO (userspace)
code could use the same code for timer reading as kernel, since
they read the same TSC page.

This patchset therefore extends ARM64's __vsdo_init() to allow multiple
data pages and introduces the vclock_mode concept similar to x86 to
allow different platforms (bare-metal, Hyper-V, etc.) to switch to
different __arch_get_hw_counter() implementations. The rest of this
patchset does the necessary setup for Hyper-V guests: mapping tsc page,
enabling userspace to read cntvct, etc. to enable vDSO.

This patchset consists of 6 patches:

patch #1 allows hv_get_raw_timer() definition to be overridden for
userspace and kernel to share the same hv_read_tsc_page() definition.

patch #2 extends ARM64 to support multiple vDSO data pages.

patch #3 introduces vclock_mode similiar to x86 to allow different
__arch_get_hw_counter() implementations for different clocksources.

patch #4 maps Hyper-V TSC page into vDSO data page.

patch #5 allows userspace to read cntvct, so that userspace can
efficiently read the clocksource.

patch #6 enables the vDSO for ARM64 Hyper-V guest.

The whole patchset is based on v5.5-rc1 plus Michael's ARM64 support
patchset, and I've done a few tests with:

	https://github.com/nlynch-mentor/vdsotest

Comments and suggestions are welcome!

Regards,
Boqun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
