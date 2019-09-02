Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D92A5A59
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 17:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBeOiVMY6TEbEeUH1wvtO/Gmu5CArLqF+t1y2esd9UM=; b=nGSflobvz8Avv4
	cS0yJWbAq0ydWqS2FcxFGYrzr4DxKm3eNJ3i362HePQ0FWlhXJWQUx6R8AwMgIM140jkB4NAfwxJw
	cpcd8YHaSmQSL+WKXtQMN0zvZ2fAW5ga08KsRzcmMXHq7fcwtS8+JVDZNzj07aQ/3ATZOLVFaYJDB
	SCeSdY7UmKrLKcysptzzIV6m2sW2gTehiZTGoW2gVhc5+J/H3u0bazgBiXOshZimkCUidLNPDnZGC
	6300GPXw6yCwnVn/xZgbBISFikox246i4302i2Cua/7Djn9S17iKHDvijp1/zrc+7TMVSlMbEjKOb
	0C3Fk1MsG/q58LPrw05Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4o5N-0003nA-Bp; Mon, 02 Sep 2019 15:17:41 +0000
Received: from mail-wr1-f41.google.com ([209.85.221.41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4o5B-0003lx-9G; Mon, 02 Sep 2019 15:17:30 +0000
Received: by mail-wr1-f41.google.com with SMTP id y8so14373145wrn.10;
 Mon, 02 Sep 2019 08:17:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=80MTxctpPeEJxgPgZ/13mVZGRU0dFKanpPh9EZ44fW4=;
 b=OKwrKItpPBOqPHuRtQbcbGmoLK1rOiExkM007rkix3BdIeyPStAAKJKKUjBef2Aksk
 ioR0lbEQqC4oknsG1lcr67QyufSXUA6ziIz4fH3Y5x8sc2oHXDwsk4DVFcKKK93pUApw
 dZTr0mn7Z9cazQjLhSv+n+V6OBrmoaxLARzn4P2UHRd9xUPks6kY2L86b7AsGmaWOqPI
 Wk0MHJKLby2ftZDM7bRzRNYUJD2vLdRJXi+ULGLmeIzEMfKJlPYiWyp7yPi5BQCwPTSX
 a8OzX5LdbAPgxSJqeLVwt77KMlrSkNjq7ECgxHM2b7+s3C35mMJJzsKZOIIaR50dD9sE
 aRLw==
X-Gm-Message-State: APjAAAV87WFymnsrSMgS0c3BxozOYIA/Xz0EebLjvbAFqTyn8XtZn4Ef
 IHmlTDkVAzZ29AJKqs1E+A==
X-Google-Smtp-Source: APXvYqyUxFqhZf5gOVlVL9+YYQqW1Y4BH7cJyeFs/cJ272ubXTUwNqtn/bRoE/+gbWsuh8C89AB7yQ==
X-Received: by 2002:adf:ed8f:: with SMTP id c15mr17553540wro.83.1567437447509; 
 Mon, 02 Sep 2019 08:17:27 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id r1sm16747170wro.13.2019.09.02.08.17.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 08:17:26 -0700 (PDT)
Date: Mon, 2 Sep 2019 16:17:26 +0100
From: Rob Herring <robh@kernel.org>
To: Jungo Lin <jungo.lin@mediatek.com>
Subject: Re: [RFC, v5, 1/5] media: dt-bindings: mt8183: Added camera ISP Pass 1
Message-ID: <20190902151726.GA24001@bogus>
References: <jungo.lin@mediatek.com>
 <20190902075135.1332-1-jungo.lin@mediatek.com>
 <20190902075135.1332-2-jungo.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902075135.1332-2-jungo.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_081729_327561_E7CCF51B 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.41 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart@ideasonboard.com, robh@kernel.org, Rynn.Wu@mediatek.com,
 suleiman@chromium.org, Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com,
 frederic.chen@mediatek.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, hverkuil-cisco@xs4all.nl, shik@chromium.org,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 zwisler@chromium.org, ddavenport@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2 Sep 2019 15:51:31 +0800, Jungo Lin wrote:
> This patch adds DT binding document for the Pass 1 (P1) unit
> in Mediatek's camera ISP system. The Pass 1 unit grabs the sensor
> data out from the sensor interface, applies ISP image effects
> from tuning data and outputs the image data or statistics data to DRAM.
> 
> Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> ---
>  .../bindings/media/mediatek,camisp.txt        | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,camisp.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
