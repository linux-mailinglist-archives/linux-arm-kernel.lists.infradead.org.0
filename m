Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F79137AAC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:36:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwGcsNjtENNse5pp3tVEtPK0VDjEchD6+7FFBDUCYEM=; b=MCfnpBR2yWgC5a
	JaV/0UktglZReQ3fVovwiL3zTR/2HiOs8fVONLssDFw9/BdrNx0O7Gd9P5T2VvZ4bXm++h0NMhxkY
	7NqAtunj/W5DjpQfeLlwZWEoLaD7hQ2GmQIa7L+44Zj8WAUIdOK1bpsF4blA4chOQY+qk4Dl/6mC9
	2r3vH/J2Fz1YK2YHJo4Hkv6AASmGL/BjTbILok6mirfI0y0e1m7z1cS3I0/HzuI5I0JDalHC3obvY
	lH2vRM/96MNbVoMm5AkKU+0Zf21KLn/y6FlrJDMJ9hf9EttJl4pvf+RoODUYWh3HfKRt2nBu/+Kug
	cXiaXnfeXZnRPJ8eSetw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq4lV-0006nu-1T; Sat, 11 Jan 2020 00:36:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq4kz-0006ZR-N1
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:36:02 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so3813954wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9RSHU/Gjykx5RiPSJKwAd769+/CbYqTNCLwQOYVIZDE=;
 b=ERadZNXtHeLEVB/nGJCNGxJCKf650aWi2+uaNXP6aepOkppqTZ3pECwwMbovFSogew
 ittF2avhfPnvE2HiiaXl9qvRiAOzl8e9E49/hDsakaholmd7pvYd+n+ri+CdeFFyICHa
 mNcKIjd475m0ABrw81nkkfzGpaIff4uVxr5xoFb6La49DWk9OqR6G3NaxQ4vZKtp1Mni
 +kZLqVaVRlVhw4pVu63SeaLSbJkl2jtyYjRoXMqpHVccWsNGgkPEyfjZdRSjVwYJFmkC
 3tG8WQPjYKclvhpCZF6iIisdqjWxm1JgN8uDOaJth+syxno5Uuao55srTKW7ZKr7cI+5
 A5gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9RSHU/Gjykx5RiPSJKwAd769+/CbYqTNCLwQOYVIZDE=;
 b=pVUboMEGjR/CB1OJ7F2djzCp0vAHGqJBKbjQPQRhh8ipOWGiMCamD9MxCdOA0Lcaxp
 vbdeJwNbJPYbta/S9ICs/ZlEZR+QujTaoSVm1RMkEeBUPbElUZ9kdftKCc8MfhdyfPEQ
 CLi/C8nquOCmvwZyfexr2KpJ98MA2pjYGeccJfJ+NbqSibx/86y1Rk9nQdYAEYzJNW4D
 t/xk5NNR5WNwVSpJUFY5IVsvIqApv0V2Su8r8nCH+QdOEaOZj55cZLJv/ZZAJojOQ8rF
 F92EfbXmiblKH6cz8jCQB1Ld2WEoVOKQK2SctzTFJ5WQgi+dBbayrpYDI1rVhPBNowx9
 5Lrg==
X-Gm-Message-State: APjAAAWgn+xyPXuAzOCJmCDeBxF48uB8VXP5mS0lN5CJoAIXOKwIpvMi
 QYe67uZYBSeYLtpQx95xOvGdWDRM
X-Google-Smtp-Source: APXvYqxCARR2IUXPDubme7stKDBpuSN4faHHx4d8JlnhwSwxzvRKE024F8cy+T+vNiUEjDapDgXhVA==
X-Received: by 2002:a7b:c934:: with SMTP id h20mr6800004wml.103.1578702960198; 
 Fri, 10 Jan 2020 16:36:00 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id u18sm4169773wrt.26.2020.01.10.16.35.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 16:35:59 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 2/8] bus: tegra: Changes for v5.6-rc1
Date: Sat, 11 Jan 2020 01:35:47 +0100
Message-Id: <20200111003553.2411874-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200111003553.2411874-1-thierry.reding@gmail.com>
References: <20200111003553.2411874-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_163601_746237_72D41981 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.6-bus

for you to fetch changes up to 2f56acf818a08a9187ac8ec6e3d994fc13dc368d:

  bus: tegra-aconnect: Remove PM_CLK dependency (2020-01-10 12:31:24 +0100)

Thanks,
Thierry

----------------------------------------------------------------
bus: tegra: Changes for v5.6-rc1

Contains a single fix to remove a Kconfig dependency that's no longer
required.

----------------------------------------------------------------
Sameer Pujar (1):
      bus: tegra-aconnect: Remove PM_CLK dependency

 drivers/bus/Kconfig | 1 -
 1 file changed, 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
