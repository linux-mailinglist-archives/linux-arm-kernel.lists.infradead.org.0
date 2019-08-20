Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEE695F26
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 14:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/JGizy7FzeL3cQUU5vHXQjlFubEa4c3JgZxXNutHjg=; b=agYVJzJnYOigUN
	p/SwHqJigg1RF0u9+M0aFWDQArwCIGtm1DbmlghDfdBgRQKsLaDXv0AawB5NMAN9r+pb+ep/Rn3iN
	fVLqVGh9xR0Twittw5apJcqreXESMvzUe6SQ2GGL7lTFvhy6wal/bffEhML11fsbTNMahXi4PgNav
	z/OknVKHr6TpCOdnDro8TyvhSEg2L9mp8MlOwwyNyfYbv+Yt8TEPscay8xg2YbVE+7Q0gfZCfrww1
	pJuhVEM6jkcS9moKfBa3dQeNalvfTNFxKtQRwXs6m97F1pp4TFJO4mbKfoh9T/EMbZoHJz4Ku7MQm
	28vTPaU7OlTNVr+dExtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03a0-0004vr-KP; Tue, 20 Aug 2019 12:49:40 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03ZX-0004lm-P2
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 12:49:13 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7KCnA1A090372;
 Tue, 20 Aug 2019 07:49:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566305350;
 bh=3fUnEN0H3s51amtQv3+SO1Lvv3iqz4+LFptcuvwFBs8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=GVwR5w0fj3pbBxeVgCVxYPjvBmLi18PfkHGprk+iUj90S6cVJXeDtb/BKAlYFsRnU
 VIjFcgs9sVGYIONTtH123coJuGulfux2wNFjdEwB14KdaHYPs/fgN2cqPAoLb1oLG/
 6x+qdcgnw3h1J2yqg+gdHHyzwjJFyPF4ur/6O09E=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7KCnASY100487
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 20 Aug 2019 07:49:10 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 20
 Aug 2019 07:49:09 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 20 Aug 2019 07:49:09 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7KCn7RX110334;
 Tue, 20 Aug 2019 07:49:07 -0500
Subject: Re: [PATCH v5 0/2] arm64: dts: ti: k3: Update the power-domain cells
To: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>
References: <20190729123023.32702-1-lokeshvutla@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <9aa7eeaf-36ee-3d5f-9654-d8fa37577877@ti.com>
Date: Tue, 20 Aug 2019 18:18:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190729123023.32702-1-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_054911_898375_52AA6731 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29/07/19 6:00 PM, Lokesh Vutla wrote:
> Update the power-domains cells on all K3 based devices to reflect
> exclusive and shared permissions in each device.

Gentle Ping on this series.

Thanks and regards,
Lokesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
