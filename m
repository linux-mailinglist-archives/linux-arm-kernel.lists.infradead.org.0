Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAFC176832
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 00:29:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWJsHGUu3Eg1TctU4mPgw8+za8509eBsp/2EBM3Vw7A=; b=faQogZfZEj0kL2
	F1V6Dax0gW6/dkT7vbKExsJ0QL66PsX9/CICIx2QA6Q/qpjgadoSMQw1PXZF7noFheLoi9MkwLlGh
	OlnpWXOwvB/ZxRDPd52VqNFx2stdFg+X7Kup4HjrB2IFEQe6t2FEwjQzAhkiDu0dtZciCX8YqvW7M
	1JJ98NGOMKrzr/AQWtHnItgd1VvH+rdId9HAXENCvV8xADuQ4IP0vcIH4ZAEkLNCQ9JGpZ+lsGt66
	RX2fr1W2XFnwfuJb54ANVP2DkFRwgrcaxeGfK3SGeqb+IYZjyqjsIMjOk1e1ogJS33ZhD80W/mIfy
	JDztwlg6BrtWTyIc6+lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8uVU-0008DB-Go; Mon, 02 Mar 2020 23:29:52 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8uVL-0008Bx-CC; Mon, 02 Mar 2020 23:29:44 +0000
Received: by mail-ot1-f66.google.com with SMTP id a20so1188005otl.0;
 Mon, 02 Mar 2020 15:29:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bL4crR0QltZVzCb64PaSDViplJhkuKW5x/Yz6zKqjUM=;
 b=ch1D7i3gkjL/XXTIY+Jx8arEvUNfc9I+8tXLr78IUCuxFoSAQQPwLlMpF+6N76a0wB
 KD2Z0+UE/jq1UOEqaZv9qtW//j8MU26VbJnRDzWQIyCGKQAJdgY5HDRXg7bkjQdAr18n
 2ZYmdF9SXjoU2eyT+ec+WQIsRV4K9a6jO3lzB3AWeXQp8tcUfz8gOzgkl3NNYeccee7Z
 5VKS2C/mLBl7X5KDj5IIenxmtSu5nGFwvbVgbcJyp8Ac1NH0wLHgT7PmLlYCIpeVC+to
 Uyh3HYPk/G92nKNgTnBTENWTY+Fu3hx8F+mK8yOspAAXnTj1bTbZvwYypm+ZjiA3fxLD
 /sLQ==
X-Gm-Message-State: ANhLgQ1t+hlGctrJkVkmkH2NHJrSmAVK190m/udY/yCADuG6X2wTHXvV
 wPtCDuX2ukRB/7uzs7ATTw==
X-Google-Smtp-Source: ADFU+vuIYp3sLPsyMdTfFaP1I6L8Bzm3bqP7VA7nzk6Wvk1TBOMDG6BACKkVaDwUxNRMG3Vc8bts9Q==
X-Received: by 2002:a9d:6446:: with SMTP id m6mr1232961otl.122.1583191782350; 
 Mon, 02 Mar 2020 15:29:42 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m23sm3437121otq.37.2020.03.02.15.29.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 15:29:41 -0800 (PST)
Received: (nullmailer pid 5546 invoked by uid 1000);
 Mon, 02 Mar 2020 23:29:40 -0000
Date: Mon, 2 Mar 2020 17:29:40 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v11 3/6] dt-bindings: display: mediatek: dpi sample data
 in dual edge support
Message-ID: <20200302232940.GA5490@bogus>
References: <20200228081441.88179-1-jitao.shi@mediatek.com>
 <20200228081441.88179-4-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228081441.88179-4-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_152943_411211_AE0EE1B4 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, bibby.hsieh@mediatek.com,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, cawa.cheng@mediatek.com, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 28 Feb 2020 16:14:38 +0800, Jitao Shi wrote:
> Add property "pclk-sample" to config the dpi sample on falling (0),
> rising (1), both falling and rising (2).
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dpi.txt     | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
