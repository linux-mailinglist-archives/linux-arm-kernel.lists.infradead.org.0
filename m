Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117181C453D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 20:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vgYDIVOpfW4+KaLIKkuNYlTJ6bQZQ1ZrpJhphDT3Jm4=; b=qeLFc1ZS9MBVSk
	bTsOZMgU5lI6b6MwtWqrAFtRqBb2r7kKetB9F0nyhmof2rJG7WDnSxs/mppz3RtiJhk6cPznzPIhS
	OwVlS2PyJ3G2fdP+mq0agw9fkuqug/XeMeyKbKSLsrPcMJUiAuT0YxRtHG9jjHNojfw5JCVW0+AYC
	NLJDJGSgVQ+kYLq61kG4a4oRHiGvD9DEQ56l4BMF6gMeCORuZd0ou0MUv0eSNnSqKHntUA8IB+IJU
	bfosR3ciXtDYOUSjcLOFDOUaHl3j89/idDwa7Kw1xJbBowL1/R4OWf5I+MkGr+EehSai5lCpGLBIW
	jy8jkRGRXCswCk/xyn9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfb9-0005LL-8b; Mon, 04 May 2020 18:13:47 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfb0-0005JK-Rg
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 18:13:40 +0000
Received: by mail-lj1-x242.google.com with SMTP id b2so10668212ljp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 11:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=noyhhByb12LN4LKrdHZP/yohxdBTg9eACOZjHEQQZSw=;
 b=r6pBRaZeaSe6YLtjSricU/1PdZ4Z/UNZt8MLyfVqVNUDNKGKZbCPVSfVa1VWqlczTE
 3exkc6YflKaC+zwu/U/e0tp3BY1dl5wdsa+zeiUi/QFCxv/afDvZ1xaGH1npNS7AHj51
 jzBeNaIXtnkcr8fahBzZoBnEQd3EST4uUUWlUGLuUns8PByZamCIJQHiasROr+hHc/1P
 Ll+Llg0743huW2Dqb6Kt4eBspyn1ebrROyB8PCFVhwc93N6tx/5Zf0YQTWInI1NMvglp
 dpMMFV4C56tsrb4joX+RXCCawIGPlfmy0sT187WVxJ5JpJrgjhAcoNAIII4GXAI8eDGZ
 a8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=noyhhByb12LN4LKrdHZP/yohxdBTg9eACOZjHEQQZSw=;
 b=Itqtq0712cPiFXpDfGHtvE4PlgbK0RckhjD4AgKPArC1sgYkW42h3oiET3SzGHbqYd
 bg5B02f1VGlYFOnjSCMQzR2Vp8m46Xixo9YgjlRkR8qJv8WZcgiNCNkrpn5pZIK/OWit
 rpZYlWkDVsCOxuuuTPVq9YTyjmSpXBxY0QUJPXUMglqUZUQf6AgFsQ2a6b+1G9ukyjWM
 QbUDh1Y3y0hdjmQ+9XPaBCNbbwVKb72nyWSaUFE51CT6E3xiqL8aSSgQP4Wpgc0YOghf
 V9jSn80LNvC1NiMUyp2TmzVFjx2PiDM/0YH2C2VdpCrnMe911g8CUu0Jqd4R6uoE4G+s
 5wuA==
X-Gm-Message-State: AGi0PuZtx5Sx/r2673/swWpjrb2eRGTRqHgMxAYV2JVk8P6WVbBz5cur
 n8celmfWOSykyfvHInKB3DPiHA==
X-Google-Smtp-Source: APiQypIXsSBpPqvz5nwBaR6TohrSjdXOt+8TvHMn4JimyxDTWHqEZSW6G48ENPGzKPER4VorYMz00w==
X-Received: by 2002:a2e:3017:: with SMTP id w23mr11282519ljw.150.1588616016018; 
 Mon, 04 May 2020 11:13:36 -0700 (PDT)
Received: from jade (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
 by smtp.gmail.com with ESMTPSA id r4sm6033018lfm.28.2020.05.04.11.13.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 11:13:35 -0700 (PDT)
Date: Mon, 4 May 2020 20:13:33 +0200
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] tee subsystem fix for v5.8
Message-ID: <20200504181333.GA11018@jade>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_111338_898228_CB74FC0E 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tee-dev@lists.linaro.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull this small fix for a Smatch warning in tee_shm_alloc().

Thanks,
Jens

The following changes since commit ae83d0b416db002fe95601e7f97f64b59514d936:

  Linux 5.7-rc2 (2020-04-19 14:35:30 -0700)

are available in the Git repository at:

  git://git.linaro.org/people/jens.wiklander/linux-tee.git tags/tee-smatch-for-5.8

for you to fetch changes up to 1115899e7aad71bc36100c3fa1d0b99cff9263e6:

  tee: remove unnecessary NULL check in tee_shm_alloc() (2020-04-20 13:12:01 +0200)

----------------------------------------------------------------
tee: remove unnecessary NULL check in tee_shm_alloc()

----------------------------------------------------------------
Dan Carpenter (1):
      tee: remove unnecessary NULL check in tee_shm_alloc()

 drivers/tee/tee_shm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
