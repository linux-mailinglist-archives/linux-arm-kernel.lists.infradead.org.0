Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A345883D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 22:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7ELCcV1CCLkvB1USUUZNtL4LXDM1gEkatHE6ZtcCXI=; b=Fe1jqZwl5Zej1I
	9w1xc7l9+yJs3yJvnGEFHLmqOruk7I5BJAzLP5V50RaE+QdCPhO7ldzmPC4jMg7pIr4cFQwY+Cx4M
	Xb+7oQNN3IY44BWnSgWr6cbfEg2oB8xOtkQzsCgN+xlzjTyBGg0S7xTUmMOfrRzV5XdMCkOJIsoN6
	ooRWVqBtA8+dH7i63XowcaEjIeTIkvBVMCMElnyDK2EqJWKjL88iI7bXv4suZ+PaIpX83w/vsn2Rg
	3xX3uUR96oNoRVYu8squolRhWUqijU/N1HRTocvEbD/f7Pf17UrTKYwC1rSgZX1p2PgL9AFCpAqcx
	EE3AHgJUGNuEwVWFBmMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwBSO-0000Qc-VM; Fri, 09 Aug 2019 20:25:48 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwBSH-0000QE-Gz
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 20:25:42 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x79KPd7C066866;
 Fri, 9 Aug 2019 15:25:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565382339;
 bh=o2d4QWhw4Uk2L7QvDmAqwOQHBdtU+aYcyU4/pNV+AAU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=vXxLrrrz5Xh8rhhiZyQYlhILQPEfu1bHh4v4z1XSeLZ6jYWBmDsbtiKcHRsgIDvUc
 ESw6uWXtRfAknamoZJ2K+8ZutfRSvaL+uHj3Wy7cXhkzibTGV5Fl3nWFeAHpFN9dKx
 Z81cy3ihT34YDa4szazuDPKcQjaDao6m7qzrjudo=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x79KPdOK081000
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 15:25:39 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 15:25:38 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 15:25:38 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x79KPcqc121268;
 Fri, 9 Aug 2019 15:25:38 -0500
Subject: Re: [PATCH] rpmsg: virtio_rpmsg_bus: replace "%p" with "%pK"
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20181024011909.21674-1-s-anna@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <40831f80-1e36-66ca-b8e5-684d46ba167e@ti.com>
Date: Fri, 9 Aug 2019 15:25:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20181024011909.21674-1-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_132541_631009_6C657C03 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On 10/23/18 8:19 PM, Suman Anna wrote:
> The virtio_rpmsg_bus driver uses the "%p" format-specifier for
> printing the vring buffer address. This prints only a hashed
> pointer even for previliged users. Use "%pK" instead so that
> the address can be printed during debug using kptr_restrict
> sysctl.

Seems to have been lost among the patches, can you pick up this trivial
patch for 5.4? Should apply cleanly on the latest HEAD as well.

regards
Suman

> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  drivers/rpmsg/virtio_rpmsg_bus.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
> index f29dee731026..1345f373a1a0 100644
> --- a/drivers/rpmsg/virtio_rpmsg_bus.c
> +++ b/drivers/rpmsg/virtio_rpmsg_bus.c
> @@ -950,7 +950,7 @@ static int rpmsg_probe(struct virtio_device *vdev)
>  		goto vqs_del;
>  	}
>  
> -	dev_dbg(&vdev->dev, "buffers: va %p, dma %pad\n",
> +	dev_dbg(&vdev->dev, "buffers: va %pK, dma %pad\n",
>  		bufs_va, &vrp->bufs_dma);
>  
>  	/* half of the buffers is dedicated for RX */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
