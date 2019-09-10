Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B740AF252
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 22:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiXEfUvZICbVV5dnponH01cu2LMFt92XqymSOTakyZQ=; b=iJ+EctBYTQGCzp
	wFzRWviE6pSpPhCJ8/VASyB6oGDLsjT1sPK4AgEheeqJscxuAOy0L/OB+InDxILthCAtFtsTpHTNG
	JtjTgFfWqBUhhC8ffuWBZW4E+EABjUSW8pqIa75rHk38dMmoEPvQT5IcvS8fhKdp01YGa4b8pJ6XM
	5Mpy8ycZqAzIk922lSif7KztK/qRm3Ew8782D5fydjm6K1W0YQ4vOm5uu2JXvOhsVamsG82BMcwPf
	K0PZH9J6LKERopA/GVdJjHxZIONztkm6RU9T98axCtdVahB3aPhJ4Cl5sO6l8l668mbKEhCLTpDlg
	+/EZyCZVA5jJNLOaYy2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7msK-0004LF-Vg; Tue, 10 Sep 2019 20:36:32 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7mrr-0004Dx-IV
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 20:36:05 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 13:36:02 -0700
X-IronPort-AV: E=Sophos;i="5.64,490,1559545200"; d="scan'208";a="178795905"
Received: from jesse-tab.amr.corp.intel.com (HELO localhost)
 ([134.134.177.212])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 13:36:01 -0700
Date: Tue, 10 Sep 2019 13:36:01 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 0/6] net: stmmac: Improvements for -next
Message-ID: <20190910133601.00001c98@intel.com>
In-Reply-To: <cover.1568126224.git.joabreu@synopsys.com>
References: <cover.1568126224.git.joabreu@synopsys.com>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.30; i686-w64-mingw32)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_133603_944569_AFA45692 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 jesse.brandeburg@intel.com, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Sep 2019 16:41:21 +0200 Jose wrote:
> Misc patches for -next. It includes:
>  - Two fixes for features in -next only
>  - New features support for GMAC cores (which includes GMAC4 and GMAC5)
> 
> ---
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jose Abreu <joabreu@synopsys.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: netdev@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
> 
> Jose Abreu (6):
>   net: stmmac: Prevent divide-by-zero
>   net: stmmac: Add VLAN HASH filtering support in GMAC4+
>   net: stmmac: xgmac: Reinitialize correctly a variable
>   net: stmmac: Add support for SA Insertion/Replacement in GMAC4+
>   net: stmmac: Add support for VLAN Insertion Offload in GMAC4+
>   net: stmmac: ARP Offload for GMAC4+ Cores

For the series, looks good to me.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
