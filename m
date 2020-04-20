Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E121B1518
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wxh2dM5lXaPI3qewCdkHu6DDDh8PER6o3qe4G5Qdp+E=; b=SytckVhRcAuhFi
	djQ7ZKn+mnvptRJxNkyL9NIDSsDGlkglBQcbUm1eN9k6tdocokoMGycXvuFJcTRSTUkaMKDdywgwG
	FYEfr/4F0BP2AKyiL0IxOWQ3O6r3l818BpX3+LsxzLN0N3qew7MVweLy5stTAXBZOw07dY8zIDWLT
	yXU99V3pDd5AcMdVjUbiIg2mH4gRAzDseopYqMCIXQhYET1yK4x4dZ5Lm0fZ9wnpKQTR1RqYXysim
	jEwRHGReQSh/pdbhz/DyKwD+xjw0JfM1AoZ8G9BMLOdLugULRwAHSk91L0vPshuqq+MbeIlqxtDak
	ryUh6GZtcXHU5XuMeEUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQbRZ-0002B7-Vb; Mon, 20 Apr 2020 18:46:57 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQbRK-00029b-2p; Mon, 20 Apr 2020 18:46:43 +0000
Received: by mail-ot1-f67.google.com with SMTP id q9so2427938otf.5;
 Mon, 20 Apr 2020 11:46:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dJDN6ZSVBrwBuPPhD+aSfFRw6fiy4PnYxRMXPYH5eJE=;
 b=IOHSpeX69tfZ62dh4me8mspHjjdpOc9Cp5MBDC5l0YWH2gxX4PH3aUELUj7rFyYy4p
 XGj6jNcquQGdOjlDytPN2muz6S2UzcbSobc0SmCv7n4AFwAHGDEeQ0OVidja/q2RpUd7
 pfR7A4USb9podtJeeKfbIzGvFcWl5HBgNcN74cGxvZjKcEtoXiDfm06C0PVufgsNHKVw
 Xegvh5ivQpM82Bf1H7EAsN1551KUWj3SAym5dAJKS3PJxqY0C59bSEHzkn/khHVyQRxt
 NmynJR18QtRyTE7Ijrl0neKhd38uxjmk9DdMOzCbkQsrCeUT7c4rjYSSLxxjibaDun2f
 693g==
X-Gm-Message-State: AGi0PuYg4blRg7GE5+d9PGgcDp04reQzDCap78Db05r176YnW4CkuGTD
 1MtUQxUjL+HbjmgzkGiZOA==
X-Google-Smtp-Source: APiQypJKBNzrWvr1SWwVwphT9YqgirBWXMbyZeBvPDgavXh+P8/XkilfFXtYjOgYCLzIiuXOqrckdA==
X-Received: by 2002:a05:6830:1e45:: with SMTP id
 e5mr10543687otj.236.1587408400603; 
 Mon, 20 Apr 2020 11:46:40 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q11sm61919ooc.19.2020.04.20.11.46.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 11:46:40 -0700 (PDT)
Received: (nullmailer pid 27429 invoked by uid 1000);
 Mon, 20 Apr 2020 18:46:38 -0000
Date: Mon, 20 Apr 2020 13:46:38 -0500
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: display: mediatek: add property to
 control mipi tx drive current
Message-ID: <20200420184638.GA27394@bogus>
References: <20200411074408.38090-1-jitao.shi@mediatek.com>
 <20200411074408.38090-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411074408.38090-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_114642_123906_4DEEB9B5 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, bibby.hsieh@mediatek.com,
 srv_heupstream@mediatek.com, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 David Airlie <airlied@linux.ie>, huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cawa.cheng@mediatek.com, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 11 Apr 2020 15:44:05 +0800, Jitao Shi wrote:
> Add a property to control mipi tx drive current:
> "drive-strength-microamp"
> 
> Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dsi.txt    | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
