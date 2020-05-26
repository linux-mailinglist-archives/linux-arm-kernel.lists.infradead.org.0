Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6971E22CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 15:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bm4oPxz2OyDak5PlRZ5IYqmqaeeNQgvca7fHdsF6H30=; b=mrlXD8FB50Fn5z
	eAdCsTpEbtU6wT9deZ+brfunFwsPsg+u1ndOM8WorPcROQRpYCJESBG1PSsUSn8lVMjkcUjYRpWGU
	pg25QZN/lXQ2Q3LayIeqElsvSGsBG5ojLeSkAZSCgL/twadLDQ+FLMUx2gydSXIFkTZjFdsO+60G1
	NPAhdOPYI9VZe8FBuCNmMdso2IlNOwFUbBxv6GvWR/18ILNSXumBu3E/XSkTjsGFQf/jBCGcQZ2td
	0qQNB74qHhmiIAcOpsb9Ip0aERgvKSV1nYkPSOUTAg/8aCYPGVbPtiP2SHsaeGXsoTEjMdAuaJA43
	uz1D3+uo7gN1gM9aWgXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZOP-0001pT-VL; Tue, 26 May 2020 13:13:17 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZOF-0001oa-OM
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 13:13:09 +0000
Received: by mail-lf1-x143.google.com with SMTP id c21so12282815lfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 06:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=ephXh0Ws1vURS05DtHce4Quc+oR69mUIgptnvs16X8Y=;
 b=jEA8gNdvAp3D9dKLQEp9DZLm40+NpEOW7y8uZvLh+BBMAcCwnzYhWjzJeSnuec+YZT
 AhFOjrUBrKElgJx8HIAxjPqTKPswQjBiphJD75YykqKli8Bgw7YDfJdTM9cxh7hudrYJ
 NSs0Tp4EWIfU4ugQXYz3I+ySjLx47qgQR7XKa7y1E/30m0lyuZG3p9P1jAEQDdUDgwEC
 tO0i1Ws5P9nODmjlibYciJ0A+K3YbwsdcpLUGlkXhWf6iKgpRUbLVZXpFbMoQgCHEgGz
 4dzPNha4SLQvxy2SytgG2C9emeUmq54LLNS9jPY6nBXugEJhj74HvZWZ+4MawN2F4CrZ
 5MNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=ephXh0Ws1vURS05DtHce4Quc+oR69mUIgptnvs16X8Y=;
 b=M6Dyz/Kri9iBejv90aODYQ5E4rJ65qoX/aKON1dO+K4Mb5HwgWMpV8Ot2/0Rn1vEm5
 aw1YiDaRy8IP8f9zsvA0EyCJTB1YUW+Yf3Gd/lEeQkJ/aGG2Cc0cqF34YeSFyMRJED6U
 r2vHlEBKmbUlHrW9yXX9oLw4Np0NM1FPXmcbckf8LfiOmo8PHO/ffZ11BQwAIXg7Uemm
 sPeCS6rEeghXKoDn2Zq6/pkGaOFGugai+M2u/2aV4kQv8ZAvArdLIBl/sZ0EyQcgSBjU
 wHwtmc+JclPw8/nAT6/fLWG5c/ng/A0cpxeZU/doUJzcGoCIwDl4mZ9as7PSJ2z/s9Kx
 diOg==
X-Gm-Message-State: AOAM531nmfsVodMkfmafgO9gVcQh1Eqrj8XFbxUf9k1OgQ6y6bIy5kDW
 wyHDRMGkquGiMMFSkiq7PlHBLQ==
X-Google-Smtp-Source: ABdhPJyXJJ3riQvr5hQMbP/Mq5TfkYaYDNtogu+2req5gEPqavseH0MGWZYipsgXfPkNKPdEkVm74w==
X-Received: by 2002:a19:c751:: with SMTP id x78mr521867lff.82.1590498782293;
 Tue, 26 May 2020 06:13:02 -0700 (PDT)
Received: from jade (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
 by smtp.gmail.com with ESMTPSA id f18sm4952339lfh.49.2020.05.26.06.13.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 06:13:01 -0700 (PDT)
Date: Tue, 26 May 2020 15:12:59 +0200
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] tee subsystem pin_user_pages for v5.8
Message-ID: <20200526131259.GA97001@jade>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_061307_795085_C6BCE510 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tee-dev@lists.linaro.org, John Hubbard <jhubbard@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull this small patch converting the tee subsystem to use
pin_user_pages() instead of get_user_pages().

Thanks,
Jens

The following changes since commit ae83d0b416db002fe95601e7f97f64b59514d936:

  Linux 5.7-rc2 (2020-04-19 14:35:30 -0700)

are available in the Git repository at:

  git://git.linaro.org:/people/jens.wiklander/linux-tee.git tags/tee-pin-user-pages-for-5.8

for you to fetch changes up to 37f6b4d5f47b600ec4ab6682c005a44a1bfca530:

  tee: convert get_user_pages() --> pin_user_pages() (2020-05-26 10:42:41 +0200)

----------------------------------------------------------------
Converts tee subsystem to use pin_user_pages() instead of get_user_pages()

----------------------------------------------------------------
John Hubbard (1):
      tee: convert get_user_pages() --> pin_user_pages()

 drivers/tee/tee_shm.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
