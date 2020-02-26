Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B190F170228
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:19:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuqgIMvsjMw7E5wySLfuMS1F7LI6uHxjoExun4CMw1k=; b=g7o9F1am3ohmr1
	B+tq3aeFqTxtplBVpkZ4ThI50emYIXI9qSCB3zObcgKtyo6i8QvW7AKC3dK/sp/Q7FTnouh1WGYin
	biUPXGt6MPsGlsDjakgHjpp7x2cqipG01COVAe9lLXjNtxJQGcOKx72/hibijJyBz/cgVII+dFp5N
	RuKK+WCJoLGL2Uypy9fg3ud5Z6l8edQVHWlSeEpjYMF4aT+BOEWEdVeYyE5QdkRb0f5Vl91KlzWJ+
	J41QQXFLqljw6yg/2q43I+Al1yDUiG0sZzzOT0iG3X/jpwe1pMey5Cu8S2ush7Nrrr/z30iR6c1Mn
	YCLR6lwWHzM2LhVfVQqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ySi-0006gr-QU; Wed, 26 Feb 2020 15:19:00 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ySX-0006gW-EV; Wed, 26 Feb 2020 15:18:50 +0000
Received: by mail-ot1-f68.google.com with SMTP id i6so3254888otr.7;
 Wed, 26 Feb 2020 07:18:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/6qDOCrFaT70GMrXC62oODapAv06LXpjcPH50sFJvcw=;
 b=a3DP7H1mykUEdpdvJxry4lRhpfmwT0jrFKLJ6HfbG+QL3BN9LTvz4wdYOj3i94wZTm
 ad/95cDYX1YYRjAoYExsmgmPJTsNXhqQITyxZmetv02foDJtYOHusc3VZtG54Lj4KsMV
 +lOQGMmbtE0PHzpL2mFU8j780Vv61BbDcuDxgqnizkb87i7aFZxJ1gVSChdWNQ4+rXHn
 8qPO+5H5OvRGCcLRwUcPWb8So+0eIQz2YcUDcl5wFECM7nn10arTLR55163ioNVKlRV/
 CULvmy9bYxFQYvfbDvRYNcnWtba2OA6BN6IROJSUzPQjaYdjGiSnRJ/VMUBUVa0u0UUs
 V0Ng==
X-Gm-Message-State: APjAAAW8OKKqxV+JB3zDjLg0G+9mQmmjvYeDWMI0xykGYSAXlv6ZxvyI
 QTXp3WEQim8k77AQRmqxgQ==
X-Google-Smtp-Source: APXvYqxBufLVc2f4vqiKPF5cMNUCr0xqWnYB6+zcMOrJYU0lwVw8DbBaOxQKyHF5SXgHCNdsMk2NOg==
X-Received: by 2002:a9d:638a:: with SMTP id w10mr3650110otk.130.1582730328475; 
 Wed, 26 Feb 2020 07:18:48 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m68sm886194oig.50.2020.02.26.07.18.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 07:18:47 -0800 (PST)
Received: (nullmailer pid 22097 invoked by uid 1000);
 Wed, 26 Feb 2020 15:18:47 -0000
Date: Wed, 26 Feb 2020 09:18:47 -0600
From: Rob Herring <robh@kernel.org>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Subject: Re: [PATCH v1 1/3] dt-binding: gce: remove atomic_exec in mboxes
 property
Message-ID: <20200226151847.GA22046@bogus>
References: <20200217090532.16019-1-bibby.hsieh@mediatek.com>
 <20200217090532.16019-2-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217090532.16019-2-bibby.hsieh@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_071849_482585_C17E0CF2 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>, CK HU <ck.hu@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 17:05:30 +0800, Bibby Hsieh wrote:
> There is not any client driver using this feature now,
> so remove it from binding.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---
>  Documentation/devicetree/bindings/mailbox/mtk-gce.txt | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
