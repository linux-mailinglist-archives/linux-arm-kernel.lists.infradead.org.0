Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A3C176852
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 00:38:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMy9j8P7wWN/hAByMxQiJ85UMw6AKyVJgNSpyVuXyp8=; b=qLZsm5pASVv7XU
	lqpUr3Qx6oAi6XoZosb2g7pt1q3W4uaIaT3Ww4UHNqixk7+PM0kFOJ1vZ6U+8kCCibpyeRgdfNuoR
	pmMq2No7KJg+9byfADwHl5J5WRoNSBRg/i9Pn4D9+cmuAUpHf0Ok2gm1MBbzOaWxgeq3GXjsPeURr
	elNYlfYihQoLA+Kv27ojnCSk/BTNWXLIxSXjozA8YhRKVHNPE3DQSHtSwz5gbm6r9PoqXkInzRxZ4
	+gYBPCYFp0o4J8SQocfXw4dGsx5m+6Eo2zNQpXrb0kiYwkGanfvmP/j/0lTVjKjdRJ7Np1+k7rlsk
	8dTW3VaBaMZWp4oarnbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8ue7-0003VN-JI; Mon, 02 Mar 2020 23:38:47 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8udz-0003Tn-5S; Mon, 02 Mar 2020 23:38:40 +0000
Received: by mail-oi1-f194.google.com with SMTP id l12so1081650oil.9;
 Mon, 02 Mar 2020 15:38:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8XhrBfpdeYVeW1pNRFkev10cOhTus7KbN5tnNyTByWU=;
 b=HAbKLTJH0ncnNWFds0QjIiuMmKx6H7zvZboEdMNUWRrVRqZgkI/v7oV8Hgqa0M2Sj/
 ptW+nwlwEarCRDxr8cVXnKmofmlMijjxyKrpPqx5IQL36uo5CGswAipcwkKq2jxbpQz2
 YjELw7FbU2o/aPX4rKeOJORgcaMPA/F/nya7rYwPwMLcjur4kiJUmHFBe5yBhg+wMuw8
 sHQC9KI5H1v7qf8e4cq3hXJeZE+N6PosjjQSikJu8a/S8AQPsvDrjyBAoc1wTo3UIRUN
 ntC6MgZAcMk0ll1kZ2Ai9SCx/3F/d+ZswEHWLPwkiVdSRMENnCJ5N+A12OJO/bmABpA4
 Csuw==
X-Gm-Message-State: ANhLgQ1g8DhIV2cAQscq4vdBIi9MgN//tnPTkLQB5b3a3s9U5bIaCbsh
 YocYxIB452DUaDKwafdKbw==
X-Google-Smtp-Source: ADFU+vuhlOl6on/xI93yhKRinPGhkp/CPia34CJHv4KuiNms9QQzJ4jdxXzYrkiqTRtqOQIlBZ9/wA==
X-Received: by 2002:a05:6808:64e:: with SMTP id
 z14mr582889oih.79.1583192318164; 
 Mon, 02 Mar 2020 15:38:38 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w15sm3156087oiw.43.2020.03.02.15.38.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 15:38:37 -0800 (PST)
Received: (nullmailer pid 17952 invoked by uid 1000);
 Mon, 02 Mar 2020 23:38:36 -0000
Date: Mon, 2 Mar 2020 17:38:36 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v11 2/6] dt-bindings: display: mediatek: control dpi pins
 mode to avoid leakage
Message-ID: <20200302233836.GB5639@bogus>
References: <20200228081441.88179-1-jitao.shi@mediatek.com>
 <20200228081441.88179-3-jitao.shi@mediatek.com>
 <20200302232903.GA4460@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302232903.GA4460@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_153839_204527_994D72E4 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
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

On Mon, Mar 02, 2020 at 05:29:03PM -0600, Rob Herring wrote:
> On Fri, 28 Feb 2020 16:14:37 +0800, Jitao Shi wrote:
> > Add property "pinctrl-names" to swap pin mode between gpio and dpi mode. Set
> > the dpi pins to gpio mode and output-low to avoid leakage current when dpi
> > disabled.
> > 
> > Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> > ---
> >  .../devicetree/bindings/display/mediatek/mediatek,dpi.txt  | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> 
> Acked-by: Rob Herring <robh@kernel.org>

Sorry, not Acked. Wrong patch. On this one, please address my comments 
on v9.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
