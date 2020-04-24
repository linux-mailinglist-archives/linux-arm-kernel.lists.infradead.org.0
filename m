Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF311B790E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TFAhpEUDNcXv7KxrPmbl/i0Poo3vFCfM8gKZt6cko1U=; b=Sa/wZ2P/A2/Afq
	rEjRZIwytb9Gdgh3fubeU7AUTGL5aIdMOVY7k6dKOg1d2F8lSbxC/dtQNd3h5KlkKJzir6+7+R/Km
	cHquG1pDgha9AGEF/vx/x9Xghs+bNn374vRcKGdQ26UjIMzK15TE32Fj0dQGIPKF4I48RQ9WgGfsd
	6Y8NrpVgh5NqN1zRi33bKoijbd8kMhG9n45Qw+1+jUAlDlhBq80EAUogDlP0oGrG+5F/yPkmAZN8t
	+9neAYBmhctYmdx8ENZkKsZcxzL3h28LFA4oBqmtiVORYxjBStT/c3V5ygRX9ic3ambhRSsp1gsQM
	TOck7UACzcENdsvz94pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS013-0003eA-BG; Fri, 24 Apr 2020 15:13:21 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS00l-0003bn-En
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:13:05 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCwdq044741;
 Fri, 24 Apr 2020 10:12:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587741178;
 bh=3u5jcMxC3VA6Xbom27idPrTVtW3bDxHIo8/U0ctHM5M=;
 h=From:To:CC:Subject:Date;
 b=EhutGT++NxfVz0U0PDYovaPMXgdBlNgG9voz/S0eAUk6yQoPcb6j0Pu7wuj8N4168
 lhsERLk+AhwW48QhMtp9nKOHFHnOITll6qQWOj/JmPic5rISXzlbZRrRKlCOCq+5pb
 V9GvTmfyOkAQwgninfhBiiN79yMJSXDLcN2uijjs=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03OFCwIm091540
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Apr 2020 10:12:58 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:12:58 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:12:58 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCu78122378;
 Fri, 24 Apr 2020 10:12:57 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 00/17] ARM: dts: dra7/am57xx: remoteproc support
Date: Fri, 24 Apr 2020 18:12:27 +0300
Message-ID: <20200424151244.3225-1-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081303_594484_E06EB860 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: s-anna@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tony,

This series adds the DT nodes necessary for remoteproc support, now that
the driver side changes are (mostly) in. Couple of things to note
though.

1) There is a new IOMMU issue, for which I posted a fix today [1]
2) The remoteproc core still has an issue for which there is ongoing
   discussion [2]

With these two issue taken care of, the omap remoteproc support is
functional. The question though is, whether we should just wait until
the above two issues are resolved and merge the DT patches post that, or
merge the DT patches with status = "disabled".

There aren't any boot failures without the mentioned two issues though,
as one needs to enable the RPMSG_VIRTIO support before the failures
really kick in (issue [2]), and this config is not enabled for OMAPs
yet. Also, multi-v7 config doesn't seem to enable omap remoteproc,
so that is safe also.

Another thing I was considering myself was to squash all the board
specific reserved-memory region patches into the
dra7-ipu-dsp-common.dtsi files. However Suman wants to have these
separate and as he is the actual author for these, I posted them in this
form. But anyway, just so you know it would be possible to merge them
together.

-Tero

[1] https://lore.kernel.org/linux-iommu/20200424145828.3159-1-t-kristo@ti.com/T/#u
[2] https://lkml.org/lkml/2020/4/20/1094



--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
