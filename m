Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C24024051
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+y5dCQKBCz/PV/RpZk2XM70TUwsBpHAMpNv0g3vCZr8=; b=O1o9HDaOq2uoTGPoiPs8f8/GHC
	eBYYpoPMOwggtjvDCGFqEua57jVQ1YPSFnBS1GTIEhruyyEAgPnGXMjych93hqyAwMnjJaRNJ3Q40
	I1L+UNpgDhE7ZhjIHVN4joGjF08KxKhsPmngcaBEV7N/57vr+KC9STNHRML1Rv+KCwU6Tnh5UQcj+
	mSo+xseZPsGAwcoKjNtwUBkjkebZsuvNuBkEqCjJR1yHQeG+W6Q//0wgQmdScRpX0FS3xuLTu8SQ1
	Wen7407gCdNG2KTmU2DHvOkdvV4/VDF/ewiosjRg6UPqWLTc6pehhmWFjEW2bAOouGt3mO/Z8CDvm
	Pclkgd6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSn0Q-0007Ez-Lk; Mon, 20 May 2019 18:27:26 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSn00-0006sl-DL
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 18:27:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id t1so5751288pgc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 11:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cxGb/sVpmg2ufSImy9INhgnPpbTF8QSBaan/XeeUMSM=;
 b=NDVGxddMFCkcfb/omsRMB6PdgPQlzIUuCoAY5YsLmLS4fGgQ8Gn3XR7aLE6fQIgstL
 B7rc996yUYdG3FpX+lKDACM4ymkkaHIMfNf3ebrvWwZwkxwcfQVzuL3Uslu/rQAyOIjT
 zTsYYQ4FKTWBLoCary1LybsD+yQII2+5zTyHbNU4Mgj1r/LEu+k1cZpvG0J3OPG1Riiw
 xcHSVf/jYEOIcTET1jjoFpOgAe4oGGzTPtlrQStuORoha4oDxmN5kMM4hrhzJC0DCK0E
 E/ATAdeF4O3xpXOFOf5XRrZTQPiGvInCpVbPrBk6BuhliTdzyFIMHiX59Q8M6nSLPZGg
 Ypkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cxGb/sVpmg2ufSImy9INhgnPpbTF8QSBaan/XeeUMSM=;
 b=E73fxziHYUEPbG/G/Wh3doXNqnk2OYKoWJf7xUX0q8WiSmYuPUAN69TaljjWHilpWa
 wa4V+jUeyF9b+CYqck3wCut1lxcFjJ9TiVWbZ+IO5U8ilSJTYu+79QBBRZU+sn8zzZI4
 xtNmAMBwJ9H5pgIFtzfK8W2AnaMuuDjubKANvmIb6xFS3i5F2IdxLTKFQ2IK8X4SsQiK
 jkScxSO3EBa/HXQyVQB/IBYJHlnBqayMvlnuA+qoV2S8kXWTyv655pZvdo6wfqG7c40q
 KoKpajfGR/MwmBS/WYW8TPEh4G5RyTgN7M2VBO6rZAHU02tg7JJGR+DvuGucj0HX0lf4
 V/Jg==
X-Gm-Message-State: APjAAAU7FnW2YrtoCcKKGGAU+Eks0LEowBVVznDodHj/53fb7ui6Ht8f
 J5P4t0RnHSFPt9uFTcV/WW8=
X-Google-Smtp-Source: APXvYqwgh7hB94+W2SU5Fr7c5EXrhGH8oYgF+PRzF6K96YxGRajsy6Sgy+RubnJPAGZT5fvcTVD0Ug==
X-Received: by 2002:aa7:90ce:: with SMTP id k14mr80552674pfk.239.1558376819750; 
 Mon, 20 May 2019 11:26:59 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l7sm18220150pfl.9.2019.05.20.11.26.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 11:26:59 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 3/3] Broadcom maintainers-arm64 fixes for 5.2
Date: Mon, 20 May 2019 11:26:48 -0700
Message-Id: <20190520182648.1063-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190520182648.1063-1-f.fainelli@gmail.com>
References: <20190520182648.1063-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_112700_445333_5E51A250 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 olof@lixom.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.2/maintainers

for you to fetch changes up to b2279bcffa72304de8ff591cb60446322570c0b5:

  MAINTAINERS: Update Stefan Wahren email address (2019-05-20 10:48:57 -0700)

----------------------------------------------------------------
This pull request contains MAINTAINERS file update for Broadcom
ARM/ARM64 SoCs, please pull the following:

- Stefan updates his email address under the BCM2835 entry

----------------------------------------------------------------
Stefan Wahren (1):
      MAINTAINERS: Update Stefan Wahren email address

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
