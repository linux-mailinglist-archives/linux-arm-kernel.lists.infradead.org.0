Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80060C0B17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 20:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iS6XkwhUNKy/BzhhqyGgmLnFC8Dq4tn+ugI25sYVJEs=; b=TvknsQih79dtMy
	O2DuVsPzSi7mkAm4PcC6Vzk/MLz/qp5IfYQ0NPJ1uznk/AlfLJ2AxD3R9m7sq2E9xGVtc3qfEPHKh
	EeVTgTKOYAXvqEQZ59ogg6806E3gq0ih6o31npRzWGYPSB1yQEONYhM36L8OtnjvnEa9glnkU/647
	RB9eO3w+EwCCiuhRKUMi0q3izR2QlYn32Kw9mz5h2YXfrCo032v3GcPM6N2+DldTykljVzdzidlIO
	GVonbiPkXf9/GCyyM0E9HMMQG6EMdc74yDjvyyoh/5VKdbMMTOTpUJxVrg36wGp9sgYur2mETX+xZ
	mzKyNdoFgjxHLZP8mxkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDv1S-0001qg-Re; Fri, 27 Sep 2019 18:31:18 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDv1J-0001py-KC; Fri, 27 Sep 2019 18:31:10 +0000
Received: by mail-oi1-f194.google.com with SMTP id w144so6028561oia.6;
 Fri, 27 Sep 2019 11:31:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6Dwlt6dTGHs+BuziwsOZqU0wxeCKDgQXfVKRH/TdFRQ=;
 b=jXKbAI4mMFy+mDOxm3I7vcZ8u/bTpmDNr9pw0f4rx153wiRg68CAg3b3MdTXaPcEF8
 flkdLzHuc+XxOfX3fBsoUjRrnRsgBIQrWpltkrpEy+xHmI9FhUcyci3e1LDjOWFj5s+6
 P0hLTSivrenQ5G+8/1CcX2JkyvGmZj4srenbHSuWS+B3vitwpGYmt8ZKWL0+jmdmInqs
 MkiuFrFv1/NpBs2sEkuMM7jDO77Ks3ZbCW42MDgmn0U7NBcEldMP2kAC2I8yYOjxOOvo
 YMhiRG+f4VgOnEPi8VAouqLphjIxgb0XHP3udL7lKZqeKXf5e1Wo96WvZD+wAV+cl9EF
 w1hg==
X-Gm-Message-State: APjAAAW9WzQeinLGUt18WcglthURtAodSFVFkLNQOIR5VbcJyvmCVKuG
 xjOO9xhNHOGPSRHtYBztLg==
X-Google-Smtp-Source: APXvYqxfTPOjoXw0r3K9xDZ396c+xBKOc4sDJsePcujHV58jUBs+kpOM2YeJOMmqzYt+9QKgSrRfXg==
X-Received: by 2002:a05:6808:9b6:: with SMTP id
 e22mr7980788oig.51.1569609068628; 
 Fri, 27 Sep 2019 11:31:08 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 21sm1806756oin.26.2019.09.27.11.31.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 11:31:08 -0700 (PDT)
Date: Fri, 27 Sep 2019 13:31:07 -0500
From: Rob Herring <robh@kernel.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v3 1/5] media: dt-bindings: Add jpeg enc device tree node
 document
Message-ID: <20190927183107.GA16235@bogus>
References: <20190924074303.22713-1-xia.jiang@mediatek.com>
 <20190924074303.22713-2-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924074303.22713-2-xia.jiang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_113109_663240_C3C5D07B 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: Xia Jiang <xia.jiang@mediatek.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 15:43:00 +0800, Xia Jiang wrote:
> Add jpeg enc device tree node document.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v3: change compatible to SoC specific compatible
> 
> v2: no changes
> ---
>  .../bindings/media/mediatek-jpeg-encoder.txt  | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
