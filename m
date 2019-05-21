Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569A924EFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29XjQLKMorCC3gVJpO3asPXENexwgoif10yeuboBm2U=; b=pyLztxlcon+t/C
	X6FioSjXKXDjDTyl60oPbiuks601+2YLdexHVl1ELuKDA2mayFvAwIlbeJQARaRgRZgAUNvIu1Yek
	bXnQzDsZBp6TYktz1yirKuzPCE/KK48EFoBmbh/ms3ygTZAhb9xtK/MIRiyfemn99ddl5Z6HtGmhV
	/T2N380x1iXuZUOkY0tWpt5pT2Z+Rsc7RFXEnf2dzz1tuEEx9GIzQFnLYlhmbuSb1xAlV1zzDeIyK
	oibwyWbGpbaBJyPvga+VZe/569epxopdh7pqUrmRQhNktkHg2Hfdh8YoyzDxXLHO+7aFQIMIuJbGF
	gIGygntWxzVkf7ydRc0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT3y9-0007iq-85; Tue, 21 May 2019 12:34:13 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT3y2-0007iO-1I
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 12:34:07 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 4FD592084D;
 Tue, 21 May 2019 14:34:03 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 36CF6206C6;
 Tue, 21 May 2019 14:34:03 +0200 (CEST)
Subject: Re: [PATCH V4 1/2] soc: imx: Add SCU SoC info driver support
To: Leonard Crestez <leonard.crestez@nxp.com>,
 Anson Huang <anson.huang@nxp.com>
References: <1558071840-841-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB6434643CA1A6807347DCAAF8EE070@AM0PR04MB6434.eurprd04.prod.outlook.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <61fb2d82-67e7-ab2d-961e-78d018cf3272@free.fr>
Date: Tue, 21 May 2019 14:34:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <AM0PR04MB6434643CA1A6807347DCAAF8EE070@AM0PR04MB6434.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue May 21 14:34:03 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_053406_227604_7A104179 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Mark Rutland <mark.rutland@arm.com>, DT <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/05/2019 13:56, Leonard Crestez wrote:

> On 5/17/2019 8:49 AM, Anson Huang wrote:
> 
>> +	root = of_find_node_by_path("/");
>> +
>> +	np = of_find_compatible_node(NULL, NULL, "fsl,imx-scu");
> 
> It's possibly not very important for root or FW communication nodes but 
> you should probably of_node_put those back.

Isn't it better/simpler to use of_root?

extern struct device_node *of_root;

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
