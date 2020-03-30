Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A37CB19827F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 19:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/q/nSL32jmomqMQv9qrVYqJzIdwp8gUv3qnFZuE5hNI=; b=f7Iyhh2CKaokHK
	cshOfjFMHVQHkZEZfymdDR4v3904hAMBvlv2GZvnGZs8QNpbsKTo5kRlkVlexpAfOJtaIlBQk1Ya3
	gJ3dVmpNevy8s0hz7IYxa1aWV/RkkrI2YA+sLO37wULOuLLv9NLWlVo65B7eHz4D/Sb+ijvH38mL+
	zbfrGTVrTUDmWZTFAO39m+874L59p3C7/1hNa+P+mm9BmLfcBTZD7gueKBqecySkSbUZx3VTA/yOO
	c0aZgIDPSCnEgHitnvxlDsbTX+CLGdT1C2FmE4ZyQ2rtgUo07y3ceUjuz/wbEusSMwNXRZHU7EXKr
	VMLfGWCAhfFHnRqQqKJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyMB-0002Rv-1l; Mon, 30 Mar 2020 17:37:51 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyM2-0002RV-1I
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 17:37:43 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1E00715C14D62;
 Mon, 30 Mar 2020 10:37:35 -0700 (PDT)
Date: Mon, 30 Mar 2020 10:37:34 -0700 (PDT)
Message-Id: <20200330.103734.983441611001772915.davem@davemloft.net>
To: vee.khee.wong@intel.com
Subject: Re: [PATCH net-next 1/1] net: stmmac: Add support for VLAN Rx
 filtering
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200330155357.732-1-vee.khee.wong@intel.com>
References: <20200330155357.732-1-vee.khee.wong@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 30 Mar 2020 10:37:35 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_103742_079161_7B457EC3 
X-CRM114-Status: UNSURE (   5.85  )
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
Cc: alexandre.torgue@st.com, weifeng.voon@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 boon.leong.ong@intel.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wong Vee Khee <vee.khee.wong@intel.com>
Date: Mon, 30 Mar 2020 23:53:57 +0800

> Add support for VLAN ID-based filtering by the MAC controller for MAC
> drivers that support it. Only the 12-bit VID field is used.
> 
> Signed-off-by: Chuah Kim Tatt <kim.tatt.chuah@intel.com>
> Signed-off-by: Ong Boon Leong <boon.leong.ong@intel.com>
> Signed-off-by: Wong Vee Khee <vee.khee.wong@intel.com>

Applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
