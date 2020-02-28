Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5655D173980
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 15:09:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VMPUZCmb2ueAHipEKQca8PTqKrCBswUgdxP/OcAQHBQ=; b=spSGvi/hqvMeiN
	ERcGtp56gMTPau1TUn7y6CqsCHxIWmOehLfv7lRaLEE1f0H6SduIs99lyeMQHxMjR/coOZ9KvmED2
	sHr6MtUcfadK8L8UBGY+dABb6jvtTylDkJAh/HLlw2KighaNUL8U42ALL/sDD0TGM03o19p0Kt3RT
	4hdQiRDdLCWn7W9s8hbw801XhCeWiBV0qTNWEsJ3o9l7dnMOxcITvPKFXUPbCthFIaTtYsW1TZNsx
	Gjji3COgmM/Vd1pfkSXavuz+IK7/9JpFQjRlQWWX57fu2j2eJmqKxKh8FFQTrz6wiRqNI6+ETj/u+
	fXFsHnbl5NDSoL93uTxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7gKi-0004gQ-41; Fri, 28 Feb 2020 14:09:40 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7gKY-0004fh-Mj
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 14:09:32 +0000
Received: by mail-lf1-x12f.google.com with SMTP id z9so2221153lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 06:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=BGRhYUunws4pXu6R++Tvw3n0xSj2znFbq+SxOUkGyqA=;
 b=ku0TrqiNTt/Updmc22hFfGsFnmEkXnafAY6IK9IF/lxQTbChpHGpHGJeXAIUXcjz9f
 3bibBejKZgxdA2R6y5BmOFyjwCeC1LQrjXKlRR0EVtDKymHHKlP1hc/V64ZjuRDIGWgg
 0m32E031Mes4vpU8lwtDwdKy/1Cuz+PIX7fd7AObKfBzaGvvQo3oSfg2ZvuFhmL5tNT0
 SDVJHPzldDUhWwkXuXrGytsb0p+SByxOsc2kNNku3TcBpZO4128LYE5EpN7gyuI/HjNo
 a1FqRv8PilKjVGm/TjMlUBSlOHMUvQofdPJDFuSULEcd0Y5qjqrHT2Vb7kTaZUxFEy6M
 PX/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=BGRhYUunws4pXu6R++Tvw3n0xSj2znFbq+SxOUkGyqA=;
 b=g497ZMtZkb/jcx3XxU+bpDWeBXZiYQw98MaGpvhEEwwI9RGaE8SAZafbDi2Xe6qs9G
 rzOrNccwvlCrsXPPRFA5kyDQn/EgKt13+niLmB3heEwHKcnczwjUeBCsU8wP15lMrkZz
 pHODXCBwxbPvetPGLEJ6Z019aM9pK+9ByE8U+p1PhooCD1rb450ixK3l8twiSFZ/qn7I
 VFKCqEFWj3pTVpB0nJpFKDhK6/a2QpG6hJ6e7cHH4IKLhFAppn4bUa5DxiJYwCYig/0z
 MyvoQUnYvOummcnWezFjQhO+q/f2NMe8ENg/Z8imGYxpU5V2ZD9bMO3Xyb6j4klT88rY
 CZqQ==
X-Gm-Message-State: ANhLgQ0kjtoII7vnans4kknS1J4IsmFuTr1Gk8ZUD4nH7WvEQvw3Rk8h
 Kr53afSRkhfnb8BMfuJgrfVotw==
X-Google-Smtp-Source: ADFU+vvU3JDWmreoR+lLENn7LyX/SZLQgxYyjTHcZMkqilomsb4FiZ+siroa9Pq1k4tsahpukBvOmg==
X-Received: by 2002:a05:6512:6c5:: with SMTP id
 u5mr2774555lff.130.1582898968554; 
 Fri, 28 Feb 2020 06:09:28 -0800 (PST)
Received: from jade (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
 by smtp.gmail.com with ESMTPSA id n13sm5773869lji.91.2020.02.28.06.09.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 06:09:27 -0800 (PST)
Date: Fri, 28 Feb 2020 15:09:25 +0100
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] TEE shared memory cleanup for v5.7
Message-ID: <20200228140925.GA12393@jade>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_060930_752023_22F9F1A8 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tee-dev@lists.linaro.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull these cleanup patches for shared memory in the TEE subsystem.

Thanks,
Jens


The following changes since commit 11a48a5a18c63fd7621bb050228cebf13566e4d8:

  Linux 5.6-rc2 (2020-02-16 13:16:59 -0800)

are available in the Git repository at:

  https://git.linaro.org/people/jens.wiklander/linux-tee.git tags/tee-cleanup-for-5.7

for you to fetch changes up to 758ecf13a41a9dc4f019c1381566132ef46c08ee:

  tee: tee_shm_op_mmap(): use TEE_SHM_USER_MAPPED (2020-02-28 13:37:42 +0100)

----------------------------------------------------------------
Cleanup shared memory handing in TEE subsystem
The highlights are:
- Removing redundant or unused fields in struct tee_shm
- Only assign userspace shm IDs for shared memory objects originating from
  user space

----------------------------------------------------------------
Jens Wiklander (5):
      tee: remove linked list of struct tee_shm
      tee: remove unused tee_shm_priv_alloc()
      tee: don't assign shm id for private shms
      tee: remove redundant teedev in struct tee_shm
      tee: tee_shm_op_mmap(): use TEE_SHM_USER_MAPPED

 drivers/tee/tee_core.c    |  1 -
 drivers/tee/tee_private.h |  3 +-
 drivers/tee/tee_shm.c     | 85 +++++++++++++----------------------------------
 include/linux/tee_drv.h   | 19 +----------
 4 files changed, 27 insertions(+), 81 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
