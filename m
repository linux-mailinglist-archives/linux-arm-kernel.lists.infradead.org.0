Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2310C1AFA21
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 14:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+IS8Kr3Q48rvgY1OxoZYtp6/RqQoLbfRkcCP0qMz7MI=; b=cu+ZV8Q2Xmnj1t
	NkAt/U/m8TKlfamunrnCZzcMa76+/4hhuNF4qTV+2GU6YOc6++PWSR1KqzSnIlWk1pDdZ+NWb9mpW
	pudo8sI4oHLDf6RguqPY3ZApTwPQYcnV5fWLv5p8Y5pwGPjzcsMAIVRmZx6RSQ+KXtxPIZJU9d9hZ
	Dnox2eo0OC5kOuGbNUxWSCuned+vsE50mAmND3sP8dJB3LNa1kvhKTRmtEthcIjfviLyRALSeEEDx
	/xIzQpMCkMtHCdqhBg8UWVwT8+3JH5YpEnsz/aSOOpuFvFpUH2w2uekjx5OIOmrJTkHevt8ndMfi8
	a8USmOrVE3Ggm1xIsZ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9L4-00024f-4p; Sun, 19 Apr 2020 12:46:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9Kt-00023W-Aw; Sun, 19 Apr 2020 12:46:12 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ9Kp-0006oo-C4; Sun, 19 Apr 2020 14:46:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: convert rockchip rk3066 hdmi
 bindings to yaml
Date: Sun, 19 Apr 2020 14:45:59 +0200
Message-Id: <158729979661.70728.17123531896433795718.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403133630.7377-1-jbx6244@gmail.com>
References: <20200403133630.7377-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_054611_381607_4DDEF7BB 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 airlied@linux.ie, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 3 Apr 2020 15:36:30 +0200, Johan Jonker wrote:
> Current dts files with 'hdmi' nodes for rk3066 are manually verified.
> In order to automate this process rockchip,rk3066-hdmi.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: display: convert rockchip rk3066 hdmi bindings to yaml
      commit: 8eea6e26fc2eda6922e5008ccb7f55bc1775d5b3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
