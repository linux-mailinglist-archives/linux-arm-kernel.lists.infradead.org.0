Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E90C17FF5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 14:46:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=quuIYoVhHYkpPpFYK6jEkTBcaTSNCIEUl3ufoJuor30=; b=NwH5uGI+CNSre7
	dMkkIShlkGwS1dcOE+SeFLUXfHi8HK/B3x1HZa/wLKANwl5y6j4W2wk5qgnvG1cKxY5RlysEhSz4+
	pI3MvpUJDbTS8493RCpccVxvaDJinh1wh/WOpRLyK9QEkEIefjCTvvBojbz1cUyD5sxzhBfWMwfPi
	Gbp7soNxDBQIgq+HVf7+9MQ4KShcLAIt+SPYkktx6Be39/nTJFpGLrGyYqqBd/0HH/BtHbY3sTcnc
	w9xiq1ghN81hfWc0i5Qxhxt2U8mpR46PZgyTlb5I8EmQ9u4zSGJwP7Jp34HdjFZ1HxwQz9L33qMAW
	v+9Y/ZiwL/HN7Xu1ytiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBfDG-0004Bm-Gb; Tue, 10 Mar 2020 13:46:26 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBfD0-00049P-CC
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 13:46:11 +0000
Received: by mail-wm1-x32a.google.com with SMTP id a5so1480097wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 06:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wD/rjwDaFSH4m0qLvYcsJe5uINdhvscpogJ3gh+ddBE=;
 b=abZrokerv1XQs4CdYgMZDC/O5UauiH6mqKC2Rrdy1tv4xSXq1RKsr+iLSyaMu5QRrY
 eNToWk64+vZzKd5eeIFecdjcgvg5U62vU7dexhWjTJGcM9vb+TmvA6P4A4xsOXQvW2fi
 wb2/v2YN1HJGBWhNsaZaJsTHq9C+BIA4ID0FoIbZUuGmip1war0RJ9oU2O6ca/Eb8bnp
 lKwQxo9FxcvxnukaM01tLAXT2mdTHQ+BWTwNmBjHEBFWXKM+WWrV9KQRZ9Gjn8GzG1NP
 UzG8pjbwxIVQlVYsWb8vQaUL2aaeAjFaIZ9pL5L7SBi0tKFDOAG5ttq+QXKgWrlHYdsw
 mQKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wD/rjwDaFSH4m0qLvYcsJe5uINdhvscpogJ3gh+ddBE=;
 b=ixRFhnoC3M9wejzLVhqVkBof2Idd7nuPkttNmAAe/SJWU/Qrx6FIjHHhDDCLOeqJGV
 EeY/pCnlQx3ljbbwRPhzOoG3C5ZNxoK+PLrggE2CFzRj/9VLj1YcciW2GJeHdy1Jxeyr
 8pE/UDon7Zgvt0GgdsmQ8z0HBO7xcP8tvavdInmLUOUHcZ8r1kMNDttvNETy0JpOKUAz
 J0onFP65ivY7flLa8K+TdNoBxjTEd+DocPpPdVmhCB6pWXIPhF3OMpgCmtjWe6pW2F3z
 YbxQVMzaL0NXMkFoK64mhwjtCjGpUwFwKfDS0DGBWv6OOjL5DdFNLZleGjuP+SzuOe5b
 IW4A==
X-Gm-Message-State: ANhLgQ0OCtNgA8xiVAmmS5acpQI2PrPNSOtznoDAVnh4WxkOj8OTDtEd
 9pX3mG8cpZFA6MUYJkHaSXrxyA==
X-Google-Smtp-Source: ADFU+vsAqODaD7c54dhNVCiGo6mkHHmbHDjZbcCM9Ns8rtR6QHeWU2SEQUgGGnzoUNA8SRhX+nS2rA==
X-Received: by 2002:a1c:f60d:: with SMTP id w13mr628899wmc.171.1583847967491; 
 Tue, 10 Mar 2020 06:46:07 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:e50c:c780:9a1:8b61])
 by smtp.gmail.com with ESMTPSA id d63sm4074009wmd.44.2020.03.10.06.46.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 06:46:06 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: ben.kao@intel.com, mchehab@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 andriy.shevchenko@linux.intel.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: [v1 0/3] media: ov8856: Add sensor modes & devicetree support
Date: Tue, 10 Mar 2020 14:46:00 +0100
Message-Id: <20200310134603.30260-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_064610_489488_A1D53B57 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds devicetree support to the ov8856 driver.
In order to to aid debugging and enable future sensor
modes to be supported, module revision detection is also added.

Dongchun Zhu (1):
  media: dt-bindings: ov8856: Document YAML bindings

Robert Foss (2):
  media: ov8856: Add devicetree support
  media: ov8856: Implement sensor module revision identification

 .../devicetree/bindings/media/i2c/ov8856.yaml | 129 +++++++++++++++
 MAINTAINERS                                   |   1 +
 drivers/media/i2c/ov8856.c                    | 153 +++++++++++++++++-
 3 files changed, 281 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
