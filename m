Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CBC18F451
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:17:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jBFbvaF15+AMFJF8pe1H4usX6aCEgz7tgKR1qEwIO5s=; b=T2BnbwaIPC4H1+
	d5YxV2FmSEFLW57Edu7EPjAkKyBlvs2a5qwkSHsT6TEgKjwZ004D3K4mjBZrSrLp1xRn5UvcdKScZ
	iKNAbWnPmgL6CzXVQv2V+sYHG2wbL0Go9I9qkyUrm755KNbujmT9PkALChwLHVbRua6pilgBAMdxy
	lrdI2jl/nfyqP9dfbpV1wYICHiJOEi2I6H9043SUX6JpC0ztfYpFwvITXyM+SPq5mAcBlDXUS42Zs
	9UVGOESHVqd2JPbGsl6XGzHaIDQmc54BcP56BsO03thdQ9eLUZntEpnf5BAwCGKxmD64XnO9Vyd/n
	3eNjqIKv3DFKOkFGUeuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGM1Q-00006F-EE; Mon, 23 Mar 2020 12:17:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLzi-0006oU-Tm; Mon, 23 Mar 2020 12:15:52 +0000
X-UUID: 609ad3716f6447f6bc39c5361f35804b-20200323
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=+agh3Es7dP6XolQ0jlcE57kFr9lWPqGfX2DPzkcDR8M=; 
 b=aC57KzAo+3q95D82mtkf4SpJT2214zJmYbLyyds7UUtRiCIfFK+sJ6ZnYHcY2N9Wx35bMHsAlaKSvC6fqIqbj8rEsTgfFACbFqhU/ihJW2332y8k5A+aTkXHNq0k7lYekx6crCu5CgFo54Y/cbnYeeE6Mdww5UpK8noWCV4tD3U=;
X-UUID: 609ad3716f6447f6bc39c5361f35804b-20200323
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1560738857; Mon, 23 Mar 2020 04:15:42 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Mar 2020 05:15:39 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Mar 2020 20:14:28 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 23 Mar 2020 20:15:37 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui
 <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>, <michael.kao@mediatek.com>
Subject: [v4,0/7] Add Mediatek thermal dirver and dtsi
Date: Mon, 23 Mar 2020 20:15:30 +0800
Message-ID: <20200323121537.22697-1-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_051550_993132_78E7F26E 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset supports for MT8183 chip to mtk_thermal.c.
Add thermal zone of all the thermal sensor in SoC for
another get temperatrue. They don't need to thermal throttle.
And we bind coolers for thermal zone nodes of cpu_thermal.

Rebase to kernel-5.6-rc1.

Update content:

[1/7]
    - Squash thermal zone settings in the dtsi from [v3,5/8]
      arm64: dts: mt8183: Increase polling frequency for CPU thermal zone

    - Remove the property of interrupts and mediatek,hw-reset-temp

[2/7]
    - Correct commit message

[4/7]
    - Change the target temperature to the 80C and change the commit message

[6/7]
    - Adjust newline alignment

    - Fix the judgement on the return value of registering thermal zone

This patch series base on these patches [1].

[v7,3/3] PM / AVS: SVS: Introduce SVS engine (https://patchwork.kernel.org/patch/11439829/)

Matthias Kaehlcke (1):
  arm64: dts: mt8183: Configure CPU cooling

Michael Kao (6):
  arm64: dts: mt8183: add thermal zone node
  arm64: dts: mt8183: add dynamic power coefficients
  arm64: dts: mt8183: Add #cooling-cells to CPU nodes
  thermal: mediatek: mt8183: fix bank number settings
  thermal: mediatek: add another get_temp ops for thermal sensors
  thermal: mediatek: use spinlock to protect PTPCORESEL

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 156 +++++++++++++++++++++++
 drivers/thermal/mtk_thermal.c            |  88 +++++++++++--
 2 files changed, 231 insertions(+), 13 deletions(-)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
