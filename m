Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6731118EFFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 07:53:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nGrADlSRnXxq1FSxNoMkXKqNyMjYbVel9nAt1xUlCDA=; b=YSv
	R+h89JbwK+0iRSbCWZm7RAjMAscvgFBM5fRDjcywYguK+c8hVmqTIIpJTHFBCT5fkRU8BV1WyzoNd
	WZdfTSmiFaMc3EwNAU2CKL8jJoZnPTLB+zmmdaolqPt7V796VNZLEnix5ThDyh8R4L9SziAbT09gd
	+Mzjv5juyS6AdDBsZveBHdFtxvgYlXlwMVh1NgHMCTTM7ZhuMKTrj609FBWDfq9v4n5SuSS218rQz
	pfCCSy7hpsERRfkUcVFEkvQ49aAyzQJDr1RZzRcPHzBZwC3ptAMblVCQ+J4RjVQ/CECGAVaO1Htze
	xX9JLbY7lxx8s9zFSoKM2F9Ad1A4xHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGGxz-0005V2-KM; Mon, 23 Mar 2020 06:53:43 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGGxp-0005U5-La
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 06:53:34 +0000
Received: by mail-wr1-x42b.google.com with SMTP id t7so10801247wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 23:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=wGDd6myf+GdHCozxtrhmVLjHaTI84rSVkvwPMbf2b58=;
 b=cvOyUgm3MfUe3yvKUo5aJ1XPsi8hi07U2PZdZJHUC+l7JhpHg/ZEBxJ+h1nY84FsqI
 Di2wMDfKuZbHvQcV6aOX/CIP+n+BcgERrqB2X3Nu4/8JcPE4c8ZmvmaSEw2C44p66rF8
 O7kcYXct7EuBmdOGVfdzqc7lOAISg7+5BQLs0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wGDd6myf+GdHCozxtrhmVLjHaTI84rSVkvwPMbf2b58=;
 b=C9lgVTY/biZEylTgzPMvD1bdQk2jt4uXypItVGpD79pf/XD0zj2RSMU3j+jMR9Jzq3
 tYSEianHdD07Ic33l3vigkmUpNyWmSBmX02clrdWBpklAmoskNqqKSW5TbYuuuXxtlzf
 3Mgi/LqfRadQ9bWWx9EOx55RrT/XpXGqb5+nhsyiWvnOXL1HRVvilJbnGBF5+X3kBrwH
 dyJ6AT+qpwbBqxqPcJ3sqiOPWMAEv7gfdvBh13tssd4itp3PCQxkHfnb2sSKTbCE7P8k
 X+8MsOT3DsE8cgpeAERdMaJgMeg6MAvRQDkF8BZ7cIVcYKkbSUhiVwCvuAOosPbR2CiH
 sSeQ==
X-Gm-Message-State: ANhLgQ18rPPPQsSgVNyecgT67viZWS5ghPNSyKzBTKM0an9BTLqhJWlI
 /BbU+AbmMsg6iPLLlH4vOjHu0A==
X-Google-Smtp-Source: ADFU+vvwB0MywmLuH1Zm77A5oLo0Gs8q6wjwWuZhQExQclt1yA8E1xmrBOZA/+OlJRl7ZFtCTqdUtA==
X-Received: by 2002:a5d:6245:: with SMTP id m5mr28064980wrv.154.1584946411935; 
 Sun, 22 Mar 2020 23:53:31 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id g128sm21127453wmf.27.2020.03.22.23.53.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 23:53:31 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Handle return value and remove unnecessary check
Date: Mon, 23 Mar 2020 12:23:16 +0530
Message-Id: <20200323065318.16533-1-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_235333_709298_0CE86165 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series contains following changes,
1. Handle clk_get_rate() return
2. remove unnecessary check of 'duty'

Rayagonda Kokatanur (2):
  pwm: bcm-iproc: handle clk_get_rate() return
  pwm: bcm-iproc: remove unnecessary check of 'duty'

 drivers/pwm/pwm-bcm-iproc.c | 35 ++++++++++++++++++++---------------
 1 file changed, 20 insertions(+), 15 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
