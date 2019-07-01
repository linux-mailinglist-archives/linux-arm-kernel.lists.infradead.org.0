Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A8F5B2F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 04:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9MaCkgj2h/iQL4FvG5ZFe57Ga9OPPehAc17JMr2HDEQ=; b=Fp/O6JHf3t5OOu
	DPAW34eTqVuTE5DF0Fw2aIWcD2vgsPoVNQYA2DMC7VjjK7wYXXD/LAGUu/qcKO2tuvqdLwVX14OuL
	99drYdOgnPQVn0MvgydSNCdygKf0v0sLuRPd2CJA50FY+M7Az/1ZY1zGBL/gRvy6jjMns+WNmGkP4
	3pJtVUH36mo4G5PByqr97pMtZ6TlQUQi1jG8P8PhTc1pl2NXRuas/JPwcNStW5hIoZzSyOKS2+a3O
	9h9mgqJl9eKF36ReJ7zgNrDuroyhgqkkIOVYk3M2DaKFEEeFsu5I5dfr0Hm5mlHV3vzKKBtje6Tem
	TMYWt+u1YucSLA7IFKDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhmUC-0006nl-95; Mon, 01 Jul 2019 02:56:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhmTy-0006nQ-K6
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 02:55:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so14133954wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 19:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=L4cWwNm32RFRgoWIXUw3hUkM6dfEeibv92xpbRvX6tM=;
 b=sTIFs+o+O8iJWWs/AHYc9QJgAgZt81UEctc+f9lkOv6bSuZH+7gsMnzlKJp5UzuEnR
 auBN5f0vk5v0Z1L1FKLdGOIxZy+U6GUTGWhMYXHgfoUQg3bNq6RPIHnYmJVfUYevGTX5
 d+0gFDSJe9cA7FHLBTfiXLV8+7GwMAjWHuXLvK8nqNWY9dyvz2mMOXy7y1j4ZwRBrLDl
 6Y4wpIXuRICPwXxdsj2dcFSIbLAGAxH2rNWsZTxdr6XS4riiiwckc6U1h9RFt44cd1e9
 7joI8w+Y0kgC03bElib3mt3QsgcB6tnRAAKgKkSUMYi2CackM1X+xoB64Te0kqCL/zB0
 BgGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=L4cWwNm32RFRgoWIXUw3hUkM6dfEeibv92xpbRvX6tM=;
 b=oIhc/H/xlcdvIFZ2YAo2k/Xobups5yFPbAvKoQTbXp7i4CXoyCpP3aHSInnpruYvn8
 ERn3bW6syJDn9aggxGvN6tibeH+eR7qMEOjppdu1OEHlwiqNN2plC3OMk2jKdjMd1I0t
 Sq6bw43scKl0vdtZ/TqXNNdImvY5rq/3IJzIvb9bLULa+7Vompaus5oUj+o96MRTRlfq
 Vww/4eGCB2SMWjjEt89B41ARgwkmi/5mIUQuYDmZ1/eWWdTRZaw59CFztq+/P+UvVN+7
 30KMlNzSMGCjaMGcrR764WD87ejfpqNnIO/bFOvYHhxYVARuwD/VDrZyffljJ2uOuW3F
 K6Cg==
X-Gm-Message-State: APjAAAWyZoMEC7Vn4p254agqYa+gKMPzePfYQA6uJEfcDdflhx4c1Kid
 gcCqzqgVQgOcZi4zJH8I+3IF0pxs0vNJmf8sJ7s=
X-Google-Smtp-Source: APXvYqwUIoQh1+OTBdWevP7rJ+JlasEW1wk6qIjFHHw7YFZtY0o78cbW26EcYQ/J7NYJTCwUnrSsCswIrWquKlpshF0=
X-Received: by 2002:a1c:1d8d:: with SMTP id d135mr14243860wmd.54.1561949751359; 
 Sun, 30 Jun 2019 19:55:51 -0700 (PDT)
MIME-Version: 1.0
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Mon, 1 Jul 2019 10:55:15 +0800
Message-ID: <CAAfSe-uzOO+YkpsxO_G=h17dN1yaVAVdZV1NV=VPXD6dQ6dLOg@mail.gmail.com>
Subject: [GIT PULL] dts: sprd: Changes for v5.3-rc1
To: "arm@kernel.org" <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_195554_686500_05568350 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhang.lyra[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linaro.org>,
 Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The following changes since commit cd6c84d8f0cdc911df435bb075ba22ce3c605b07:

  Linux 5.2-rc2 (2019-05-26 16:49:19 -0700)

are available in the Git repository at:

  https://github.com/lyrazhang/linux.git tags/sprd-dt-v5.3-rc1

for you to fetch changes up to b04832ed1f70457ee9c702fe7669460e005dcaa2:

  arm64: dts: sc9860: Update coresight DT bindings (2019-06-20 18:44:54 +0800)

----------------------------------------------------------------
Spreadtrum's devicetree for v5.3-rc1

This tag contains only two patches for updating coresight compatible
string for Spreadtrum's platforms.
----------------------------------------------------------------
Leo Yan (2):
      arm64: dts: sc9836: Update coresight DT bindings
      arm64: dts: sc9860: Update coresight DT bindings

 arch/arm64/boot/dts/sprd/sc9836.dtsi | 2 +-
 arch/arm64/boot/dts/sprd/sc9860.dtsi | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
