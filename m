Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D3CDB9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 07:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p/ZAoixQHXZQOXw0Syg8No2J7et6C5UDOjNGCG1UPmE=; b=G1O+bKB8smE/MU
	golYceU34jbIMdRbuT2PV3Hom4geCENoY4kww/uqUBfFgVjfpaLCVaDomuR9GoQZNqzNV63C+ESs9
	EkDP56YHV6PR/iy1vTD7+BiE+yR/ZHQBdoZvcYd2kb8+gR/JDF0UB6CsvY5SOMa8akANM9bgv1RSU
	c1VGNFnb1PJWVAaICseNrOTO1pe/NdgihWMeiVDxtJtTsj4mD4NVtjDhhWxxjw+uBJSxDV87kX10S
	kkwGhaksU0l55isMAMEnwdCn4CdS4lB2OUn7kF4QUhGugmKK39zDWTAJu1o2oSzpeKuCnTjxwHBbL
	3kCaeasXJJvtaVPoGGxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKz4p-0003p4-72; Mon, 29 Apr 2019 05:43:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKz4h-0003oj-Vs
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 05:43:37 +0000
Received: by mail-pg1-x541.google.com with SMTP id e6so4611320pgc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 22:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=G9pG0ih32ofGLIFp0d1HEUK7ftWMG/wEj9y31l/jC5M=;
 b=XwMHO3gIIahCJcVRzvOgRSZn1OqWWc+L+tTns0CpdEbzjsgybuyZfYp7qcDznu61X2
 qmtPzSqoIUCnCQja9dwsMfYO6kFALEIjnCyzBtDJATDHSnB5pd2znwtd7iPUHHYqqp8L
 ALiAP5irgl4GLUyiARNOOZBl63XGpzkndE1dil1lL2/O38xpRNv9EvpJ8Bi0EKZGY7KJ
 kGP3yOS73kK0CUuhx1tp2wMkZPytTpri79Z3H9nao+nvCmzdBtYgoak2KkxYxCwScV5s
 pbl2AtXXOzEVd5XvOCyAPoW7wuawgeB6aUwo/K6ndhfQKLaDzQCuGqtVKjgCp917ZQUo
 BmHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=G9pG0ih32ofGLIFp0d1HEUK7ftWMG/wEj9y31l/jC5M=;
 b=JQ4agpKqldK7A15k3OoD4cUyS35hih9YNsg/WiAhoSRRxuQ7rKvoKDVyM5k7f2MubW
 /IatT2Z6PkaoSxeDxJvv/dTbBApGk0iNemmFP+nlTjcejvLtxmVOyGm5FuZf1cynTDe2
 nduj3IKmAcxHVEMnn0e16G+ztQ1RvfdlZVhWRlZ3ovfT84c1qhZaoWAtp2In2xQY10pD
 TDPA7DLGmCUmNxLafEuTptdSnWTxG/QUlGe0ji+RhE+b/vLGHz+7UKF/+ugEWq8zw+Pb
 41abB3YlQqvxW1UNRUYXOF/6eYEwekrv0SS49sFFGZcMXzvSRZ5iOCx1/ellx5ApDaKP
 3yFA==
X-Gm-Message-State: APjAAAWJx0wmaJgXNR4RV209eZeL6qcZRPrpScoOh9vxYeV5g1fL19F1
 N1eQkMTpvRhUEJtWKOSx/T2XFyWlww==
X-Google-Smtp-Source: APXvYqxZcPu5QDUMnW8gktAspgsq0HZILofQSoQBpvRlfsi9BvHuwGUXx7JN7gJK+kqgPgpv7w88MQ==
X-Received: by 2002:a63:ff18:: with SMTP id k24mr58370032pgi.140.1556516612770; 
 Sun, 28 Apr 2019 22:43:32 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7241:e9f8:e0e7:64d9:38a4:57a4])
 by smtp.gmail.com with ESMTPSA id l15sm41863993pfi.79.2019.04.28.22.43.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 22:43:32 -0700 (PDT)
Date: Mon, 29 Apr 2019 11:13:25 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: arm@kernel.org, linux-arm-kernel@lists.infradead.org, olof@lixom.net,
 arnd@arndb.de
Subject: [GIT PULL] Bitmain changes for v5.2
Message-ID: <20190429054325.GA3072@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_224336_050588_4D2D8A83 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd, Olof,

Please consider pulling the Bitmain SoC changes for v5.2. For this
cycle only gpio and pinctrl changes are added and the details are in
signed tag.

PS: I have added two pinctrl changes in addition to the previous pull request.

Thanks,
Mani

---

The following changes since commit 79a3aaa7b82e3106be97842dedfd8429248896e6:

  Linux 5.1-rc3 (2019-03-31 14:39:29 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mani/linux-bitmain.git tags/bitmain-soc-5.2

for you to fetch changes up to 470fa42933dae396860a3409abee9e6c860382a2:

  arm64: dts: bitmain: Add UART pinctrl support for Sophon Edge (2019-04-29 10:47:41 +0530)

----------------------------------------------------------------
Bitmain SoC changes for v5.2:

- Added GPIO support for BM1880 SoC based on Designware APB GPIO
  controller
- Added GPIO line names for Sophon Edge board based on 96Boards CE
  specification for accessing GPIOs using line names from userspace
  tools like MRAA.
- Added pinctrl node for BM1880 SoC as a child node of sctrl syscon
  node.
- Added pinctrl support to UARTs exposed on the Sophon Edge board.

----------------------------------------------------------------
Manivannan Sadhasivam (4):
      arm64: dts: bitmain: Add GPIO support for BM1880 SoC
      arm64: dts: bitmain: Add GPIO Line names for Sophon Edge board
      arm64: dts: bitmain: Add pinctrl support for BM1880 SoC
      arm64: dts: bitmain: Add UART pinctrl support for Sophon Edge

 arch/arm64/boot/dts/bitmain/bm1880-sophon-edge.dts | 143 +++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/bitmain/bm1880.dtsi            |  68 +++++++++++++++
 2 files changed, 211 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
