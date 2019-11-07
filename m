Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB51F2DF8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 13:12:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ivtR3SZx8QeqfKUgK36LpFSU2dcd34vdfrHW/18BPdc=; b=BbIsgp3DXRGtUh
	YRmIBZqB0Z9tIUSmeWs82FY9JM7o4VZTRGNUPv9NYPEZR1Pxl4zcCyGOR29DdMaUsaF962nDPJw5t
	xofZQS9AYJJOUZXakkPHvMA5f3njLqIMU6IaOopvFGJF2m3NoKaVbHpRT2V0pQema7TwBzpgsNQoM
	Mv2nhO0md5bA5sajuCn08rHj79q3o0JXHSgwHh9oD+4OtLRDCrq/Qk3sYLGb67j0rp8X+6d7oyXpE
	t1jMqhqzibTuq2J3uTQG6zetREJYbcZAIflXQilUTJO07sRyV/QZ7tAycenhPa7/6HH2YrNqd9yNv
	I7IP3s3cx9lTM1bPAJYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgeA-00008t-Hp; Thu, 07 Nov 2019 12:12:18 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgdv-0008U5-VJ
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 12:12:05 +0000
Received: by mail-lf1-x143.google.com with SMTP id v4so1397295lfd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 04:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=pyy8vkTJSzgNxqiCr2+y5TMDgtVVbBOEIpX6C3EpP3U=;
 b=XPpefSxVqa4KAVZE9vPHMqqgshNjBfZB43iDpwfSv1FNBN2KzTgfMDWtKAlwqYLPq1
 AyKfc7mD2FN66uF/5zcH+FHNfwOgDRAfv4ckt/vciODMTECa4DA2++2YBU1+P8rHAcdI
 A55FfzBl52daMgUUHiudYHOl1uMr1jQr7KZq4SlaauK0m74l1mSFKuhmFa4zjLmPk4zl
 fhshw3j5FnaaHEhMel3ygDj+ZsHkqHQebKfA6+Zy0nkaZvvqEVW9JL1ZQGb0//bd+ohM
 q/dbY3l6XEUDPli8FGfJMCd7Ht2G12LvVSgLDN3/eR5TdPUNHvtqHfWtx0zoFGuCkeMg
 2vKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=pyy8vkTJSzgNxqiCr2+y5TMDgtVVbBOEIpX6C3EpP3U=;
 b=uQPt9MsiGpNYqjANn22CE3c/Avw88EVdw9cMN1ucofqk+KTbEKJssedWS85M4r7fmL
 pXnvnyoeD6+MXU/aqDVZdD+0Dw9DJiPO1D9p6yVTprKG7845ZgSrC0drkVgbZ83M78R6
 MJinp0drOakHUOe1KBAkDiITAIEY8PuC0C4bUFEIwr4BQz/MfBS4w1elfZ+D+ON8W9Rs
 Gzo7Fy+Q/gOPd1GEe4i2vqEgBqehIo0vkBZ04RLdABCvC2kRGw4muIZlcFaBJNpXpmWc
 Tg3vcQeD45fbkr2+s1oIB+mO+tcUv34NX62LXIUy66ic9cUVUyRlVIimCYAxy2jaeHTd
 9CvQ==
X-Gm-Message-State: APjAAAUgU8e1rEhcS3JVoUP1hOjWTrPIoW7DwmJvRh9C+fvzFox4Uwrt
 wp7aznpMfx8ZkyzD6zG4ZB1x+A==
X-Google-Smtp-Source: APXvYqyO00Wglntl8Ch/EQ1NSmfyf403om0J9/NXHBJF6084BMLQydB7qQX2RFthZZ9lFM43VEJjow==
X-Received: by 2002:a19:fc1e:: with SMTP id a30mr2209666lfi.167.1573128722113; 
 Thu, 07 Nov 2019 04:12:02 -0800 (PST)
Received: from jax (h-48-81.A175.priv.bahnhof.se. [94.254.48.81])
 by smtp.gmail.com with ESMTPSA id k187sm2371024lfd.54.2019.11.07.04.12.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 07 Nov 2019 04:12:01 -0800 (PST)
Date: Thu, 7 Nov 2019 13:11:59 +0100
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] tee subsys fixes for v5.4
Message-ID: <20191107121159.GA9301@jax>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_041204_037376_435F041D 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull these OP-TEE driver fixes. There's one user-after-free issue if
in the error handling path when the OP-TEE driver is initializing. There's
also one fix to to register dynamically allocated shared memory needed by
kernel clients communicating with secure world via memory references.

If you think it's too late for v5.4 please queue it for v5.5 instead.

Thanks,
Jens

The following changes since commit 4f5cafb5cb8471e54afdc9054d973535614f7675:

  Linux 5.4-rc3 (2019-10-13 16:37:36 -0700)

are available in the Git repository at:

  git://git.linaro.org/people/jens.wiklander/linux-tee.git tags/tee-fixes-for-v5.4

for you to fetch changes up to 61435a63b15233428088ccb0ad34e19fc00416c9:

  tee: optee: fix device enumeration error handling (2019-11-07 12:07:44 +0100)

----------------------------------------------------------------
Two OP-TE driver fixes:
- Add proper cleanup on optee_enumerate_devices() failure
- Make sure to register kernel allocations of dynamic shared memory

----------------------------------------------------------------
Jens Wiklander (1):
      tee: optee: fix device enumeration error handling

Sumit Garg (1):
      tee: optee: Fix dynamic shm pool allocations

 drivers/tee/optee/core.c     | 20 ++++++++++++--------
 drivers/tee/optee/shm_pool.c | 12 +++++++++++-
 2 files changed, 23 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
