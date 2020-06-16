Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199F21FAA9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jtFZwkJQe3ul8HwjQWf53g9bVV9gQ39k1PDSvbDy+R4=; b=QkttrIV91HhXcm
	GRojEVjvad4CeGpiwhGPczqRgpGAd4HnSMQRXJE6hNf2eD/aUIUkrrJyFviez7gnvnPkOQ3JYN1Sx
	vSM6OFSqGr0gXn0KstfDC7svtk2bfCR9BD8usgDwsYoBlyXWMz/tpbivPBaj5xCf6iVYGJFe69wEj
	EDqX8xHs0t6kL65vG1ocK2j9m7AZZQUgoj0QIKd1lR/sUQ/o/I0bsTRAzUdl4aa1RN08PW9/MgDkq
	+abbJTNRz6z5nzUXKU7RmyoOM3JE747xl6mTkdxBnf5wkbtaAgp730h2YPQweu8jez+bFQBxMhgux
	g5gglwvzOOy/zFsFoBFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6Vu-00020X-Ra; Tue, 16 Jun 2020 08:00:11 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6Vd-0001zX-IN
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:59:54 +0000
Received: by mail-lf1-x144.google.com with SMTP id t74so3591800lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=xyMWKsVRxjewqYUyP+f8kb8GE8J2QsgvF8iuNEc/g7c=;
 b=YAi/1g6QffkjNNBnbEAQQvwo3H8j+CObJ7r5RmYhN0Y/4XSolINcvJFKnXPT9brwjW
 uL7KRxoJZ3KUNT8Oj++87WX2Ex81eGviLNxEnOT/mapxCK5ApFjAVi6Xwpx4xEBReXM4
 OGBXBTxuTBOM1gBXADabNN+cQg9KLpXONjPZzkxQ7+zrrsue5JXelhCyyVOZDzz7JQ6x
 LlJLrcRw9QQj+zFH+X/67NARYHk+/jMUrTtITPf3z8hAUWpzvVKRJ+UA+euvpEaDjMWd
 5sPl9mdW+vriviXlK9qNUpvcm81oXfmKlhRQHu/KRj4UaPd3ubc8JI0m0L4PD6yf6XNv
 uaJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=xyMWKsVRxjewqYUyP+f8kb8GE8J2QsgvF8iuNEc/g7c=;
 b=imkkJGCVx3a0NJ8/k3vLKRA+sslAnDuGtii7E2fe0lP2g/HWd5Tbn6NJ97QTHh2NVG
 FWGb3EJ+KE130FM3pbxfwNUcPNuMdxx2XFRzcdMGa36ubXRUCzxWD7W1UCcVfwU6qiKv
 UzQk6Qm1VNcGKhEopPZgK5xGYpuQkq3L4xc9vm3KEmieflY/WXXUI/WBa4QGMZDzNwB0
 CB8fIJdeyz4EZA86DBZz2d8FeUqCcNQuO2hDbg/HU88knnnZ7pV/FUiYyyLlu8GGIhJm
 uPamkZcI7WgS9EtddfyHeJ2kg7mdZfyCwkQlthZOnvK8nXiuMQvgh0H+KcaYSJJ61vO9
 8j3g==
X-Gm-Message-State: AOAM532FtcBy4eBpk1Ces2c54jEir4QvcueExpA3yRIZyVwPz+cErfOs
 DxFmIB/XfK4KUmphtEQt1V/ing==
X-Google-Smtp-Source: ABdhPJztl3u9nMjRtr53UAn+quyoEaVucHAqvKSCuaQamiiOTZltyL6YRLAJRhPBqzTByB5gHhsYDg==
X-Received: by 2002:ac2:4567:: with SMTP id k7mr1039284lfm.122.1592294391187; 
 Tue, 16 Jun 2020 00:59:51 -0700 (PDT)
Received: from jade (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
 by smtp.gmail.com with ESMTPSA id q14sm45471lfn.75.2020.06.16.00.59.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:59:50 -0700 (PDT)
Date: Tue, 16 Jun 2020 09:59:48 +0200
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] update tee mailing list for v5.8
Message-ID: <20200616075948.GA2288211@jade>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_005953_640593_CA3DB357 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tee-dev@lists.linaro.org, Sumit Garg <sumit.garg@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull this patch updatating the TEE mailing list to
op-tee@lists.trustedfirmware.org.

Thanks,
Jens

The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c7407:

  Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)

are available in the Git repository at:

  git://git.linaro.org/people/jens.wiklander/linux-tee.git tags/tee-ml-for-v5.8

for you to fetch changes up to cf5057e169f460e825bdf580eb285bb601156f82:

  MAINTAINERS: change tee mailing list (2020-06-16 09:37:45 +0200)

----------------------------------------------------------------
Change the TEE mailing list in MAINTAINERS

----------------------------------------------------------------
Jens Wiklander (1):
      MAINTAINERS: change tee mailing list

 MAINTAINERS | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
