Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A8671F5B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRWmN9ckUJyYky8ySFRzW/lizXWDl+KshLa4LMqFo0I=; b=IE3yJB/oQkOLXu
	gLgQMfrOL3aqp4U7QWxnMQ6piXAkMBNkHLD9RUBkzwHwCxTj/GzLYPF+GYFKy9tV/ElM4w9/yJA6g
	XowSVUlF76F9EkQtyeL4JJy/5ldrhX0bh5B+k82Ip7Tgn1wVaJ/DA3iZbjTtSWN4OjazoExvrIdRK
	x/It41NF+K+UHj04+El4NgDdR61jk3UhTtp3QA0H5PDQx59nKRO4R3WO5npoCSYQkIRuFNNWbBazl
	qZJ1pjI9oA+h459K5ImK7lXNeN4bCPyhmR5hSl9epBQsywZ/Yo54AqgEGnPmUEcaeXxezaRWYMJw7
	x7itZaewTtduu/mmQEug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzZp-0000is-Lv; Tue, 23 Jul 2019 18:31:53 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpzZb-0000iE-7f
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 18:31:40 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NIVaCT063191;
 Tue, 23 Jul 2019 13:31:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563906696;
 bh=9cv0+/SVJMPPDN0ZhXDWZYsyy291EnVoJwpIzV02j8M=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=SeHacVK8t8RCkv+qAMQXCHTb6PB5lzmPbPg+KdmGrP+jyoTeiqZD0/n1ltfNLbthV
 x7QfW3TGGjmgaa/0bqdDHOHZUzwJjtHyA63cjRBgwevKfkv/g92Dr4/MBFo7eGzDD4
 7oiKUwn7vFUJfLYTwAlaNeX2eS2s+o4s4RbIb+VY=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NIVaKB079235
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 13:31:36 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 13:31:36 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 13:31:36 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NIVZ6q129119;
 Tue, 23 Jul 2019 13:31:36 -0500
Subject: Re: [PATCH 3/8] bus: ti-sysc: Fix handling of forced idle
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20190723112811.44381-1-tony@atomide.com>
 <20190723112811.44381-4-tony@atomide.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <4336e7ef-3857-e42f-e67c-94809acc59b8@ti.com>
Date: Tue, 23 Jul 2019 13:31:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723112811.44381-4-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_113139_360999_52C7D977 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/23/19 6:28 AM, Tony Lindgren wrote:
> For some devices we can get the following warning on boot:
> 
> ti-sysc 48485200.target-module: sysc_disable_module: invalid midlemode
> 
> Fix this by treating SYSC_IDLE_FORCE like we do for the other bits
> for idlemodes mask.
> 
> Fixes: d59b60564cbf ("bus: ti-sysc: Add generic enable/disable functions")
> Cc: Roger Quadros <rogerq@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>

Reviewed-by: Suman Anna <s-anna@ti.com>

regards
Suman

> ---
>  drivers/bus/ti-sysc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
> --- a/drivers/bus/ti-sysc.c
> +++ b/drivers/bus/ti-sysc.c
> @@ -949,7 +949,7 @@ static int sysc_best_idle_mode(u32 idlemodes, u32 *best_mode)
>  		*best_mode = SYSC_IDLE_SMART_WKUP;
>  	else if (idlemodes & BIT(SYSC_IDLE_SMART))
>  		*best_mode = SYSC_IDLE_SMART;
> -	else if (idlemodes & SYSC_IDLE_FORCE)
> +	else if (idlemodes & BIT(SYSC_IDLE_FORCE))
>  		*best_mode = SYSC_IDLE_FORCE;
>  	else
>  		return -EINVAL;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
