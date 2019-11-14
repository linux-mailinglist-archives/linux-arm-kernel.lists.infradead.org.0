Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E2CFD062
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 22:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5I3ffxoKh0hJUuKs+ZprqYhpLj+ML17SOQXaFDOQ5k8=; b=gRQ52cBrEzIZzp
	El791vsWPMhiAzeZEiQk+98b2kvU197uOXIjhqJx76BiPEovRCD82+Ke6Bo3Ky4z+OJZfFirmv3z7
	s+qvgOI+3b0m8Ybzg6QZSVKSD7KHJZ9PADUuGFftkcagV4TiKS4zC+liNAU6Yw3vX0bJ8SIefSHEy
	6YruI72S7AjiT/wISBWC+rlXueYKp4h9IB4vpcdHZc+MfjKwTgTi9beQ57PkEh15eeoK4wy6KeEbz
	hoK1ctY+YjR1edEfVNKdH/ig1Yojdh71mWAOuGxh6jxa5CDprXjvvx22SBmV5NUAObMDWOvW59Rvv
	zvE/S5p91xj7EKu3sPVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVMky-0003SI-N5; Thu, 14 Nov 2019 21:34:24 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVMkq-0003Rp-W7
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 21:34:18 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C3E3D14A6F3BD;
 Thu, 14 Nov 2019 13:34:10 -0800 (PST)
Date: Thu, 14 Nov 2019 13:34:08 -0800 (PST)
Message-Id: <20191114.133408.708754856568136468.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next 0/7] net: stmmac: CPU Performance Improvements
From: David Miller <davem@davemloft.net>
In-Reply-To: <BN8PR12MB326648DB784332302BD0D7A3D3710@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1573657592.git.Jose.Abreu@synopsys.com>
 <BN8PR12MB326648DB784332302BD0D7A3D3710@BN8PR12MB3266.namprd12.prod.outlook.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 14 Nov 2019 13:34:11 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_133417_032327_8FB12D8B 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Thu, 14 Nov 2019 10:59:14 +0000

> From: Jose Abreu <Jose.Abreu@synopsys.com>
> Date: Nov/13/2019, 15:12:01 (UTC+00:00)
> 
>> CPU Performance improvements for stmmac. Please check bellow for results
>> before and after the series.
> 
> Please do not apply this. I found an issue with patch 1/7 and I have 
> some more changes that reduce even more the CPU usage.

Ok.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
