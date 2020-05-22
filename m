Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408DC1DE8F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJeaNiYAaW5nx66OQeoFArdBHJPkXaGqS2YUBSDcpaA=; b=ne9rbBJKvCu8FZ
	GAeVSIzQZ45kUllp6stUQQmSFlO8GpQypvsY6sQHN6CkovdwrOrcJRSUPdzVhginZfEd+gd6C3cUe
	2lZ8APEHwv9+k+7bK0+rjIir7iQNkLMVJtVaWcCGI9ImIjASx0f3eX4zcsK/3u5tWGupCHZpxdV9Z
	bDWp6+vn9y4SQtYfuZXm3Q05DFhm0sJhDbur+hAboNKJ+tB62XxsR/feLxWUTNomUvbZRYTCFO9El
	yPd0jTfR+sRhKh8c8MvPzzT8PaQrcRmqdjcnt1w7dSsPtKaWbzrdr7s7i510raZ/3DAKY01GUJTNf
	TNdMiny9QTbvLlHfx04A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8fc-0000Aa-SQ; Fri, 22 May 2020 14:29:08 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8fO-00009m-LM
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 14:28:56 +0000
Received: by mail-ej1-x643.google.com with SMTP id yc10so13205764ejb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 07:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ptzda0E87vqQRukvOx/HdBlcj7KEsS0MgYblNCM3BOI=;
 b=NHyW1sZLVrVZVByX4kmAj8FQ2Ogw7wF+jtwao+jTBubihmeSPWi9qTzgxvaBAGhwmv
 WfzCUFD66Q8jKhXwWzqEHyLFRwpyOYX6wOf1UCsv8JXgzwBnpxy8tfQRHfeRBoCKJt1/
 s07GLF4A307NYAPK5qKNFG9wcQMpydh9+y2TsOvgcbcJMuMoDhNjME29mMUi0B5N4F6E
 /GYaiYWCXY4loD4nqqHfrhgbxEfqjMlqPVSA8oB2caiPh/xqQvBVA3JItAFOvXxH8vV7
 94ltogcEZxCWIPxygbvkXo+B9opdyyZrbn10AIqiR3t4cLpzUiXOeeniTOzyNON7I8fp
 UIbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ptzda0E87vqQRukvOx/HdBlcj7KEsS0MgYblNCM3BOI=;
 b=Gxzee2oQKnQppIhP5l/FdUjp6FSH7dTGZAQykx8Pl3Juz0QdAnqfSqIk8twOu5+Rb8
 RCXGjXFN93/V/6OoLBRTrXsv2M0gKGjJBSfOqH3HfaXm5EGfbN2Zw8VQp430F2ORVZ8K
 JR3BrPhq62wAivu5Gda2rr5Hinu1wP+2FiQ466a2KitKXhr0biaQarLy5Pr7dlvFxS8Q
 ZR9f075RQ41XlNC8hhFzzTYnJ3tsaObUl93iYjCrEuyRvkgNuIU7dkH/BHiBFtHwmymA
 sSaYuzhGCJFhPUqS7BO0yLElWaIAn1GQMhdUmSqkbW2CxSXf7L8I37XtW36i9hYcxjA6
 VeqQ==
X-Gm-Message-State: AOAM530AzNaP2pfq7+LkZBinKaIT4awEfI955XWC6cdIoDCpYc7RVwqy
 LWwXDaRg9pd7EIsU35Rd2QQCv43n
X-Google-Smtp-Source: ABdhPJwDzdf5ppOZcQl4uGIP2iE6sUMhriuFMFXFwXp1LTm+BWvx8UcLPq/Zdkf3faZMYkS0SrzcvQ==
X-Received: by 2002:a17:906:24cf:: with SMTP id
 f15mr8943252ejb.467.1590157731622; 
 Fri, 22 May 2020 07:28:51 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id t23sm6898512edr.71.2020.05.22.07.28.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 07:28:49 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL v2 05/11] firmware: tegra: Changes for v5.8-rc1
Date: Fri, 22 May 2020 16:28:44 +0200
Message-Id: <20200522142846.2376224-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-6-thierry.reding@gmail.com>
References: <20200515145311.1580134-6-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_072854_698054_1E2BBB22 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-firmware-v2

for you to fetch changes up to 10b2006681333a14a907a06a0e213c568fa8e7f4:

  firmware: tegra: Defer BPMP probe if shared memory not available (2020-05-22 14:57:14 +0200)

On top of the previous pull request this contains an additional fix from
Jon for an issue that our test system discovered in a recent linux-next.

Thanks,
Thierry

----------------------------------------------------------------
firmware: tegra: Changes for v5.8-rc1

This contains a change that makes the BPMP driver a regular driver,
which fixes some weird suspend/resume ordering issues. Another fix is
also included to implement another way of enabling the L2 cache after
LP2 suspend.

----------------------------------------------------------------
Dmitry Osipenko (1):
      firmware: tf: Different way of L2 cache enabling after LP2 suspend

Jon Hunter (1):
      firmware: tegra: Defer BPMP probe if shared memory not available

Thierry Reding (1):
      firmware: tegra: Make BPMP a regular driver

 drivers/firmware/tegra/bpmp-tegra186.c       |  4 ++--
 drivers/firmware/tegra/bpmp.c                |  9 +++------
 drivers/firmware/trusted_foundations.c       | 21 +++++++++++++++++++--
 include/linux/firmware/trusted_foundations.h |  1 +
 4 files changed, 25 insertions(+), 10 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
