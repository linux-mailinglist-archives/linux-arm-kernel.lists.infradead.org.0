Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B6413A030
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 05:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uG1DbFdrqXhGAQ7UdZLG7wIsUml+3hle76zcNPReJpM=; b=Soj
	zZ+lxFFwf6EYPb/8XwiqjTU2mh4HQi0A1aEmINmH/PGmlY77ka/VcNrakppJ/QqoZKUxwL6FzauIX
	5i5H1ST0GwjXj8N59N6SPOtwv+5u+X9beFmQZyymcVDwNq+FGXmthaXeD3T4WEJaq+vf5pZoErybX
	wuGIoYLe+u5TQIUa61Dd5giaMUByphtwYXTDCsTSGHkZHFUcSev42fb5AaOfJGzIqcA5g/v/odkFN
	XVg1qVn9bANDbhG3Pm2IKDvX9fjjPBNmau3vcMor0tlsBroHLom0aoJLRozoMvPwBMb80v3OzOHdB
	Bvkn1KNptpDSCMFP24BT4rZ2MESFSGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irDQS-0006rs-FC; Tue, 14 Jan 2020 04:03:32 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irDQL-0006rH-1s
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 04:03:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so5921586pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 20:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Ti/2iSqCvn/a8LW/VOUhc1iKaXnoRc5rALuIq3Zvleg=;
 b=ev8AMEWHXKrGldndxu7ocQtk1UQZS9+WRJD+UI6DGCgxQ/KvxjRKAbHpUt+3ltjpSL
 xRGZaEXm+6idgPsQr0v5gMat6O1oeh0JEQJf4SY7v00jgIF9YgcN6uauscUTRDBpYMjH
 AzUKMZJ9Ij/LBqZkk9jDB4uXW7UR/XuA/VAjDn/iet5crr8kaSw3AyrB+zPgSXOxpQbH
 4rETG6FryCIOGyw/JcdAYIJbGeK5p8peFc5JVj5Z8Lcoin2KWnUCaqC/mVCsR7TFGR4+
 B3qy4yKU+vxkS7jP/iqH3TPE3HHYsRgppigJ4F7Q7k/rcge9DFTWoVntXS7WQvveoK2g
 raRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ti/2iSqCvn/a8LW/VOUhc1iKaXnoRc5rALuIq3Zvleg=;
 b=H0drpuS4w/PqY4Dhx+KWXCuWFrfcfCxOQYzrIF3wAsm1U4QNcNMHPkDc/FsBoY5tx5
 KmTiokwHpjRcTa3mYZsYADdXATlxIRegIHxkYi/NmhfhxZ6iTD9n0RmlLCvpo454RcBD
 V9hcDjGBCtw6w3/xk4dJx8KLykoEXOIlXHILEDUbpVLqfSaQpc3Z3w0T53YyYOV7WclY
 CPPpdjnVvtoDIRRyY3Z93Jd9KjzdRoMRfY/6p3OCT5aJdGgNNe3Y5zhKtNSsQh7lHffY
 Rf3TNyKX/aoJmOyiyj8UUYwcnvF5bb04gHULS4jzIbP1rSeswae5a0EBY3CQXshlBSDe
 57hQ==
X-Gm-Message-State: APjAAAVUtoZN32JNdhMxDr6QzIOUSueHFGOwVlJprWvdqhB5siOkZZWE
 6tkJc/4DkuaCsZyiEvUFP9Nn
X-Google-Smtp-Source: APXvYqxttl+HZezxdGnU2Eq/ADPvXz71lGOT7Xgo7HI+ORhZ6M499SA3E6QTd2YzBfV6RZmYyCE0Zw==
X-Received: by 2002:a62:1548:: with SMTP id 69mr23580457pfv.239.1578974603417; 
 Mon, 13 Jan 2020 20:03:23 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:618a:cee9:38fe:8c63:d2a2:7397])
 by smtp.gmail.com with ESMTPSA id h3sm11222025pjs.0.2020.01.13.20.03.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 20:03:22 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: soc@kernel.org
Subject: [PATCH 0/2] Add clock support for Bitmain BM1880
Date: Tue, 14 Jan 2020 09:33:09 +0530
Message-Id: <20200114040311.6599-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_200325_154000_A431B226 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sboyd@kernel.org, linux-arm-kernel@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof,

For 5.6 cycle, I have only couple of patches for Bitmain platform, hence
sending to list directly instead of a PR. These patches adds clock support
to the BM1880 SoC. The driver and binding patches are merged by the clock
maintainer for 5.5 cycle.

Please consider applying.

Thanks,
Mani

Manivannan Sadhasivam (2):
  arm64: dts: bitmain: Add clock controller support for BM1880 SoC
  arm64: dts: bitmain: Source common clock for UART controllers

 .../boot/dts/bitmain/bm1880-sophon-edge.dts   |  9 ------
 arch/arm64/boot/dts/bitmain/bm1880.dtsi       | 28 +++++++++++++++++++
 2 files changed, 28 insertions(+), 9 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
